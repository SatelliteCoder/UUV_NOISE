# UUV Point-Source Semi-Empirical Noise Model

This MATLAB mini-project generates a simplified UUV target radiated-noise
model for 3D underwater sound-field simulation.

## Run

In MATLAB:

```matlab
run('uuv_point_source_model\demo_uuv_point_source_noise.m')
```

## Model

The UUV is treated as an equivalent omnidirectional monopole point source.
The source signal is synthesized as:

```text
s_uuv(t) = machinery broadband + machinery tones
         + propeller blade-pass tones
         + modulated propeller/cavitation broadband
         + flow broadband
```

The preview propagation uses:

```text
TL(f) = 20 log10(r) + alpha(f) r
```

where `alpha(f)` is the Thorp seawater absorption approximation in dB/km.
For the formal 3D sound-field system, replace this preview TL with Bellhop,
RAM, Kraken, or the chosen solver's transmission loss.

## Main Outputs

The script writes to:

```text
E:\HJ\codex\uuv_point_source_model\output
```

Expected files:

```text
uuv_point_source_result.mat
uuv_source_spectrum.csv
uuv_tonal_lines.csv
uuv_source_signal.wav
uuv_received_target.wav
uuv_received_mix.wav
uuv_source_spectrum.png
uuv_waveforms.png
uuv_spectrogram.png
uuv_lofar.png
uuv_demon.png
uuv_point_source_3d.png
uuv_summary.png
```

The default calibration values are placeholders for engineering simulation.

<img width="2046" height="1516" alt="uuv_waveforms" src="https://github.com/user-attachments/assets/7f9fdbfe-19cf-47f7-935f-886c2787aa8e" />
<img width="2060" height="1509" alt="uuv_summary" src="https://github.com/user-attachments/assets/05678b94-2349-4e67-86b8-1978d9e8d17b" />
<img width="2030" height="1516" alt="uuv_spectrogram" src="https://github.com/user-attachments/assets/d3a0626e-e18a-4c59-80fc-b42b6f07ef2d" />
<img width="2079" height="1476" alt="uuv_point_source_3d" src="https://github.com/user-attachments/assets/304742ce-80a3-49aa-a868-5bc79564888e" />
<img width="2076" height="1516" alt="uuv_lofar" src="https://github.com/user-attachments/assets/8101a712-b83e-4e36-b1af-4039d9abba34" />
<img width="2060" height="1516" alt="uuv_demon" src="https://github.com/user-attachments/assets/6a14f7f9-3a52-4c66-8b76-cbc86aa99ef6" />





Use measured UUV data, tank-test data, or CFD/FW-H offline results to tune
the source levels before claiming physical accuracy for a specific vehicle.

