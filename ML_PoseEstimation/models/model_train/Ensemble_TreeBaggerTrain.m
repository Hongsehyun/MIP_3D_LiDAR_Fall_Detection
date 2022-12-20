function [Bagger_Mdl, loss, tree_fig, error_fig, conf_fig, cm] = Ensemble_TreeBaggerTrain(TrainDataTable, TrainLabelTable)
%% RandomForest & Bagging - Train
Bagger_Mdl = TreeBagger(100, TrainDataTable, TrainLabelTable, 'OOBPrediction','On', 'Method','classification');
%% Visualization Random Forest
tree_fig = figure;
view(Bagger_Mdl.Trees{1},'Mode','graph');
%% Visualize errors in random forests at each depth
error_fig = figure;
oobErrorBaggedEnsemble = oobError(Bagger_Mdl);
plot(oobErrorBaggedEnsemble);
xlabel 'Number of grown trees';
ylabel 'Out-of-bag classification error';
%% Evaluation
Bagger_TrainData_predict = predict(Bagger_Mdl, TrainDataTable);
Bagger_TrainData_predict = categorical(Bagger_TrainData_predict);  % 예측한 값
TrainData_Label          = categorical(TrainLabelTable.label);     % 실제 값

data_length = size(Bagger_TrainData_predict, 1);
score       = 0;
for num = 1:data_length
    if Bagger_TrainData_predict(num) ~= TrainData_Label(num);
        score = score + 1;
    end
end
loss = score / data_length;

conf_fig = figure;
cm = confusionchart(TrainData_Label, Bagger_TrainData_predict);
cm.Title = 'Confusion Matrix: Bagger to TrainData';
end