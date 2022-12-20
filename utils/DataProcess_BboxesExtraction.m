function bboxes_coordinates = DataProcess_BboxesExtraction(number_of_frames, label)
%% Initialize Variables
bboxes_coordinates    = zeros(number_of_frames, 24);
CoordinateColumnIndex = cell(1,24);
%% Get Bounding Boxes Coordinates
for idx = 1:number_of_frames
    % generate bbox corner coordinates, clockwise from minimal point
    bboxes_corners = [ [-0.5, -0.5, -0.5]  ;
                       [-0.5, -0.5, 0.5 ]  ;
                       [-0.5, 0.5 , 0.5 ]  ;
                       [-0.5, 0.5 , -0.5]  ;
                       [0.5 , -0.5, -0.5]  ;
                       [0.5 , -0.5, 0.5 ]  ;
                       [0.5 , 0.5 , 0.5 ]  ;
                       [0.5 , 0.5 , -0.5] ];
    
    tmp    = cell2mat(label(idx));
    center = tmp(1:3);
    dims   = tmp(4:6);
    
    % resize bbox and translate to centers
    bboxes_corners = bboxes_corners .* dims;    
    bboxes_corners = bboxes_corners + center;

    bboxes_coordinates(idx, :) = [bboxes_corners(1,:), bboxes_corners(2,:), bboxes_corners(3,:), bboxes_corners(4,:), ...
                                  bboxes_corners(5,:), bboxes_corners(6,:), bboxes_corners(7,:), bboxes_corners(8,:)];
end
%% Resize Bounding Boxes Coordinates and Create Table
for coordinate_idx = 0:7
    CoordinateColumnIndex{3*coordinate_idx+1} = 'x'+string(coordinate_idx);
    CoordinateColumnIndex{3*coordinate_idx+2} = 'y'+string(coordinate_idx);
    CoordinateColumnIndex{3*coordinate_idx+3} = 'z'+string(coordinate_idx);
end

bboxes_coordinates = array2table(bboxes_coordinates, 'VariableNames',string(CoordinateColumnIndex));
end

