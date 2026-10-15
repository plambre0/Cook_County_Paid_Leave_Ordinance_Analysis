setwd("C:/Users/Paolo/Desktop/Projects/CCPLO/datasets")
library(readxl)

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

################################################################################
# Data Cleaning
################################################################################

#area_name, naics_title, occ_title
#tot_emp, jobs_1000, h_pct10, h_pct25, h_median, h_pct75, h_pct90

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
################################################################################
# 
################################################################################

plot(chicago_all$year, chicago_all$h_median, 
     type = "l", col = "red", ylim = c(0, 60),
     ylab = "Hourly Wages",
     xlab = "Year",
     main = "Hourly Wage in Chicago by Percentile")
points(chicago_all$year, chicago_all$h_median, col = "red")
lines(chicago_all$year, chicago_all$h_pct10, type = "l", col = "green")
points(chicago_all$year, chicago_all$h_pct10, col = "green")
lines(chicago_all$year, chicago_all$h_pct25, type = "l", col = "blue")
points(chicago_all$year, chicago_all$h_pct25, col = "blue")
lines(chicago_all$year, chicago_all$h_pct75, type = "l", col = "purple")
points(chicago_all$year, chicago_all$h_pct75, col = "purple")
lines(chicago_all$year, chicago_all$h_pct90, type = "l", col = "pink")
points(chicago_all$year, chicago_all$h_pct90, col = "pink")

plot(chicago_all$year, chicago_all$unemployment, type = "l", 
     ylab = "Unemployment Rate (%)", xlab = "Year", main = "Unemployment Rate by Year in Chicago-Naperville-Elgin")
points(chicago_all$year, chicago_all$unemployment, col = "black")

