function Accuracy=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels)
    k=10;
    N=50;

    for n=1:N

        trained_weights=train_LR_Classifier(trainingMatrix,trainingLabels,6);
        Accuracy(n)=findAccuracy(testingMatrix,trained_weights,testingLabels);
        Entropy=findEntropy(unlabeledMatrix,trained_weights);
        [B,I]=sort(Entropy,'descend');
        len=size(trainingMatrix,1);
        for l1a=1:k
            trainingMatrix(len+l1a,:)=unlabeledMatrix(I(l1a),:);
            trainingLabels(len+l1a,:)=unlabeledLabels(I(l1a),:);
        end
            unlabeledMatrix([I(1),I(2),I(3),I(4),I(5),I(6),I(7),I(8),I(9),I(10)],:)=[];
            unlabeledLabels([I(1),I(2),I(3),I(4),I(5),I(6),I(7),I(8),I(9),I(10)],:)=[];
    end
end
