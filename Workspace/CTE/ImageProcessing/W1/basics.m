close all;
im = imread('basicsImg/faculty.jpg');
figure; imshow(im); title('Erü Müh');

%% RGB
imred = im(:,:,1);   % R
imgreen = im(:,:,2); % G
imblue = im(:,:,3);  % B

%% Show Color Channels
figure; imshow(imred); title('RED');
figure; imshow(imgreen); title('GREEN');
figure; imshow(imblue); title('BLUE');

%% Save Color Channels
imwrite(imred, 'basicsImg/redChannel.png');
imwrite(imgreen, 'basicsImg/greenChannel.png');
imwrite(imblue, 'basicsImg/blueChannel.png'); 