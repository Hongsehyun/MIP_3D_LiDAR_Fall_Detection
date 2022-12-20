function Feature_table = DataProcess_FeatureExtraction(bboxes_coordinates)
%% Initialize Variables
Feature_array = zeros(size(bboxes_coordinates, 1), 4);
%% Feature Extraction
for idx = 1:size(bboxes_coordinates, 1)
    bbox_coordinate = bboxes_coordinates(idx, :);
    length_x = abs(bbox_coordinate.x0-bbox_coordinate.x4);
    length_y = abs(bbox_coordinate.y0-bbox_coordinate.y3);
    length_z = abs(bbox_coordinate.z0-bbox_coordinate.z1);
    length_diagonal_point3to5 = sqrt((bbox_coordinate.x3-bbox_coordinate.x5)^2+(bbox_coordinate.y3-bbox_coordinate.y5)^2+(bbox_coordinate.z3-bbox_coordinate.z5)^2);
    length_diagonal_point3to4 = sqrt((bbox_coordinate.x3-bbox_coordinate.x4)^2+(bbox_coordinate.y3-bbox_coordinate.y4)^2+(bbox_coordinate.z3-bbox_coordinate.z4)^2);
    
    Feature_1 = length_x/length_y;                                                   % length_ratio_xy
    Feature_2 = length_y/length_z;                                                   % length_ratio_yz
    Feature_3 = length_z/length_x;                                                   % length_ratio_zx
    Feature_4 = acos(length_diagonal_point3to4/length_diagonal_point3to5)*(180/pi);  % angle_diagonal_line

    Feature_array(idx,:) = [Feature_1, Feature_2, Feature_3, Feature_4];
%     Feature_array(idx,:) = [Feature_4];
end
%% Create Table
FeatureColumnIndex = ["length_ratio_xy", "length_ratio_yz", "length_ratio_zx", "angle_diagonal_line"];
% FeatureColumnIndex = ["angle_diagonal_line"];
Feature_table      = array2table(Feature_array, 'VariableNames',string(FeatureColumnIndex));
end

