#### This file is readme.md for shiny project

In this shiny application, I developed a linear regression model based on mtcars dataset. We can use transmission, 1/4 mile time and weight to predict mpg performance.  
The linear model is seleced from following codes using AIC and backforward technic.

```{r}
library(datasets)
m1=lm(mpg~.,data=mtcars)
m3=step(m1,scope=list(lower=~am, upper=~.), direction="backward", data=mtcars))
```

##### Get started:  
You need to input three varibles into table:  
1. Transmission can be either 0 or 1, which represents auto and manual.  
2. 1/4 mile time. It's the time a car needs to drive 1/4 mile. The range is 14.5-22.9 second by mtcars data.  
3. Weight is divided by 1000, and the range is 1.5-5.4 ton here.  

##### Output:  
After you click "Submit" button, predicted mpg will show up in the right box.  

