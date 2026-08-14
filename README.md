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

The generated signal is not arbitrary white noise. It is a semi-empirical UUV target radiated-noise model composed of machinery broadband noise, motor/shaft tonal lines, propeller blade-pass-frequency tones, modulated propeller/cavitation broadband noise, and hull-flow broadband noise.

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

