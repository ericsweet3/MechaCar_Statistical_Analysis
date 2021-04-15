# Deliverable 1

library(dplyr)

mechacar_mpg <- read.csv('MechaCar_mpg.csv')

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD ,data=mechacar_mpg))


# Deliverable 2

suspensionCoil <- read.csv('Suspension_Coil.csv')

total_summary <- suspensionCoil %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')

lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),Median = median(PSI), Variance = var(PSI), SD = sd(PSI) , .groups = 'keep')


# Deliverable 3

t.test(suspensionCoil$PSI,mu= 1500) 
t.test(subset(suspensionCoil, Manufacturing_Lot =="Lot1")$PSI, mu = 1500)
t.test(subset(suspensionCoil, Manufacturing_Lot =="Lot2")$PSI, mu = 1500)
t.test(subset(suspensionCoil, Manufacturing_Lot =="Lot3")$PSI, mu = 1500)