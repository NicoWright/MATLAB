%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CSE-1010 Section                                        %
%Nico Wright                                             % 
%Program to convert degress fahrenheit to degrees celcius%
%09/17/2014                                              % 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

degreeFahrenheit = input('Please enter your temperature in degrees fahrenheit:');

degreeCelsius = ((degreeFahrenheit-32)*(5/9));

fprintf('Your temperature in degrees celsius: %5.2f',degreeCelsius)
