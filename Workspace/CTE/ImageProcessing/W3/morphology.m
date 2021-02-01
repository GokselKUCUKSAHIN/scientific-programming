close all

%% Load Image
im = imread('boxes.png');

%% Convert to Gray scale
im = rgb2gray(im);

%% Show Original
figure; imshow(im);title('original image');
 
%% Convert to Binary Image
imB = imbinarize(im);

%% Show Binary Image
figure; imshow(imB);title('binary image');

%% Dilation
% Growing Features
% Filling holes

se = strel('diamond', 5); % r = 5 diamond shape
im_dilated = imdilate(imB, se);
figure; imshow(im_dilated); title('dilated image')

%% Erosion
% Shrink features
% removing bridges, branches and smal protrustions

se = strel('diamond', 5); % r = 5 diamond shape
im_eroded = imerode(imB, se);
figure; imshow(im_eroded); title('eroded image');
