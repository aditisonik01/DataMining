clear;
%Using MindReading Dataset
path = input('Enter directory path: ');

filenameTrain = input('Enter unlabelled train matrix file name: ');
filenameLabel = input('Enter unlabelled train label file name: ');
TrainingData = input('Enter training matrix file name: ');
TrainingLabel = input('Enter training label file name: ');

randomSampling(path, filenameTrain, filenameLabel, TrainingData, TrainingLabel);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SAMPLE INPUT
% Enter directory path: 'E:\ASU_Sem_II\572_DataMining\assignmnets\assignment4_miniProject\'
% Enter unlabelled train matrix file name: 'unlabeledMatrix_MindReading1.mat'
% Enter unlabelled train label file name: 'unlabeledLabels_MindReading_1.mat'
% Enter training matrix file name: 'trainingMatrix_MindReading1.mat'
% Enter training label file name: 'trainingLabels_MindReading_1.mat'

%%%%%%%%%%%%%%%%%
% output .mat files will be saved in the same folder and on having 100
% iterations 100 times randomSampling will be called.