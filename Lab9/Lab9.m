%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Thermal Equilibrium Problem%
%Nico Wright                %
%10/29/2014                 %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

plateWidth = input('Enter the width of the plate: ');
plateLength = input('Enter the length of the plate: ');
while plateWidth <= 0 || plateLength <= 0
   disp('The plate length or width has to be greater than zero. Please input again.');
   plateWidth = input('Enter the width of the plate: ');
   plateLength = input('Enter the length of the plate: ');  
end

tempTop = input('Enter the temperature of the top side of the plate: ');
tempBottom = input('Enter the temperature of the bottom side of the plate: ');
tempLeft = input('Enter the temperature of the left side of the plate: ');
tempRight = input('Enter the temperature of the right side of the plate: ');

tempCheck = tempRight*tempBottom*tempTop*tempLeft;
while tempCheck < 0 || tempCheck == 0 
    disp('The temperatures have to be greater than zero. Please input again.');
    tempRight = input('Enter the temperature of the right side of the plate: ');
    tempBottom = input('Enter the temperature of the bottom side of the plate: ');
    tempLeft = input('Enter the temperature of the left side of the plate: ');
    tempTop = input('Enter the temperature of the top side of the plate: ');   
    tempCheck = tempRight*tempBottom*tempTop*tempLeft;
end

tolerance = input('Enter the temperature tolerance for the plate: ');
while tolerance < 0  || tolerance > (tempRight | tempBottom | tempLeft | tempTop)
    disp('The tolerance must be greater than zero and less than each individual temperature. Please input again.');
    tolerance = input('Enter the temperature tolerance for the plate: ');
end

plateOldTemp = zeros(plateWidth, plateLength);

plateOldTemp(1,:) = tempTop;
plateOldTemp(plateWidth,:) = tempBottom;
plateOldTemp(:,1) = tempLeft;
plateOldTemp(:,plateLength) = tempRight;

fprintf('\n')
disp('Intial Temperatures')
disp(plateOldTemp);
fprintf('\n')

plateNewTemp = plateOldTemp;

equilibrium = 0;
while ~equilibrium
    for x = 2:plateWidth-1
        for y = 2:plateLength-1
            plateNewTemp(x,y) = ( (plateOldTemp(x-1,y) + plateOldTemp(x+1,y) + plateOldTemp(x,y-1) + plateOldTemp(x,y+1))/4 );
        end
    end
    if all ( plateNewTemp-plateOldTemp <= tolerance )
        equilibrium = 1;
        disp('Equilibrium Temperatures');
        disp(plateNewTemp);
    end
    plateOldTemp = plateNewTemp;
end









