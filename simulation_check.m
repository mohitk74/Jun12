modelName = 'and_gate_model.slx';
sim(modelName);
simOut = sim(modelName, 'ReturnWorkspaceOutputs', 'on');
if ~isempty(simOut)
    disp('Model has been simulated');
else
    disp('Model has not been simulated');
end
