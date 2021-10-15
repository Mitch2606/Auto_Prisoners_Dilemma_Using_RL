
ObservationInfo = rlNumericSpec([1 2]);
ObservationInfo.Name = 'Agent Actions';
ObservationInfo.Description = 'Player1 Action, Player2 Action';

ActionInfo = rlFiniteSetSpec([1 2]);
ActionInfo.Name = 'Decision';

agentPPO = rlPPOAgent(ObservationInfo, ActionInfo);

agentDQN = rlDQNAgent(ObservationInfo, ActionInfo);
