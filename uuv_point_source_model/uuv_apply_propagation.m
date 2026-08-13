function [y, propagation] = uuv_apply_propagation(x, fs, source_f_hz, params)
% UUV_APPLY_PROPAGATION Apply simple spherical spreading and absorption.
%
% This is a preview transfer function only. Replace it with Bellhop/RAM TL
% when coupling to the full 3D sound-field solver.

range_m = norm(params.geometry.receiver_xyz_m - params.geometry.source_xyz_m);
range_m = max(range_m, 1);

tl_source_grid_db = 20 * log10(range_m) * ones(size(source_f_hz));
if params.propagation.include_absorption
    tl_source_grid_db = tl_source_grid_db ...
        + thorp_absorption_db_per_km(source_f_hz / 1000) * (range_m / 1000);
end

if ~params.propagation.enabled
    y = x;
else
    n = numel(x);
    f_full = (0:n-1)' * fs / n;
    f_mirror = min(f_full, fs - f_full);
    tl_full_db = interp1(source_f_hz, tl_source_grid_db, f_mirror, 'linear', 'extrap');
    H = 10.^(-tl_full_db / 20);
    y = real(ifft(fft(x) .* H));
end

propagation = struct();
propagation.range_m = range_m;
propagation.tl_db = tl_source_grid_db;
propagation.received_level_db = params_to_received_level(params, source_f_hz, tl_source_grid_db);
end

function alpha = thorp_absorption_db_per_km(f_khz)
f2 = f_khz.^2;
alpha = 0.11 .* f2 ./ (1 + f2) ...
    + 44 .* f2 ./ (4100 + f2) ...
    + 2.75e-4 .* f2 ...
    + 0.003;
alpha(f_khz <= 0) = 0;
end

function placeholder = params_to_received_level(~, source_f_hz, tl_db)
placeholder = struct();
placeholder.f_hz = source_f_hz;
placeholder.tl_db = tl_db;
end

