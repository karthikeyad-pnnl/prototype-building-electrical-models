%% Batch fit DC/DC converter models for all available converters

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

% Path to converter performance data (modify per your environment)
deviceDataPath = fullfile('..', '..', '..', 'Converter Performance Data');

% CSV containing device metadata and source directory information
deviceList = fullfile('.', 'DC-DC Converters.csv');

% File name, path to use for output
outList = fullfile('.', 'DC-DC Converter Generated Models.csv');

% Standby power output threshold (fraction of nominal power)
% Set to zero or negative to disable
standbyThreshold = 0.05;

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
col.manufacturer  = find(strcmp('Manufacturer',             deviceTableHeaders));
col.model         = find(strcmp('Model',                    deviceTableHeaders));
col.volt_in       = find(strcmp('Rated Voltage Input (V)',  deviceTableHeaders));
col.volt_out      = find(strcmp('Rated Voltage Output (V)', deviceTableHeaders));
col.power_out     = find(strcmp('Rated Power Output (W)',   deviceTableHeaders));
col.eff_data_src  = find(strcmp('Efficiency Data Source',   deviceTableHeaders));
col.data_dir      = find(strcmp('Data Directory',           deviceTableHeaders));
col.model_label   = find(strcmp('Model Label',              deviceTableHeaders));
col.use           = find(strcmp('Use?',                     deviceTableHeaders));
col.eff10         = find(strcmp('Eff @ 10%',                deviceTableHeaders));
col.eff20         = find(strcmp('Eff @ 20%',                deviceTableHeaders));
col.eff30         = find(strcmp('Eff @ 30%',                deviceTableHeaders));
col.eff40         = find(strcmp('Eff @ 40%',                deviceTableHeaders));
col.eff50         = find(strcmp('Eff @ 50%',                deviceTableHeaders));
col.eff60         = find(strcmp('Eff @ 60%',                deviceTableHeaders));
col.eff70         = find(strcmp('Eff @ 70%',                deviceTableHeaders));
col.eff80         = find(strcmp('Eff @ 80%',                deviceTableHeaders));
col.eff90         = find(strcmp('Eff @ 90%',                deviceTableHeaders));
col.eff100        = find(strcmp('Eff @ 100%',               deviceTableHeaders));

% Temporary: filter out devices with broken data sources
brokenData = strcmp('Broken', deviceTable(:,col.use));
deviceTable = deviceTable(!brokenData, :);

% Number of devices
nDevices = size(deviceTable)(1) - 1; % 1 less than number of rows

% Efficiency index vector for devices with no lab characterization data
eff_index = [col.eff10, col.eff20, col.eff30, col.eff40, col.eff50, ...
  col.eff60, col.eff70, col.eff80, col.eff90, col.eff100];

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
deviceTable{1, col.standbyPower} = 'Standby Power (W)';
deviceTable{1, col.alpha}        = 'Loss Model Alpha (W)';
deviceTable{1, col.beta}         = 'Loss Model Beta (W/W)';
deviceTable{1, col.gamma}        = 'Loss Model Gamma (W/W�)';
deviceTable{1, col.alpha_pu}     = 'Loss Model Alpha Per-Unit (pu)';
deviceTable{1, col.beta_pu}      = 'Loss Model Beta Per-Unit (pu)';
deviceTable{1, col.gamma_pu}     = 'Loss Model Gamma Per-Unit (pu)';
deviceTable{1, col.maxEff}       = 'Peak Efficiency (fraction)';
deviceTable{1, col.fullLoadEff}  = 'Full Load Efficiency (fraction)';

% Ensure numeric values for rated voltages, powers
for i = (1:nDevices)
  % Check rated input voltage
  if (ischar(deviceTable{i+1, col.volt_in}))
    deviceTable{i+1, col.volt_in} = str2double(deviceTable{i+1, col.volt_in});
  end
  
  % Check rated output voltage
  if (ischar(deviceTable{i+1, col.volt_out}))
    deviceTable{i+1, col.volt_out} = str2double(deviceTable{i+1, col.volt_out});
  end
  
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
  Pnom = deviceTable{i+1, col.power_out};
  
  % Explicitly clear converter data structures (avoids some errors in Octave?)
  clear powerData;
  
  %% Loss Model
  % Get efficiency data
  if (strcmp(deviceTable{i+1, col.eff_data_src}, 'Datasheet'))
    % Calculated from datasheet curve
    powerData = struct();
    powerData.eff  = cell2mat(deviceTable(i+1, eff_index));
    powerData.Pout = (0.1:0.1:1.0) * Pnom;
    powerData.Pin  = powerData.Pout ./ powerData.eff;
  elseif (strcmp(deviceTable{i+1, col.eff_data_src}, 'Laboratory Characterization'))
    % Use helper function to import the data from CSV
    DataDir  = deviceTable{i+1, col.data_dir};
    powerData = import_measured_converter_power_data( ...
      fullfile(deviceDataPath, DataDir, 'Processed Data'));
  end
  
  % Get power data and calculate standby power
  if (standbyThreshold <= 0 || all(powerData.Pout >= standbyThreshold*Pnom))
    % 2-stage model disabled, or enabled but no data
    Pin = powerData.Pin;
    Pout = powerData.Pout;
    standbyThresholdModel = 0;
    standbyPower = 0;
  else
    % 2-stage model
    standbyThresholdModel = standbyThreshold*Pnom;
    Pin = powerData.Pin(powerData.Pout >= standbyThresholdModel);
    Pout = powerData.Pout(powerData.Pout >= standbyThresholdModel);
    standbyPower = mean(powerData.Pin(powerData.Pout < standbyThresholdModel));
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
  deviceTable{i+1, col.standby}      = standbyThresholdModel; % W
  deviceTable{i+1, col.standbyPower} = standbyPower;          % W
  deviceTable{i+1, col.alpha}        = lossCoeff_va(1);       % W
  deviceTable{i+1, col.beta}         = lossCoeff_va(2);       % W/W
  deviceTable{i+1, col.gamma}        = lossCoeff_va(3);       % W/W^2
  deviceTable{i+1, col.alpha_pu}     = lossCoeff_pu(1);       % pu
  deviceTable{i+1, col.beta_pu}      = lossCoeff_pu(2);       % pu
  deviceTable{i+1, col.gamma_pu}     = lossCoeff_pu(3);       % pu
  deviceTable{i+1, col.maxEff}       = maxEff;                % frac
  deviceTable{i+1, col.fullLoadEff}  = fullLoadEff;           % frac
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
