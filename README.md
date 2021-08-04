# MechaCar Statistical Analysis

For this analysis, I explored MechaCar data and compared it versus its competitors to find what it did better than them. I worked with Excel files and loaded them into RStudio to parse through them and run statistical analysis'. You will find my findings below, as well as an included picture.

## Linear Regression to Predict MPG

1) Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

- I found that the variables/coefficients that provided the most non-random amount of variance were the spoiler angle, vehicle weight, and the AWD. 

2) Is the slope of the linear model considered to be zero? Why or why not?

- The slope of the linear model would not be considered zero. I found that the p-value was 5.35x10^-11 which is far lower than the standard of .05, which means that the changes we found in the response variable are correlated to the predictor variable.

3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

- I found that the R-squared value predicted the MechaCar prototypes mpg values 71.49% of the time, which is decently high but not entirely what we would want. There are many factors that could alter (either increase or decrease) the effectiveness of our R-squared value.

![D1 Summary](https://user-images.githubusercontent.com/75768098/115120740-a8af1000-9f74-11eb-8b7a-7ac9aa24c0c0.png)

## Summary Statistics on Suspension Coils

Do the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

- Lot 1 and 2 would work, it meets the specification requirements listed above
- Lot 3 would not work, its variance of 170.3 exceeds the psi of 100 that was specified in the design.

![Lot Summary](https://user-images.githubusercontent.com/75768098/115120742-a9e03d00-9f74-11eb-821f-ac90deda7fc3.png)

## T-Tests on Suspension Coils

For the final section, I performed T-Tests on each of the lots, the following pictures are each of the T-Tests.

- For the first test, we see that the p-value is at .06, which is (slightly) higher than the standard of .05. Because of this we can assume that the distribution is normal. 


![Lot t-test](https://user-images.githubusercontent.com/75768098/115120744-ab116a00-9f74-11eb-9554-6bcd4e502839.png)


- For Lot 1, the p-value is at 1 so we can gather that the distribution is normal. 
- For Lot 2, the p-value is at .06, so again, we can gather that the distribution is normal. 
- For Lot 3, the p-value is at .04, which is unfortunately lower than the standard. Because of this we cannot assume that it would be normal. 


## Study Design: MechaCar vs Competition

For this final summary segment I will be diving into the MechCars vs Competitors aspect more thoroughly. Lets take a look first at the aspects that I think are the most important: saftey rating, fuel efficiencies and cost. As for the most important, I believe that people will be torn between cost and safety rating. How does MechaCar compare in these metrics compared to their competitors. Lets take a look at cost first. There two practical aspects to look at, if its priced well against competitors or if its not. For us to test this we would just do a simple t-test to decide between the two hypotheses. I would load the data into RStudio and parse through it, then load it into the dataframes that we need in order to perform the tests. The same can be done for the other variables that anyone would want to look at. 
