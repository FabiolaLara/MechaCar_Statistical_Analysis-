> library(dplyr)

> mecha_car <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
> head(mecha_car)
vehicle_length vehicle_weight spoiler_angle ground_clearance
1       14.69710       6407.946      48.78998         14.64098
2       12.53421       5182.081      90.00000         14.36668
3       20.00000       8337.981      78.63232         12.25371
4       13.42849       9419.671      55.93903         12.98936
5       15.44998       3772.667      26.12816         15.10396
6       14.45357       7286.595      30.58568         13.10695
AWD      mpg
1   1 49.04918
2   1 36.76606
3   0 80.00000
4   1 18.94149
5   1 63.82457
6   0 48.54268


> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car) #generate multiple linear regression model

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mecha_car)

Coefficients:
  (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance  
-1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00  
AWD  
-3.411e+00  


> summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car))

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mecha_car)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

>lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mecha_car) #generate multiple linear regression model
Call:
  lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + 
       ground_clearance + AWD + mpg, data = mecha_car)

Coefficients:
  (Intercept)    vehicle_weight     spoiler_angle  
17.415469         -0.000170         -0.009066  
ground_clearance               AWD               mpg  
-0.463776          0.406308          0.107731

> summary(lm(vehicle_length ~ vehicle_weight + spoiler_angle + ground_clearance + AWD + mpg,data=mecha_car))

Call:
  lm(formula = vehicle_length ~ vehicle_weight + spoiler_angle + 
       ground_clearance + AWD + mpg, data = mecha_car)

Residuals:
  Min       1Q   Median       3Q      Max 
-1.75545 -0.85291 -0.09242  0.47948  2.72615 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)       1.742e+01  1.284e+00  13.566  < 2e-16 ***
  vehicle_weight   -1.700e-04  9.005e-05  -1.888   0.0656 .  
spoiler_angle    -9.066e-03  8.721e-03  -1.040   0.3042    
ground_clearance -4.638e-01  7.112e-02  -6.521 5.77e-08 ***
  AWD               4.063e-01  3.335e-01   1.218   0.2296    
mpg               1.077e-01  1.127e-02   9.563 2.60e-12 ***
  ---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 1.15 on 44 degrees of freedom
Multiple R-squared:  0.7119,	Adjusted R-squared:  0.6791 
F-statistic: 21.74 on 5 and 44 DF,  p-value: 6.712e-11

> lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') # create lot summary

> total_summary <- susp_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI),.groups = 'keep') #create summary table

# Deliverable3
> t.test((susp_coil$PSI),mu=(1500)) #compare susp_coil vs population mean of 1500

One Sample t-test

data:  (susp_coil$PSI)
t = -1.8931, df = 149, p-value = 0.06028
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1497.507 1500.053
sample estimates:
  mean of x 
1498.78 


# Getting the subsets to compare each lot vs population mean of 1500

> susp_coil_lot1 <- susp_coil[susp_coil$Manufacturing_Lot == 'Lot1',]

> susp_coil_lot2 <- susp_coil[susp_coil$Manufacturing_Lot == 'Lot2',]

> susp_coil_lot3 <- susp_coil[susp_coil$Manufacturing_Lot == 'Lot3',]

# Applying the t.test() function for each lot vs the population mean of 1500
> t.test((susp_coil_lot1$PSI),mu=(1500)) #compare susp_coil_lot3 vs susp_coil (the entire dataset)

One Sample t-test

data:  (susp_coil_lot1$PSI)
t = 0, df = 49, p-value = 1
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.719 1500.281
sample estimates:
  mean of x 
1500 

> t.test((susp_coil_lot2$PSI),mu=(1500)) #compare susp_coil_lot3 vs susp_coil (the entire dataset)

One Sample t-test

data:  (susp_coil_lot2$PSI)
t = 0.51745, df = 49, p-value = 0.6072
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1499.423 1500.977
sample estimates:
  mean of x 
1500.2 

> t.test((susp_coil_lot3$PSI),mu=(1500)) #compare susp_coil_lot3 vs susp_coil (the entire dataset)

One Sample t-test

data:  (susp_coil_lot3$PSI)
t = -2.0916, df = 49, p-value = 0.04168
alternative hypothesis: true mean is not equal to 1500
95 percent confidence interval:
  1492.431 1499.849
sample estimates:
  mean of x 
1496.14 

