library(mgcv)
# install.packages("car",dependencies=TRUE)
# update.packages(checkBuilt=TRUE, ask=FALSE)#https://stackoverflow.com/questions/54669173/error-package-digest-was-installed-by-an-r-version-with-different-internals
# install.packages("car",dependencies=TRUE)
library(car)
data1<- read.csv(file="labperformance_listcomprehension_info.csv", header=T)
# data1

# check collineation 'num_for', 'num_if', 'num_if_else', 'num_ele' +log(num_func_call+1)
alias( lm(perf_change ~ log(num_for+1) + log(num_if+1) + log(num_if_else+1) + log(num_ele+1)
           , data=data1) )

vif_test <- lm(perf_change ~ log(num_for+1) + log(num_if+1) + log(num_if_else+1) + log(num_ele+1)
                , data=data1)
vif(vif_test)

g <- gam(perf_change ~  log(num_for+1) + log(num_if+1) + log(num_if_else+1) + log(num_ele+1), data=data1,
         method = 'REML')

summary(g)


#+s(log(num_if+1))+s(log(num_if_else+1))+s(log(num_ele+1))
g <- gam(perf_change ~ s(log(num_for+1), k = 4)+s(log(num_if+1), k = 5)+s(log(num_if_else+1), k = 5)+s(log(num_ele+1)), data=data1,
         method = 'REML')
summary(g)
layout(matrix(1:1, nrow = 1))
plot(g, shade = TRUE)
plot(g, select = 2, pch = 20, shade = TRUE, residuals = TRUE)

# AIC(g)