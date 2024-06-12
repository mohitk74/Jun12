data=readtable('Inputs.xlsx');
time=seconds(data.Time);
for i = 2:width(data)
    % Extract variable
    var = data{:,i};
    % Create timetable and load it to the workspace
    varName = data.Properties.VariableNames{i};
    T = timetable(time,var);
    assignin('base',varName,T);
end
save("acd.mat")
