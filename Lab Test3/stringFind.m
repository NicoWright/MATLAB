function result = stringFind(str1,str2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Lab Test 3                                                               %
%Nico Wright                                                              %
%12/3/2014                                                                %
%This function takes two strings as input and searches the first          %
%string for instances of the second. It returns a 1 if there are more than%
%one instance of str2 in str1 and a 0 if otherwise                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

instance = strfind(str1,str2);

if length(instance) > 1
    result = 1;
elseif length(instance) <= 0
    result = 0;
end
