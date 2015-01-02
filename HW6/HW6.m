%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Using User Created Functions%
%Nico Wright                 %
%11/12/2014                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
load('suture.mat')

userChoice = 0;
while userChoice ~= 3
   disp('1. Generate report with the number of rejected batches in each category for each of the five weeks');
   disp('2. Generate report with the number of rejected batches in given day');
   disp('3. Quit');
   
   userChoice = input('Enter your choice [number from 1 through 3]: '); 
   
   if (userChoice == 1)
       DisplayFullReport(suture)
       fprintf('\n')
      
   elseif (userChoice == 2)
       day = input('Enter the day you wish to see the report for: ');
       DisplayOneDayReport(suture,day)
       fprintf('\n')
       
   elseif (userChoice ==3)
       disp('Quit selected. Program will exit'); 
   
   else
       disp('Invalid choice. Input must be from 1 through 3');
       
   end   
end


