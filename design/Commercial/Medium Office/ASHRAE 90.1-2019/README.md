Medium Office Building: ASHRAE 90.1-2019
========================================

This directory contains models, scripts, and data for generating load profiles and photovoltaic (PV) production profiles for use with the building prototype electrical models.

Load Profiles
-------------

Load profiles are derived from [EnergyPlus] simulation output of each [prototype building model]. Raw EnergyPlus output is too large to conveniently include with the repository, however, it is available [here](https://drive.google.com/drive/folders/1bFFWQKFjXs9gRWzDAiV8BjzLu0vEJSkX?usp=sharing). Generating load profiles for use with the Modelica models requires the following steps:

1. Download each `eplusout.csv` from each subfolder of the `EnergyPlus/Medium Office/ASHRAE 90.1-2019/` folder available from the link above, placing it in the corresponding subfolder in this repository relative to this README file (`2A Tampa`, `3C San Diego`, and `6B Great Falls`)
2. Modify and run the `energyplus_load_profiles.R` R script three times: once per geographic location
   - The *Setup* section of the script must be modified between runs
   - The script will output a large number of load profile files in CSV format within this directory, e.g `Medium-Office-ASHRAE-90-1-2019-Tampa-L1-Zn1-Lights.csv`
3. Run `LP_convert.py` to convert the CSV load profiles into text files compatible with the Modelica [CombiTimeTable] class.
   - An example output file is `Tampa-L1_Light_LP.txt`
4. Manually move or copy the resulting `*.txt` files to `models/Modelica/PrototypeBuildingElectricalModels/Data/LoadProfiles/`
   - The path above is relative to the root directory of this repository

It is recommended to improve and automate this process in the future, including migrating all code to Python.

**TO DO:** EnergyPlus data to be released via the NREL data catalog rather than the temporary Google Drive location used now.

[EnergyPlus]: https://energyplus.net/ "EnergyPlus"
[prototype building model]: https://www.energycodes.gov/prototype-building-models "Prototype Building Models"
[CombiTimeTable]: https://doc.modelica.org/Modelica%203.2.3/Resources/helpWSM/Modelica/Modelica.Blocks.Sources.CombiTimeTable.html "CombiTimeTable"

PV System Production Profiles
-----------------------------

- The spreadsheet *Medium Office - ASHRAE 90.1-2019 - PV Sizing.xlsx* documents PV system sizing and assumptions
- Each subdirectory contains a [System Advisor Model] (SAM) model of the PV systems at that geographic location
- Each subdirectory also includes annual hourly PV output exported from the SAM model in CSV format

**TO DO:** A Python script to convert the PV production profiles into CombiTimeTable format is also needed

[System Advisor Model]: https://sam.nrel.gov/ "System Advisor Model"