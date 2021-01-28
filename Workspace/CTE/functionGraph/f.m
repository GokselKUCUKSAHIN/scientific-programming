function [out] = f(x)
%F Summary of this function goes here
%   Detailed explanation goes here
    A = 4;
    B = 2;
    out = exp(((1/A)*x) - (1/B)*power(x,2)) - sin(exp(1)*x); 
end