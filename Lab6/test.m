%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%To determine if a specific feature module will go in the live release,%
%the beta release or neither in a piece of software being assessed by  %
%the quality assurance engineer.                                       %
%Nico Wright                                                           %
%October 1, 2014                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

%Gets the input necessary for the program to run
modulenumber = input('Please enter the module number: ');
bug_number = input('Please enter the number of bugs present in this module: ');
bug_severity = input('Please enter the maximum bug severity: ');

%none release
if (bug_number > 6 || (bug_severity >= 4 && bug_severity <= 5))
    release = 0;
    
%live release    
elseif (bug_number <=3 && (bug_severity <= 1 && bug_severity > 0))
    release = 1;
    
%if a negative value for bug number or severity is entered
elseif (bug_number <= 0 || bug_severity <= 0)
    release = 2;
    
%beta release
elseif release ~= 0 || release ~= 1 || release ~= 2
    release = 3;
     
end

%display the modules' category
if release == 0
    fprintf('Module %d should be included in any release.',modulenumber)
    
elseif release == 1 
    fprintf('Module %d should be included in the LIVE release.',modulenumber)
    
elseif release == 2
   fprintf('You need to input a whole number for the number of bugs present and bug severity.')
    
elseif release == 3
    fprintf('Module %d should be included in the BETA release.',modulenumber)

end

%%%%%%%%%%%
%Also fun!%
%%%%%%%%%%%
   
    
        
        
