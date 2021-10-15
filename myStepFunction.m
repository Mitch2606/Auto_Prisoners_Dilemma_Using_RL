function [NextObs, Reward1, Reward2, IsDone, LoggedSignals] = myStepFunction(Action1, Action2, LoggedSignals)

% Purple 
% Green
%
% C = 1
% D = 2
%
% P P = 1 % Purple on Purple Island
% G G = 1 % Green on Green Island
%
% G P = 3 % Green on Purple Island
% P G = 3 % Purple on Green Island
%
% PG P = 3 + 1 = 4 % Purple and Green on Purple Island
% GP G = 3 + 1 = 4 % Green and Purple on Green Island


% Reward Matrix
%   |  C |  D |
% C | PP | PG |
% D | GP | GG |
%

rewardMatrix = [3, 0; 4, 1];

if(isempty(LoggedSignals) == 0)
    myPrev = LoggedSignals.State(1);
    oppPrev = LoggedSignals.State(2);
else
    myPrev = 1;
    oppPrev = 1;
end

Reward1 = rewardMatrix(myPrev, oppPrev);
Reward2 = rewardMatrix(oppPrev, myPrev);

NextObs = [Action1, Action2];

IsDone = 0;

LoggedSignals.State = NextObs;

end