modelName = 'and_gate_model'; 
load_system(modelName);  
open_system(modelName);  
set_param(modelName, 'SystemTargetFile', 'grt.tlc');  
set_param(modelName, 'Toolchain', 'MinGW64 | gmake (64-bit Windows)');  
set_param(modelName, 'Solver', 'FixedStepDiscrete');  
set_param(modelName, 'FixedStep', '0.1');  
rtwbuild(modelName);  
