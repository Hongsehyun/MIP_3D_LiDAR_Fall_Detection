function [LABEL_stand, LABEL_sit, LABEL_lying] = DataProcess_GetLabel_3(gt_label, stand_frame, sit_frame, lying_frame)
%%
LABEL_stand   = {};
LABEL_sit     = {};
LABEL_lying   = {};
%% Get Stand Ground Truth Label Information
for itr = 1:length(stand_frame)/2
    label_tmp   = gt_label.gTruth.LabelData.Human(stand_frame(2*(itr-1)+1)+1:stand_frame(2*(itr-1)+2));
    LABEL_stand = [LABEL_stand ; label_tmp];
end
%% Get Sit Ground Truth Label Information
for itr = 1:length(sit_frame)/2
    label_tmp = gt_label.gTruth.LabelData.Human(sit_frame(2*(itr-1)+1)+1:sit_frame(2*(itr-1)+2));
    LABEL_sit = [LABEL_sit; label_tmp];
end
%% Get Lying(1) Ground Truth Label 
for itr = 1:length(lying_frame)/2
    label_tmp   = gt_label.gTruth.LabelData.Human(lying_frame(2*(itr-1)+1)+1:lying_frame(2*(itr-1)+2));
    LABEL_lying = [LABEL_lying ; label_tmp];
end
end