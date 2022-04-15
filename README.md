# MechaCar_Statistical_Analysis

Statistics is an essential component to data science because it helps analysts contextualize data and facilitates making informative decisions. R is a programming that helps with statistical analysis.

This challenge is helping Jeremy and the data analytics team do the following:

1. Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2. Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3. Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4. Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Linear Regression to Predict MPG

![Linear Regression to Predict MPG](https://user-images.githubusercontent.com/95401877/162124453-2b369022-4fac-4ebe-96f8-3eacf7a2f832.png)


Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

AWD, Vehicle Length, Vehicle Weight, Spoiler Angle, Ground Clearance

Is the slope of the linear model considered to be zero? Why or why not?

No. Vehicle Length (p-value: 2.60e-12) The p-value from this analysis was 5.35e-11, which is much smaller than our significance level of 0.05. Therefore, we have sufficient evidence to reject the null hypothesis - the slope is not equal to 0. 

(H0 : The slope of the linear model is zero, or m = 0, Ha : The slope of the linear model is not zero, or m ≠ 0)


Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes. The R-Squared value of this model is 0.71, so this model >70% chance. This linear model predict mpg of MechaCar prototypes effectively.

## T-Tests on Suspension Coils

![Summary](https://user-images.githubusercontent.com/95401877/163520332-f98fe3f6-9d66-4638-8ffa-79979bebd6b9.png)

Lot 1

Comparing the PSI values from Lot 1 to the population mean produces a p-value of 1, which does not pass our signficance level of 0.05. Therefore, we do not have enough evidence to reject the null hypothesis. This means that when analyzing PSI values from Lot 1, there is not significant variation in the lots compared to the population mean.

Lot 2
Comparing the PSI values from Lot 1 to the population mean produces a p-value of .6072, which does not pass our signficance level of 0.05. Therefore, we do not have enough evidence to reject the null hypothesis. This means that when analyzing PSI values from Lot 2, there is not significant variation in the lots compared to the population mean.

Lot 3

Comparing the PSI values from Lot 1 to the population mean produces a p-value of .04168, which indeed passes our signficance level of 0.05. Therefore, we have enough evidence to fail to reject the null hypothesis. PSI values from Lot 3 are significantly different from the population mean. This supports our previous findings from the summary table, which revealed that the variance in PSI values from Lot 3 did not meet the design specificaiton for the amount of variance allowed.

## Study Design: MechaCar vs Competition

To competite with other companies, MechaCar need to analysis Safety rating and Horsepower performance measures.

What metric or metrics are you going to test?

To compare vehicle performance of the MechaCar versus its top competitors, AutosRUs should look at two main performance measures:

Safety rating and Horsepower

What is the null hypothesis or alternative hypothesis?

H0: There is no statistifcal difference in the mean Fuel Safety rating and Horsepower between the MechaCar and its competitors.
HA: There is a statistical difference in the mean Fuel Safety rating and Horsepower between the MechaCar and its competitors.

What statistical test would you use to test the hypothesis? And why?

Using the pair t-test because of Comparing measurements on the same subjects across a single span of time (e.g., safty rating before and after horsepower increased).

What data is needed to run the statistical test?

MechaCar and Competition's data need to be togethered to run the statistical test.
