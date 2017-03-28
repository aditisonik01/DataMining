%loading the data and classes
train_data = importdata('X_train.txt')
class_train = importdata('y_train.txt')
test_data = importdata('X_test.txt')
class_test = importdata('y_test.txt')

%classifies 5 nearest train_data and predicts the class of test_data
class=knnclassify(test_data,train_data,class_train,5)

%predicted class is validated with actual class to find the performance
cp=classperf(class_test,class)
accuracy=(cp.correctRate * 100)  %accuracy is got