mdl = "multiAgentTest";

oinfo = rlNumericSpec([1 2]);
oinfo.Name = 'Agent Actions';
oinfo.Description = 'Player1 Action, Player2 Action';

ainfo = rlFiniteSetSpec([1 2]);
ainfo.Name = 'Decision';

blks = ["rlCollaborativeTask/Agent A", "rlCollaborativeTask/Agent B"];
obsInfos = {oinfo,oinfo};
actInfos = {ainfo,ainfo};
env = rlSimulinkEnv(mdl,blks,obsInfos,actInfos);








