function [LABEL_stand, LABEL_sit, LABEL_lying_1, LABEL_lying_2, LABEL_lying_3] = DataProcess_GetLabel_5(gt_label, stand_frame, sit_frame, lying_1_frame, lying_2_frame, lying_3_frame)
%%
LABEL_stand   = {};
LABEL_sit     = {};
LABEL_lying_1 = {};
LABEL_lying_2 = {};
LABEL_lying_3 = {};
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
for itr = 1:length(lying_1_frame)/2
    label_tmp     = gt_label.gTruth.LabelData.Human(lying_1_frame(2*(itr-1)+1)+1:lying_1_frame(2*(itr-1)+2));
    LABEL_lying_1 = [LABEL_lying_1 ; label_tmp];
end
%% Get Lying(2) Ground Truth Label Information
for itr = 1:length(lying_2_frame)/2
    label_tmp     = gt_label.gTruth.LabelData.Human(lying_2_frame(2*(itr-1)+1)+1:lying_2_frame(2*(itr-1)+2));
    LABEL_lying_2 = [LABEL_lying_2 ; label_tmp];
end
%% Get Lying(3) Ground Truth Label Information
for itr = 1:length(lying_3_frame)/2
    label_tmp     = gt_label.gTruth.LabelData.Human(lying_3_frame(2*(itr-1)+1)+1:lying_3_frame(2*(itr-1)+2));
    LABEL_lying_3 = [LABEL_lying_3 ; label_tmp];
end
end