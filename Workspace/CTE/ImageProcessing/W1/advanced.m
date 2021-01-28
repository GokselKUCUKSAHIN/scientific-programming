close all;

im = imread('basicsImg/faculty.jpg');
figure; imshow(im);
%% Convertion
imG = im2gray(im);
imD = im2double(imG); % Convert to double and map it 0.0-1.0

imDD = double(imG);  % Convert to double and don't map it. (0-255)

%% Scale image 1.5 time with certain Interpolation Technics
imR1 = imresize(im, 1.5, 'nearest');
imR2 = imresize(im, 1.5, 'bilinear');
imR3 = imresize(im, 1.5, 'bicubic');

%% Show 3 imgs in 1 figure using subplot
figure; subplot(1,3,1), imshow(imR1), title('Nearest-neighbor Interpolation');
subplot(1,3,2), imshow(imR2), title('Bilinear Interpolation');
subplot(1,3,3), imshow(imR3), title('Bicubic Interpolation');

%% Rotation
imRot = imrotate(im, 45, 'bilinear'); % Rotate Counter Clock Wise 45 degrees
figure; imshow(imRot); title('Faculty 45 degree');

%% Cropping
imCrop = imcrop(im, [40 40 200 200]); % Start Cropping at 40, 40 and crop 200 by 200 pixels more (result is 201x201 matrix)
figure; imshow(imCrop); title('Cropped Image');
