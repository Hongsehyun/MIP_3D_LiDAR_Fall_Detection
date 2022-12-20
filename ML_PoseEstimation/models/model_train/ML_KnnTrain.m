function [Knn_Mdl, Knn_Train_Loss, cm] = ML_KnnTrain(TrainDataTable, TrainLabelTable, k_val)
%% KNN - Train
Knn_Mdl        = fitcknn(TrainDataTable, TrainLabelTable, 'NumNeighbors',k_val);
%% Calculate Loss
Knn_Train_Loss = resubLoss(Knn_Mdl)
%% Evaluation
Knn_TrainData_predict = resubPredict(Knn_Mdl); 
Knn_TrainData_predict = categorical(Knn_TrainData_predict);  % 예측한 값
TrainData_Label       = categorical(TrainLabelTable.label);  % 실제 값

fig = figure;
cm = confusionchart(TrainData_Label, Knn_TrainData_predict);
cm.Title = 'Confusion Matrix: KNN to TrainData';
end
