%%%%%%%%%%%%%%%%%
%Using For Loops%
%Nico Wright    %
%02/03/2014     %
%%%%%%%%%%%%%%%%%
clear;
clc;
load ('Refract.mat');

maxIndex = input('Please enter the maximum accepted refractive index(must be greater than zero): ');
while maxIndex <= 0
    maxIndex = input('Please enter the maximum accepted refractive index(must be greater than zero): ');
end

[rows,cols] = find((Refract)>maxIndex);
locationCount = length(rows);

fprintf('The number of locations with a refractive index greater than %.2f is %d \n',maxIndex, locationCount)

tableofValues = zeros(locationCount, 1);
for i = 1:length(rows)
    for j = 1:length(cols)
        tableofValues(i) = Refract(i,j);
    end
end

outTable = [rows cols tableofValues];
disp(outTable);




