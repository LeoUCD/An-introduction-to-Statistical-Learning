library(ISLR)
data("Hitters")
Hitters <- na.omit(Hitters)
write.csv(Hitters, '/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning/An\ introduction\ to\ statistical\ Learning/Python/Chp6Linear_Model_Selection_and_Regularization/Hitters.csv',row.names = TRUE)
x=model.matrix(Salary~.,Hitters)[,-1]
set.seed(1)
train=sample(1:nrow(x), nrow(x)/2)
test=(-train)
y=Hitters$Salary
y.test=y[test]
Hitters_y_test <- as.data.frame(y.test)
Hitters_X_test <- as.data.frame(x[test,])
Hitters_X_train <- as.data.frame(x[train,])
Hitters_y_train <- as.data.frame(y[train])
write.csv(Hitters_X_test,'/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning/An\ introduction\ to\ statistical\ Learning/Python/Chp6Linear_Model_Selection_and_Regularization/Hitter_X_test.csv', row.names = T)
write.csv(Hitters_X_train,'/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning/An\ introduction\ to\ statistical\ Learning/Python/Chp6Linear_Model_Selection_and_Regularization/Hitter_X_train.csv', row.names = T)
write.csv(Hitters_y_test,'/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning/An\ introduction\ to\ statistical\ Learning/Python/Chp6Linear_Model_Selection_and_Regularization/Hitter_y_test.csv', row.names = T)
write.csv(Hitters_y_train,'/Users/dingxuanzhang/Google\ Drive/Probability\ and\ Statistics/Statistics/Machine\ Learning/An\ introduction\ to\ statistical\ Learning/Python/Chp6Linear_Model_Selection_and_Regularization/Hitter_y_train.csv', row.names = T)
