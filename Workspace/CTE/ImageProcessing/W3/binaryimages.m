close all;
%% Load Image
im = imread('boxes.png');
figure; imshow(im); title('Original')

%% Thresholding OTSU METHOD
t = graythresh(im);  % Otsu Threshold value
im = rgb2gray(im);   % Convert to gray scale
imD = im2double(im); % int to double

imB = zeros(size(imD)); % create new image all values are 0
inds = imD > t;         % find indicies pixel value > threshold 
imB(inds) = 1;          % set these indicies to 1
figure; imshow(imB); title('Binary  Image');    % show binray image