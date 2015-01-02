function DisplayOneDayReport (suture,day)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This function accepts the suture matrix and the day for which the report%
%is required as input parameters. It has no return value.                %
%It computes and displays total number of batches in                     %
%each rejection category for a given day received as user input          %   
%Temperature: 150-170°C                                                  %
%Pressure: 60-70 psi                                                     %
%Dwell Time: 2.0-2.5 sec                                                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%finds the location of the batches for the selected day
location = find(suture(:,2) == day);

%finds and assigns number of rejected batches dor each criteria
%temperature
rejectedTemperature = find( (suture(location,3) < 150) | (suture(location,3) >= 170) );
countTemperature = length(rejectedTemperature);
%pressure
rejectedPressure = find( (suture(location,4) < 60) | (suture(location,4) >70) );
countPressure = length(rejectedPressure);
%dwell time
rejectedDwell = find( (suture(location,5) < 2.0) | (suture(location,5) > 2.5) );
countDwell = length(rejectedDwell);

%output
fprintf('The number of batches rejected because of Temperature for day %d is %.0f\n',day,countTemperature)
fprintf('The number of batches rejected because of Pressure for day %d is %.0f\n',day,countPressure)
fprintf('The number of batches rejected because of Dwell time for day %d is %.0f\n',day,countDwell)

end