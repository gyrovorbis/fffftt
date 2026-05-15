<samp><b>(f)ixed (f)unction and (f)ast (f)ourier (t)ransform (t)esting</b></samp>
---
<samp>
  <code>fffftt</code> is an audio-geometry exhibit for fixed-function signal visualization, originally inspired by <a href="https://www.shadertoy.com/">shadertoy</a>. It targets Dreamcast as a hardware case study using <a href="https://github.com/raysan5/raylib">raylib</a>, OpenGL 1.1 <a href="https://en.wikipedia.org/wiki/Fixed-function_(computer_graphics)">fixed-function</a> rendering, <a href="https://github.com/kazade/GLdc">GLdc</a>, and <a href="https://github.com/gyrovorbis/sh4zam">sh4zam</a>'s <code>shz_fft()</code>.<br><br>
</samp>


<samp>[overview]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;.h file ........................... shared prototypes/functions in <a href="https://github.com/meisei4/fffftt/blob/main/src/fffftt.h">src/fffftt.h</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;.c files .......................... one demo per file in <a href="https://github.com/meisei4/fffftt/tree/main/src">src/</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;.wav files ........................ <a href="https://shadertoyunofficial.wordpress.com/2019/07/23/shadertoy-media-files/">shadertoy media files</a>; adpcm .wavs in <a href="https://github.com/meisei4/fffftt/tree/main/src/resources">src/resources</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;controls .......................... cycle tracks, pause/resume, seek, move light<br><!-- TODO: add a nice control scheme for gamepad-->
  &nbsp;&nbsp;&nbsp;&nbsp;audio terrain demos ............... see <a href="#audio-terrain">[audio terrain]</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;shadertoy ports ................... see <a href="#shadertoy-ports">[shadertoy ports]</a><br>
<br>
</samp>


<!-- VIDEO LINKS
fft-bands-terrain-3d-dc.webm
https://github.com/user-attachments/assets/a3d40286-c825-47b8-a23c-37da2c11104b

fft-terrain-3d-dc.webm
https://github.com/user-attachments/assets/10ededf9-a84c-4453-9467-b5b14c48c159

sh4zam-butterfly.webm
https://github.com/user-attachments/assets/ea2e14af-491f-4c03-a99d-6b5a3fc05ea5

sound-envelope-3d-dc.webm
https://github.com/user-attachments/assets/8c82a7cf-21d2-4a8a-8655-e6d558400be6

waveform-dc.webm
https://github.com/user-attachments/assets/446ba918-171c-4fb5-8901-9f618db08cbb

waveform-terrain-3d-dc.webm
https://github.com/user-attachments/assets/bd9c1301-2ef7-401a-9969-aa6358c36345
-->


<!--
PROXY PLOTS:
ORDER OF FILES BELOW OF THE URLS:
fft_bands_terrain_chroma.png
fft_bands_terrain.png
fft_high_band_terrain_spectral_flatness.png
fft_low_band_terrain_onset_brightness_wash.png
fft_low_band_terrain_onset_curtain.png
fft_low_band_terrain_onset_scribbles.png
fft_terrain_chroma.png
fft_terrain_onset_brightness_wash.png
fft_terrain_onset_curtain.png
fft_terrain_onset_scribbles.png
fft_terrain.png
waveform_terrain_hilbert_overlay_signed.png
waveform_terrain_hilbert_overlay.png
waveform_terrain_onset_brightness_wash_signed.png
waveform_terrain_onset_brightness_wash.png
waveform_terrain_onset_curtain_signed.png
waveform_terrain_onset_curtain.png
waveform_terrain_onset_scribbles_signed.png
waveform_terrain_onset_scribbles.png
waveform_terrain_rms_signed.png
waveform_terrain_rms.png
waveform_terrain_signed.png
waveform_terrain.png


<img width="1533" height="1204" alt="Image" src="https://github.com/user-attachments/assets/6bddceb9-1566-4629-9dc8-bba4da1f6e8d" />

<img width="1837" height="1072" alt="Image" src="https://github.com/user-attachments/assets/87971a00-daf0-4e57-a2cc-70d343af97dd" />

<img width="1533" height="1204" alt="Image" src="https://github.com/user-attachments/assets/f09c9416-ced4-4595-8bd0-7808599cd87b" />

<img width="1545" height="1204" alt="Image" src="https://github.com/user-attachments/assets/9a9ddfbf-4f6b-4705-963d-4f7c0b2517e2" />

<img width="1545" height="1204" alt="Image" src="https://github.com/user-attachments/assets/6b7040e7-a58b-4fdb-a4e7-f1edc1ed73fe" />

<img width="1545" height="1204" alt="Image" src="https://github.com/user-attachments/assets/52cee05d-8884-4395-a322-d0ccf58beb4c" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/5e665f0b-0eb5-4e2a-8806-c7071e8de617" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/12968c3f-3290-4feb-b365-073fe877209e" />

<img width="1527" height="1204" alt="Image" src="https://github.com/user-attachments/assets/a86284ca-6ced-4a8b-a9df-765beec42606" />

<img width="1527" height="1204" alt="Image" src="https://github.com/user-attachments/assets/2d7ba571-c45e-43ac-888a-8fa9f462f3ba" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/5a220009-1159-43a5-9bc0-177c611bc6a4" />

<img width="1545" height="1204" alt="Image" src="https://github.com/user-attachments/assets/f329d334-4dbd-4420-9a23-31e31f3919ba" />

<img width="1539" height="1204" alt="Image" src="https://github.com/user-attachments/assets/a50316b4-21fb-4ffb-8e5f-bd6980f2d1c8" />

<img width="1521" height="1204" alt="Image" src="https://github.com/user-attachments/assets/e9c11112-a628-4a91-8be7-e300ef8f794b" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/31c1fcf6-6e22-48e5-ac48-e3a66ee81860" />

<img width="1533" height="1204" alt="Image" src="https://github.com/user-attachments/assets/a583bb0a-231d-47ba-9997-cf4fd37ae69d" />

<img width="1527" height="1204" alt="Image" src="https://github.com/user-attachments/assets/5403340f-0bcc-426b-94d6-67ddae7e98cb" />

<img width="1533" height="1204" alt="Image" src="https://github.com/user-attachments/assets/6c5a90f8-94ae-4a7d-a1db-462a317cb0c5" />

<img width="1527" height="1204" alt="Image" src="https://github.com/user-attachments/assets/f04592af-597d-4985-a508-d2868b7e7121" />

<img width="1521" height="1204" alt="Image" src="https://github.com/user-attachments/assets/6e637a6a-70f2-4f1c-a91d-c0b3589d2223" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/9c48420e-90d9-4dc2-90c4-eafd3ed73682" />

<img width="1521" height="1204" alt="Image" src="https://github.com/user-attachments/assets/d29ce744-460e-4d78-ada5-dc6c8c39d42f" />

<img width="1515" height="1204" alt="Image" src="https://github.com/user-attachments/assets/fea18140-8d4c-4117-9283-74b7b15742d1" />

-->

<samp>[audio terrain]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;[waveform terrain]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/meisei4/fffftt/blob/main/src/waveform_terrain_3d_dc.c">src/waveform_terrain_3d_dc.c</a> ...... uses <b>Hilbert envelope</b>, <b>RMS</b>, and naive <b>onset strength</b><br>
</samp>


<samp>
  &nbsp;&nbsp;&nbsp;&nbsp;[fft terrain]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/meisei4/fffftt/blob/main/src/fft_terrain_3d_dc.c">src/fft_terrain_3d_dc.c</a> ........... uses <b>chroma</b> and spectral-flux <b>onset strength</b><br>
</samp>


<samp>
  &nbsp;&nbsp;&nbsp;&nbsp;[fft bands terrain]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/meisei4/fffftt/blob/main/src/fft_bands_terrain_3d_dc.c">src/fft_bands_terrain_3d_dc.c</a> ..... uses low/mid/high FFT bands + <b>spectral flatness</b><br><br>
</samp>


<samp>[shadertoy ports]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[meisei4: basic fft visualizer]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shadertoy: <a href="https://www.shadertoy.com/view/t3jGzm">https://www.shadertoy.com/view/t3jGzm</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;src: <a href="https://github.com/meisei4/fffftt/blob/main/src/sh4zam_butterfly.c">src/sh4zam_butterfly.c</a><br>
</samp>
<table width="928">
  <tr>
    <td width="464" align="center"><samp>Dreamcast capture</samp></td>
    <td width="464" align="center"><samp>Shadertoy capture</samp></td>
  </tr>
  <tr>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/358c96bd-2520-42e1-acb0-8aec52358ad5" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/9538fb97-79ec-434c-b659-74deec5030a3" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
  </tr>
</table>
<br>

<samp>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Cotterzz: Visualiser - Picking out notes]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shadertoy: <a href="https://www.shadertoy.com/view/tcG3Rm">https://www.shadertoy.com/view/tcG3Rm</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;src: <a href="https://github.com/meisei4/fffftt/blob/main/src/picking_out_notes_dc.c">src/picking_out_notes_dc.c</a><br>
</samp>
<table width="928">
  <tr>
    <td width="464" align="center"><samp>Dreamcast capture</samp></td>
    <td width="464" align="center"><samp>Shadertoy capture</samp></td>
  </tr>
  <tr>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/f942edb3-cb31-4095-851c-5b907f006d29" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/ff68e8b7-095f-4a61-b838-3e82e0a52e5d" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
  </tr>
</table>
<br>

<samp>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[meisei4: basic waveform data visualizer]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shadertoy: <a href="https://www.shadertoy.com/view/tcSXRz">https://www.shadertoy.com/view/tcSXRz</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;src: <a href="https://github.com/meisei4/fffftt/blob/main/src/waveform_dc.c">src/waveform_dc.c</a><br>
</samp>
<table width="928">
  <tr>
    <td width="464" align="center"><samp>Dreamcast capture</samp></td>
    <td width="464" align="center"><samp>Shadertoy capture</samp></td>
  </tr>
  <tr>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/9dab963d-eabd-40d1-b541-5c6f3e64c544" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
    <td width="464" align="center">
      <video src="https://github.com/user-attachments/assets/df219ba5-18be-4a7e-a023-edb22fd3e6ea" autoplay loop muted playsinline width="464" height="261"></video><br>
    </td>
  </tr>
</table>
<br>

<samp>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[meisei4: sound envelope reference]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;shadertoy: <a href="https://www.shadertoy.com/view/7fXSWB">https://www.shadertoy.com/view/7fXSWB</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;src: <a href="https://github.com/meisei4/fffftt/blob/main/src/sound_envelope_2d_iso_dc.c">src/sound_envelope_2d_iso_dc.c</a> / <a href="https://github.com/meisei4/fffftt/blob/main/src/sound_envelope_3d_dc.c">sound_envelope_3d_dc.c</a><br>
</samp>
<table width="928">
  <tr>
    <td width="232" align="center"><samp>Dreamcast 2D isometric</samp></td>
    <td width="232" align="center"><samp>Dreamcast 3D</samp></td>
    <td width="232" align="center"><samp>GL33 capture</samp></td>
    <td width="232" align="center"><samp>Shadertoy capture</samp></td>
  </tr>
  <tr>
    <td width="232" align="center">
      <video src="https://github.com/user-attachments/assets/ac36e5e0-c8a5-42bc-aa92-9303712dc4a7" autoplay loop muted playsinline width="232" height="131"></video><br>
    </td>
    <td width="232" align="center">
      <video src="https://github.com/user-attachments/assets/d9d90e0c-82a5-44ed-a485-5b57db02a299" autoplay loop muted playsinline width="232" height="131"></video><br>
    </td>
    <td width="232" align="center">
      <video src="https://github.com/user-attachments/assets/d34794b5-c1d7-47bd-9e90-fc808389ccb4" autoplay loop muted playsinline width="232" height="131"></video><br>
    </td>
    <td width="232" align="center">
      <video src="https://github.com/user-attachments/assets/71ac43c5-8667-4efa-9bea-558f183f5602" autoplay loop muted playsinline width="232" height="131"></video><br>
    </td>
  </tr>
</table>
<br>


<samp>[submodules]</samp>

```bash
git clone --recurse-submodules https://github.com/meisei4/fffftt.git
# otherwise:
git clone https://github.com/meisei4/fffftt.git
cd fffftt
git submodule update --init --recursive
```

<samp>[all demos]</samp>

```bash
# [fft]
make sh4zam-butterfly             # run: ./bin/sh4zam_butterfly
make picking-out-notes-dc         # run: ./bin/picking_out_notes_dc
make fft-terrain-3d-dc            # run: ./bin/fft_terrain_3d_dc
make fft-bands-terrain-3d-dc      # run: ./bin/fft_bands_terrain_3d_dc

# [waveform]
make waveform-dc                  # run: ./bin/waveform_dc
make sound-envelope-2d-iso-dc            # run: ./bin/sound_envelope_2d_iso_dc
make sound-envelope-3d-dc         # run: ./bin/sound_envelope_3d_dc
make waveform-terrain-3d-dc       # run: ./bin/waveform_terrain_3d_dc
```


<samp>[run / build / clean]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;flycast_run.sh .................... <a href="https://github.com/meisei4/fffftt/blob/main/flycast_run.sh">flycast_run.sh</a> runs wrappers in <code>./bin/</code><br>
  &nbsp;&nbsp;&nbsp;&nbsp;.elf targets ...................... <code>/pc</code> assets enter CDI build via <code>mkdcdisc</code><br>
  &nbsp;&nbsp;&nbsp;&nbsp;build.sh .......................... <a href="https://github.com/meisei4/fffftt/blob/main/build.sh">build.sh</a> builds all examples<br>
  &nbsp;&nbsp;&nbsp;&nbsp;make clean-all .................... removes build artifacts and <code>.cdi</code> images<br>
</samp>


<samp>[third party]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;raylib ............................ <a href="https://www.raylib.com/">raylib.com</a> / <a href="https://github.com/raysan5/raylib">github.com/raysan5/raylib</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;raylib4Consoles ................... <a href="https://github.com/raylib4Consoles">github.com/raylib4Consoles</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;raylib4Dreamcast .................. <a href="https://github.com/raylib4Consoles/raylib4Dreamcast">github.com/raylib4Consoles/raylib4Dreamcast</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;GLdc .............................. <a href="https://gitlab.com/simulant/GLdc/-/tree/master">gitlab.com/simulant/GLdc</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;sh4zam ............................ <a href="https://github.com/gyrovorbis/sh4zam/">github.com/gyrovorbis/sh4zam</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;KallistiOS ........................ <a href="https://github.com/KallistiOS/KallistiOS">github.com/KallistiOS/KallistiOS</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;KOS docs .......................... <a href="https://kos-docs.dreamcast.wiki/">kos-docs.dreamcast.wiki</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;mkdcdisc .......................... <a href="https://gitlab.com/simulant/mkdcdisc">gitlab.com/simulant/mkdcdisc</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;shadertoy ......................... <a href="https://www.shadertoy.com/">shadertoy.com</a><br>
  &nbsp;&nbsp;&nbsp;&nbsp;shadertoy media ................... <a href="https://shadertoyunofficial.wordpress.com/2019/07/23/shadertoy-media-files/">shadertoy media files</a><br>
</samp>


<samp>[todo]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;add polygon mode for QUAD wire frame in GLdc<br>
  &nbsp;&nbsp;&nbsp;&nbsp;add gates for OpenGL 1.1 raylib desktop builds
</samp>


<samp>[license]<br>
  &nbsp;&nbsp;&nbsp;&nbsp;This project is free software: you can redistribute it and/or modify it<br>
  &nbsp;&nbsp;&nbsp;&nbsp;under the terms of the GNU General Public License as published by the<br>
  &nbsp;&nbsp;&nbsp;&nbsp;Free Software Foundation, either version 2 of the License, or<br>
  &nbsp;&nbsp;&nbsp;&nbsp;(at your option) any later version.<br>
  <br>
  &nbsp;&nbsp;&nbsp;&nbsp;This project is distributed in the hope that it will be useful, but<br>
  &nbsp;&nbsp;&nbsp;&nbsp;WITHOUT ANY WARRANTY; without even the implied warranty of<br>
  &nbsp;&nbsp;&nbsp;&nbsp;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.<br>
  <br>
  &nbsp;&nbsp;&nbsp;&nbsp;See <a href="./LICENSE">LICENSE</a> for details.<br>
</samp>
