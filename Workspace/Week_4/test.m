function [] = test()
    a = 1:3:11;
    avg = average(a)
    for n = 1:100000
        x(n) = log(rand());
        y = average(x);
    end
end

function [out] = average(arg)
    out = mean(arg);
end