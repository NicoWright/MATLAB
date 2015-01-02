%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%To determine if a specific feature module will go in the live release,%
%the beta release or neither in a piece of software being assessed by  %
%the quality assurance engineer.                                       %
%Nico Wright                                                           %
%October 1, 2014                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

shouldrun = 1;
while shouldrun == 1
    modulenumber = input('Please enter the module number: ');
    
    bug_number = input('Please enter the number of bugs present in this module: '); 
    while bug_number < 0 
        disp('ERROR: number of bugs cannot be negative')
        bug_number = input('Please enter the number of bugs present in this module: '); 
    end
    
    bug_severity = input('Please enter the maximum bug severity: ');
    while (bug_severity < 1 || bug_severity >5) 
        disp('ERROR: maximum bug severity must be between 1 and 5')
        bug_severity = input('Please enter the maximum bug severity: ');
    end
    
    release = 99;
    %none release
    if (bug_number > 6 || (bug_severity >= 4 && bug_severity <= 5))
        release = 0;    
    %live release    
    elseif (bug_number <=3 && (bug_severity <= 1 && bug_severity > 0))
        release = 1;
    %beta release
    elseif release ~= 0 || release ~= 1 
        release = 2;
    end
    %display the modules' category
    if release == 0
        fprintf('Module %d should be included in any release.',modulenumber)
    elseif release == 1 
        fprintf('Module %d should be included in the LIVE release.',modulenumber)
    elseif release == 2
        fprintf('Module %d should be included in the BETA release.',modulenumber)
    end
    
    fprintf('\n')
    shouldrun = input('Do you want to enter input? [1 for YES, any other value for NO]: ');
end
        
        
