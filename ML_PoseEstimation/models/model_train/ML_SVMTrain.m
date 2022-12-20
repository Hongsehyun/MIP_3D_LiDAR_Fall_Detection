function [SVM_Mdl, SVM_Train_Loss, cm] = ML_SVMTrain(TrainDataTable, TrainLabelTable)
%% SVM - Train
SVM_Mdl        = fitcecoc(TrainDataTable,TrainLabelTable);
%% Calculate Loss
SVM_Train_Loss = resubLoss(SVM_Mdl)
%% Evaluation
SVM_TrainData_predict = resubPredict(SVM_Mdl); 
SVM_TrainData_predict = categorical(SVM_TrainData_predict);  % 예측한 값
TrainData_Label       = categorical(TrainLabelTable.label);  % 실제 값

fig = figure;
cm = confusionchart(TrainData_Label, SVM_TrainData_predict);
cm.Title = 'Confusion Matrix: SVM to TrainData';
end