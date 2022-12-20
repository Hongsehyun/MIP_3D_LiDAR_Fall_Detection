function [loss, cm] = Ensemble_TEST(Model, TestDataTable, TestLabelTable)
%% Evaluation
TestData_predict  = predict(Model, TestDataTable);
TestData_predict  = categorical(TestData_predict);       % 예측한 값
TestData_Label    = categorical(TestLabelTable.label);   % 실제 값

data_length = size(TestData_predict, 1);
score       = 0;
for num = 1:data_length
    if TestData_predict(num) ~= TestData_Label(num);
        score = score + 1;
    end
end
loss = score / data_length;

fig = figure;
cm = confusionchart(TestData_Label, TestData_predict);
cm.Title = 'Confusion Matrix: Evaluation result of TestData';
end