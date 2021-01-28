function [board] = checkerBoard(nrows,ncols,n)
%checkerBoard: draws a n×n checkerboard according to the user specified
%dimensions (nrows, ncols) and returns a matrix that represents the checkerboard
block_rows = floor(nrows / n);
block_cols = floor(ncols / n);
rows = block_rows * n;
cols = block_cols * n;
board = zeros(rows, cols);
for i = 1:n
    for j = 1:n
        if mod(i,2)==mod(j,2)
            board((i-1)*block_rows+1:i*block_rows, (j-1)*block_cols+1:j*block_cols) = ones(block_rows, block_cols);
        end
    end
end
imagesc(board);
colormap('gray');
end
