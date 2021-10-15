ObservationInfo = rlNumericSpec([1 2]);
ObservationInfo.Name = 'Agent Actions';
ObservationInfo.Description = 'Player1 Action, Player2 Action';

ActionInfo = rlFiniteSetSpec([1 2]);
ActionInfo.Name = 'Decision';


stepFunctionHandle  = @(Action,LoggedSignals) myStepFunction(Action1,Action2, LoggedSignals);
resetFunctionHandle = 

env = rlFunctionEnv(ObservationInfo, ActionInfo, stepFunctionHandle, resetFunctionHandle);




