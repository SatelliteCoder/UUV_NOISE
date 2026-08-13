# UUV Point-Source Semi-Empirical Noise Model

This MATLAB mini-project generates a simplified UUV target radiated-noise
model for 3D underwater sound-field simulation.

## Run

In MATLAB:

```matlab
run('E:\HJ\codex\uuv_point_source_model\demo_uuv_point_source_noise.m')
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
Use measured UUV data, tank-test data, or CFD/FW-H offline results to tune
the source levels before claiming physical accuracy for a specific vehicle.

