# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

### Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

Based on the **0.05 significance level**, the following 2 variables are statistically significant for the mpg values:

1. ***vehicle_length*** (p-value: 2.60e-12)
2. ***ground_clearance*** (p-value: 5.21e-08)

The ***vehicle_weight*** variable has a p-value of 0.0776, which falls outside the significance level. While we can't reject the Null Hypothesis for the *vehicle_weight*, we may want to investigate it further to prevent a Type II error, potentially by adding more observations to the analysis. Since the current p-value is close to our significance level, after adding more abservations it may become statistically significant for the ***mpg***.

**Below is the Console output:**

![Linear Regression](/Resources/Multiple_Linear_Regression_Analysis.png)

### Is the slope of the linear model considered to be zero? Why or why not?

The **slope is not considered to be zero**: there is a significant linear relationship as follows.

***mpg*** = -0.01 +  
            + 6.27 * ***vehicle_length*** + 
            + 0.001 * ***vehicle_weight*** + 
            + 0.07 * ***spoiler_angle*** + 
            + 3.55 * ***ground_clearance*** - 
            - 3.41 * ***AWD***

The overall regression model **P-value is 5.35e-11**, which is well below our significance level of 0.05. Hence, there is sufficient evidence to reject our null hypothesis, which means that **the slope of our linear model is not zero**.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The liner model predict the ***mpg*** effectively. The coefficient of determination (R-squared) represents how well the regression model approximates real-world data is above 0.7: 

**Multiple R-squared:  0.7149**




