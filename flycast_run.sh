#!/usr/bin/env bash
set -euo pipefail

target_elf_path="${1:?Usage: flycast_run.sh <elf_path> [emulator_args...]}"
shift || true

cd "$(dirname "$0")"
log_file_path="${FLYCAST_LOG_PATH:-logs/flycast_run.log}"
mkdir -p logs

emu_bin="${FLYCAST_BIN:-flycast}"
emu_extra_args="${FLYCAST_EXTRA_ARGS:-}"
window_width="${FLYCAST_WINDOW_WIDTH:-640}"
window_height="${FLYCAST_WINDOW_HEIGHT:-480}"
render_resolution="${FLYCAST_RENDER_RESOLUTION:-480}"
content_path="$target_elf_path"
build_dir="$(dirname "$target_elf_path")"
target_name="$(basename "${target_elf_path%.*}")"
pc_stage_dir="$(dirname "$target_elf_path")/pc"
log_tail_process_id=""

cleanup() {
  if [ -n "${log_tail_process_id:-}" ]; then
    kill "$log_tail_process_id" 2>/dev/null || true
    wait "$log_tail_process_id" 2>/dev/null || true
  fi
}

trap cleanup EXIT
trap 'exit 130' INT TERM HUP

if grep -aq '/pc/' "$target_elf_path" && [ -d "$pc_stage_dir" ]; then
  mkdcdisc_bin="${MKDCDISC_BIN:-mkdcdisc}"
  flycast_stage_dir="$build_dir/flycast_pc"
  flycast_stage_elf_path="$flycast_stage_dir/${target_name}_pc.elf"
  content_path="$build_dir/${target_name}.cdi"

  mkdir -p "$flycast_stage_dir"
  rm -rf "$flycast_stage_dir/disc"
  rm -f "$content_path"
  perl -0pe 's|/pc/|/cd/|g' "$target_elf_path" > "$flycast_stage_elf_path"
  mkdir -p "$flycast_stage_dir/disc"
  cp -f "$pc_stage_dir"/* "$flycast_stage_dir/disc"/
  "$mkdcdisc_bin" -e "$flycast_stage_elf_path" -D "$flycast_stage_dir/disc" -o "$content_path" -n "$target_name" -a "ADDUSER" -r "$(date +%Y%m%d)"
fi

flycast_config_args=(
  -config "window:fullscreen=no"
  -config "window:maximized=no"
  -config "window:width=${window_width}"
  -config "window:height=${window_height}"
  -config "config:rend.Resolution=${render_resolution}"
)

SDL_VIDEO_HIGHDPI_DISABLED="${SDL_VIDEO_HIGHDPI_DISABLED:-1}" \
  $emu_bin $emu_extra_args "${flycast_config_args[@]}" "$@" "${content_path}" > "$log_file_path" 2>&1 &
flycast_process_id=$!
tail -f "$log_file_path" &
log_tail_process_id=$!

while kill -0 "$flycast_process_id" 2>/dev/null; do
  serial_tty_path=$(awk 'match($0, /\/dev\/[^ ]+/) { print substr($0, RSTART, RLENGTH); exit }' "$log_file_path" 2>/dev/null)
  if [ -n "$serial_tty_path" ] && [ -c "$serial_tty_path" ]; then
    kill $log_tail_process_id 2>/dev/null || true
    wait $log_tail_process_id 2>/dev/null || true
    cat "$serial_tty_path" | tee -a "$log_file_path" &
    log_tail_process_id=$!
    break
  fi
  sleep 0.1
done

wait $flycast_process_id 2>/dev/null || true
