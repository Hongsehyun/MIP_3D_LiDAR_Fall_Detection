function [matFiles, numFiles, mydata] = DataProcess_LoadData(data_type)
%% Load Dataset
matFiles = dir('../data/' + string(data_type) + '/*.mat');
numFiles = length(matFiles);
mydata   = cell(numFiles, 1);

for idx = 1:numFiles 
  mydata_path = strcat('../data/' + string(data_type) +  '/', matFiles(idx).name)
  mydata{idx} = load(mydata_path ); 
end
end