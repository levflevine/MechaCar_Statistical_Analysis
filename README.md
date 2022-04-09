# MechaCar_Statistical_Analysis

## Purpose of the Project

- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population

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

![Linear Regression 2](/Resources/Multiple_Linear_Regression_Analysis_2.png)

The linear regression equation looks like this:

***mpg*** = -0.01 +  <br>
    + 6.27 * ***vehicle_length*** + <br>
    + 0.001 * ***vehicle_weight*** + <br>
    + 0.07 * ***spoiler_angle*** + <br>
    + 3.55 * ***ground_clearance*** - <br>
    - 3.41 * ***AWD*** 

The overall regression model **P-value is 5.35e-11**, which is well below our significance level of 0.05. Hence, there is sufficient evidence to reject our null hypothesis, which means that **the slope of our linear model is not zero**.

### Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

The linear model predicts the ***mpg*** effectively. The coefficient of determination (R-squared) represents how well the regression model approximates real-world data is above 0.7: 

**Multiple R-squared:  0.7149**

## Summary Statistics on Suspension Coils

**The Project Requirement**: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

**Problem**: Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**Solution**: 

The **Lots # 1** and **#2** meet the design specification individually: 

- Lot 1 variance of the suspension coils = 0.98
- Lot 2 variance of the suspension coils = 7.47

The variances of the suspension coils for both Lots # 1 and #2 are under 100.

The **Lot # 3** does not meet the design specification individually:

- Lot 3 variance of the suspension coils = 170.29

The variances of the suspension coils for Lot # 3 is above 100.

The individual Lot summary variances are below:

![Lot Summary](/Resources/Lot_Summary.png)

In aggregate, all three lots combined do meet the design specification:

- Total variance of the suspension coils for all three Lots combined = 62.29, which is below the 100 specification threashold.

The total summary variance is below:

![Total Summary](/Resources/Tot_Summary.png)

## T-Tests on Suspension Coils

**Problem 1**: Determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch

**Solution 1**: Based on the **0.05 significance level**, there is **no statistical difference** of the aggregated manufacturing lots sample from the population mean: 

- the p-value = 0.06.

The aggregated t-test summary is presented below:

![Total Summary](/Resources/Total_T.test.png)

**Problem 2**: Determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch

**Solution 2**: Data from **Lots # 1** and **# 2** is **not statistically different** from the population mean. Data from **Lot # 3 is statistically different** from the population mean.

**Lot 1**: Based on the **0.05 significance level**, there is **no statistical difference** of the Lot 1 sample from the population mean: 

- the p-value = 1.

The Lot 1 t-test summary is presented below:

![Total Summary](/Resources/Lot11_T.test.png)

**Lot 2**: Based on the **0.05 significance level**, there is **no statistical difference** of the Lot 2 sample from the population mean: 

- the p-value = 0.6.

The Lot 2 t-test summary is presented below:

![Total Summary](/Resources/Lot2_T.test.png)

**Lot 3**: Based on the **0.05 significance level**, **there is statistical difference** of the Lot 3 sample from the population mean: 

- the p-value = 0.04, which means that we have to reject the Null Hypothesis.

The Lot 3 t-test summary is presented below:

![Total Summary](/Resources/Lot3_T.test.png)

## Study Design: MechaCar vs Competition

### Goal 

- Quantify how the MechaCar performs against the competition

### Metrics to be tested

1. Total Cost of Ownership (**TCO**) = initial cost to purchase the vehicle + costs to operate the vehicle + disposal cost over the course of 5 years at 12,000 miles per year
2. Safety Rating (**SR**) = 1 / (number of traffic incidents per year * severity of incidents (in US$) per 1,000 vehicles)
3. CO2 Footpring per Mile (**CO2**) = average CO2 grams per mile of vehicle operation
4. Initial Quality (**IQ**) = 1 / (number of unplanned service requests in the first year of vehicle ownership)
5. Performance (**PF**) = maximum horsepower

### What is the null hypothesis or alternative hypothesis?

| Metrics | Null Hypothesis | Alternative Hypothesis |
|---------|-----------------|------------------------|
| TCO | MechaCar TCO is statistically indifferent to competitor TCO | MechaCar TCO is statistically different than the competition |
| SR | MechaCar SR is statistically indifferent to competitor SR | MechaCar SR is statistically different than the competition |
| CO2 | MechaCar CO2 is statistically indifferent to competitor CO2 | MechaCar CO2 is statistically different than the competition |
| IQ | MechaCar IQ is statistically indifferent to competitor SR | MechaCar IQ is statistically different than the competition |
| PF | MechaCar PF is statistically indifferent to competitor PF | MechaCar PF is statistically different than the competition |

### What statistical test would you use to test the hypothesis? And why?

For each Metrics, we will create a summary statistics table with the following parameters (columns):

- mean
- median
- variance
- standard deviation

There will be two rows in the summary statistics table: MechaCar and the competition. The table will look like this.

| Company | Mean | Median | Variance | SD |
|-----|----|----------|----------|---|
| MechaCar |  |  |  |  |
| Competitors |  |  |  |  |

We will perform **Two-Sample T-Tests** on the data sample to determine if aggregated competitor data are statistically different from the MechaCar mean for each Metrics. The two-sample t-tests can be used to compare observations in one dataset (MechaCar) with observations in another (Competition). 

For each Metrics, we will calculate **p-value** and use the **0.05 level of significance** to test our Null Hypotheses.

If the **p-value** is below the level of significance we will reject the Null Hypothsis and establish a statistical difference between respective MechaCar Metric and the competitions. Then, we will need to see which way the diffrenece is: whether it is advantageous to MechaCar or not. 

Below is the overall matrix to show the potential outcomes of competitive analysis for each Metrics.

| Metrics | TCO | SR | CO2  | IQ | PF |
|---|---|--|---|---|---|
| Scenario | MechaCar <br> > <br> Competitors | MechaCar <br> > <br> Competitors | MechaCar <br> > <br> Competitors | MechaCar <br> > <br> Competitors | MechaCar <br> > <br> Competitors |
| MechaCar has got an advantage | No | Yes | No | Yes | Yes |

We would then visulaize each Metrics in a Radar (Web) Chart where the axes are represented by each Metric with two shapes: MechaCar and the Competition.

### What data is needed to run the statistical test?

To claculate the Metrics, We will need to collect the following data points for MechaCar and for the competitor vehicles:

- vehicle price
- average vehicle operating cost per mile (fuel + maintenance)
- projected vehicle disposal cost after 5 years
- number of traffic incidents per year per vehicle
- severity of incidents (in US$) per year per vehicle
- average CO2 grams per mile of vehicle operation
- number of unplanned service requests in the first year of vehicle ownership
- vehicle horsepower

The T-Test statistical analysis will require that the data meet the following requirements:

1. The input data is numerical and continuous
2. Each sample data was selected randomly from the population data
3. The input data is considered to be normally distributed
4. Each sample size is reasonably large 
5. The variance of the input data should be very similar

For the Study, we should look at a sample data from 50 - 200 vehicles from MechaCar and the Competitors.







