function multiplicationMV = MatrixVectorX (matrix, vector)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Write a function that accepts as input parameters a matrix and a vector.
%The function should check if the second parameter (vec) is a vector of 
%length equal to the number of columns in the first parameter. If the 
%dimensions match, the function must perform element by element 
%multiplication of each row in the mat by vec. If there is a mismatch
%the dimensions, the function should display an error message and return an empty vector%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

[rowsM,colsM] = size(matrix);
multiplicationMV = zeros(size(matrix));

if length(vector) == colsM
    for i = 1 : rowsM
        for j = 1 : colsM
            multiplicationMV(i,j) = ( matrix(i,j) .* vector(j) );
        end
    end    
else
    disp('The length of the vector should be the same size as the number of columns in the matrix');
    multiplicationMV = [];  
end

end