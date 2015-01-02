%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 11-USer Created Functions%
%Nico Wright                  %
%11/12/2014                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;
load('objects.mat')

conversion = [0.453592 0.0283168];

result = MatrixVectorX(objects, conversion);

fprintf('The original table is:\n')
disp(objects);

fprintf('The converted table is:\n')
disp(result);
