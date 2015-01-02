% Program that controls a simple Arduino circuit
% The program causes thr LED on pin 13 to turn on 
% when a pushbutton connected to pin 2 is pushes
% Written by Sahar Al Seesi
% Adapted from http://arduino.cc/en/Tutorial/Button

buttonPin = 2;     % the number of the pushbutton pin
ledPin =  13;      % the number of the LED pin

buttonState = 0;    % variable for reading the pushbutton status
a=arduino('COM5');  %creating an Arduino object. CHANGE PORT ACCORDING TO THE COMPUTER RUNNING THE PROGRAM
a.pinMode(ledPin,'output');   % setting output pin   
a.pinMode(buttonPin,'input'); % setting input pin 

tic                          % initialize stopwatch
while (toc < 30)             % loop for a minute
   %initialize the LED pin as an output:
     buttonState = a.digitalRead(buttonPin);

   % check if the pushbutton is pressed.
   % if it is, the buttonState is 1:
   if (buttonState == 1)      
     % turn LED on:    
     a.digitalWrite(ledPin,0);  
    else 
     % turn LED off:
     a.digitalWrite(ledPin, 1); 
   end 
end
delete(a);   %delete thr Arduino object


