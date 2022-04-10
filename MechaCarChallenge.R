library(jsonlite)
library(tidyverse)
library(dplyr)
MechaCar_mpg<- read.csv('MechaCar_mpg.csv') #import dataset
head(MechaCar_mpg)
lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCar_mpg) #generate multiple linear regression model
summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCar_mpg)) #generate summary statistics

suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names = F,stringsAsFactors = F) #import the suspension coils dataset
total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table based on the PSI column
lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table for PSI grouped by lot number
head(total_summary)
head(lot_summary)

t.test((suspension_coil$PSI),mu=1500) #compare all manufacturing lots to the population mean
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot1")$PSI, mu=1500) #compare the psi values from lot1 to the population mean
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot2")$PSI, mu=1500) #compare the psi values from lot2 to the population mean
t.test(subset(suspension_coil, Manufacturing_Lot == "Lot3")$PSI, mu=1500) #compare the psi values from lot3 to the population mean
