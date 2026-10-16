setwd("C:/Users/Paolo/Desktop/Projects/CCPLO/datasets")
library(readxl)
library(dplyr)

################################################################################
# Load Datasets
################################################################################

M2016 <- read_xlsx("oesm16ma/MSA_M2016_dl.xlsx")
M2017 <- read_xlsx("oesm17ma/MSA_M2017_dl.xlsx")
M2018 <- read_xlsx("oesm18ma/MSA_M2018_dl.xlsx")
M2019 <- read_xlsx("oesm19ma/MSA_M2019_dl.xlsx")
M2020 <- read_xlsx("oesm20ma/MSA_M2020_dl.xlsx")
M2021 <- read_xlsx("oesm21ma/MSA_M2021_dl.xlsx")
M2022 <- read_xlsx("oesm22ma/MSA_M2022_dl.xlsx")
M2023 <- read_xlsx("oesm23ma/MSA_M2023_dl.xlsx")
M2024 <- read_xlsx("oesm24ma/MSA_M2024_dl.xlsx")
M2025 <- read_xlsx("oesm25ma/MSA_M2025_dl.xlsx")

unemployment_national <- as.data.frame(read_xlsx("Unemployment_National.xlsx"))

################################################################################
# Data Cleaning
################################################################################

#area_name, naics_title, occ_title
#tot_emp, jobs_1000, h_pct10, h_pct25, h_median, h_pct75, h_pct90

# Chicago ######################################################################
chicago_2018 <- M2018[M2018$AREA_NAME == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("AREA_NAME", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2018$year <- 2018
chicago_2018_all <- chicago_2018[chicago_2018$OCC_TITLE == "All Occupations",]
names(chicago_2018_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2019 <- M2019[M2019$area_title == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("area_title", "occ_title",
                        "tot_emp", "jobs_1000", 
                        "h_pct10", "h_pct25", "h_median", "h_pct75", "h_pct90")]
chicago_2019$year <- 2019
chicago_2019_all <- chicago_2019[chicago_2019$occ_title == "All Occupations",]
names(chicago_2019_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2020 <- M2020[M2020$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2020$year <- 2020
chicago_2020_all <- chicago_2020[chicago_2020$OCC_TITLE == "All Occupations",]
names(chicago_2020_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2021 <- M2021[M2021$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2021$year <- 2021
chicago_2021_all <- chicago_2021[chicago_2021$OCC_TITLE == "All Occupations",]
names(chicago_2021_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2022 <- M2022[M2022$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2022$year <- 2022
chicago_2022_all <- chicago_2022[chicago_2022$OCC_TITLE == "All Occupations",]
names(chicago_2022_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2023 <- M2023[M2023$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN-WI",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2023$year <- 2023
chicago_2023_all <- chicago_2023[chicago_2023$OCC_TITLE == "All Occupations",]
names(chicago_2023_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2024 <- M2024[M2024$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2024$year <- 2024
chicago_2024_all <- chicago_2024[chicago_2024$OCC_TITLE == "All Occupations",]
names(chicago_2024_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_2025 <- M2025[M2025$AREA_TITLE == "Chicago-Naperville-Elgin, IL-IN",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
chicago_2025$year <- 2025
chicago_2025_all <- chicago_2025[chicago_2025$OCC_TITLE == "All Occupations",]
names(chicago_2025_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
chicago_all <- rbind(chicago_2018_all, 
                     chicago_2019_all, 
                     chicago_2020_all,
                     chicago_2021_all,
                     chicago_2022_all,
                     chicago_2023_all,
                     chicago_2024_all,
                     chicago_2025_all)
chicago_unemployment <- read_xlsx("Unemployment_Chicago.xlsx", skip = 10)
chicago_unemployment_may <- 
  chicago_unemployment[chicago_unemployment$Year %in% 2018:2025 & chicago_unemployment$Period == "May", "unemployment rate"]
chicago_all <- as.data.frame(chicago_all)
names(chicago_unemployment_may) <- c("unemployment")
chicago_all$unemployment <- sapply(chicago_unemployment_may, as.numeric)

chicago_unemployment_may <- unemployment_national %>%
  dplyr::filter(format(Month, "%m") == "05")


# Philadelphia #################################################################
philadelphia_2018 <- M2018[M2018$AREA_NAME == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_NAME", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2018$year <- 2018
philadelphia_2018_all <- philadelphia_2018[philadelphia_2018$OCC_TITLE == "All Occupations",]
names(philadelphia_2018_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2019 <- M2019[M2019$area_title == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("area_title", "occ_title",
                             "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", "h_pct90")]
philadelphia_2019$year <- 2019
philadelphia_2019_all <- philadelphia_2019[philadelphia_2019$occ_title == "All Occupations",]
names(philadelphia_2019_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2020 <- M2020[M2020$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2020$year <- 2020
philadelphia_2020_all <- philadelphia_2020[philadelphia_2020$OCC_TITLE == "All Occupations",]
names(philadelphia_2020_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2021 <- M2021[M2021$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2021$year <- 2021
philadelphia_2021_all <- philadelphia_2021[philadelphia_2021$OCC_TITLE == "All Occupations",]
names(philadelphia_2021_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2022 <- M2022[M2022$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2022$year <- 2022
philadelphia_2022_all <- philadelphia_2022[philadelphia_2022$OCC_TITLE == "All Occupations",]
names(philadelphia_2022_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2023 <- M2023[M2023$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2023$year <- 2023
philadelphia_2023_all <- philadelphia_2023[philadelphia_2023$OCC_TITLE == "All Occupations",]
names(philadelphia_2023_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2024 <- M2024[M2024$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2024$year <- 2024
philadelphia_2024_all <- philadelphia_2024[philadelphia_2024$OCC_TITLE == "All Occupations",]
names(philadelphia_2024_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_2025 <- M2025[M2025$AREA_TITLE == "Philadelphia-Camden-Wilmington, PA-NJ-DE-MD",
                           c("AREA_TITLE", "OCC_TITLE",
                             "TOT_EMP", "JOBS_1000", 
                             "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
philadelphia_2025$year <- 2025
philadelphia_2025_all <- philadelphia_2025[philadelphia_2025$OCC_TITLE == "All Occupations",]
names(philadelphia_2025_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                                  "h_pct10", "h_pct25", "h_median", "h_pct75", 
                                  "h_pct90", "year")
philadelphia_all <- rbind(philadelphia_2018_all, 
                          philadelphia_2019_all, 
                          philadelphia_2020_all,
                          philadelphia_2021_all,
                          philadelphia_2022_all,
                          philadelphia_2023_all,
                          philadelphia_2024_all,
                          philadelphia_2025_all)


philadelphia_unemployment <- read_xlsx("Unemployment_Philadelphia.xlsx", skip = 10)
philadelphia_unemployment_may <- 
  philadelphia_unemployment[philadelphia_unemployment$Year %in% 2018:2025 & philadelphia_unemployment$Period == "May", "unemployment rate"]
philadelphia_all <- as.data.frame(philadelphia_all)
names(philadelphia_unemployment_may) <- c("unemployment")
philadelphia_all$unemployment <- sapply(philadelphia_unemployment_may, as.numeric)

philadelphia_unemployment_may <- unemployment_national %>%
  dplyr::filter(format(Month, "%m") == "05")
# Boston #######################################################################
boston_2018 <- M2018[M2018$AREA_NAME == "Boston-Cambridge-Nashua, MA-NH",
                      c("AREA_NAME", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2018$year <- 2018
boston_2018_all <- boston_2018[boston_2018$OCC_TITLE == "All Occupations",]
names(boston_2018_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2019 <- M2019[M2019$area_title == "Boston-Cambridge-Nashua, MA-NH",
                      c("area_title", "occ_title",
                        "tot_emp", "jobs_1000", 
                        "h_pct10", "h_pct25", "h_median", "h_pct75", "h_pct90")]
boston_2019$year <- 2019
boston_2019_all <- boston_2019[boston_2019$occ_title == "All Occupations",]
names(boston_2019_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2020 <- M2020[M2020$AREA_TITLE == "Boston-Cambridge-Nashua, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2020$year <- 2020
boston_2020_all <- boston_2020[boston_2020$OCC_TITLE == "All Occupations",]
names(boston_2020_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2021 <- M2021[M2021$AREA_TITLE == "Boston-Cambridge-Nashua, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2021$year <- 2021
boston_2021_all <- boston_2021[boston_2021$OCC_TITLE == "All Occupations",]
names(boston_2021_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2022 <- M2022[M2022$AREA_TITLE == "Boston-Cambridge-Nashua, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2022$year <- 2022
boston_2022_all <- boston_2022[boston_2022$OCC_TITLE == "All Occupations",]
names(boston_2022_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2023 <- M2023[M2023$AREA_TITLE == "Boston-Cambridge-Nashua, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2023$year <- 2023
boston_2023_all <- boston_2023[boston_2023$OCC_TITLE == "All Occupations",]
names(boston_2023_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2024 <- M2024[M2024$AREA_TITLE == "Boston-Cambridge-Newton, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2024$year <- 2024
boston_2024_all <- boston_2024[boston_2024$OCC_TITLE == "All Occupations",]
names(boston_2024_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_2025 <- M2025[M2025$AREA_TITLE == "Boston-Cambridge-Newton, MA-NH",
                      c("AREA_TITLE", "OCC_TITLE",
                        "TOT_EMP", "JOBS_1000", 
                        "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
boston_2025$year <- 2025
boston_2025_all <- boston_2025[boston_2025$OCC_TITLE == "All Occupations",]
names(boston_2025_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                             "h_pct10", "h_pct25", "h_median", "h_pct75", 
                             "h_pct90", "year")
boston_all <- rbind(boston_2018_all, 
                     boston_2019_all, 
                     boston_2020_all,
                     boston_2021_all,
                     boston_2022_all,
                     boston_2023_all,
                     boston_2024_all,
                     boston_2025_all)

boston_unemployment <- read_xlsx("Unemployment_Boston.xlsx", skip = 10)
boston_unemployment_may <- 
  boston_unemployment[boston_unemployment$Year %in% 2018:2025 & boston_unemployment$Period == "May", "unemployment rate"]
boston_all <- as.data.frame(boston_all)
names(boston_unemployment_may) <- c("unemployment")
boston_all$unemployment <- sapply(boston_unemployment_may, as.numeric)

boston_unemployment_may <- unemployment_national %>%
  dplyr::filter(format(Month, "%m") == "05")

# New York #####################################################################
new_york_2018 <- M2018[M2018$AREA_NAME == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("AREA_NAME", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2018$year <- 2018
new_york_2018_all <- new_york_2018[new_york_2018$OCC_TITLE == "All Occupations",]
names(new_york_2018_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2019 <- M2019[M2019$area_title == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("area_title", "occ_title",
                       "tot_emp", "jobs_1000", 
                       "h_pct10", "h_pct25", "h_median", "h_pct75", "h_pct90")]
new_york_2019$year <- 2019
new_york_2019_all <- new_york_2019[new_york_2019$occ_title == "All Occupations",]
names(new_york_2019_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2020 <- M2020[M2020$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2020$year <- 2020
new_york_2020_all <- new_york_2020[new_york_2020$OCC_TITLE == "All Occupations",]
names(new_york_2020_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2021 <- M2021[M2021$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2021$year <- 2021
new_york_2021_all <- new_york_2021[new_york_2021$OCC_TITLE == "All Occupations",]
names(new_york_2021_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2022 <- M2022[M2022$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2022$year <- 2022
new_york_2022_all <- new_york_2022[new_york_2022$OCC_TITLE == "All Occupations",]
names(new_york_2022_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2023 <- M2023[M2023$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ-PA",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2023$year <- 2023
new_york_2023_all <- new_york_2023[new_york_2023$OCC_TITLE == "All Occupations",]
names(new_york_2023_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2024 <- M2024[M2024$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2024$year <- 2024
new_york_2024_all <- new_york_2024[new_york_2024$OCC_TITLE == "All Occupations",]
names(new_york_2024_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_2025 <- M2025[M2025$AREA_TITLE == "New York-Newark-Jersey City, NY-NJ",
                     c("AREA_TITLE", "OCC_TITLE",
                       "TOT_EMP", "JOBS_1000", 
                       "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
new_york_2025$year <- 2025
new_york_2025_all <- new_york_2025[new_york_2025$OCC_TITLE == "All Occupations",]
names(new_york_2025_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                            "h_pct10", "h_pct25", "h_median", "h_pct75", 
                            "h_pct90", "year")
new_york_all <- rbind(new_york_2018_all, 
                    new_york_2019_all, 
                    new_york_2020_all,
                    new_york_2021_all,
                    new_york_2022_all,
                    new_york_2023_all,
                    new_york_2024_all,
                    new_york_2025_all)

new_york_unemployment <- read_xlsx("Unemployment_New_York.xlsx", skip = 10)
new_york_unemployment_may <- 
  new_york_unemployment[new_york_unemployment$Year %in% 2018:2025 & new_york_unemployment$Period == "May", "unemployment rate"]
new_york_all <- as.data.frame(new_york_all)
names(new_york_unemployment_may) <- c("unemployment")
new_york_all$unemployment <- sapply(new_york_unemployment_may, as.numeric)

new_york_unemployment_may <- unemployment_national %>%
  dplyr::filter(format(Month, "%m") == "05")

# San Francisco ################################################################

san_francisco_2018 <- M2018[M2018$AREA_NAME == "San Francisco-Oakland-Hayward, CA",
                       c("AREA_NAME", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2018$year <- 2018
san_francisco_2018_all <- san_francisco_2018[san_francisco_2018$OCC_TITLE == "All Occupations",]
names(san_francisco_2018_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2019 <- M2019[M2019$area_title == "San Francisco-Oakland-Hayward, CA",
                       c("area_title", "occ_title",
                         "tot_emp", "jobs_1000", 
                         "h_pct10", "h_pct25", "h_median", "h_pct75", "h_pct90")]
san_francisco_2019$year <- 2019
san_francisco_2019_all <- san_francisco_2019[san_francisco_2019$occ_title == "All Occupations",]
names(san_francisco_2019_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2020 <- M2020[M2020$AREA_TITLE == "San Francisco-Oakland-Hayward, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2020$year <- 2020
san_francisco_2020_all <- san_francisco_2020[san_francisco_2020$OCC_TITLE == "All Occupations",]
names(san_francisco_2020_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2021 <- M2021[M2021$AREA_TITLE == "San Francisco-Oakland-Hayward, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2021$year <- 2021
san_francisco_2021_all <- san_francisco_2021[san_francisco_2021$OCC_TITLE == "All Occupations",]
names(san_francisco_2021_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2022 <- M2022[M2022$AREA_TITLE == "San Francisco-Oakland-Hayward, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2022$year <- 2022
san_francisco_2022_all <- san_francisco_2022[san_francisco_2022$OCC_TITLE == "All Occupations",]
names(san_francisco_2022_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2023 <- M2023[M2023$AREA_TITLE == "San Francisco-Oakland-Hayward, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2023$year <- 2023
san_francisco_2023_all <- san_francisco_2023[san_francisco_2023$OCC_TITLE == "All Occupations",]
names(san_francisco_2023_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2024 <- M2024[M2024$AREA_TITLE == "San Francisco-Oakland-Fremont, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2024$year <- 2024
san_francisco_2024_all <- san_francisco_2024[san_francisco_2024$OCC_TITLE == "All Occupations",]
names(san_francisco_2024_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_2025 <- M2025[M2025$AREA_TITLE == "San Francisco-Oakland-Fremont, CA",
                       c("AREA_TITLE", "OCC_TITLE",
                         "TOT_EMP", "JOBS_1000", 
                         "H_PCT10", "H_PCT25", "H_MEDIAN", "H_PCT75", "H_PCT90")]
san_francisco_2025$year <- 2025
san_francisco_2025_all <- san_francisco_2025[san_francisco_2025$OCC_TITLE == "All Occupations",]
names(san_francisco_2025_all) <- c("area_title", "occ_title", "tot_emp", "jobs_1000", 
                              "h_pct10", "h_pct25", "h_median", "h_pct75", 
                              "h_pct90", "year")
san_francisco_all <- rbind(san_francisco_2018_all, 
                      san_francisco_2019_all, 
                      san_francisco_2020_all,
                      san_francisco_2021_all,
                      san_francisco_2022_all,
                      san_francisco_2023_all,
                      san_francisco_2024_all,
                      san_francisco_2025_all)

san_francisco_unemployment <- read_xlsx("Unemployment_San_Francisco.xlsx", skip = 10)
san_francisco_unemployment_may <- 
  san_francisco_unemployment[san_francisco_unemployment$Year %in% 2018:2025 & san_francisco_unemployment$Period == "May", "unemployment rate"]
san_francisco_all <- as.data.frame(san_francisco_all)
names(san_francisco_unemployment_may) <- c("unemployment")
san_francisco_all$unemployment <- sapply(san_francisco_unemployment_may, as.numeric)

san_francisco_unemployment_may <- unemployment_national %>%
  dplyr::filter(format(Month, "%m") == "05")
