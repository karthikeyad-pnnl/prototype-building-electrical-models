# This script post-processes load profiles from EnergyPlus time series output
# data into load profile CSV files useable as BEEAM input schedules.

# This version applies to: Medium Office Prototype Model (ASHRAE 90.1-2019)

# NOTES:
#
# 1. At present, almost all analysis in this script is manual / hard-coded. An
#    automated version would be a good future task.
# 2. This script is included in the prototype-building-electrical-models repo
#    for reference, but the EnergyPlus source data are not.

##### Setup ####################################################################

## General
# Load packages
library(tidyverse)
library(lubridate)

## Building Info
# Modify the following as needed

# Building metadata (used for output filenames)
building     <- "Medium Office"
code_vintage <- "ASHRAE 90.1-2019"
location     <- "Great Falls"

# Zone areas
zone_areas <- list(
  l1_core = 983.54, # m^2
  l2_core = 983.54, # m^2
  l3_core = 983.54, # m^2
  l1_zn1  = 207.34, # m^2
  l2_zn1  = 207.34, # m^2
  l3_zn1  = 207.34, # m^2
  l1_zn2  = 131.26, # m^2
  l2_zn2  = 131.26, # m^2
  l3_zn2  = 131.26, # m^2
  l1_zn3  = 207.34, # m^2
  l2_zn3  = 207.34, # m^2
  l3_zn3  = 207.34, # m^2
  l1_zn4  = 131.25, # m^2
  l2_zn4  = 131.25, # m^2
  l3_zn4  = 131.25  # m^2
)

## Design power densities and/or levels
# I verified these are identical in E+ models for all three locations
# (Tampa, San Diego, Great Falls)

# Lighting power density (from IDF; identical for all zones)
lpd <- 6.888902667 # W/m^2

# Total exterior lighting design power (from IDF) -- NOT USED CURRENTLY
exterior_lights_design_power <- (519.2 + 375.7 + 4341.6) # W

# Plug load design power level (from IDF; identical for all three floors)
plug_design_power <- (7937.1558 + 1673.2028 + 1059.217 + 1673.2138 + 1059.21) # W

## Loss model functions
# Used for converting AC/DC converter input (AC) power to output (DC) power

# Calculate converter power input from power output
calc_Pin <- function(x, alpha, beta, gamma, thr, stdby) {
  # Lambda for homotopy function
  if (thr == 0) {
    lambda <- double(length(x))
  } else {
    lambda <- (thr - x) / thr
    lambda[lambda < 0] <- 0
    lambda[lambda > 1] <- 1
  }
  
  # Calculate input power
  return(x + lambda*stdby + (1-lambda)*(alpha + beta * x + gamma * x^2))
}

# Solve converter power output from power input (min Pout = 0)
solve_Pout <- function(y, alpha, beta, gamma, thr, stdby) {
  # Function for uniroot
  f <- function(x) {calc_Pin(x, alpha, beta, gamma, thr, stdby) - y}
  
  # Edge case: desired input power is less than converter standby
  if (y <= stdby) return (0) # Set output power to zero
  
  # Execute
  max(uniroot(f, lower=-1, upper=1)$root, 0)
  
  # Note: must be vectorized on application
}

## Other
#  Filename prefix
file_prefix <- paste(building, code_vintage, location, sep="-") %>%
  str_replace_all("[\\s\\.]+", "-")

################################################################################

##### Data #####################################################################

## Load Data
# Note: source file "eplusout.csv" must be in working directory

# Read E+ 
raw_data <- read_csv('eplusout.csv')

## Initial Processing
# Convert date/time to seconds elapsed relative to first timestep
data <- raw_data %>% mutate(
    ts = parse_date_time(paste("2017", `Date/Time`), "%Y %m/%d %H:%M:%S")
  ) %>% mutate(
    ts = difftime(ts, ymd_hms("2017-01-01 00:15:00"), units = "hours"),
  )

# NOTE: Time reference scaled so that the first timestep is t = 0

# Sum categories
data <- data %>% transmute(
  ts = ts,
  l1_core_lights   = `CORE_BOTTOM_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l1_zn1_lights    = `PERIMETER_BOT_ZN_1_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l1_zn2_lights    = `PERIMETER_BOT_ZN_2_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l1_zn3_lights    = `PERIMETER_BOT_ZN_3_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l1_zn4_lights    = `PERIMETER_BOT_ZN_4_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l2_core_lights   = `CORE_MID_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l2_zn1_lights    = `PERIMETER_MID_ZN_1_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l2_zn2_lights    = `PERIMETER_MID_ZN_2_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l2_zn3_lights    = `PERIMETER_MID_ZN_3_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l2_zn4_lights    = `PERIMETER_MID_ZN_4_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l3_core_lights   = `CORE_TOP_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l3_zn1_lights    = `PERIMETER_TOP_ZN_1_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l3_zn2_lights    = `PERIMETER_TOP_ZN_2_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l3_zn3_lights    = `PERIMETER_TOP_ZN_3_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l3_zn4_lights    = `PERIMETER_TOP_ZN_4_LIGHTS:Lights Electricity Rate [W](TimeStep)`,
  l1_core_plugs    = `CORE_BOTTOM_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l1_zn1_plugs     = `PERIMETER_BOT_ZN_4_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l1_zn2_plugs     = `PERIMETER_BOT_ZN_2_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l1_zn3_plugs     = `PERIMETER_BOT_ZN_3_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l1_zn4_plugs     = `PERIMETER_BOT_ZN_1_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l2_core_plugs    = `CORE_MID_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l2_zn1_plugs     = `PERIMETER_MID_ZN_1_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l2_zn2_plugs     = `PERIMETER_MID_ZN_2_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l2_zn3_plugs     = `PERIMETER_MID_ZN_3_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l2_zn4_plugs     = `PERIMETER_MID_ZN_4_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l3_core_plugs    = `CORE_TOP_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l3_zn1_plugs     = `PERIMETER_TOP_ZN_1_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l3_zn2_plugs     = `PERIMETER_TOP_ZN_2_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l3_zn3_plugs     = `PERIMETER_TOP_ZN_3_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  l3_zn4_plugs     = `PERIMETER_TOP_ZN_4_MISCPLUG_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)`,
  # exterior_lights  = `EXTERIOR_LIGHTS_A:Exterior Lights Electricity Rate [W](TimeStep)` +
  #   `EXTERIOR_LIGHTS_B:Exterior Lights Electricity Rate [W](TimeStep)` +
  #   `EXTERIOR_LIGHTS_C:Exterior Lights Electricity Rate [W](TimeStep)`,
  all_mechanical   = `CORE_BOTTOM_ELEVATORS_EQUIP:Electric Equipment Electricity Rate [W](TimeStep)` + 
    `ELEVATORS_LIGHTS_FAN:Electric Equipment Electricity Rate [W](TimeStep)` + 
    `CORE_BOTTOM VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `CORE_MID VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `CORE_TOP VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_BOT_ZN_1 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_BOT_ZN_2 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_BOT_ZN_3 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_BOT_ZN_4 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_MID_ZN_1 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_MID_ZN_2 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_MID_ZN_3 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_MID_ZN_4 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_TOP_ZN_1 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_TOP_ZN_2 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_TOP_ZN_3 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PERIMETER_TOP_ZN_4 VAV BOX REHEAT COIL:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_BOT_HEATC:Heating Coil NaturalGas Rate [W](TimeStep)` + 
    `PACU_VAV_BOT_HEATC:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_MID_HEATC:Heating Coil NaturalGas Rate [W](TimeStep)` + 
    `PACU_VAV_MID_HEATC:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_TOP_HEATC:Heating Coil NaturalGas Rate [W](TimeStep)` + 
    `PACU_VAV_TOP_HEATC:Heating Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_BOT FAN:Fan Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_MID FAN:Fan Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_TOP FAN:Fan Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_BOT_COOLC DXCOIL:Cooling Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_MID_COOLC DXCOIL:Cooling Coil Electricity Rate [W](TimeStep)` + 
    `PACU_VAV_TOP_COOLC DXCOIL:Cooling Coil Electricity Rate [W](TimeStep)` + 
    `SHWSYS1 PUMP:Pump Electricity Rate [W](TimeStep)` +
    `EXTERIOR_LIGHTS_A:Exterior Lights Electricity Rate [W](TimeStep)` +
    `EXTERIOR_LIGHTS_B:Exterior Lights Electricity Rate [W](TimeStep)` +
    `EXTERIOR_LIGHTS_C:Exterior Lights Electricity Rate [W](TimeStep)`,
)

# Notes:
# 1. All mechanical is lumped
# 2. Elevators are included in mechanical
# 3. Exterior lights are currently included in mechanical

################################################################################

##### Interior Lights ##########################################################

# Converter model parameters for LED drivers
converter_params_lights <- list(
  alpha  = 0.0074,
  beta   = 0.1014,
  gamma  = 0.0509,
  thr    = 2.25/45,
  stdby  = 1.0478/45
)

# Normalize by zone lighting power densities
lights <- data %>% transmute(
  ts = ts,
  l1_core_lights = l1_core_lights / (lpd * zone_areas$l1_core),
  l1_zn1_lights  = l1_zn1_lights  / (lpd * zone_areas$l1_zn1),
  l1_zn2_lights  = l1_zn2_lights  / (lpd * zone_areas$l1_zn2),
  l1_zn3_lights  = l1_zn3_lights  / (lpd * zone_areas$l1_zn3),
  l1_zn4_lights  = l1_zn4_lights  / (lpd * zone_areas$l1_zn4),
  l2_core_lights = l2_core_lights / (lpd * zone_areas$l2_core),
  l2_zn1_lights  = l2_zn1_lights  / (lpd * zone_areas$l2_zn1),
  l2_zn2_lights  = l2_zn2_lights  / (lpd * zone_areas$l2_zn2),
  l2_zn3_lights  = l2_zn3_lights  / (lpd * zone_areas$l2_zn3),
  l2_zn4_lights  = l2_zn4_lights  / (lpd * zone_areas$l2_zn4),
  l3_core_lights = l3_core_lights / (lpd * zone_areas$l3_core),
  l3_zn1_lights  = l3_zn1_lights  / (lpd * zone_areas$l3_zn1),
  l3_zn2_lights  = l3_zn2_lights  / (lpd * zone_areas$l3_zn2),
  l3_zn3_lights  = l3_zn3_lights  / (lpd * zone_areas$l3_zn3),
  l3_zn4_lights  = l3_zn4_lights  / (lpd * zone_areas$l3_zn4)
)

# Convert to DC output power (can take a while to calculate!)
lights <- mutate_at(
  lights,
  vars(contains("lights")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_lights$alpha,
    beta  = converter_params_lights$beta,
    gamma = converter_params_lights$gamma,
    thr   = converter_params_lights$thr,
    stdby = converter_params_lights$stdby)
)

# Write CSVs
write_csv(
  select(lights, ts = ts, val = l1_core_lights),
  paste0(paste(file_prefix, "L1", "Core", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l1_zn1_lights),
  paste0(paste(file_prefix, "L1", "Zn1", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l1_zn2_lights),
  paste0(paste(file_prefix, "L1", "Zn2", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l1_zn3_lights),
  paste0(paste(file_prefix, "L1", "Zn3", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l1_zn4_lights),
  paste0(paste(file_prefix, "L1", "Zn4", "Lights", sep="-"), ".csv")
)

write_csv(
  select(lights, ts = ts, val = l2_core_lights),
  paste0(paste(file_prefix, "L2", "Core", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l2_zn1_lights),
  paste0(paste(file_prefix, "L2", "Zn1", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l2_zn2_lights),
  paste0(paste(file_prefix, "L2", "Zn2", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l2_zn3_lights),
  paste0(paste(file_prefix, "L2", "Zn3", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l2_zn4_lights),
  paste0(paste(file_prefix, "L2", "Zn4", "Lights", sep="-"), ".csv")
)

write_csv(
  select(lights, ts = ts, val = l3_core_lights),
  paste0(paste(file_prefix, "L3", "Core", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l3_zn1_lights),
  paste0(paste(file_prefix, "L3", "Zn1", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l3_zn2_lights),
  paste0(paste(file_prefix, "L3", "Zn2", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l3_zn3_lights),
  paste0(paste(file_prefix, "L3", "Zn3", "Lights", sep="-"), ".csv")
)
write_csv(
  select(lights, ts = ts, val = l3_zn4_lights),
  paste0(paste(file_prefix, "L3", "Zn4", "Lights", sep="-"), ".csv")
)

################################################################################

##### Exterior Lights ##########################################################

# DISABLED -- Exterior lights are lumped w/ mechanical at this time

# # Converter model parameters for LED drivers
# converter_params_exterior_lights <- list(
#   alpha = 0.03,
#   beta  = 0.02,
#   gamma = 0.01,
#   thr   = 0.05,
#   stdby = 0.01
# )
# 
# # Normalize by design power
# exterior_lights <- data %>% transmute(
#   ts = ts,
#   exterior_lights = exterior_lights / exterior_lights_design_power
# )
# 
# # Convert to DC output power (can take a while to calculate!)
# exterior_lights <- mutate_at(
#   exterior_lights,
#   vars(contains("lights")),
#   function (x) sapply(x, solve_Pout,
#     alpha = converter_params_exterior_lights$alpha,
#     beta  = converter_params_exterior_lights$beta,
#     gamma = converter_params_exterior_lights$gamma,
#     thr   = converter_params_exterior_lights$thr,
#     stdby = converter_params_exterior_lights$stdby)
# )
# 
# # Write CSVs
# write_csv(
#   select(exterior_lights, ts = ts, val = exterior_lights),
#   paste0(paste(file_prefix, "Exterior", "Lights", sep="-"), ".csv")
# )

################################################################################

##### Plug Loads (General) #####################################################

# Normalize by plug load design power
plugs <- data %>% transmute(
  ts = ts,
  l1_plugs_general = (l1_core_plugs + l1_zn1_plugs + l1_zn2_plugs +
    l1_zn3_plugs + l1_zn4_plugs) / plug_design_power,
  l2_plugs_general = (l2_core_plugs + l2_zn1_plugs + l2_zn2_plugs +
    l2_zn3_plugs + l2_zn4_plugs) / plug_design_power,
  l3_plugs_general = (l3_core_plugs + l3_zn1_plugs + l3_zn2_plugs +
    l3_zn3_plugs + l3_zn4_plugs) / plug_design_power,
)

# Write CSVs
write_csv(
  select(plugs, ts = ts, val = l1_plugs_general),
  paste0(paste(file_prefix, "L1", "All", "Plugs", "General", sep="-"), ".csv")
)
write_csv(
  select(plugs, ts = ts, val = l2_plugs_general),
  paste0(paste(file_prefix, "L2", "All", "Plugs", "General", sep="-"), ".csv")
)
write_csv(
  select(plugs, ts = ts, val = l3_plugs_general),
  paste0(paste(file_prefix, "L3", "All", "Plugs", "General", sep="-"), ".csv")
)

################################################################################

##### Laptops ##################################################################

# Demand factor for laptops
df_laptops <- 0.322

# Converter model parameters for laptop AC/DC converters
converter_params_laptops <- list(
  alpha = 0.0308,
  beta  = 0.0498,
  gamma = 0.0836,
  thr   = 4.5/90,
  stdby = 1.0616/90
)

# Rename columns
laptops <- plugs %>% select(
  ts = ts,
  l1_laptops = l1_plugs_general,
  l2_laptops = l2_plugs_general,
  l3_laptops = l3_plugs_general
)

# Correct for demand factor
laptops <- mutate_at(
  laptops,
  vars(contains("laptops")),
  function (x) {x * df_laptops}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_laptops <- with(converter_params_laptops,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
laptops <- mutate_at(
  laptops,
  vars(contains("laptops")),
  function (x) {x * pin_fl_laptops}
)

# Convert noramlized plug power to DC output power
laptops <- mutate_at(
  laptops,
  vars(contains("laptops")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_laptops$alpha,
    beta  = converter_params_laptops$beta,
    gamma = converter_params_laptops$gamma,
    thr   = converter_params_laptops$thr,
    stdby = converter_params_laptops$stdby)
)

# Write CSVs
write_csv(
  select(laptops, ts = ts, val = l1_laptops),
  paste0(paste(file_prefix, "L1", "All", "Laptops", sep="-"), ".csv")
)
write_csv(
  select(laptops, ts = ts, val = l2_laptops),
  paste0(paste(file_prefix, "L2", "All", "Laptops", sep="-"), ".csv")
)
write_csv(
  select(laptops, ts = ts, val = l3_laptops),
  paste0(paste(file_prefix, "L3", "All", "Laptops", sep="-"), ".csv")
)

################################################################################

##### Monitors #################################################################

# Demand factor for monitors
df_monitors <- 0.558

# Converter model parameters for monitor/display AC/DC converters
converter_params_monitors <- list(
  alpha = 0.0308,
  beta  = 0.0498,
  gamma = 0.0836,
  thr   = 4.5/90,
  stdby = 1.0616/90
)

# Rename columns
monitors <- plugs %>% select(
  ts = ts,
  l1_monitors = l1_plugs_general,
  l2_monitors = l2_plugs_general,
  l3_monitors = l3_plugs_general
)

# Correct for demand factor
monitors <- mutate_at(
  monitors,
  vars(contains("monitors")),
  function (x) {x * df_monitors}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_monitors <- with(converter_params_monitors,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
monitors <- mutate_at(
  monitors,
  vars(contains("monitors")),
  function (x) {x * pin_fl_monitors}
)

# Convert noramlized plug power to DC output power
monitors <- mutate_at(
  monitors,
  vars(contains("monitors")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_monitors$alpha,
    beta  = converter_params_monitors$beta,
    gamma = converter_params_monitors$gamma,
    thr   = converter_params_monitors$thr,
    stdby = converter_params_monitors$stdby)
)

# Write CSVs
write_csv(
  select(monitors, ts = ts, val = l1_monitors),
  paste0(paste(file_prefix, "L1", "All", "Monitors", sep="-"), ".csv")
)
write_csv(
  select(monitors, ts = ts, val = l2_monitors),
  paste0(paste(file_prefix, "L2", "All", "Monitors", sep="-"), ".csv")
)
write_csv(
  select(monitors, ts = ts, val = l3_monitors),
  paste0(paste(file_prefix, "L3", "All", "Monitors", sep="-"), ".csv")
)

################################################################################

##### TVs ######################################################################

# Demand factor for TVs
df_tvs <- 0.558

# Converter model parameters for TV AC/DC converters
converter_params_tvs <- list(
  alpha = 0.0308,
  beta  = 0.0498,
  gamma = 0.0836,
  thr   = 4.5/90,
  stdby = 1.0616/90
)

# Rename columns
tvs <- plugs %>% select(
  ts = ts,
  l1_tvs = l1_plugs_general,
  l2_tvs = l2_plugs_general,
  l3_tvs = l3_plugs_general
)

# Correct for demand factor
tvs <- mutate_at(
  tvs,
  vars(contains("tvs")),
  function (x) {x * df_tvs}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_tvs <- with(converter_params_tvs,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
tvs <- mutate_at(
  tvs,
  vars(contains("tvs")),
  function (x) {x * pin_fl_tvs}
)

# Convert noramlized plug power to DC output power
tvs <- mutate_at(
  tvs,
  vars(contains("tvs")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_tvs$alpha,
    beta  = converter_params_tvs$beta,
    gamma = converter_params_tvs$gamma,
    thr   = converter_params_tvs$thr,
    stdby = converter_params_tvs$stdby)
)

# Write CSVs
write_csv(
  select(tvs, ts = ts, val = l1_tvs),
  paste0(paste(file_prefix, "L1", "All", "TVs", sep="-"), ".csv")
)
write_csv(
  select(tvs, ts = ts, val = l2_tvs),
  paste0(paste(file_prefix, "L2", "All", "TVs", sep="-"), ".csv")
)
write_csv(
  select(tvs, ts = ts, val = l3_tvs),
  paste0(paste(file_prefix, "L3", "All", "TVs", sep="-"), ".csv")
)

################################################################################

##### Printers #################################################################

# Demand factor for printers
df_printers <- 0.271

# Converter model parameters for printer AC/DC converters
converter_params_printers <- list(
  alpha = 0.0298,
  beta  = 0.0118,
  gamma = 0.0606,
  thr   = 0,
  stdby = 0
)

# Rename columns
printers <- plugs %>% select(
  ts = ts,
  l1_printers = l1_plugs_general,
  l2_printers = l2_plugs_general,
  l3_printers = l3_plugs_general
)

# Correct for demand factor
printers <- mutate_at(
  printers,
  vars(contains("printers")),
  function (x) {x * df_printers}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_printers <- with(converter_params_printers,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
printers <- mutate_at(
  printers,
  vars(contains("printers")),
  function (x) {x * pin_fl_printers}
)

# Convert noramlized plug power to DC output power
printers <- mutate_at(
  printers,
  vars(contains("printers")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_printers$alpha,
    beta  = converter_params_printers$beta,
    gamma = converter_params_printers$gamma,
    thr   = converter_params_printers$thr,
    stdby = converter_params_printers$stdby)
)

# Write CSVs
write_csv(
  select(printers, ts = ts, val = l1_printers),
  paste0(paste(file_prefix, "L1", "All", "Printers", sep="-"), ".csv")
)
write_csv(
  select(printers, ts = ts, val = l2_printers),
  paste0(paste(file_prefix, "L2", "All", "Printers", sep="-"), ".csv")
)
write_csv(
  select(printers, ts = ts, val = l3_printers),
  paste0(paste(file_prefix, "L3", "All", "Printers", sep="-"), ".csv")
)

################################################################################

##### MFDs #####################################################################

# Demand factor for MFDs
df_mfds <- 0.271

# Converter model parameters for MFD AC/DC converters
converter_params_mfds <- list(
  alpha = 0.0298,
  beta  = 0.0118,
  gamma = 0.0606,
  thr   = 0,
  stdby = 0
)

# Rename columns
mfds <- plugs %>% select(
  ts = ts,
  l1_mfds = l1_plugs_general,
  l2_mfds = l2_plugs_general,
  l3_mfds = l3_plugs_general
)

# Correct for demand factor 
mfds <- mutate_at(
  mfds,
  vars(contains("mfds")),
  function (x) {x * df_mfds}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_mfds <- with(converter_params_mfds,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
mfds <- mutate_at(
  mfds,
  vars(contains("mfds")),
  function (x) {x * pin_fl_mfds}
)

# Convert noramlized plug power to DC output power
mfds <- mutate_at(
  mfds,
  vars(contains("mfds")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_mfds$alpha,
    beta  = converter_params_mfds$beta,
    gamma = converter_params_mfds$gamma,
    thr   = converter_params_mfds$thr,
    stdby = converter_params_mfds$stdby)
)

# Write CSVs
write_csv(
  select(mfds, ts = ts, val = l1_mfds),
  paste0(paste(file_prefix, "L1", "All", "MFDs", sep="-"), ".csv")
)
write_csv(
  select(mfds, ts = ts, val = l2_mfds),
  paste0(paste(file_prefix, "L2", "All", "MFDs", sep="-"), ".csv")
)
write_csv(
  select(mfds, ts = ts, val = l3_mfds),
  paste0(paste(file_prefix, "L3", "All", "MFDs", sep="-"), ".csv")
)

################################################################################

##### IT Equipment #############################################################

# Demand factor for IT equipment
df_itequip <- 0.225

# Converter model parameters for IT equipment AC/DC converters
converter_params_itequip <- list(
  alpha = 0.0298,
  beta  = 0.0118,
  gamma = 0.0606,
  thr   = 0,
  stdby = 0
)

# Rename columns
itequip <- plugs %>% select(
  ts = ts,
  l1_itequip = l1_plugs_general,
  l2_itequip = l2_plugs_general,
  l3_itequip = l3_plugs_general
)

# Correct for demand factor
itequip <- mutate_at(
  itequip,
  vars(contains("itequip")),
  function (x) {x * df_itequip}
)

# Correct for per-unit base (rated input -> rated output)
pin_fl_itequip <- with(converter_params_itequip,
  calc_Pin(1, alpha, beta, gamma, thr, stdby)) # Per-unit Pin for Pout = 1
itequip <- mutate_at(
  itequip,
  vars(contains("itequip")),
  function (x) {x * pin_fl_itequip}
)

# Convert noramlized plug power to DC output power
itequip <- mutate_at(
  itequip,
  vars(contains("itequip")),
  function (x) sapply(x, solve_Pout,
    alpha = converter_params_itequip$alpha,
    beta  = converter_params_itequip$beta,
    gamma = converter_params_itequip$gamma,
    thr   = converter_params_itequip$thr,
    stdby = converter_params_itequip$stdby)
)

# Write CSVs
write_csv(
  select(itequip, ts = ts, val = l1_itequip),
  paste0(paste(file_prefix, "L1", "All", "ITEquipment", sep="-"), ".csv")
)
write_csv(
  select(itequip, ts = ts, val = l2_itequip),
  paste0(paste(file_prefix, "L2", "All", "ITEquipment", sep="-"), ".csv")
)
write_csv(
  select(itequip, ts = ts, val = l3_itequip),
  paste0(paste(file_prefix, "L3", "All", "ITEquipment", sep="-"), ".csv")
)

################################################################################

##### Mechanical Equipment #####################################################

# Mechanical equipment schedule is applied in bulk and not normalized

# Write CSVs
write_csv(
  select(data, ts = ts, val = all_mechanical),
  paste0(paste(file_prefix, "Mechanical", sep="-"), ".csv")
)

################################################################################

##### Cross-Check: Plug Loads ##################################################

# Check that calculated plug load profiles are correct by summing them to
# recover the original load profile.

# Reference
plugs_ref <- select(plugs, ts, l1_plugs_general) %>%
  transmute(
    ts  = ts,
    total_ref = l1_plugs_general * plug_design_power
  )

# Calculated
# (Connected plug load spreadsheet is source of all sizing info)
plugs_calc <- select(plugs, ts, l1_plugs_general) %>%
  transmute(
    ts  = ts,
    balance = l1_plugs_general * 6613
  ) %>%
  left_join(select(laptops,  ts, laptops  = l1_laptops ), by = "ts") %>%
  left_join(select(monitors, ts, monitors = l1_monitors), by = "ts") %>%
  left_join(select(tvs,      ts, tvs      = l1_tvs     ), by = "ts") %>%
  left_join(select(printers, ts, printers = l1_printers), by = "ts") %>%
  left_join(select(mfds,     ts, mfds     = l1_mfds    ), by = "ts") %>%
  left_join(select(itequip,  ts, itequip  = l1_itequip ), by = "ts") %>%
  mutate(
    ts = ts,
    laptops = with(converter_params_laptops,
      calc_Pin(laptops, alpha, beta, gamma, thr, stdby)) * 50 * 49,
    monitors = with(converter_params_monitors,
      calc_Pin(monitors, alpha, beta, gamma, thr, stdby)) * 33 * 40,
    tvs = with(converter_params_tvs,
      calc_Pin(tvs, alpha, beta, gamma, thr, stdby)) * 5 * 109,
    printers = with(converter_params_printers,
      calc_Pin(printers, alpha, beta, gamma, thr, stdby)) * 9 * 794,
    mfds = with(converter_params_mfds,
      calc_Pin(mfds, alpha, beta, gamma, thr, stdby)) * 3 * 621,
    itequip = with(converter_params_itequip,
      calc_Pin(itequip, alpha, beta, gamma, thr, stdby)) * 55 * 145,
    total = laptops + monitors + tvs + printers + mfds + itequip + balance
  )

# # Calculated
# # (Connected plug load spreadsheet is source of all sizing info)
# plugs_calc <- select(plugs, ts, l1_plugs_general) %>%
#   transmute(
#     ts  = ts,
#     balance = l1_plugs_general * 6613
#   ) %>%
#   left_join(select(laptops,  ts, laptops  = l1_laptops ), by = "ts") %>%
#   left_join(select(monitors, ts, monitors = l1_monitors), by = "ts") %>%
#   left_join(select(tvs,      ts, tvs      = l1_tvs     ), by = "ts") %>%
#   left_join(select(printers, ts, printers = l1_printers), by = "ts") %>%
#   left_join(select(mfds,     ts, mfds     = l1_mfds    ), by = "ts") %>%
#   left_join(select(itequip,  ts, itequip  = l1_itequip ), by = "ts") %>%
#   mutate(
#     ts = ts,
#     laptops = with(converter_params_laptops,
#                    calc_Pin(laptops, alpha, beta, gamma, thr, stdby)) * 2850,
#     monitors = with(converter_params_monitors,
#                     calc_Pin(monitors, alpha, beta, gamma, thr, stdby)) * 1518,
#     tvs = with(converter_params_tvs,
#                calc_Pin(tvs, alpha, beta, gamma, thr, stdby)) * 635,
#     printers = with(converter_params_printers,
#                     calc_Pin(printers, alpha, beta, gamma, thr, stdby)) * 7875,
#     mfds = with(converter_params_mfds,
#                 calc_Pin(mfds, alpha, beta, gamma, thr, stdby)) * 2052,
#     itequip = with(converter_params_itequip,
#                    calc_Pin(itequip, alpha, beta, gamma, thr, stdby)) * 8800,
#     total = laptops + monitors + tvs + printers + mfds + itequip + balance
#   )

# Compare
plugs_compare <- left_join(plugs_ref, plugs_calc, by = "ts") %>%
  mutate(error = total_ref - total)

# Parity plot
plot(total ~ total_ref, data = plugs_compare)
abline(0, 1, col='red') # Parity line

# Time series plot
plot(total_ref ~ ts, data = plugs_compare, type='l', xlim=c(0,7*24))
lines(total ~ ts, data = plugs_compare, type='l', col='blue')

################################################################################

