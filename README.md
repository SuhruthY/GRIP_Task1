# Prediction using Supervised ML: [Detailed Documentation][3] 
&emsp;The task aims to predict the percentage of a student based on the number of study hours. It involves building a simple regression model with two variables. I used R programming to achieve this task. 

| Id | Table of Contents                 |
|----|-----------------------------------|
| 1  | Overview                          |
| 2  | Procedure                         |
| 3  | Conclusion                        |
| 4  | References                        |

## Overview
&emsp;Each observation of the dataset consisting 25 tuples about no of hours a one spent studying and one's percentage score. We can build a simple linear regression using the dependent and independent variables. 

## Procedure
&emsp;Package like [rio][1] and [e1071][2] are used. Used different visualizations before you jumping to modeling. Build the model using built-in R functions and evaluated using various metrics such as R-squared, Adjusted R Squared, P-value, and measuring the goodness-of-fit by AIC and BIC.

## Conclusion
&emps;Some things you can explore are imputing more features such as minutes, seconds. Maybe there could be a different trend. You can also try other regression models.

## References
- [R basics by Statistical tools for high-throughput data analysis(STHDA)](http://www.sthda.com/english/wiki/r-basics-quick-and-easy)
- [An introduction to simple linear regression by Rebecca Bevans,Scribbr](https://www.scribbr.com/statistics/simple-linear-regression/)
- [5 Types of Regression Analysis And When To Use Them by Appier](https://www.appier.com/blog/5-types-of-regression-analysis-and-when-to-use-them/)
- [7 effective ways to handle small data by by Kateryna Koidan, hackernoon](https://hackernoon.com/7-effective-ways-to-deal-with-a-small-dataset-2gyl407s)

- [R Programming Tutorial - Learn the Basics of Statistical Computing by Freecodecamp](https://youtu.be/_V8eKsto3Ug)

[1]: https://cran.r-project.org/web/packages/rio/index.html
[2]: https://cran.r-project.org/web/packages/e1071/index.html
[3]: https://rpubs.com/SuhruthYambakam/prediction-using-supervised-ml
