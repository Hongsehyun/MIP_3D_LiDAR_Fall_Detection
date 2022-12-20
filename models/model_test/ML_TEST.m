function [Test_Loss, cm] = ML_TEST(Model, TestDataTable, TestLabelTable)
%% Calculate Loss
Test_Loss  = loss(Model, TestDataTable, TestLabelTable)
%% Evaluation
TestData_predict  = predict(Model, TestDataTable);
TestData_predict  = categorical(TestData_predict);       % 예측한 값
TestData_Label    = categorical(TestLabelTable.label);   % 실제 값

fig = figure;
cm = confusionchart(TestData_Label, TestData_predict);
cm.Title = 'Confusion Matrix: Evaluation result of TestData';
end