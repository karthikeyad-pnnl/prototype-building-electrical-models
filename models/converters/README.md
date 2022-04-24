Converter Model Generation
==========================

This directory contains scripts for fitting AC/DC, DC/DC, and DC/AC converter models compatible with [BEEAM] from empirical and publicly-available converter performance data. The fitted models are not included in the repository.

Data Sources
------------

Sources for performance data include the following:

1. A. Santos, D. Zimmerle, and S. Frank. 2022. "Load-Packaged AC/DC and DC/DC Power Electronics Converter Performance Data." National Renewable Energy Laboratory. DOI: [10.7799/1863384].
2. California Energy Commission [Solar Equipment Lists]
3. Manufacturer specifications (data sheets)

**Converter Model List.xlsx** lists all modeled converters, provides input metadata needed to fit models for each converter, and specifies the data source for each converter. Numeric performance data from manufacturer data sheets was extracted using [WebPlotDigitizer].

[BEEAM]: https://github.com/NREL/BEEAM/ "Building Electrical Efficiency Analysis Model"
[10.7799/1863384]: https://doi.org/10.7799/1863384
[Solar Equipment Lists]: https://www.energy.ca.gov/programs-and-topics/programs/solar-equipment-lists
[WebPlotDigitizer]: https://automeris.io/WebPlotDigitizer/

Dependencies
------------

- A local copy of the **BEEAM** [feature-normalized-empirical-model] branch
- A working version of [Gnu Octave] or [MATLAB]

The model generation scripts have been tested with Gnu Octave 6.3.0. They are designed to be compatible with MATLAB but have not been tested with it.

[feature-normalized-empirical-model]: https://github.com/NREL/BEEAM/tree/feature-normalized-empirical-model
[MATLAB]: https://www.mathworks.com/products/matlab.html
[Gnu Octave]: https://www.gnu.org/software/octave/index

**TO DO:** Update to correct **BEEAM** version when one is released

Instructions
------------

The steps required to generate a complete set of converter models are provided below. Throughout these instructions, the "current directory" refers to the location of this *README* file and the converter generation scripts.

1. Download all converter characterization data from [https://doi.org/10.7799/1863384] and unzip each archive into a common parent directory (e.g. `Converter Performance Data`)
2. Open **Converter Model List.xlsx** and export each worksheet as a separate CSV file within the current directory:
  1. `AC-DC Converters.csv`
  2. `DC-DC Converters.csv`
  3. `PV Inverters.csv`
  4. `Battery Inverters.csv`
  5. `Converter Groups.csv`
3. Open each exported file in a text editor of your choice, convert to UTF-8 (no byte order mark), and save. (Important! Later steps will not work properly if you omit this step.)
4. Open Gnu Octave (or MATLAB) and set the working directory to the current directory
5. Open each of the four model generation scripts: `batch-ac-dc-converter-models.m`, `batch-dc-dc-converter-models.m`, `batch-inverter-models.m`, `converter-group-efficiency-curves.m`
6. Within the scripts, modify the relative paths to the following resources to match your environment:
  1. **BEEAM** model fitting scripts: Default `../../../BEEAM/Scripts/Converter Empirical Model Fitting`
  2. Load-packaged converter performance data: Default `../../../Converter Performance Data`
7. To generate AC/DC converter (rectifier) models, run the following script *twice*: `batch-ac-dc-converter-models.m`
  1. The first execution populates efficiency curves for all models and harmonic current matrices for converters with harmonic characterization data 
  2. The second execution populates default harmonic current matrices for converters that lack harmonic characterization data
8. To generate DC/DC converter models, run the following script: `batch-dc-dc-converter-models.m
9. To generate DC/AC converter (inverter) models, modify and run the following script *twice*: `batch-inverter-models.m`
  1. Edit the script and run once with `PV Inverters.csv` as input and `PV Inverter Generated Models.csv` as output
  2. Edit the script and run once with `Battery Inverters.csv` as input and `Battery Inverter Generated Models.csv` as output
10. To generate converter groups and find associated median efficiency converter models, run the following script: `converter-group-efficiency-curves.m`

Outputs
-------

The model generation scripts produce the following output files:

1. Summary files containing fitted efficiency model parameters in comma-separated values (CSV) and MATLAB binary (MAT) file formats:
  1. AC-DC converters: `AC-DC Converter Generated Models.csv` and `.mat`
  2. DC-DC converters: `DC-DC Converter Generated Models.csv` and `.mat`
  3. PV inverters: `PV Inverter Generated Models.csv` and `.mat`
  4. Battery inverters: `Battery Inverter Generated Models.csv` and `.mat`
2. Individual AC/DC converter models in MAT file format, within the `AC-DC Individual Models` subdirectory
3. Converter group analysis output, including some or all of:
  1. `Converter Groups Median Models.csv`, a CSV file containing the best-fit median efficiency model for each converter group
  2. `Converter Groups Median Models.mat`, a MAT file with the same contents as `Converter Groups Median Models.csv`
  2. CSV files by group, each containing a group of similar converters, filtered per the input criteria
  3. Converter group loss and efficiency curve plots

Converter model summary files contain the same columns as the input files, plus appended columns containing fitted converter model parameters. Fitted efficiency models are based on quadratic loss models defined by **alpha**, **beta**, and **gamma** parameters (see **BEEAM** documentation); these parameters are provided on both Volt-Ampere and per-unit (pu) bases. Modeled standby power thresholds and values (in Watts) are also provided.

Converter group analysis output (per `converter-group-efficiency-curves.m`) is configurable within the script and may include generated groups, median efficiency models, and plots.

**TO DO:** Add a link to NREL data resource with generated models (once it is available)