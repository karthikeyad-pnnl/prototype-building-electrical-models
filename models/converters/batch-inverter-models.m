%% Batch fit inverter models for all available CEC inverters

%% Clear workspace
% Close plots
close all

% Clear console
clear
clc

%% Configuration
% Path to BEEAM scripts (modify per your environment)
addpath(fullfile('..', '..', '..', ...
  'BEEAM', 'Scripts', 'Converter Empirical Model Fitting'));

% CSV containing device metadata and source directory information
% (Run one of these at a time)
deviceList = fullfile('.', 'PV Inverters.csv');
%deviceList = fullfile('.', 'Battery Inverters.csv');

% File name, path to use for output (Run one of these at a time)
outList = fullfile('.', 'PV Inverter Generated Models.csv');
%outList = fullfile('.', 'Battery Inverter Generated Models.csv');

% Standby power output threshold (fraction of nominal power)
standbyThreshold = 0.01;

% Typically PV inverters have a minimum startup voltage, not minimum output
% power. This threshold is therefore somewhat arbitrary.

%% Read Device List
% Read CSV data
if exist ("OCTAVE_VERSION", "builtin") > 0
  % GNU Octave
  pkg load io;
  deviceTable = csv2cell(deviceList);
else
  % MATLAB
  deviceTable = readcell(deviceList);
end

% Scrap 1st row of CSV (extra header row)
deviceTable = deviceTable(2:end, :);

% Get column headers
deviceTableHeaders = deviceTable(1, :);

% Structure for column indices
col = struct();

% Device data columns indices
col = struct();
col.manufacturer  = find(strcmp('Manufacturer',               deviceTableHeaders));
col.model         = find(strcmp('Model',                      deviceTableHeaders));
col.power_out     = find(strcmp('Rated Power Output (kW)',    deviceTableHeaders));
col.model_label   = find(strcmp('Model Label',                deviceTableHeaders));
col.use           = find(strcmp('Use?',                       deviceTableHeaders));
col.night_tare    = find(strcmp('Night Tare Loss (W)',        deviceTableHeaders));
col.pwr10         = find(strcmp('Power Level 10% (kW)',       deviceTableHeaders));
col.pwr20         = find(strcmp('Power Level 20% (kW)',       deviceTableHeaders));
col.pwr30         = find(strcmp('Power Level 30% (kW)',       deviceTableHeaders));
col.pwr50         = find(strcmp('Power Level 50% (kW)',       deviceTableHeaders));
col.pwr75         = find(strcmp('Power Level 75% (kW)',       deviceTableHeaders));
col.pwr100        = find(strcmp('Power Level 100% (kW)',      deviceTableHeaders));
col.eff10_vmin    = find(strcmp('Efficiency @ Vmin 10% (%)',  deviceTableHeaders));
col.eff20_vmin    = find(strcmp('Efficiency @ Vmin 20% (%)',  deviceTableHeaders));
col.eff30_vmin    = find(strcmp('Efficiency @ Vmin 30% (%)',  deviceTableHeaders));
col.eff50_vmin    = find(strcmp('Efficiency @ Vmin 50% (%)',  deviceTableHeaders));
col.eff75_vmin    = find(strcmp('Efficiency @ Vmin 75% (%)',  deviceTableHeaders));
col.eff100_vmin   = find(strcmp('Efficiency @ Vmin 100% (%)', deviceTableHeaders));
col.eff10_vnom    = find(strcmp('Efficiency @ Vnom 10% (%)',  deviceTableHeaders));
col.eff20_vnom    = find(strcmp('Efficiency @ Vnom 20% (%)',  deviceTableHeaders));
col.eff30_vnom    = find(strcmp('Efficiency @ Vnom 30% (%)',  deviceTableHeaders));
col.eff50_vnom    = find(strcmp('Efficiency @ Vnom 50% (%)',  deviceTableHeaders));
col.eff75_vnom    = find(strcmp('Efficiency @ Vnom 75% (%)',  deviceTableHeaders));
col.eff100_vnom   = find(strcmp('Efficiency @ Vnom 100% (%)', deviceTableHeaders));
col.eff10_vmax    = find(strcmp('Efficiency @ Vmax 10% (%)',  deviceTableHeaders));
col.eff20_vmax    = find(strcmp('Efficiency @ Vmax 20% (%)',  deviceTableHeaders));
col.eff30_vmax    = find(strcmp('Efficiency @ Vmax 30% (%)',  deviceTableHeaders));
col.eff50_vmax    = find(strcmp('Efficiency @ Vmax 50% (%)',  deviceTableHeaders));
col.eff75_vmax    = find(strcmp('Efficiency @ Vmax 75% (%)',  deviceTableHeaders));
col.eff100_vmax   = find(strcmp('Efficiency @ Vmax 100% (%)', deviceTableHeaders));

% Temporary: filter out devices with broken data sources
brokenData = strcmp('Broken', deviceTable(:,col.use));
deviceTable = deviceTable(!brokenData, :);

% Number of devices
nDevices = size(deviceTable)(1) - 1; % 1 less than number of rows

% Column indices for power and efficiency data
pwr_index = [col.pwr10, col.pwr20, col.pwr30, col.pwr50, col.pwr75, col.pwr100];
eff_index_at_vmin = [col.eff10_vmin, col.eff20_vmin, col.eff30_vmin, ...
  col.eff50_vmin, col.eff75_vmin, col.eff100_vmin];
eff_index_at_vnom = [col.eff10_vnom, col.eff20_vnom, col.eff30_vnom, ...
  col.eff50_vnom, col.eff75_vnom, col.eff100_vnom];
eff_index_at_vmax = [col.eff10_vmax, col.eff20_vmax, col.eff30_vmax, ...
  col.eff50_vmax, col.eff75_vmax, col.eff100_vmax];

% More device table column indices (needed for output later)
k = 1;
nCols = size(deviceTable)(2);
col.standby      = nCols + k++;
col.standbyPower = nCols + k++;
col.alpha        = nCols + k++;
col.beta         = nCols + k++;
col.gamma        = nCols + k++;
col.alpha_pu     = nCols + k++;
col.beta_pu      = nCols + k++;
col.gamma_pu     = nCols + k++;
col.maxEff       = nCols + k++;
col.fullLoadEff  = nCols + k++;

%% Setup
% Add columns to cell array for output purposes
deviceTable{1, col.standby}      = 'Standby Threshold (W)';
deviceTable{1, col.standbyPower} = 'Standby Power (W)'; % Night tare loss
deviceTable{1, col.alpha}        = 'Loss Model Alpha (W)';
deviceTable{1, col.beta}         = 'Loss Model Beta (W/W)';
deviceTable{1, col.gamma}        = 'Loss Model Gamma (W/W²)';
deviceTable{1, col.alpha_pu}     = 'Loss Model Alpha Per-Unit (pu)';
deviceTable{1, col.beta_pu}      = 'Loss Model Beta Per-Unit (pu)';
deviceTable{1, col.gamma_pu}     = 'Loss Model Gamma Per-Unit (pu)';
deviceTable{1, col.maxEff}       = 'Peak Efficiency (fraction)';
deviceTable{1, col.fullLoadEff}  = 'Full Load Efficiency (fraction)';

% Ensure numeric values for rated powers
for i = (1:nDevices)
  % Check rated output power
  if (ischar(deviceTable{i+1, col.power_out}))
    deviceTable{i+1, col.power_out} = str2double(deviceTable{i+1, col.power_out});
  end
end

%% Iterate Devices
% For each device...
for i = (1:nDevices)
  % Gather metadata
  ModelName = deviceTable{i+1, col.model_label};
  disp(ModelName);
  
  % Device ratings
  Pnom = deviceTable{i+1, col.power_out} * 1000; % kW => W
  
  % Clear existing variables (helps with some Octave errors?)
  clear Eff Pout Pin;
  
  %% Loss Model
  % Assemble efficiency data
  Eff  = cell2mat(deviceTable(i+1, [eff_index_at_vmin, eff_index_at_vnom, eff_index_at_vmax])) / 100; % % => fraction
  Pout = cell2mat(deviceTable(i+1, [pwr_index, pwr_index, pwr_index])) * 1000; % kW => W
  Pin  = Pout ./ Eff;
  
  % Get power data and calculate standby power
  if (standbyThreshold <= 0)
    standbyPower = 0;
  else
    standbyPower = deviceTable{i+1, col.night_tare};
  end
  
  % Fit Efficiency Model (VA)
  lossCoeff_va = loss_model(Pin, Pout, 1);
  
  % Fit Efficiency Model (pu)
  lossCoeff_pu = loss_model(Pin, Pout, Pnom);

  % Individual alpha, beta, gamma (for efficiency calculations)
  alpha = lossCoeff_pu(1);
  beta  = lossCoeff_pu(2);
  gamma = lossCoeff_pu(3);
  
  % Calculate maximum and full load efficiencies
  [~, maxEff] = fminbnd(@(x) -1*x/(x + (alpha + beta*x + gamma*x^2)), 0, 1);
  maxEff = -maxEff; # Fix sign; fminbnd() minimizes negative efficiency
  fullLoadEff = 1/(1 + (alpha + beta + gamma));
  
  % Record fitted model information
  deviceTable{i+1, col.standby} = max(standbyThreshold, 0)*Pnom; % W
  deviceTable{i+1, col.standbyPower} = standbyPower;             % W
  deviceTable{i+1, col.alpha} = lossCoeff_va(1);                 % W
  deviceTable{i+1, col.beta}  = lossCoeff_va(2);                 % W/W
  deviceTable{i+1, col.gamma} = lossCoeff_va(3);                 % W/W^2
  deviceTable{i+1, col.alpha_pu} = lossCoeff_pu(1);              % pu
  deviceTable{i+1, col.beta_pu}  = lossCoeff_pu(2);              % pu
  deviceTable{i+1, col.gamma_pu} = lossCoeff_pu(3);              % pu
  deviceTable{i+1, col.maxEff} = maxEff;                         % frac
  deviceTable{i+1, col.fullLoadEff} = fullLoadEff;               % frac
end

%% Export Results
% Save a CSV file documenting the fitted models
if exist ("OCTAVE_VERSION", "builtin") > 0
  % Requires the latest version of io package from Octave Forge!
  % pkg install -forge io
  
  % Write cell array to CSV file
  cell2csv(outList, deviceTable);
  
else
  % Needs to be tested w/ MATLAB
  
  % Prep to write the table 
  tableOut = cell2table(deviceTable(2:end,:), 'VariableNames', deviceTable(1,:));
  
  % Write the table to a CSV file
  writetable(tableOut, outList);
end

% Also save a summary .mat file
fName = strrep(outList, '.csv', '.mat');
save('-V6', fName, 'deviceTable');