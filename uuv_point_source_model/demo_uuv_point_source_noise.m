% DEMO_UUV_POINT_SOURCE_NOISE
% One-click demo for a semi-empirical UUV point-source radiated-noise model.
%
% Run from MATLAB:
%   run('E:\HJ\codex\uuv_point_source_model\demo_uuv_point_source_noise.m')

clear; close all; clc;

model_dir = fileparts(mfilename('fullpath'));
addpath(model_dir);

params = uuv_default_params();
params.output_dir = fullfile(model_dir, 'output');

result = uuv_run_model(params);
uuv_render_outputs(result, params);

fprintf('\nUUV point-source model finished.\n');
fprintf('Output folder:\n%s\n', params.output_dir);
fprintf('Shaft frequency: %.2f Hz\n', result.features.shaft_hz);
fprintf('Blade-pass frequency: %.2f Hz\n', result.features.bpf_hz);
fprintf('Tip speed: %.2f m/s\n', result.features.tip_speed_mps);
fprintf('Cavitation activity index: %.2f\n', result.features.cavitation_activity);

