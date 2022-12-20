function [Tree_Mdl, Tree_Train_Loss, cm] = ML_TreeTrain(TrainDataTable, TrainLabelTable)
%% KNN - Train
Tree_Mdl        = fitctree(TrainDataTable, TrainLabelTable);
%% Calculate Loss
Tree_Train_Loss = resubLoss(Tree_Mdl)
%% Evaluation
Tree_TrainData_predict = resubPredict(Tree_Mdl); 
Tree_TrainData_predict = categorical(Tree_TrainData_predict);  % 예측한 값
TrainData_Label       = categorical(TrainLabelTable.label);    % 실제 값

fig = figure;
cm = confusionchart(TrainData_Label, Tree_TrainData_predict);
cm.Title = 'Confusion Matrix: D.Tree to TrainData';
end