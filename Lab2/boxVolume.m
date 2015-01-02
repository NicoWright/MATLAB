%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Lab assignment 2
% Program to calculate the volume of a box of height 2 inches
% that can be constructed from a sheet of paper with 
% given dimension
% Note: Code contains errors to be fixed by the student
% Written by: Nico Wright
% Date : 09/10/2014 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear
clc

%Get dimensions of paper from user
paper_length = input('Enter paper length: ');
paper_width = input('Enter paper width: ');

%These are the constants we will use
box_height = 2;
box_cutout = 4;

%Calculate dimensions of box
box_length = paper_length - box_cutout;
box_width = paper_width - box_cutout;

%Find and print the volume
volume = box_height * box_length * box_width;
fprintf('Box volumne = %f\n',volume);

%%%%%%%%%%%%%%%%
%This was FUN!!%
%%%%%%%%%%%%%%%%
