clc;
clear all;
close all;

n = [0:10];

% question a
x_1 = exp(1).^(j*n);

i = 1;
figure(i);
title("Questão 1 - (a)")
stem(x_1)

% question b
i = i+1;
x_2 = 2*cos(0.1*pi*n + pi/3) + 2*sin(0.5*pi*n);
figure(i);
title("Questão 1 - (b)")
stem(x_2)

% question c
i = i+1;
n = (-5:5);
x_3 = impulso(2, n) - impulso(-4, n);
figure(i);
title("Questão 1 - (c)")
stem(x_3)



function result = impulso(k, n)
    if n < 0
        n = n*(-1)
        vector = [];
        tam = length(n) - 1;
        for i = n(1):tam
             if i == k
                 vector = [vector, 1];
             else
                 vector = [vector, 0];
             end
        end
    else
        vector = [];
        tam = length(n) - 1;
        for i = n(1):tam
            if i == 0
                vector = [vector, 1];
            else 
                vector = [vector, 0];
            end
        end
    end

    result = vector;
end