function [InitialObservation, LoggedSignals] = myResetFunction()

%
% Choices: Defect: +2
%          Collab: +1
%
%

myPrev = 1;
oppPrev = 1;

%My Previous Choice, Opponent's Previous Choice
InitialObservation = [myPrev, oppPrev];

LoggedSignals.State = InitialObservation;


end