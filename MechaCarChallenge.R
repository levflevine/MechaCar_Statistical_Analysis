setwd("~/UNCC Data Analytics Bootcamp/Classes/15-R/MechaCar_Statistical_Analysis")

# Deliverable 1

library(dplyr)

mecha_car_table <- read.csv(file='MechaCar_mpg.csv',
                            check.names=F,stringsAsFactors = F)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
     ground_clearance + AWD, data = mecha_car_table)

summary (lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
              ground_clearance + AWD, data = mecha_car_table))

# Deliverable 2

suspension_coil_table <- read.csv(file='Suspension_Coil.csv',
                                  check.names=F,stringsAsFactors = F)
total_summary <- suspension_coil_table %>% summarize(mean_PSI=mean(PSI), 
                                  median_PSI=median(PSI),
                                  var_PSI=var(PSI),
                                  sd_PSI=sd(PSI),
                                  .groups = 'keep')

lot_summary <- suspension_coil_table %>% group_by (Manufacturing_Lot) %>% summarize(mean_PSI=mean(PSI), 
                                  median_PSI=median(PSI),
                                  var_PSI=var(PSI),
                                  sd_PSI=sd(PSI),
                                  .groups = 'keep')
                                     
# Deliverable 3

t.test(suspension_coil_table$PSI, mu=1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot==Lot1, select = PSI), mu=1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot==Lot2, select = PSI), mu=1500)

t.test(subset(suspension_coil_table, Manufacturing_Lot==Lot3, select = PSI), mu=1500)
