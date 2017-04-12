function accuracy=findAccuracy(testingMatrix,trained_weights,testingLabels)
    m=size(testingMatrix,1);
    for i=1:m
        testsample=testingMatrix(i,:);
        probabilityVector(i,:)=test_LR_Classifier(testsample,trained_weights,6);
        [x(i),index(i)]=max(probabilityVector(i,:));
    end

    ind=transpose(index);
    n=size(testingLabels,1);
    count=0;
    for j=1:n
        if (ind(j)==testingLabels(j))
            count=count+1;
        end
    end
    accuracy=((count/n)*100);
end
