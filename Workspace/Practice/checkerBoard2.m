function [board] = checkerBoard2(nrows,ncols,n)
%checkerBoard: draws a n×n checkerboard according to the user specified
%dimensions (nrows, ncols) and returns a matrix that represents the checkerboard
block_rows = floor(nrows / n);
block_cols = floor(ncols / n);
block = ones(block_rows, block_cols);

checker = zeros(n, n);
checker(1:2:n , 1:2:n)=1;
checker(2:2:n , 2:2:n)=1;  

checker = reshape(checker,[1 n 1 n]);
block = reshape(block,[block_rows 1 block_cols 1]);
board = reshape(checker.*block,[n*block_rows n*block_cols]);

imagesc(board);
colormap('gray'); axis equal;
end
