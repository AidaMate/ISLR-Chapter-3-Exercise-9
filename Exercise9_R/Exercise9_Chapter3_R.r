auto = ISLR::Auto

pairs(auto)

auto$name <- NULL
cor(auto,method = c("pearson"))

lm.fit<-lm(mpg~.,data=auto)
summary(lm.fit)

which.max(hatvalues(lm.fit))

par(mfrow = c(2,2))
plot(lm.fit)

summary(lm(formula = mpg ~ . * ., data = auto[, -9]))


