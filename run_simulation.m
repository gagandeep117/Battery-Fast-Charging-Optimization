%% Run Battery Charging Simulation

modelName = 'SPM_FastCharging_Model';
open_system(modelName)

% Run CC–CV
set_param('SPM_FastCharging_Model/From Workspace','VariableName','CCCV_Current')
sim('SPM_FastCharging_Model')

% Run Multi-Stage
set_param('SPM_FastCharging_Model/From Workspace','VariableName','MultiStage_Current')
sim('SPM_FastCharging_Model')
