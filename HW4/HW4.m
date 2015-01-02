%%%%%%%%%%%%%%%%%%%%%%%%
%A simple guessing game%
%Nico Wright           %
%10/26/2014            %
%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

shouldplay = 1;
numberofturns = 0;
totalguessnumber = 0;

while shouldplay == 1
    randnumber = 100*rand(1);
    numberofturns = numberofturns + 1;
    
    disp('A random number has been generated between 1 and 100. Start guessing'); 
    disp('Enter your guess [Enter a negatve number to quit at anytime]');
    guess = input('');
    
    guessnumber = 1;

    while ( (randnumber-guess) > 1 || (guess-randnumber) > 1 ) 
        if guess > randnumber
            fprintf('%.2f is greater than the target number \n',guess)
        elseif guess < randnumber
            fprintf('%.2f is less than the target number \n',guess)
        end
        disp('Enter your guess')
        guess = input('');
        guessnumber = guessnumber + 1;   
    end    

    totalguessnumber = totalguessnumber + guessnumber;
    fprintf('Close enough! Target number = %.3f \n',randnumber)
    fprintf('This required %.f guesses \n',guessnumber)
    fprintf('\n')

    shouldplay = input('Do you want to play again? [Enter 1 for YES or 0 for NO]\n');
end

if numberofturns > 0
    avgguess = totalguessnumber/numberofturns;
    fprintf('You completed %0.0f turns',numberofturns)
    fprintf('\n');
    fprintf('Your average number of trials is %.2f \n',avgguess)
end

disp('Thanks for playing! Bye!');


    
   
    
    
    