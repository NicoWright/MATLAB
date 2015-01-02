function DisplayFullReport(suture)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This function accepts the suture matrix as input parameter.      %
%It has no return value. It computes and displays the total number% 
%of batches in each rejection category for each of the five days. %
%%Temperature: 150-170°C                                          %  
%Pressure: 60-70 psi                                              %      
%Dwell Time: 2.0-2.5 sec                                          %       
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%finds the number of rows in the suzure matrix
rows = size(suture);
location = 1:rows;

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
fprintf('The number of batches rejected in the week because of Temperature is %.0f\n',countTemperature)
fprintf('The number of batches rejected in the week because of Pressure is %.0f\n',countPressure)
fprintf('The number of batches rejected in the week because of Dwell time is %.0f\n',countDwell)

end