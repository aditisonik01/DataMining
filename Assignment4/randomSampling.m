function randomSampling(path, filenameTrain, filenameLabel, TrainingData, TrainingLabel)
    textTrain = strcat(path,filenameTrain);
    textLabel = strcat(path,filenameLabel);
    trainData = strcat(path,TrainingData);
    trainLabel = strcat(path,TrainingLabel);
    
    load(textTrain);
    load(textLabel);
    load(trainData);
    load(trainLabel);
    
    y = randsample(1:size(unlabeledMatrix,2),10);
    
    RandomSamples = unlabeledMatrix(y,:);
    RandomSampleLabels = unlabeledLabels(y,:);
    
    %deletion of rows
    for i = 1:size(y,2)
        unlabeledLabels( y(i), : ) = [];
        unlabeledMatrix( y(i), : ) = [];
    end
    
    trainingMatrix = [trainingMatrix; RandomSamples];
    trainingLabels = [trainingLabels; RandomSampleLabels];
    
    %update training Data set matrix/label after appending rows
    save('trainingMatrix_MindReading1.mat','trainingMatrix');
    save('trainingLabels_MindReading_1','trainingLabels');
    
    %update unlabelled Data set matrix/label after deletion
    save('unlabeledMatrix_MindReading1.mat','unlabeledMatrix');
    save('unlabeledLabels_MindReading_1.mat','unlabeledLabels');
end
