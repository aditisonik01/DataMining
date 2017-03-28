%loading the data and classes
train_data = importdata('X_train.mat')
class_train = importdata('y_train.mat')
test_data = importdata('X_test.mat')
class_test = importdata('y_test.mat')

 %classifies 5 nearest train_data and predicts the class of test_data
class=knnclassify(test_data,train_data,class_train,5) 
predicted=transpose(class)

%predicted class is validated with actual class to find the performance
cp=classperf(class_test,predicted)
accuracy=(cp.correctRate * 100) %accuracy is got