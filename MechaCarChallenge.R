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