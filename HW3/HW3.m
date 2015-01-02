 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Progrtam to print a table of time versus height of rocket travelled%
%Nico Wright                                                        %
%10/06/014                                                          %    
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

%creating the time and height range
time = [0:0.5:5];
height = (2.13*(time).^2) - (0.13*(time).^4) + (0.000034*(time).^4.752);

%combining the above 2 matrices into the time-height table
tableTH = [time' height'];

%calculating the maxheight and maxtime
[maxheight, pos_maxheight] = max(height);
maxtime = time(1,pos_maxheight);

%formatting the ouput
disp('     Time     Height')
disp(tableTH)

fprintf('The maximum height is %5.3f and it was reached at %.1f seconds',maxheight, maxtime)