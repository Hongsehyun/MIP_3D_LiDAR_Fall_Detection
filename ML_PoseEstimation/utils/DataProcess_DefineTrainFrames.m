function train_frame_info = DataProcess_DefineTrainFrames(numFiles, matFiles, mode)
%% Get names
human_name = cell(numFiles, 1);

for idx = 1:numFiles
    matFiles_name   = split(matFiles(idx).name, '.');
    human_name_cell = split(matFiles_name(1), '_');
    human_name(idx) = human_name_cell(size(human_name_cell, 1));
end
%% Setting Base Variables (Label Type = 5)
if mode == 5
    % [3] JI HYUN BIN
    train_frame_info(1).name    = human_name(1);
    train_frame_info(1).stand   = [230,  270,  310,  370,  620,  720];
    train_frame_info(1).sit     = [780,  980];
    train_frame_info(1).lying_1 = [1460, 1660];
    train_frame_info(1).lying_2 = [2080, 2200, 2350, 2430];
    train_frame_info(1).lying_3 = [2860, 3060];
    
    % [4] HAN KWANG YONG
    train_frame_info(2).name    = human_name(2);
    train_frame_info(2).stand   = [180,  240,  420,  560];
    train_frame_info(2).sit     = [630,  780,  820,  870];
    train_frame_info(2).lying_1 = [1560, 1760];
    train_frame_info(2).lying_2 = [2280, 2460, 2510, 2530];
    train_frame_info(2).lying_3 = [2980, 3180];
    
    % [5] AN CHANG MIN
    train_frame_info(3).name    = human_name(3);
    train_frame_info(3).stand   = [80,   115,  410,  470,  495,  540,  570,  630];
    train_frame_info(3).sit     = [690,  725,  850,  975, 1020, 1060];
    train_frame_info(3).lying_1 = [1260, 1380, 1500, 1580];
    train_frame_info(3).lying_2 = [1840, 1855, 1920, 2105];
    train_frame_info(3).lying_3 = [2500, 2610, 2660, 2750];

    % [6] LEE HA EUN
    train_frame_info(4).name    = human_name(4);
    train_frame_info(4).stand   = [20,   80,   180,  220,  250,  275,  310,  385];
    train_frame_info(4).sit     = [660,  860];
    train_frame_info(4).lying_1 = [1260, 1460];
    train_frame_info(4).lying_2 = [1820, 2020];
    train_frame_info(4).lying_3 = [2580, 2780];

    % [7] HU DA BIN
    train_frame_info(5).name    = human_name(5);
    train_frame_info(5).stand   = [150,  270,  490,  570];
    train_frame_info(5).sit     = [1150, 1350];
    train_frame_info(5).lying_1 = [2000, 2200];
    train_frame_info(5).lying_2 = [3300, 3500];
    train_frame_info(5).lying_3 = [4000, 4200];

    % [8] KIM HA EUN
    train_frame_info(6).name    = human_name(6);
    train_frame_info(6).stand   = [400,  600];
    train_frame_info(6).sit     = [1400, 1600];
    train_frame_info(6).lying_1 = [2700, 2900];
    train_frame_info(6).lying_2 = [3700, 3900];
    train_frame_info(6).lying_3 = [5800, 6000];

    % [9] HONG SE HYUN
    train_frame_info(7).name    = human_name(7);
    train_frame_info(7).stand   = [180,  380];
    train_frame_info(7).sit     = [1050, 1250];
    train_frame_info(7).lying_1 = [1770, 1970];
    train_frame_info(7).lying_2 = [2340, 2540];
    train_frame_info(7).lying_3 = [3000, 3200];

    % [10] YANG JI WOO
    train_frame_info(8).name    = human_name(8);
    train_frame_info(8).stand   = [250,  450];
    train_frame_info(8).sit     = [900,  1100];
    train_frame_info(8).lying_1 = [1550, 1750];
    train_frame_info(8).lying_2 = [2250, 2450];
    train_frame_info(8).lying_3 = [2900, 3100];

    % [11] CHOI YOON SEOK
    train_frame_info(9).name    = human_name(9);
    train_frame_info(9).stand   = [500,  700];
    train_frame_info(9).sit     = [1080, 1280];
    train_frame_info(9).lying_1 = [1800, 2000];
    train_frame_info(9).lying_2 = [2400, 2600];
    train_frame_info(9).lying_3 = [3120, 3320];

    % [12] AN GYEON HEAL
    train_frame_info(10).name    = human_name(10);
    train_frame_info(10).stand   = [300,  500];
    train_frame_info(10).sit     = [850,  1050];
    train_frame_info(10).lying_1 = [1500, 1700];
    train_frame_info(10).lying_2 = [2050, 2250];
    train_frame_info(10).lying_3 = [2850, 3050];
end
%% Setting Base Variables (Label Type = 3)
if mode == 3
    % [3] JI HYUN BIN
    train_frame_info(1).name    = human_name(1);
    train_frame_info(1).stand   = [230,  270,  310,  370,  620,  720];
    train_frame_info(1).sit     = [780,  980];
    train_frame_info(1).lying   = [1460, 1660, 2080, 2200, 2350, 2430, 2860, 3060];

    % [4] HAN KWANG YONG
    train_frame_info(2).name    = human_name(2);
    train_frame_info(2).stand   = [180,  240,  420,  560];
    train_frame_info(2).sit     = [630,  780,  820,  870];
    train_frame_info(2).lying   = [1560, 1760, 2280, 2460, 2510, 2530, 2980, 3180];

    % [5] AN CHANG MIN
    train_frame_info(3).name    = human_name(3);
    train_frame_info(3).stand   = [80,   115,  410,  470,  495,  540,  570,  630];
    train_frame_info(3).sit     = [690,  725,  850,  975, 1020, 1060];
    train_frame_info(3).lying   = [1260, 1380, 1500, 1580, 1840, 1855, 1920, 2105, 2500, 2610, 2660, 2750];

    % [6] LEE HA EUN
    train_frame_info(4).name    = human_name(4);
    train_frame_info(4).stand   = [20,   80,   180,  220,  250,  275,  310,  385];
    train_frame_info(4).sit     = [660,  860];
    train_frame_info(4).lying   = [1260, 1460, 1820, 2020, 2580, 2780];

    % [7] HU DA BIN
    train_frame_info(5).name    = human_name(5);
    train_frame_info(5).stand   = [150,  270,  490,  570];
    train_frame_info(5).sit     = [1150, 1350];
    train_frame_info(5).lying   = [2000, 2200, 3300, 3500, 4000, 4200];

    % [8] KIM HA EUN
    train_frame_info(6).name    = human_name(6);
    train_frame_info(6).stand   = [400,  600];
    train_frame_info(6).sit     = [1400, 1600];
    train_frame_info(6).lying   = [2700, 2900, 3700, 3900, 5800, 6000];

    % [9] HONG SE HYUN
    train_frame_info(7).name    = human_name(7);
    train_frame_info(7).stand   = [180,  380];
    train_frame_info(7).sit     = [1050, 1250];
    train_frame_info(7).lying   = [1770, 1970, 2340, 2540, 3000, 3200];

    % [10] YANG JI WOO
    train_frame_info(8).name    = human_name(8);
    train_frame_info(8).stand   = [250,  450];
    train_frame_info(8).sit     = [900,  1100];
    train_frame_info(8).lying   = [1550, 1750, 2250, 2450, 2900, 3100];

    % [11] CHOI YOON SEOK
    train_frame_info(9).name    = human_name(9);
    train_frame_info(9).stand   = [500,  700];
    train_frame_info(9).sit     = [1080, 1280];
    train_frame_info(9).lying   = [1800, 2000, 2400, 2600, 3120, 3320];

    % [12] AN GYEON HEAL
    train_frame_info(10).name    = human_name(10);
    train_frame_info(10).stand   = [300,  500];
    train_frame_info(10).sit     = [850,  1050];
    train_frame_info(10).lying   = [1500, 1700, 2050, 2250, 2850, 3050];
end
%% Setting Base Variables (Label Type = 2)
if mode == 2
    % [3] JI HYUN BIN
    train_frame_info(1).name             = human_name(1);
    train_frame_info(1).human_detected   = [230,  270,  310,  370,  620,  720,  780,  980];
    train_frame_info(1).lying_detected   = [1460, 1660, 2080, 2200, 2350, 2430, 2860, 3060];

    % [4] HAN KWANG YONG
    train_frame_info(2).name             = human_name(2);
    train_frame_info(2).human_detected   = [180,  240,  420,  560,  630,  780,  820,  870];
    train_frame_info(2).lying_detected   = [1560, 1760, 2280, 2460, 2510, 2530, 2980, 3180];

    % [5] AN CHANG MIN
    train_frame_info(3).name             = human_name(3);
    train_frame_info(3).human_detected   = [80,   115,  410,  470,  495,  540,  570,  630,  690,  725,  850,  975, 1020, 1060];
    train_frame_info(3).lying_detected   = [1260, 1380, 1500, 1580, 1840, 1855, 1920, 2105, 2500, 2610, 2660, 2750];

    % [6] LEE HA EUN
    train_frame_info(4).name             = human_name(4);
    train_frame_info(4).human_detected   = [20,   80,   180,  220,  250,  275,  310,  385,  660,  860];
    train_frame_info(4).lying_detected   = [1260, 1460, 1820, 2020, 2580, 2780];

    % [7] HU DA BIN
    train_frame_info(5).name             = human_name(5);
    train_frame_info(5).human_detected   = [150,  270,  490,  570,  1150, 1350];
    train_frame_info(5).lying_detected   = [2000, 2200, 3300, 3500, 4000, 4200];

    % [8] KIM HA EUN
    train_frame_info(6).name             = human_name(6);
    train_frame_info(6).human_detected   = [400,  600,  1400, 1600];
    train_frame_info(6).lying_detected   = [2700, 2900, 3700, 3900, 5800, 6000];

    % [9] HONG SE HYUN
    train_frame_info(7).name             = human_name(7);
    train_frame_info(7).human_detected   = [180,  380,  1050, 1250];
    train_frame_info(7).lying_detected   = [1770, 1970, 2340, 2540, 3000, 3200];

    % [10] YANG JI WOO
    train_frame_info(8).name             = human_name(8);
    train_frame_info(8).human_detected   = [250,  450,  900,  1100];
    train_frame_info(8).lying_detected   = [1550, 1750, 2250, 2450, 2900, 3100];

    % [11] CHOI YOON SEOK
    train_frame_info(9).name             = human_name(9);
    train_frame_info(9).human_detected   = [500,  700,  1080, 1280];
    train_frame_info(9).lying_detected   = [1800, 2000, 2400, 2600, 3120, 3320];

    % [12] AN GYEON HEAL
    train_frame_info(10).name            = human_name(10);
    train_frame_info(10).human_detected  = [300,  500,  850,  1050];
    train_frame_info(10).lying_detected  = [1500, 1700, 2050, 2250, 2850, 3050];
end
end