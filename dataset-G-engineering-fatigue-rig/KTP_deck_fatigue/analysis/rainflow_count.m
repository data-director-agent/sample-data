% rainflow_count.m  - rainflow counting + Miner's rule for rig 1 runs
% TB, Feb 2026. Needs Signal Processing Toolbox (rainflow).
% Tested in MATLAB R2024b on the Hoyland laptop.

clear; close all;

dataDir = 'C:\Users\tbrennan\OneDrive - Hoyland Composites Ltd\KTP\daq\';
runFile = 'run_017_strain_raw.csv';

M = readmatrix(fullfile(dataDir, runFile), 'NumHeaderLines', 4);
t   = M(:,1);
eps = M(:,2:9) * 1e-6;          % convert ue -> strain

fs = 2000;                      % Hz (see daq_config)
E  = 21.3e3;                    % MPa, skin laminate modulus (Hoyland datasheet)

for ch = 1:8
    sigma = eps(:,ch) * E;      % MPa
    c = rainflow(sigma, fs);    % Signal Processing Toolbox
    ranges{ch} = c(:,2);
    counts{ch} = c(:,1);
end

% Miner's sum with design S-N curve (C, m from Hoyland design note DN-112)
C = 2.4e15; m = 5;
for ch = 1:8
    D(ch) = sum(counts{ch} ./ (C * ranges{ch}.^(-m)));
end
disp(D)

% TODO scale D up from capture window to full test cycles
% TODO P07 - loads from Hoyland, check
