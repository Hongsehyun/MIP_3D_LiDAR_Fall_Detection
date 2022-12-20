function [loss, cm] = Filter_MovingMedian(data, label, model, window_size, overlap, label_num)
%% Over Lapping (X)
if overlap == 'X'
    if label_num == 3
        datasize = size(data,1)/5;
        new_datatable_label(1:datasize/window_size, :)                              = label(1:datasize/window_size, :);
        new_datatable_label((datasize/window_size)+1:(datasize/window_size)*2, :)   = label(datasize+1:datasize+datasize/window_size, :);
        new_datatable_label((datasize/window_size)*2+1:(datasize/window_size)*5, :) = label(datasize*2+1:datasize*2+(datasize*3/window_size), :);

        for idx = 1:size(new_datatable_label, 1)
            batch_testdata         = data(1+(window_size*(idx-1)):window_size+(window_size*(idx-1)),:);
            batch_predict          = predict(model, batch_testdata);
            batch_label_count      = countlabels(batch_predict);
            batch_label_count      = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx, :)    = batch_label_count{1,1};
        end
    end
    
    if label_num == 5
        datasize = size(data,1)/5;
        new_datatable_label(1:datasize/window_size, :)                              = label(1:datasize/window_size, :);
        new_datatable_label((datasize/window_size)+1:(datasize/window_size)*2, :)   = label(datasize+1:datasize+datasize/window_size, :);
        new_datatable_label((datasize/window_size)*2+1:(datasize/window_size)*3, :) = label(datasize*2+1:datasize*2+(datasize/window_size), :);
        new_datatable_label((datasize/window_size)*3+1:(datasize/window_size)*4, :) = label(datasize*3+1:datasize*3+(datasize/window_size), :);
        new_datatable_label((datasize/window_size)*4+1:(datasize/window_size)*5, :) = label(datasize*4+1:datasize*4+(datasize/window_size), :);
                
        for idx = 1:size(new_datatable_label, 1)
            batch_testdata         = data(1+(window_size*(idx-1)):window_size+(window_size*(idx-1)),:);
            batch_predict          = predict(model, batch_testdata);
            batch_label_count      = countlabels(batch_predict);
            batch_label_count      = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx, :)    = batch_label_count{1,1};
        end
    end
end
%% Over Lapping (O)
if overlap == 'O'
    if label_num == 3
        datasize = size(data,1)/5;
        new_datatable_label(1:datasize-(window_size-1), :)                                    = label(1:datasize-window_size+1, :);
        new_datatable_label((datasize-window_size+1)+1:(datasize*2)-((window_size-1)*2), :)   = label(datasize+1:(datasize*2)-window_size+1, :);
        new_datatable_label((datasize-window_size+1)*2+1:(datasize*5)-((window_size-1)*3), :) = label((datasize*2)+1:(datasize*5)-window_size+1, :);

        for idx = 1:(datasize-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx, :)                   = batch_label_count{1,1};
        end

        for idx = datasize+1:((datasize*2)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1), :)   = batch_label_count{1,1};
        end

        for idx = (datasize*2)+1:((datasize*5)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1)*2, :) = batch_label_count{1,1};
        end
    end
    
    if label_num == 5
        datasize = size(data,1)/5;
        new_datatable_label(1:datasize-(window_size-1), :)                                    = label(1:datasize-window_size+1, :);
        new_datatable_label((datasize-window_size+1)+1:(datasize*2)-((window_size-1)*2), :)   = label(datasize+1:(datasize*2)-window_size+1, :);
        new_datatable_label((datasize-window_size+1)*2+1:(datasize*3)-((window_size-1)*3), :) = label((datasize*2)+1:(datasize*3)-window_size+1, :);
        new_datatable_label((datasize-window_size+1)*3+1:(datasize*4)-((window_size-1)*4), :) = label((datasize*3)+1:(datasize*4)-window_size+1, :);
        new_datatable_label((datasize-window_size+1)*4+1:(datasize*5)-((window_size-1)*5), :) = label((datasize*4)+1:(datasize*5)-window_size+1, :);

        for idx = 1:(datasize-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx, :)                   = batch_label_count{1,1};
        end

        for idx = datasize+1:((datasize*2)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1), :)   = batch_label_count{1,1};
        end

        for idx = (datasize*2)+1:((datasize*3)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1)*2, :) = batch_label_count{1,1};
        end
        
        for idx = (datasize*3)+1:((datasize*4)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1)*3, :) = batch_label_count{1,1};
        end
        
        for idx = (datasize*4)+1:((datasize*5)-window_size+1)
            batch_testdata                        = data(idx:idx+(window_size-1),:);
            batch_predict                         = predict(model, batch_testdata);
            batch_label_count                     = countlabels(batch_predict);
            batch_label_count                     = sortrows(batch_label_count, [2], 'descend');
            batch_label(idx-(window_size-1)*4, :) = batch_label_count{1,1};
        end
    end
end
%% Evaluation
data_length = size(batch_label, 1);
score       = 0;

new_datatable_label = categorical(new_datatable_label.label);   % 실제 값
for num = 1:data_length
    if new_datatable_label(num) ~= batch_label(num);
        score = score + 1;
    end
end
loss = score / data_length;
%% Visualization
fig = figure;
cm = confusionchart(new_datatable_label, batch_label);
cm.Title = 'Confusion Matrix: Evaluation result of TestData';
end