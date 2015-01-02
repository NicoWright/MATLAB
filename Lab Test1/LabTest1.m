%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Program to print different temperatures at different altitudes%
%Nico Wright                                                   %
%10/08/2014                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

load('test1.mat');

inputaltitude = input('Please enter the altitude for which temperature you want to see: ');
fprintf('The boiling temperatures of the liquids at altitude %d are:\n',inputaltitude)

dispaltitude = BoilingTemps(2:end,inputaltitude);
fprintf('%5.4f %5.4f',dispaltitude)
fprintf('\n')

meanaltitude = mean(dispaltitude);
fprintf('The average boiling temperature for altitude %d is %5.2f',inputaltitude, meanaltitude)

