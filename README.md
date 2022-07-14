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

![lot_summary](/Resources/lot_summary.png)


## T-Tests on Suspension Coils

In this analysis, we had to apply the t.test() function to compare values from the PSI column versus the mean of 1500 suggested in the Challenge, applying this function will retrieve information of comparision, saying if there is no statistical difference between the observed sample mean and its presumed population mean, or if there is a statistical difference between the observed sample mean and its presumed population mean.


To start with, the total summary was obtained and applying the t.test() function we compare the PSI value, versus the mean of 1500, the next image shows the result, where we can see that the p-value = 0.06028 which means there is above our significant value of 50%, we have 60% which is enought to state that the two means are statistically similar.

![total_summary](/Resources/total_summary.png)

Secondly, we retrieved three subset of data, the first one is for all the lot 1, the secondth is or lot2 and the thirdth is for lot 3, with these subsets, we are comparing also how statistically similar they are versus the mean of 1500, which was propose by the challenge.

We can see that for lot1 the mean shows it is the same, althougt there is a legend that say it is no equal, this is because the mean has been rounded, however we can see the real value for lot 1 is 1499.423, nearly 1500, we can conclude that the p-value indicates the value is eqaul to 1, when it happens, our compared values are very similar, statistically.

![lot1](/Resources/lot1.png)

For lot 2 the p-values shows more than the 60% of effectiveness, we know than for a value above 50% it is consider efective.

![lot2](/Resources/lot2.png)

The las subset, lot3 a slighly difference between the compared values, the p-value shows less than 40% of effecriveness, saying that the values have a weak similarity statistically. We can explain this because there is a consider variation in the PSI values, we can see that there are values under 1460, creating this weak or moderate similarity between the means.

![lot3](/Resources/lot3.png)



