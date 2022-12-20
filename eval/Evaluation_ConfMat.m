function [Table, sub_Table] = Evaluation_ConfMat(confusion_matrix)
%% Define Confusion Matrix Values
conf = confusion_matrix.NormalizedValues;
%% Accuracy
total_data = sum(sum(conf));
diag_data  = sum(diag(conf));
accuracy   = diag_data/total_data;
%% Precision, Recall, F1Scores
precision = diag(conf)./sum(conf,1)';
recall    = diag(conf)./sum(conf,2);
f1scores  = 2*(precision.*recall)./(precision+recall);

Total_precision = sum(precision)/size(conf, 1);
Total_recall    = sum(recall)/size(conf, 1);
Total_f1scores  = sum(f1scores)/size(conf, 1);
%% Table Visualization(1)
Table    = [accuracy ; Total_precision ; Total_recall ; Total_f1scores];
RowIndex = ['Accuracy ' ; 'Precision' ; 'Recall   ' ; 'F1_score '];
Table    = array2table(Table, 'RowNames', string(RowIndex), 'VariableNames', "Evaluation Result");
%% Table Visualization(2)
sub_Table   = [precision, recall, f1scores];
ColumnIndex = ['Precision by Class' ; 'Recall by Class   ' ; 'F1scores by Class '];
sub_Table   = array2table(sub_Table, 'VariableNames', string(ColumnIndex));
end



% function [Table] = Evaluation_ConfMat(TP, TN, FP, FN, TableName)
% %% Evaluate Model
% accuracy   =  (TP+TN)/(TP+TN+FP+FN);
% precision  =  (TP)/(TP+FP);
% recall     =  (TP)/(TP+FN);
% f1_score   =  (2*precision*recall)/(precision+recall);
% %% Table Visualization
% Table    = [accuracy ; precision ; recall ; f1_score];
% RowIndex = ['Accuracy ' ; 'Precision' ; 'Recall   ' ; 'F1_score '];
% Table    = array2table( Table, 'RowNames', string(RowIndex), 'VariableNames', string(TableName) );
% end