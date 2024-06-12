clc;clear all;
% var_type = input("Enter 1 or 2 based on the type of data used : \n1 -> boolean\n2 -> double\n")
data=readtable('Wiper_washer_inputs.xlsx');
time=seconds(data.Time(2:end));
for i = 2:width(data)
    % Extract variable
    var = data{2:end,i};
    % Create timetable and load it to the workspace
    var_type = data{1,i};
    % var_type
    if var_type == 197
        var = logical(var);
    else
        var = double(var);
    end
    varName = data.Properties.VariableNames{i};
    T = timetable(time,var);
    assignin('base',varName,T);
end
save("acd.mat")
