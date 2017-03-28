clear;
%Using Human Activity Recognition Dataset
load X_train.txt;
load y_train.txt;
load X_test.txt;
load y_test.txt;
Training = X_train;
Test = X_test;
class = unique(y_train);
train_labels = [];
test_labels = [];
for x = 1:size(class,1)
    Group = y_train;
    lID = Group(:,1) ~= class(x);    
    Group(lID,1) = -1 ;
    train_labels = horzcat(train_labels,Group);
    Z = train_labels(:,x);
    SVMModel = fitcsvm(Training,Z,'KernelFunction','polynomial','PolynomialOrder',2);
    L = predict(SVMModel,Test);
    test_labels = horzcat(test_labels,L);
end
finalTestLabels = [];
total = 0;
for x = 1:size(test_labels,1)
    p = test_labels(x,:);
    finalTestLabels = vertcat(finalTestLabels,max(p));
    if (finalTestLabels(x) == y_test(x))
        total = total + 1;
    end
end
accuracy = (total/size(test_labels,1))*100;
disp(accuracy); %95.9281