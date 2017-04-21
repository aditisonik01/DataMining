clear;
%Using HandWritten Digits Dataset
load X_train.mat;
load y_train.mat;
load X_test.mat;
load y_test.mat;
Training = X_train;
Test = X_test;

class = unique(y_train);
train_labels = [];
test_labels = [];

%Polynomial kernel with degree 2
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
disp('For Polynomial kernel SVM');
disp(accuracy); %89.9416
