%%%%%%%%%%%%%%
%Lab Test 2  %
%Nico Wright %
%11/12/2014  %
%%%%%%%%%%%%%%
clear;
clc;
load('genes.mat')

userInput = input('Please enter the gene ID of which you want to see its expresssion: ');
while ( userInput < 10000 || userInput > 99999 )
    disp('Error. The gene must be a 5 digit number between 100000 and  99999');
    userInput = input('Please enter the gene ID of which you want to see its expresssion: ');
end
  location = find( (genes(:,1) == userInput) );

if genes(location,2) >= 10
    fprintf('The gene %d is above the threshold',userInput)
elseif genes(location,2) < 10
    fprintf('The gene %d is below the threshold',userInput)
elseif isempty(location)
     fprintf('The gene %d does not exist',userInput)
end





