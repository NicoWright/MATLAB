%%%%%%%%%%%%%
%Lab 10     %
%Nico Wright%
%11/19/2014 %
%%%%%%%%%%%%%
clear;
clc;

a = arduino('COM15');

interval = 30;
intensity = LightIntensity(a,interval);

intensityMean = mean(intensity);
lessMeanSum = sum( intensity < intensityMean );
greatMeanSum = sum( intensity > intensityMean );
pieGraph = [lessMeanSum greatMeanSum];

subplot(1,2,1)
plot(intensity,'*')
title('LightIntensity')
xlabel('Interval')
ylabel('Intensity')

subplot(1,2,2)
labels = {'Intensities less than Mean', 'Intensities greater than mean'};
pie(pieGraph,labels)
title('Intensities against Mean Intensity')

delete(a);


