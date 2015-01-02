%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%CSE-1010 Section                                                     %
%Nico Wright                                                          % 
%Program to create 2 vectors, add them together and display the result%
%09/17/2014                                                           % 
%%%%%%%%%%%%% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

matrixA = [1 2 3; 10 20 30];
matrixB = ones(3,1);

matrixC = [matrixA; matrixB'];

disp('MatrixA')
disp('=======')
disp(matrixA)

disp('MatrixB')
disp('=======')
disp(matrixB)

disp('MatrixC')
disp('=======')
disp(matrixC)

