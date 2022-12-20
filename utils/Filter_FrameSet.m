function output = Filter_FrameSet(search)
%% Standing & Walking
if search >=1 && search <=15
    output = search + 240;
end

if search >=16 && search <=65
    output = search + 285;
end

if search >=66 && search <=200
    output = search + 325;
end
%% Sitting
if search >=201 && search <=280
    output = search + 580;
end

if search >=281 && search <=350
    output = search + 620;
end

if search >=351 && search <=400
    output = search + 700;
end
%% Lying _ Bed
if search >=401 && search <=510
    output = search + 2000;
end

if search >=511  && search <=600
    output = search + 2040;
end
%% Lying _ ABNORMAL(1)
if search >=601 && search <=800
    output = search + 2460;
end
%% Lying _ ABNORMAL(2)
if search >=801 && search <=860
    output = search + 3320;
end

if search >=861 && search <=1000
    output = search + 3880;
end
end