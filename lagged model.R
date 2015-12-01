Y1 <- cbind(d4$GDP.Growth)
X1 <- cbind(lag(x = d4$ContriICT,k = 1), lag(d4$ContriNICT,1), d4$Export.of.goods.and.services....of.GDP.)
# Pooled OLS Esitmater with control variable for developed countries 
pooling1 <- plm(Y1 ~ X1, data = d4, model= "pool")
summary(pooling1)
