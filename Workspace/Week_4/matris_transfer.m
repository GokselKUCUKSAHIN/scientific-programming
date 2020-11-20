% Matrix Tranfer. With different methods

clear; % Clear Workspace
A = randi([-10,10], 100, 100);
[m, n] = size(A);
B = zeros(m, n);
C = zeros(m, n);
D = zeros(m, n);

% With Loops (For)
tic
for ii = 1:m
    for jj = 1:n
        if A(ii, jj) > 0
            B(ii, jj) = A(ii, jj);
        end
    end
end
toc

% Implementation using find build in function
tic
ind = find(A > 0);
C(ind) = A(ind);
toc

% Implementation Logical operators
tic
D(A > 0) = A(A > 0);
toc
