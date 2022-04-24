%% Create groups of converters and find device models that represent the median
%% efficiency for the converters in each group

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

% CSV file containing input groups (must be UTF-8, no BOM)
groupInputFile = fullfile('.', 'Converter Groups.csv');

% Path to fitted AC/DC converter model .mat files
modelPath = fullfile('.', 'AC-DC Individual Models');

% Save CSV files for filtered groups?
saveGroupCSV = true;

% Save figures?
saveFigures = true;

% Figure setup
useTitle = false;
paperHeight = 3; % in
paperWidth  = 4; % in
%set (groot, "DefaultTextFontName", "FreeSans") % Change font here if needed

% Power step sizes: fitting, plotting
step_size = 0.10;
plot_size = 0.01;

%% Read Groups
% Read CSV data
if exist ("OCTAVE_VERSION", "builtin") > 0
  % GNU Octave
  pkg load io;
  groupTable = csv2cell(groupInputFile);
else
  % MATLAB
  groupTable = readcell(groupInputFile);
end

% Get column headers
groupTableHeaders = groupTable(1, :);

% Structure for column indices
grpCol = struct();

% Device data columns indices
grpCol.category    = find(strcmp('Category',                     groupTableHeaders));
grpCol.group_label = find(strcmp('Device Group Description',     groupTableHeaders));
grpCol.group_file  = find(strcmp('Output Filename',              groupTableHeaders)); 
grpCol.model_file  = find(strcmp('Converter Models Source File', groupTableHeaders));
grpCol.pwr_unit    = find(strcmp('Power Column Unit',            groupTableHeaders));
grpCol.conv_type   = find(strcmp('Type',                         groupTableHeaders));
grpCol.vin_min     = find(strcmp('Min Voltage In',               groupTableHeaders));
grpCol.vin_max     = find(strcmp('Max Voltage In',               groupTableHeaders));
grpCol.vout_min    = find(strcmp('Min Voltage Out',              groupTableHeaders));
grpCol.vout_max    = find(strcmp('Max Voltage Out',              groupTableHeaders));
grpCol.pout_min    = find(strcmp('Min Power Out',                groupTableHeaders));
grpCol.pout_max    = find(strcmp('Max Power Out',                groupTableHeaders));
grpCol.use_standby = find(strcmp('Use Standby',                  groupTableHeaders));

% Number of groups
nGroups = size(groupTable)(1) - 1; % 1 less than number of rows

%% Summary Output File Setup
% Summary output directory, file name (tracks input file name)
[groupSummaryDir, groupSummaryFilename, ~] = fileparts(groupInputFile);
groupSummaryDir = fullfile(groupSummaryDir, groupSummaryFilename);
groupSummaryFilename = strcat(groupSummaryFilename, ' Median Models');

% Create output directory
mkdir(groupSummaryDir);

# Summary columns (for output table)
k = 1;
summaryCol = struct();
summaryCol.category     = k++;
summaryCol.group_label  = k++;
summaryCol.group_file   = k++;
summaryCol.model_label  = k++;
summaryCol.model_file   = k++;
summaryCol.rmse         = k++;
summaryCol.vin_rated    = k++;
summaryCol.vout_rated   = k++;
summaryCol.p_rated      = k++;
summaryCol.standbyThr   = k++;
summaryCol.standbyPower = k++;
summaryCol.alpha        = k++;
summaryCol.beta         = k++;
summaryCol.gamma        = k++;
summaryCol.alpha_pu     = k++;
summaryCol.beta_pu      = k++;
summaryCol.gamma_pu     = k++;
summaryCol.maxEff       = k++;
summaryCol.fullLoadEff  = k++;

% Cell array for output
summaryTable = cell(nGroups + 1, length(fieldnames(summaryCol)));

% Headers in summary table
summaryTable{1, summaryCol.category}     = 'Category';
summaryTable{1, summaryCol.group_label}  = 'Device Group Description';
summaryTable{1, summaryCol.group_file}   = 'Device Group File';
summaryTable{1, summaryCol.model_label}  = 'Median Model Label';
summaryTable{1, summaryCol.model_file}   = 'Median Model File';
summaryTable{1, summaryCol.rmse}         = 'Median Model RMSE';
summaryTable{1, summaryCol.vin_rated}    = 'Rated Voltage Input (V)';
summaryTable{1, summaryCol.vout_rated}   = 'Rated Voltage Output (V)';
summaryTable{1, summaryCol.p_rated}      = 'Rated Power Output (W)';
summaryTable{1, summaryCol.standbyThr}   = 'Standby Threshold (W)';
summaryTable{1, summaryCol.standbyPower} = 'Standby Power (W)';
summaryTable{1, summaryCol.alpha}        = 'Loss Model Alpha (W)';
summaryTable{1, summaryCol.beta}         = 'Loss Model Beta (W/W)';
summaryTable{1, summaryCol.gamma}        = 'Loss Model Gamma (W/W²)';
summaryTable{1, summaryCol.alpha_pu}     = 'Loss Model Alpha Per-Unit (pu)';
summaryTable{1, summaryCol.beta_pu}      = 'Loss Model Beta Per-Unit (pu)';
summaryTable{1, summaryCol.gamma_pu}     = 'Loss Model Gamma Per-Unit (pu)';
summaryTable{1, summaryCol.maxEff}       = 'Peak Efficiency (fraction)';
summaryTable{1, summaryCol.fullLoadEff}  = 'Full Load Efficiency (fraction)';

%% Iterate Groups
% For each group...
for g = 1:nGroups
  %% Load Models
  % Get group label
  groupLabel = groupTable{g+1, grpCol.group_label};
  groupFile  = groupTable{g+1, grpCol.group_file};
  
  % Get device file
  deviceFile = groupTable{g+1, grpCol.model_file};
  
  % Read device models from MAT data
  load(deviceFile, "deviceTable");

  % Get column headers
  deviceTableHeaders = deviceTable(1, :);
  
  % Structure for column indices
  col = struct();
  
  % Column label for power (based on power unit)
  powerOutColumnLabel = strcat('Rated Power Output (', ...
    groupTable{g+1, grpCol.pwr_unit}, ')');
  
  % Device data columns indices
  col = struct();
  col.manufacturer  = find(strcmp('Manufacturer',                    deviceTableHeaders));
  col.model         = find(strcmp('Model',                           deviceTableHeaders));
  col.model_label   = find(strcmp('Model Label',                     deviceTableHeaders));
  col.model_file    = find(strcmp('Model File',                      deviceTableHeaders));
  col.conv_type     = find(strcmp('Type',                            deviceTableHeaders));
  col.use           = find(strcmp('Use?',                            deviceTableHeaders));
  col.volt_in       = find(strcmp('Rated Voltage Input (V)',         deviceTableHeaders));
  col.volt_out      = find(strcmp('Rated Voltage Output (V)',        deviceTableHeaders));
  col.power_out     = find(strcmp(powerOutColumnLabel,               deviceTableHeaders));
  col.standbyThr    = find(strcmp('Standby Threshold (W)',           deviceTableHeaders));
  col.standbyPower  = find(strcmp('Standby Power (W)',               deviceTableHeaders));
  col.alpha_pu      = find(strcmp('Loss Model Alpha Per-Unit (pu)',  deviceTableHeaders));
  col.beta_pu       = find(strcmp('Loss Model Beta Per-Unit (pu)',   deviceTableHeaders));
  col.gamma_pu      = find(strcmp('Loss Model Gamma Per-Unit (pu)',  deviceTableHeaders));
  col.maxEff        = find(strcmp('Peak Efficiency (fraction)',      deviceTableHeaders));
  col.fullLoadEff   = find(strcmp('Full Load Efficiency (fraction)', deviceTableHeaders));
  
  % Number of devices
  nDevices = size(deviceTable)(1) - 1; % 1 less than number of rows
  
  % Multiplier for power output column
  if (strcmp(groupTable{g+1, grpCol.pwr_unit}, 'W'))
    # W -> W
    power_scale = 1;
  elseif (strcmp(groupTable{g+1, grpCol.pwr_unit}, 'kW'))
    # kW -> W
    power_scale = 1000;
  else
    error('Invalid power unit');
  end

  %% Filtering
  % Input voltage limits [lower,upper)
  Vin_min = groupTable{g+1, grpCol.vin_min};
  Vin_max = groupTable{g+1, grpCol.vin_max};

  % Output voltage limits [lower,upper)
  Vout_min = groupTable{g+1, grpCol.vout_min};
  Vout_max = groupTable{g+1, grpCol.vout_max};
  
  % Power limits [lower,upper)
  Prated_min = groupTable{g+1, grpCol.pout_min};
  Prated_max = groupTable{g+1, grpCol.pout_max};
  
  % Scrap header row
  filteredTable = deviceTable(2:end, :);

  % Apply filter criteria
  filteredDeviceRows = ...
    strcmp(filteredTable(:, col.use), 'Y')                  & ...
    cell2mat(filteredTable(:, col.volt_in))   >= Vin_min    & ...
    cell2mat(filteredTable(:, col.volt_in))   <  Vin_max    & ...
    cell2mat(filteredTable(:, col.volt_out))  >= Vout_min   & ...
    cell2mat(filteredTable(:, col.volt_out))  <  Vout_max   & ...
    cell2mat(filteredTable(:, col.power_out)) >= Prated_min & ...
    cell2mat(filteredTable(:, col.power_out)) <  Prated_max ;
  
  % Apply converter type filter?
  typeFilter = groupTable{g+1, grpCol.conv_type};
  if (!isempty(typeFilter))
    filteredDeviceRows = filteredDeviceRows & ...
      strcmp(filteredTable(:, col.conv_type), typeFilter);
  endif
  
  % Filtered table
  filteredTable = filteredTable(filteredDeviceRows,:);

  % Number of devices (filtered)
  nDevFiltered = size(filteredTable)(1);
  
  % Ensure at least 3 devices
  if (nDevFiltered < 1)
    error('Filter too strict: no devices after filter.')
  endif
  
  %% Group CSV
  % Save a CSV file of the group
  if  (saveGroupCSV)
    groupCsv = fullfile(groupSummaryDir, ...
      strcat({'Group '}, {groupFile}, {'.csv'}){:});
    if exist ("OCTAVE_VERSION", "builtin") > 0
      % Requires the latest version of io package from Octave Forge!
      % pkg install -forge io
      
      % Write cell array to CSV file
      cell2csv(groupCsv, [deviceTableHeaders; filteredTable]);
      
    else
      % Needs to be tested w/ MATLAB
      
      % Prep to write the table 
      tableOut = cell2table(filteredTable, 'VariableNames', deviceTableHeaders);
      
      % Write the table to a CSV file
      writetable(tableOut, groupCsv);
    end
  end
  
  %% Setup
  % Power (column) vectors
  p_out  = (0:step_size:1)';
  p_plot = (0:plot_size:1)';

  % Matrics to hold data for curves (rows = power, columns = devices)
  lossMatrix           = zeros(length(p_out), nDevFiltered);
  lossMatrixPlot       = zeros(length(p_plot), nDevFiltered); 
  efficiencyMatrixPlot = zeros(length(p_plot), nDevFiltered);
  
  % Use standby?
  use_standby = groupTable{g+1, grpCol.use_standby};
  
  %% Generate Curves
  % For each device...
  for i = 1:nDevFiltered
    % Device ratings
    Pnom = filteredTable{i, col.power_out} * power_scale; 
    Vnom = filteredTable{i, col.volt_in}; 
    Inom = Pnom / Vnom;
    
    % Loss model (per-unit)
    alpha = filteredTable{i, col.alpha_pu}; 
    beta  = filteredTable{i, col.beta_pu}; 
    gamma = filteredTable{i, col.gamma_pu};
    
    % Standby threshold and power (per-unit)
    standbyThreshold = filteredTable{i, col.standbyThr} / Pnom;
    standbyPower = filteredTable{i, col.standbyPower} / Pnom;
    
    % Calculate homotopy transition to standby power
    if (!use_standby || isempty(standbyThreshold) || isempty (standbyPower) || standbyThreshold <= 0)
      % No standby modeled
      standbyPower = 0;
      
      % Lambda for fitting
      lambda = zeros(size(p_out));
      
      % Lambda for plotting
      lambda_plot = zeros(size(p_plot));
    else
      % Smooth transition (fitting)
      lambda = (standbyThreshold - p_out) / standbyThreshold;
      lambda(lambda < 0) = 0;
      lambda(lambda > 1) = 1;
      
      % Smooth transition (plotting)
      lambda_plot = (standbyThreshold - p_plot) / standbyThreshold;
      lambda_plot(lambda_plot < 0) = 0;
      lambda_plot(lambda_plot > 1) = 1;
    end
    
    % Calculate losses (fitting)
    p_loss = lambda .* standbyPower + ...
      (1-lambda).*(alpha + beta .* p_out + gamma .* p_out.^2);
    
    % Calculate losses (plotting)
    p_loss_plot = lambda_plot .* standbyPower + ...
      (1-lambda_plot).*(alpha + beta .* p_plot + gamma .* p_plot.^2);
    
    % Store in matrices
    lossMatrix(:,i)     = p_loss;
    lossMatrixPlot(:,i) = p_loss_plot;
    
    % Calc and store efficiency
    efficiencyMatrixPlot(:,i) = p_plot ./ (p_plot + p_loss_plot);
  end

  %% Find Median Model
  % Get median loss values
  p_loss_median = median(lossMatrix, 2);
  
  % Function to calculate root-mean-squared error
  rmse = @(y, y_fit) sqrt(meansq(y - y_fit));
  
  % Calculate RMSE of each model's curve with respect to the median values
  rmseOfModels = zeros(1,nDevFiltered);
  for i = 1:nDevFiltered
    rmseOfModels(i) = rmse(p_loss_median, lossMatrix(:,i));
  end

  % Find best fit model
  medianModelIndex = find(rmseOfModels == min(rmseOfModels));
  
  %% Summarize
  % Get median model parameters
  Pnom                  = filteredTable{medianModelIndex, col.power_out} * power_scale;
  standbyThresholdModel = filteredTable{medianModelIndex, col.standbyThr} / Pnom;
  standbyPowerModel     = filteredTable{medianModelIndex, col.standbyPower} / Pnom;
  alpha_pu              = filteredTable{medianModelIndex, col.alpha_pu};
  beta_pu               = filteredTable{medianModelIndex, col.beta_pu};
  gamma_pu              = filteredTable{medianModelIndex, col.gamma_pu};
  
  % Calculate Volt-Ampere loss model parameters
  alpha_va = alpha_pu * (Pnom / 1);
  beta_va  = beta_pu;
  gamma_va = gamma_pu * (1 / Pnom);
  
  if (isempty(col.model_file))
    % No model file (i.e. not an AC/DC model with harmonics)
    medianModelFile = [];
  else
    % Get the model file
    medianModelFile = filteredTable{medianModelIndex, col.model_file};
  end
  
  % Add metadata for best fit model to group summary output cell array
  summaryTable{g+1, summaryCol.category}     = groupTable{g+1, grpCol.category};
  summaryTable{g+1, summaryCol.group_label}  = groupLabel;
  summaryTable{g+1, summaryCol.group_file}   = groupFile;
  summaryTable{g+1, summaryCol.model_label}  = filteredTable{medianModelIndex, col.model_label};
  summaryTable{g+1, summaryCol.model_file}   = medianModelFile;
  summaryTable{g+1, summaryCol.rmse}         = rmseOfModels(medianModelIndex);
  summaryTable{g+1, summaryCol.vin_rated}    = filteredTable{medianModelIndex, col.volt_in};
  summaryTable{g+1, summaryCol.vout_rated}   = filteredTable{medianModelIndex, col.volt_out};
  summaryTable{g+1, summaryCol.p_rated}      = Pnom;
  summaryTable{g+1, summaryCol.standbyThr}   = filteredTable{medianModelIndex, col.standbyThr};
  summaryTable{g+1, summaryCol.standbyPower} = filteredTable{medianModelIndex, col.standbyPower};
  summaryTable{g+1, summaryCol.alpha}        = alpha_va;
  summaryTable{g+1, summaryCol.beta}         = beta_va;
  summaryTable{g+1, summaryCol.gamma}        = gamma_va;
  summaryTable{g+1, summaryCol.alpha_pu}     = alpha_pu;
  summaryTable{g+1, summaryCol.beta_pu}      = beta_pu;
  summaryTable{g+1, summaryCol.gamma_pu}     = gamma_pu;
  summaryTable{g+1, summaryCol.maxEff}       = filteredTable{medianModelIndex, col.maxEff};
  summaryTable{g+1, summaryCol.fullLoadEff}  = filteredTable{medianModelIndex, col.fullLoadEff};
  
  %% Plots
  % Power vector for plots
  mdl_Pout = p_plot;
  
  % Calculate homotopy transition to standby power for median model
  if (isempty(standbyThresholdModel) || standbyThresholdModel <= 0)
    % No standby modeled
    mdl_Ploss = alpha_pu + beta_pu .* mdl_Pout + gamma_pu .* mdl_Pout.^2;
  else
    % Smooth transition
    mdl_lambda = (standbyThresholdModel - mdl_Pout) / standbyThresholdModel;
    mdl_lambda(mdl_lambda < 0) = 0;
    mdl_lambda(mdl_lambda > 1) = 1;
    
    % Modeled loss
    mdl_Ploss = mdl_lambda .* standbyPowerModel + ...
      (1-mdl_lambda).*(alpha_pu + beta_pu .* mdl_Pout + gamma_pu .* mdl_Pout.^2);
  end
  
  % Modeled efficiency
  mdl_Pin = mdl_Pout + mdl_Ploss;
  mdl_Eff = mdl_Pout ./ mdl_Pin;

  % TO DO: Better legends (or generate these plots in a different program)

  % Plot: Loss curves
  plotGray = 0.8*[1, 1, 1]; % Light gray
  if (saveFigures)
    figure
    plot(p_plot, lossMatrixPlot(:,1), '-', 'color', plotGray, ...
      'displayname', 'Individual Models'); 
    hold on;
    legend('location', 'northwest', 'autoupdate', 'off');
    plot(p_plot, lossMatrixPlot(:,2:end), '-', 'color', plotGray);
    legend('autoupdate', 'on');
    grid on;
    plot(p_out, p_loss_median, ':k', 'marker', 's', 'markersize', 4, ...
      'displayname', 'Median Loss Points'); 
    plot(mdl_Pout, mdl_Ploss, '-.r', 'linewidth', 1.5, ...
      'displayname', 'Best Match Model'); 
    hold off
    xlabel('Converter Power Output (pu)');
    ylabel('Converter Loss (pu)');
    if (useTitle)
      title(strcat({'Representative Median Loss Model: '; groupLabel}));
    endif
    
    % Paper setup
    set(gcf, 'PaperUnits', 'inches');
    set(gcf, 'PaperOrientation', 'portrait');
    set(gcf, 'PaperSize', [paperHeight,paperWidth]);
    set(gcf, 'PaperPosition', [0,0,paperWidth,paperHeight]);
    
    % Plot name
    plotName = 'Representative Median Loss Model';
    
    % Save PNG
    figfn = fullfile(groupSummaryDir, cstrcat(groupFile, ' ', plotName, '.png'));
    print(figfn, '-color', '-r600');
    
    % Save EPS
    %figfn = fullfile(groupSummaryDir, strcat(groupFile, ' ', plotName, '.eps'));
    %print(figfn, '-color');   
  endif
  
  % Plot: Efficiency curves
  if (saveFigures)
    % Median efficiency
    efficiency_median = p_out ./ (p_out + p_loss_median);
    
    % Figure
    figure
    plot(p_plot, 100 .* efficiencyMatrixPlot(:,1), '-', 'color', plotGray, ...
      'displayname', 'Individual Models'); 
    hold on;
    legend('location', 'southeast', 'autoupdate', 'off');
    plot(p_plot, 100 .* efficiencyMatrixPlot(:,2:end), '-', 'color', plotGray);
    legend('autoupdate', 'on');
    grid on;
    plot(p_out, 100 .* efficiency_median, ':k', 'marker', 's', 'markersize', 4, ...
      'displayname', 'Median Efficiency Points'); 
    plot(mdl_Pout, 100 .* mdl_Eff, '-.r', 'linewidth', 1.5, ...
      'displayname', 'Best Match Model'); 
    hold off
    xlabel('Converter Power Output (Fraction of Rated Power)');
    ylabel('Converter Efficiency (%)');
    if (useTitle)
      title(strcat({'Representative Median Efficiency Curve: '; groupLabel}));
    endif

    % Paper setup
    set(gcf, 'PaperUnits', 'inches');
    set(gcf, 'PaperOrientation', 'portrait');
    set(gcf, 'PaperSize', [paperHeight,paperWidth]);
    set(gcf, 'PaperPosition', [0,0,paperWidth,paperHeight]);
    
    % Plot name
    plotName = 'Representative Median Efficiency Curve';
    
    % Save PNG
    figfn = fullfile(groupSummaryDir, cstrcat(groupFile, ' ', plotName, '.png'));
    print(figfn, '-color', '-r600');
    
    % Save EPS
    %figfn = fullfile(groupSummaryDir, strcat(groupFile, ' ', plotName, '.eps'));
    %print(figfn, '-color'); 
  endif
  
  % Close figures
  close all
  
end

%% Export Results
% Save a CSV file documenting the fitted models
summaryCsv = fullfile(groupSummaryDir, strcat(groupSummaryFilename, '.csv'));
if exist ("OCTAVE_VERSION", "builtin") > 0
  % Requires the latest version of io package from Octave Forge!
  % pkg install -forge io
  
  % Write cell array to CSV file
  cell2csv(summaryCsv, summaryTable);
  
else
  % Needs to be tested w/ MATLAB
  
  % Prep to write the table 
  tableOut = cell2table(summaryTable(2:end,:), 'VariableNames', summaryTable(1,:));
  
  % Write the table to a CSV file
  writetable(tableOut, summaryCsv);
end

% Also save a summary .mat file
summaryMat = fullfile(groupSummaryDir, strcat(groupSummaryFilename, '.mat'));
save('-V6', summaryMat, 'summaryTable');
