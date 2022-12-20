function [no_label_idx, double_label_idx, num_of_data] = DataProcess_DataCheck(label)
%% Initialize Variables
num_of_data  = size(label, 1);

no_label_idx     = {};
double_label_idx = {};

for itr = 1 : num_of_data
    if size(label{itr}, 1) == 0
        no_label_idx = [no_label_idx ; itr];
    end
    
    if size(label{itr}, 1) >= 2
       double_label_idx = [double_label_idx ; itr];
    end
end
end