close all;

% load image from file
im = imread('basicsImg/faculty.jpg');
figure; imshow(im);

% open image wiith imtool 
imtool(im);

%flip image left-right
imlr = fliplr(im);

%flip image upside-down
imud = flipud(im);

figure; imshow(imlr); title('Mirror left-right');
figure; imshow(imud); title('Mirror upside-down');

% Convert Color image to Gray Scale
imgray = rgb2gray(im); 
figure; imshow(imgray); title('Gray SCALE');
imgray2 = im2gray(im); % same as rgb2gray but results are same

disp(isequal(imgray, imgray2)); % Proof to same
