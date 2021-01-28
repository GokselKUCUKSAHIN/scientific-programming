M = randi([-10 10], 5, 5)
max_value = 3;
min_value = -3;
[m, n] = size(M);
Min = (M > min_value);
Max = (M < max_value);
MidMat = (Min & Max).*M;
Min = (Min == 0).*min_value;
Max = (Max == 0).*max_value;
Result = (Min + Max) + MidMat