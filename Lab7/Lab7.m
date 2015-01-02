%%%%%%%%%%%%%%%%%%%%%%%%
%Creating Scatter Plots%
%Nico Wright           %
%10/15/2014            %
%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

%defining the constants
velocity = 100;
time = [0:1:20];
angle = (pi/4);
g = 9.8;

%calculating horizontal and vertical distance
horizontal = time*velocity*cos(angle);
vertical = time*velocity*sin(angle)-((g*(time).^2)/2);

%subplotting each graph

%subplot1
figure();
subplot(2,2,1)
plot(time,horizontal);
title('Horizontal distance versus Time');
xlabel('time');
ylabel('horizontal distance');
grid

%subplot2
subplot(2,2,2)
plot(time,vertical);
title('Vertical distance versus Time');
xlabel('time');
ylabel('vertical distance');
grid

%subplot3
subplot(2,2,3)
plot(horizontal,vertical);
title('Vertical distance versus Horizontal distance');
xlabel('horizontal distance');
ylabel('vertical distance');
grid

%question 3
angle1 = (pi/2);
angle2 = (pi/4);
angle3 = (pi/6);

h1 = time*velocity*cos(angle1);
v1 = time*velocity*sin(angle1)-((g*(time).^2)/2);

h2 = time*velocity*cos(angle2);
v2 = time*velocity*sin(angle2)-((g*(time).^2)/2);

h3 = time*velocity*cos(angle3);
v3 = time*velocity*sin(angle3)-((g*(time).^2)/2);

%subplot4
subplot(2,2,4)
plot(h1,v1,h2,v2,'--',h3,v3,':');
title('Vertical versus Horizontal distance for different angles');
xlabel('horizontal distance');
ylabel('vertical distance');
legend('angle1','angle2','angle3');
grid





