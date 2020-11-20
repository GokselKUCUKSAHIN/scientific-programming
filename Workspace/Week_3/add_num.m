function [sum] = add_num(num1,num2)
%ADD: Sum two given numbers
    switch nargin
        case 2
            sum = num1 + num2;
        case 1
            sum = num1;
        case 0
            sum = 0;
    end
end