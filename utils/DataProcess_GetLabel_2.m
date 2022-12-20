function [LABEL_human_detected, LABEL_lying_detected] = DataProcess_GetLabel_2(gt_label, human_detected_frame, lying_detected_frame)
%%
LABEL_human_detected = {};
LABEL_lying_detected = {};
%% Get human_detected Stand Ground Truth Label Information
for itr = 1:length(human_detected_frame)/2
    label_tmp            = gt_label.gTruth.LabelData.Human(human_detected_frame(2*(itr-1)+1)+1:human_detected_frame(2*(itr-1)+2));
    LABEL_human_detected = [LABEL_human_detected ; label_tmp];
end
%% Get lying_detected Ground Truth Label Information
for itr = 1:length(lying_detected_frame)/2
    label_tmp            = gt_label.gTruth.LabelData.Human(lying_detected_frame(2*(itr-1)+1)+1:lying_detected_frame(2*(itr-1)+2));
    LABEL_lying_detected = [LABEL_lying_detected; label_tmp];
end
end