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

%% Opening
% dilation > erosion

se = strel('diamond', 5); % r = 5 diamond shape

im_dilated = imdilate(imB, se);
im_opening = imerode(im_dilated, se);
% Matlab func
im_open = imopen(imB, se);

if isequal(im_open, im_opening)
    disp('im_open and im_opening are the same');
else
    disp('im_open and im_opening are the not same');
end

figure; imshow(im_open); title('opening image');

%% Closing
% erosion > dilation
se = strel('diamond', 5); % r = 5 diamond shape

im_eroded = imerode(imB, se);
im_closing = imdilate(im_eroded, se);
% Matlab func
im_close = imclose(imB, se);

if isequal(im_close, im_closing)
    disp('im_close and im_closing are the same');
else
    disp('im_close and im_closing are the not same');
end

figure; imshow(im_closing); title('closing image');
