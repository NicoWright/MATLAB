%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%To determine if a specific feature module will go in the live release,%
%the beta release or neither in a piece of software being assessed by  %
%the quality assurance engineer.                                       %
%Nico Wright                                                           %
%October 1, 2014                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

shouldrun = input('Do you want to enter input? [1 for YES, any other value for NO]: ');
while shouldrun == 1
    modulenumber = input('Please enter the module number: ');
   
    while bug_number <0
        bug_number = input('Please enter the number of bugs present in this module: '); 
    end
    
    while (bug_severity < 1 || bug_severity >5)
        bug_severity = input('Please enter the maximum bug severity: ');
    end
    
end
        
        
