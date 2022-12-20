function test_frame_info = DataProcess_DefineTestFrames(numFiles, matFiles, mode)
%% Get names
human_name = cell(numFiles, 1);

for idx = 1:numFiles
    matFiles_name   = split(matFiles(idx).name, '.');
    human_name_cell = split(matFiles_name(1), '_');
    human_name(idx) = human_name_cell(size(human_name_cell, 1));
end
%% Setting Base Variables (Label Type = 5)
if mode == 5
    % [1] CHOI HA EUN
    test_frame_info(1).name    = human_name(1);
    test_frame_info(1).stand   = [40,   100,  350,  380,  420,  490,  510,  550];
    test_frame_info(1).sit     = [660,  860];
    test_frame_info(1).lying_1 = [1320, 1520];
    test_frame_info(1).lying_2 = [1950, 2150];
    test_frame_info(1).lying_3 = [2700, 2900];

    % [2] PARK JU EUN
    test_frame_info(2).name    = human_name(2);
    test_frame_info(2).stand   = [240,  255,  300,  350,  390,  525];
    test_frame_info(2).sit     = [780,  860,  900,  970,  1050, 1100];
    test_frame_info(2).lying_1 = [2400, 2510, 2550, 2640];
    test_frame_info(2).lying_2 = [3060, 3260];
    test_frame_info(2).lying_3 = [4120, 4180, 4740, 4880];
end
%% Setting Base Variables (Label Type = 3)
if mode == 3
    % [1] CHOI HA EUN
    test_frame_info(1).name    = human_name(1);
    test_frame_info(1).stand   = [40,   100,  350,  380,  420,  490,  510,  550];
    test_frame_info(1).sit     = [660,  860];
    test_frame_info(1).lying   = [1320, 1520, 1950, 2150, 2700, 2900];

    % [2] PARK JU EUN
    test_frame_info(2).name    = human_name(2);
    test_frame_info(2).stand   = [240,  255,  300,  350,  390,  525];
    test_frame_info(2).sit     = [780,  860,  900,  970,  1050, 1100];
    test_frame_info(2).lying   = [2400, 2510, 2550, 2640, 3060, 3260, 4120, 4180, 4740, 4880];
end
%% Setting Base Variables (Label Type = 2)
if mode == 2
    % [1] CHOI HA EUN
    test_frame_info(1).name           = human_name(1);
    test_frame_info(1).human_detected = [40,   100,  350,  380,  420,  490,  510,  550,  660,  860];
    test_frame_info(1).lying_detected = [1320, 1520, 1950, 2150, 2700, 2900];

    % [2] PARK JU EUN
    test_frame_info(2).name           = human_name(2);
    test_frame_info(2).human_detected = [240,  255,  300,  350,  390,  525,  780,  860,  900,  970,  1050, 1100];
    test_frame_info(2).lying_detected = [2400, 2510, 2550, 2640, 3060, 3260, 4120, 4180, 4740, 4880];
end
end