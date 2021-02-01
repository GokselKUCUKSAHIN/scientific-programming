%%Load

digitDatasetPath = fullfile(matlabroot, 'toolbox', 'nnet',...
'nndemos','nndatasets', 'DigitDataset');
imds = imageDatastore(digitDatasetPath, 'IncludeSubfolders', true,...
'LabelSource', 'foldernames');

%% Randomly divide the data into training and test data sets, with 80% of each class and 20% of the test set.
% Total 10,000 image 80% = 8000
numTrainFiles = 800;
[imdsTrain,imdsValidation] = splitEachLabel(imds,numTrainFiles,'randomize');

%% Design the required network to make transfer learning from the GoogLeNet model to classify this data set.
net = googlenet('Weights', weights);
lgraph = googlenet('Weights','none');

%%
inputSize = net.Layers(1).InputSize;
layersTransfer = net.Layers(1:end-3);
% Manuel olarak accuracy hesaplama
YPred = classify(net,imdsValidation);
YValidation = imdsValidation.Labels;

accuracy = sum(YPred == YValidation)/numel(YValidation);

