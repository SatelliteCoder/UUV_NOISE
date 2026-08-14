# UUV_NOISE

MATLAB semi-empirical UUV target radiated-noise model for underwater 3D sound-field simulation.

The project is in:

```text
uuv_source_model/
```

It supports four equivalent source geometries:

```text
point   point source
line    line source
surface surface source
volume  volume source
```

The generated signal is a semi-empirical UUV target radiated-noise model composed of machinery broadband noise, motor/shaft tonal lines, propeller blade-pass-frequency tones, modulated propeller/cavitation broadband noise, and hull-flow broadband noise.

See the detailed documentation:

```text
uuv_source_model/README.md
```

Run in MATLAB:

```matlab
cd('uuv_source_model')
run_point_source_noise      % point source only
run_line_source_noise       % line source only
run_surface_source_noise    % surface source only
run_volume_source_noise     % volume source only
run_all_source_types        % all four source types
```

Example rendered outputs are included under:

```text
uuv_source_model/output/
```
<img width="2060" height="1516" alt="uuv_demon" src="https://github.com/user-attachments/assets/875bb7b4-36b1-4c23-b5b2-b193cfed6e6c" />
<img width="2076" height="1516" alt="uuv_lofar" src="https://github.com/user-attachments/assets/a58688b8-c716-4341-86aa-730e8e0ef1f2" />
<img width="2069" height="1524" alt="uuv_source_spectrum" src="https://github.com/user-attachments/assets/49ee22b6-3b82-451e-b50e-eae5f677a9b5" />
<img width="2054" height="1405" alt="uuv_source_geometry_3d" src="https://github.com/user-attachments/assets/97ee9d22-1e9b-481a-a4d7-9e1a6095d7e7" />

<img width="2046" height="1516" alt="uuv_waveforms" src="https://github.com/user-attachments/assets/743dd37a-a0e1-42f5-bc61-b4b4f199e3cd" />
<img width="2060" height="1509" alt="uuv_summary" src="https://github.com/user-attachments/assets/9c3ef03c-cce9-44a3-aa1f-6d1281669260" />
<img width="2030" height="1516" alt="uuv_spectrogram" src="https://github.com/user-attachments/assets/7b8b9d84-ebfb-466f-bf47-25bd458c2529" />


