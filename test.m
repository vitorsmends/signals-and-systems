clc;
clear all;
close all;

% Create a list of numbers
list = [1, 2, 3, 4, 5];
n = [0:10]
% Initialize a variable to hold the sum
sum = 0;

% Loop through the list and add each number to the sum
for i = 1:length(list)
    sum = sum + list(i);
end

% Display the sum
impulso(2, n)

function result = impulso(k, n)
    vector = [];
    tam = length(n);
    for i = 0:tam
         if i == k
             vector = [vector, 1];
         else
             vector = [vector, 0];
         end
    end
    result = vector;
end