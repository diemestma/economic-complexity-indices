# Economic Complexity Indices
This repository contains two methods to calculate the Economic Complexity Index (ECI). The ECI is an indicator of the sophistication of the productive structure of a city, region or country.

## Content
- [ice.R](/ice.R). In this R Script you will find the following:
   1. The code to calculate the binary Revealed Comparative Advantage (RCA) matrix.[^1]
   2. The code to calculate the ECI by two methods: 1) the reflections method[^1] and 2) the matrix method[^2].
- [ice.do](/ice.do). In this Do File you will only find the code to calculate the RCA and the ECI using the matrix method. Note that the MATA environment is used.
     
Note: for any improvement suggestions you can send me an email to dffjs98@gmail.com

[^1]: Source: Hidalgo, C. & Hausmann, R. (2009). The building blocks of economic complexity. *PNAS*. 106(26), 10570-10575. https://doi.org/10.1073/pnas.0900943106

[^2]: Source: Mealy, P., Farmer, J. D. & Teytelboym, A. (2019). Interpreting economic complexity. *Science Advances*. 5(1). https://doi.org/10.1126/sciadv.aau1705
