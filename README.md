# MechaCar_Statistical_Analysis-
Using R Studio

## Linear Regression to Predict MPG

***Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***

When applying the formula to get the relationship between one coefficient (mpg) or variable versus the others, R displays the follow values:

Multiple linear regression formula: **lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mecha_car)**

Coefficients:

     (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  ground_clearance  
     
      -1.040e+02         6.267e+00         1.245e-03         6.877e-02         3.546e+00  
             
             AWD  
      -3.411e+00  

We are comparing the mpg coefficients with the others, then we can see there is a sligh correlation between them, analyzing first vehicle_length and spoiler_angle, we can say there is a moderate correlation cause their values are nearly 7, and for values over 7 the sthenght of correlation is consider strong, however the coefficient groud_clearance is slighly over 3, so it is consider a weak correlation, for vehicle_weigth the correlation can be consider none, and for AWG coefficient altought it is a negative value the correlation is weak but it has more than 3 to be consider. Respecting the Intercept value we can see that it is negative, showing that the slope is decrecient, it means that when the x values increase, the y values decreases, for these analysis the correlation could sound coherent, becasue the mpg values determine how fast a vehicle can be, in less time, while getting a mile of distance, so if the others coefficients like weigth, length, spoiler, ground clearance and AWG increase, In my opinion, they are determinant variables to make a car faster or less fats. Then if one these variables increase, it can be a fact that the mpg is going to decrease.

* ***Is the slope of the linear model considered to be zero? Why or why not?***

It could be zero in the case the coefficients increse dramatically, but for these example I think it wont get the zero value.

* ***Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***

I think the prediction has a consider difference while comparing differents coefficients, the calculation below, shows how values vary if we take first mpg coefficients versus the others coefficients and then we take vehicle_lenght versus the others, differences are consider, besides in the  images below, there are two examples, comparing mpg vs vehicle_lenght and mpg vs spoiler_angle the graphs show a weak or moderate strength of correlation, so in general correlation can be consider weak or moderated due some values have show correlation and others don't show it.

![mpg](/Resources/mpg.png)
![vehicle_legth](/Resources/vehicle_length.png)
![vehicle_length_graph](/Resources/vehicle_length_graph.png)
![spoiler_angle](/Resources/spoiler_angle.png)

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

***Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?***

Let see that the values for the Median in Lot1 and Lot2 are: 1500 in both, and the variance is 0.9795918 and 7.4693878 corresponding to each one, we can say that for Lot1 and Lot2 the variance is not exceding the specification, however in Lot3 the variance is 170.2861224, there is a high variance respecting the Median value, overpassing the specification given, we can say that for Lot3 the PSI values were reduced considerably, then the variance was going to be reduced sharply.

![lot_summary](/Resources/lot_summary.png)


## T-Tests on Suspension Coils

In this analysis, we had to apply the t.test() function to compare values from the PSI column versus the mean of 1500 suggested in the Challenge, applying this function will retrieve information of comparision, saying if there is no statistical difference between the observed sample mean and its presumed population mean, or if there is a statistical difference between the observed sample mean and its presumed population mean.


To start with, the total summary was obtained, then applying the t.test() function we compare the PSI value, versus the mean of 1500, the next image shows the result, where we can see that the p-value = 0.06028 which means there is above our significant value of 50%, we have 60% which is enought to state that the two means are statistically similar.

![total_summary](/Resources/total_summary.png)

Secondly, we retrieved three subset of data, the first one is for all the lot 1, the secondth is or lot2 and the thirdth is for lot 3, with these subsets, we are comparing also how statistically similar they are versus the mean of 1500, which was propose by the challenge.

We can see that for lot1 the mean shows it is the same, althougt there is a legend that say it is no equal, this is because the mean has been rounded, however we can see the real value for lot 1 is 1499.423, nearly 1500, we can conclude that the p-value indicates the value is eqaul to 1, when it happens, our compared values are very similar, statistically.

![lot1](/Resources/lot1.png)

For lot 2 the p-values shows more than the 60% of effectiveness, we know than for a value above 50% it is consider efective.

![lot2](/Resources/lot2.png)

The last subset, lot3 shows a slight difference between the compared values, the p-value shows less than 40% of effectiveness, saying that the values have a weak similarity statistically. We can explain this because there is a consider variation in the PSI values, we can see that there are values under 1460, creating this weak or moderate similarity between the means.

![lot3](/Resources/lot3.png)

This image show some of the values for lot 3, we can see it contains a considerably variation in its values.

<img width="250" alt="lot3_values" src="https://user-images.githubusercontent.com/101358301/179012463-fb049880-c8be-4605-9a9d-94ddca0f0c1d.png">


## Study Design: MechaCar vs Competition

The MechaCar data set, shows 6 metrics which were used to make the previous analysis, however we can see that these values are very specific, they are considering the lenght, weight, mpg, spoiler angle, ground clearance  and the mpg values. We can learn in the intenet tha a reasonable mpg has to be less than 60, the MechaCar data set shows that there are only 8 cars with a mpg higher than 60, so we could say that the cars in this data set are good vehicles to compare with the Competition if the mpg metric is consider.

But if our competitors have different metrics such as: cost, hose powers, maintenance cost, or safety rating, our data ser cna??t say so much. According with the internet, there are many metrics that can be consider for clients, here are some links to know more about it: [20 metrics fir cars selected by clients](https://www.merca20.com/consumo-que-buscan-los-compradores-de-automoviles/).Then we can say that our MechaCar doesn??t have enough metrics to compare with the competitors.
Let's answer some questions that could take us deeply if we want to compare metrics about competitors vs the MechaCar data set.

+ **What metric or metrics are you going to test?**
Altought there are many metrics that can be taken in analysing cars, the metrics thougth and that I would consider are: cost, fuel efficiency (mpg), HP, maintenance cost and safety rating. We can realized that the only one metric in our MechaCar to be usefuel is mpg if we want to have a result of these data set versus the competitors. 

+ **What is the null hypothesis or alternative hypothesis?**
The null hypothesis could be that choosing these metrics you can say a car have all the neccesary or specific characteritcs needed to buy a car for a client.
The alternative hypothesis can be that these metrics are not **all** the important metrics for clients in choosing a car.

+ **What statistical test would you use to test the hypothesis? And why?**

I would test these metrics using the t.test() function, because I can compare all the metrics and as is stablished that the most test you make, the most correct or valid comparision you can get to finally determine if the hypohesis is valid, also we can get the p-value which will tell us how far or near we are of the true using these metrics, so at the end we can have a bigger analysis and we could make or say these metrics are good or if our hypothesis is far comparing these metrics so we could research more metrics.

Usin linear regression fucntion is also very useful because we 

+ **What data is needed to run the statistical test?**
The neccesary data to run the statisticla test are all the metrics we can consider important, due the t.test() allows to make a test with all the metrics together.
