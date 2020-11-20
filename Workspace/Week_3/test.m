function [] = test()
%TEST Summary of this function goes here
%   Detailed explanation goes here
%   Main Function.
    global x;
    x = 5;
    a = 1:3:11;
    avg = average(a)
end

function [out] = average(x)
    % Only accessable from main function
    out = mean(x);
end