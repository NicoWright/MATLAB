function lightreading = LightIntensity(arduino_object,loop)
% LightIntensity measures and prints out the light intensities 
% for the Arduino circuit described in lab 7 documents at 2 second 
% intervals for the duration specified by time.
% Input
% arduino_object: an object by a call to the funtion arduino in the class
%                 arduino.m
% loop:           number of loops wanted

reading = zeros(size(loop));   
for i = 1:loop             % loop for a time 
      light = arduino_object.analogRead(0);  % measure light intensity
      reading(i) = light;
      lightreading = reading;
      pause(2);                              % 2 second pause
end


