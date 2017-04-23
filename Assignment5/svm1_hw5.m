clear;
%Using Multi Label Scene Dataset
load X_train.mat;
load y_train.mat;
load X_test.mat;
load y_test.mat;

Training = X_train;
Test = X_test;
test_labels = [];
test_labels2 = [];

%Polynomial kernel with degree 2
for x = 1:size(y_train,2)
    Z = y_train(:,x);
    SVMModel = fitcsvm(Training,Z,'KernelFunction','polynomial','PolynomialOrder',2);
    L = predict(SVMModel,Test);
    test_labels = horzcat(test_labels,L);
end

%Gaussian kernel with degree 2
for x = 1:size(y_train,2)
    Z = y_train(:,x);
    SVMModel = fitcsvm(Training,Z,'KernelFunction','gaussian','KernelScale','auto');
    L = predict(SVMModel,Test);
    test_labels2 = horzcat(test_labels2,L);
end
%test_labels -> labels obtained after training.
%y_test -> actual testing labels

totalAccuracy = 0;
for x = 1:size(test_labels,1)
    num = 0;
    denom = 0;
    for y = 1:size(test_labels,2)        
        if test_labels(x,y) == y_test(x,y) && (test_labels(x,y) == 1)
            num = num +1;
        end
        if (test_labels(x,y) == 1) || (y_test(x,y) == 1)
                denom = denom +1;
        end        
    end
    totalAccuracy = totalAccuracy + (num/denom);
end
accuracy = (totalAccuracy/size(test_labels,1))*100;
disp('For Polynomial kernel SVM');
disp(accuracy); %64.3513

totalAccuracy2 = 0;
for x = 1:size(test_labels2,1)
    num = 0;
    denom = 0;
    for y = 1:size(test_labels2,2)        
        if test_labels2(x,y) == y_test(x,y) && (test_labels2(x,y) == 1)
            num = num +1;
        end
        if (test_labels2(x,y) == 1) || (y_test(x,y) == 1)
                denom = denom +1;
        end        
    end
    totalAccuracy2 = totalAccuracy2 + (num/denom);
end
accuracy = (totalAccuracy2/size(test_labels2,1))*100;
disp('For Gaussian kernel SVM');
disp(accuracy); %64.3146
