%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab 11-USer Created Functions%
%Nico Wright                  %
%11/12/2014                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear;
clc;

disp('Matrix Vector Multiplication')
disp('[Use square brackets to input a multidimensional vector and ; to create a new row]');

matrix = input('Enter the matrix you wish to be multiplied: ');
vector = input('Enter the vector you wish to be multiplied: ');

result = MatrixVectorX(matrix,vector);

fprintf('The result of your muliplication is:\n')
disp(result);
