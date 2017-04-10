trainingMatrix=importdata('trainingMatrix_MindReading1.mat')
trainingLabels=importdata('trainingLabels_MindReading_1.mat')
testingMatrix=importdata('testingMatrix_MindReading1.mat')
testingLabels=importdata('testingLabels_MindReading1.mat')
unlabeledMatrix=importdata('unlabeledMatrix_MindReading1.mat')
unlabeledLabels=importdata('unlabeledLabels_MindReading_1.mat')
k=10
N=50

for n=1:N
    trained_weights=train_LR_Classifier(trainingMatrix,trainingLabels,6)
    Accuracy(n)=findAccuracy(testingMatrix,trained_weights,testingLabels)
    Entropy=findEntropy(unlabeledMatrix,trained_weights)
    [B,I]=sort(Entropy,'descend')


    for l1a=1:k
        file1(l1a,:)=unlabeledMatrix(I(l1a),:)
        file2(l1a,:)=unlabeledLabels(I(l1a),:)
    end

    for l1b=1:k
        unlabeledMatrix(I(l1b),:)=[]
        unlabeledLabels(I(l1b),:)=[]
    end

    len=size(trainingMatrix,1)
    for l2=1:k
        trainingMatrix(len+l2,:)=(file1(l2,:))
        trainingLabels(len+l2,:)=(file2(l2,:))
    end
end
