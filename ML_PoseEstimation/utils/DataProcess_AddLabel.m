function feature_label_table = DataProcess_AddLabel(feature_table, label_name)
%% Initialize Variables
label = strings(size(feature_table, 1),1);
%% Create Labels
for idx = 1:size(feature_table, 1)
    label(idx, :) = label_name;
end
%% Add Labels to Table
label_table         = table(label);
feature_label_table = [feature_table label_table];
end