%% Soru 1-a

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

%% Soru 1-b
X = 1:1:100; % 1 den 100'e 1er 1er
Y = 1:1:100; % 1 den 100'e 1er 1er
Y = Y'; % Colon matrise ?evir
result = sqrt(X.*X + Y.*Y)