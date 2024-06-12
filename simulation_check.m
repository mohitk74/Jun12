modelName = 'Wiper_washer_final.slx';
sim(modelName);
simOut = sim(modelName, 'ReturnWorkspaceOutputs', 'on');
if ~isempty(simOut)
    disp('Model has been simulated');
else
    disp('Model has not been simulated');
end
