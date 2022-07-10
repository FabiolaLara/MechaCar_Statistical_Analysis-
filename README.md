# MechaCar_Statistical_Analysis-
Using R Studio

## Linear Regression to Predict MPG

* Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

When applying the formula to get the relationship between one coefficient (mpg) or variable versus the others, R displays the follow values:

Coefficients:

     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance  
     
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00  
             
             AWD  
      -3.411e+00  

We are comparing the mpg coefficients with the others, then we can see there is a slightly correlation between them, analyzing first vehicle_length and spoiler_angle, we can say there is a moderate correlation cause their values are nearly 7, and for values over 7 the sthenght of correlation is consider strong, however the coefficient groud_clearance is slighly over 3, so it is consider a weak correlation, for vehicle_weigth the correlation can be consider none, and for AWG coefficient altought it is a negative value the correlation is weak but it has more than 3 to be consider. Respecting the Intercept value we can see that it is negative, showing that the slope is decrecient, it means that when the x values increase, the y values decrease, for these analysis it could sound right, becasue the mpg values determine how fast a vehicle can be, in less time, while getting a mile of distance, so if the others coefficients like weigth, length, spoiler, ground clearance and AWG increase, In my opinion, they are determinant variables to make a car faster or less fats. Then if one these variables increase, it can be a fact that the mpg is going to decrease.

* Is the slope of the linear model considered to be zero? Why or why not?

It could be zero in the case the coefficients increse dramatically, but for these example I think it wont get the zero value.

* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

I think the prediction has a consider difference while comparing differents coefficients, the calculation below, shows how values vary if we take first mpg coefficients versus the others coefficients and then we take vehicle_lenght versus the others, differences are consider, besides in the  images below, there are two examples, comparing mpg vs vehicle_lenght and mpg vs spoiler_angle the graphs show a weak or moderate strength of correlation, so in general correlation can be consider weak or moderated due some values have show correlation and others don't show it.

![mpg](/Resources/mpg.png)
![vehicle_legth](/Resources/vehicle_length.png)
![vehicle_length_graph](/Resources/vehicle_length_graph.png)
![spoiler_angle](/Resources/spoiler_angle.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

Let see that the values for the Median in Lot1 and Lot2 are: 1500 in both, and the variance is 0.9795918 and 7.4693878 corresponding to each one, we can say that for Lot1 and Lot2 the variance is not exceding the specification, however in Lot3 the variance is 170.2861224, there is a highly variance respecting the Median value, overpassing the specification given, we can say that for Lot3 the PSI values were reduced considerably, then the variance was going to be reduced sharply.

![total_summary](/Resources/lot_summary.png)
![lot_summary](/Resources/lot_summary.png)




