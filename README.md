# MechaCar_Statistical_Analysis-
Using R Studio

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
* 
When applying the formula to get the relationship between one coefficient (mpg) or variable versus the others, R displays the follow values: 
Coefficients:
     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance  
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00  
             AWD  
      -3.411e+00  

We are comparing the mpg coefficients with the others, then we can see there is a slightly correlation between them, analyzing first vehicle_length and spoiler_angle, we can say there is a moderate correlation cause their values are nearly 7, and for values over 7 the sthenght of correlation is consider strong, however the coefficient groud_clearance is slighly over 3, so it is consider a weak correlation, for vehicle_weigth the correlation can be consider none, and for AWG coefficient altought it is a negative value the correlation is weak but it has more than 3 to be consider. Respecting the Intercept value we can see that it is negative, showing that the slope is decrecient, it means that when the x values increase, the y values decrease, for these analysis it could sound right, becasue the mpg values determine how fast a vehicle can be, in less time, while getting a mile of distance, so if the others coefficients like weigth, length, spoiler, ground clearance and AWG increase, In my opinion, they are determinant variables to make a car faster or less fats. Then if one these variables increase, it can be a fact that the mpg is going to decrease.

* Is the slope of the linear model considered to be zero? Why or why not?

It could be zero i the case the coefficients increse dramatically, but for these example I think it wont get the zero value.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
I think the prediction has a consider difference while comparing differents coefficients, the calculation after shows how values vaary if we take first mpg coefficients versus the others coefficients and then we compare vehicle_lenght versus the others, differences area consider, however in the  graph we can consider a weak or moderate strength f correlation.

lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
    ground_clearance + AWD, data = mecha_car)

Residuals:
     Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.584
Coefficients:
                   Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---

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
