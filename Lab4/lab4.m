%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This program performs some analyysis on temperature data%
%Nico Wright                                             % 
%September 24, 2014                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
load('lab4.mat', 'Weather');
load('lab4.mat', 'Years');

%month of maxumum average each year
[maxMonthlyAverage, maxMonthlyAverage_Month] = max(Weather);
disp('Month of maximum monthly average high in each year')
fprintf('%d ', maxMonthlyAverage_Month)
fprintf('\n')

%year with highest monthly average July
[julyHigh, july] = max(Weather(7,:));
disp('Year with the highest monthly average high in July')
fprintf('%d ', Years(july))
fprintf('\n')

%year with lowest monthly average February
[febLow, feb] = min(Weather(2,:));
disp('Year with the lowest monthly average high in February')
fprintf('%d ', Years(feb))
fprintf('\n')

%calculate the averages singly then display them
mean2009 = mean(Weather(:,1));
mean2010 = mean(Weather(:,2));
mean2011 = mean(Weather(:,3));
mean2012 = mean(Weather(:,4));
disp('Mean of monthly average high per year')
fprintf('%5.2f %5.2f %5.2f %5.2f', mean2009, mean2010, mean2011, mean2012)
fprintf('\n')

%calculate the standard deviations singly then display them
std2009 = std(Weather(:,1));
std2010 = std(Weather(:,2));
std2011 = std(Weather(:,3));
std2012 = std(Weather(:,4));
disp('Standard deviation of monthly average high per year')
fprintf('%5.2f %5.2f %5.2f %5.2f', std2009, std2010, std2011, std2012)
fprintf('\n')

%mean of monthly average Jun-Aug
jun_aug_2009 = mean(Weather(6:8,1));
jun_aug_2010 = mean(Weather(6:8,2));
jun_aug_2011 = mean(Weather(6:8,3));
jun_aug_2012 = mean(Weather(6:8,4));
disp('Mean of of monthly average high for June through August per year')
fprintf('%5.2f %5.2f %5.2f %5.2f', jun_aug_2009, jun_aug_2010, jun_aug_2011, jun_aug_2012)
fprintf('\n')

%standard deviation of monthly average Jun-Aug
std_jun_aug = std(Weather(6:8,1:4));
disp('Standard deviation of monthly average high for June through August per year')
fprintf('%5.2f ', std_jun_aug)

%%%%%%%%%%%%%%%
%This was hard%
%%%%%%%%%%%%%%%