# This script analyzes MELs counts and density from the CBECS 2012 microdata:
# https://www.eia.gov/consumption/commercial/data/2012/index.php?view=microdata

# NOTE: This script is included in the prototype-building-electrical-models
# repo for reference, but the CBECS source microdata are not.

##### Setup ####################################################################

## General
# Load packages
library(tidyverse)

## Load Data
# Read CBECS 2012 microdata into a main data frame
microdata <- read_csv('2012_public_use_data_aug2016.csv')

# Apply label for principle building activity; use a subset of categories
f <- Vectorize(function(x) {
  switch(x,
    '01' = 'Vacant',
    '02' = 'Office',
    '04' = 'Laboratory',
    '05' = 'Nonrefrigerated warehouse',
    '06' = 'Food sales',
    '07' = 'Public order and safety',
    '08' = 'Outpatient health care',
    '11' = 'Refrigerated warehouse',
    '12' = 'Religious worship',
    '13' = 'Public assembly',
    '14' = 'Education',
    '15' = 'Food service',
    '16' = 'Inpatient health care',
    '17' = 'Nursing',
    '18' = 'Lodging',
    '23' = 'Strip shopping mall',
    '24' = 'Enclosed mall',
    '25' = 'Retail other than mall',
    '26' = 'Service',
    '91' = 'Other',
    NA
  )
})
microdata <- mutate(
  microdata,
  PBA = factor(PBA),
  PBA_LABEL=f(as.character(PBA))
)

################################################################################

##### Analysis: Total MELs by Principle Building Activity ######################

# Assumed multipliers for multiple monitors in the code below
# 1 = "All"   -> 2.00
# 2 = "Most"  -> 1.75
# 3 = "Some"  -> 1.50
# 4 = "A few" -> 1.25

# Note: I tried to implement using switch() and got stuck with handling NULLs

# Group and summarize by PBA_LABEL
mels_totals <- microdata %>%
  select(
    PBA,
    PBA_LABEL,
    FINALWT,
    SQFT,
    PCTERMN,
    MLTMON,
    MLTMNC,
    LAPTPN,
    TVVIDEON,
    COPIERN,
    PRNTRN,
    SERVERN
  ) %>%
  mutate(
    MON_PER_PC = 1 + (5 - MLTMNC) * 0.25, # Hack
    MONN = ceiling((LAPTPN + PCTERMN) * if_else(MLTMON == 1, MON_PER_PC, 1))
  ) %>%
  mutate(
    Weighted_SQFT     = FINALWT * SQFT,
    Weighted_PCs      = FINALWT * PCTERMN,
    Weighted_Monitors = FINALWT * MONN,
    Weighted_Laptops  = FINALWT * LAPTPN,
    Weighted_TVs      = FINALWT * TVVIDEON,
    Weighted_Copiers  = FINALWT * COPIERN,
    Weighted_Printers = FINALWT * PRNTRN,
    Weighted_Servers  = FINALWT * SERVERN
  ) %>%
  group_by(PBA_LABEL) %>%
  summarise_at(vars(starts_with("Weighted")), sum, na.rm=TRUE)

# Save CSV
write_excel_csv(mels_totals, "MELS Totals.csv")

################################################################################

##### Analysis: MELs Density by Principle Building Activity ####################

# Densities computed below are # per 1000 sq. ft.

# Compute densities
mels_density <- mels_totals %>%
  transmute(
    PBA_LABEL         = PBA_LABEL,
    Density_PCs       = Weighted_PCs      / (Weighted_SQFT/1000),
    Density_Monitors  = Weighted_Monitors / (Weighted_SQFT/1000),
    Density_Laptops   = Weighted_Laptops  / (Weighted_SQFT/1000),
    Density_TVs       = Weighted_TVs      / (Weighted_SQFT/1000),
    Density_Copiers   = Weighted_Copiers  / (Weighted_SQFT/1000),
    Density_Printers  = Weighted_Printers / (Weighted_SQFT/1000),
    Density_Servers   = Weighted_Servers  / (Weighted_SQFT/1000)
  )

# Save CSV
write_excel_csv(mels_density, "MELS Density.csv")

################################################################################

##### Analysis: Floor Area by Principle Building Activity ######################

# Densities computed below are # per 1000 sq. ft.

# Compute densities
floor_areas <- mels_totals %>%
  select(PBA_LABEL, Weighted_SQFT)

# Save CSV
write_excel_csv(floor_areas, "Floor Areas.csv")

################################################################################