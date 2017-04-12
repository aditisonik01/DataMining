trainingMatrix=importdata('trainingMatrix_MindReading1.mat');
trainingLabels=importdata('trainingLabels_MindReading_1.mat');
testingMatrix=importdata('testingMatrix_MindReading1.mat');
testingLabels=importdata('testingLabels_MindReading1.mat');
unlabeledMatrix=importdata('unlabeledMatrix_MindReading1.mat');
unlabeledLabels=importdata('unlabeledLabels_MindReading_1.mat');
Acc1a(1,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc1b(1,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

trainingMatrix=importdata('trainingMatrix_MindReading2.mat');
trainingLabels=importdata('trainingLabels_MindReading_2.mat');
testingMatrix=importdata('testingMatrix_MindReading2.mat');
testingLabels=importdata('testingLabels_MindReading2.mat');
unlabeledMatrix=importdata('unlabeledMatrix_MindReading2.mat');
unlabeledLabels=importdata('unlabeledLabels_MindReading_2.mat');
Acc1a(2,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc1b(2,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

trainingMatrix=importdata('trainingMatrix_MindReading3.mat');
trainingLabels=importdata('trainingLabels_MindReading_3.mat');
testingMatrix=importdata('testingMatrix_MindReading3.mat');
testingLabels=importdata('testingLabels_MindReading3.mat');
unlabeledMatrix=importdata('unlabeledMatrix_MindReading3.mat');
unlabeledLabels=importdata('unlabeledLabels_MindReading_3.mat');
Acc1a(3,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc1b(3,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

Accuracy_random_MR=((1/3)*(sum(Acc1a)));
Accuracy_uncertain_MR=((1/3)*(sum(Acc1b)));
x=1:50;
figure;plot(x,Accuracy_random_MR,x,Accuracy_uncertain_MR)

trainingMatrix=importdata('trainingMatrix_1.mat');
trainingLabels=importdata('trainingLabels_1.mat');
testingMatrix=importdata('testingMatrix_1.mat');
testingLabels=importdata('testingLabels_1.mat');
unlabeledMatrix=importdata('unlabeledMatrix_1.mat');
unlabeledLabels=importdata('unlabeledLabels_1.mat');
Acc2a(1,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc2b(1,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

trainingMatrix=importdata('trainingMatrix_2.mat');
trainingLabels=importdata('trainingLabels_2.mat');
testingMatrix=importdata('testingMatrix_2.mat');
testingLabels=importdata('testingLabels_2.mat');
unlabeledMatrix=importdata('unlabeledMatrix_2.mat');
unlabeledLabels=importdata('unlabeledLabels_2.mat');
Acc2a(2,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc2b(2,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

trainingMatrix=importdata('trainingMatrix_3.mat');
trainingLabels=importdata('trainingLabels_3.mat');
testingMatrix=importdata('testingMatrix_3.mat');
testingLabels=importdata('testingLabels_3.mat');
unlabeledMatrix=importdata('unlabeledMatrix_3.mat');
unlabeledLabels=importdata('unlabeledLabels_3.mat');
Acc2a(3,:)=random(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);
Acc2b(3,:)=uncertainity_based(trainingMatrix,trainingLabels,testingMatrix,testingLabels,unlabeledMatrix,unlabeledLabels);

Accuracy_random_MMI=((1/3)*(sum(Acc2a)));
Accuracy_uncertain_MMI=((1/3)*(sum(Acc2b)));
x=1:50;
figure;plot(x,Accuracy_random_MMI,x,Accuracy_uncertain_MMI)