function [out] = isPrime(number)
%IsPrime returns prime or -1 according to given number
    sq = sqrt(number);
    out = number;
    for n = 2:sq
        if mod(number, n) == 0
            out = -1;
            break
        end 
    end
    if out < 2
        out = -1;
    end
end