%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%This is a prgram that prints a conversion table of mi/h to ft/s%
%Nico Wright                                                    %
%September 29, 2014                                             %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

%Gets the maximum speed and number of entries from the user
maxMPH = input('Please enter the maximum speed you want converted in mi/h \n');
numberofvalues = input('Please enter the number of pairs of conversions to be printed \n');

%Organizes the above into a column matrix
tableMPH = linspace(1,maxMPH,numberofvalues)';

%Does the conversion and organizes the data into a column matrix
tableFPS = (((tableMPH(:))*5280)/3600);

%Adds the two column matrixes to form the data that will be displayed
tableconversion = [tableMPH,tableFPS;];

%A header with proper formatting
disp('     mi/h      ft/s')

%The result
disp(tableconversion)

%%%%%%%%%%%%%%%%%%%
%This was fun too!%
%%%%%%%%%%%%%%%%%%%