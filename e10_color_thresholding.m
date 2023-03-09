clc;
clear;
% ge file_paths names
img_rgb = imread("ball_red.png");
% display images
imshow(img_rgb)
% result of this is in double from 0 - 1
img_hsv = rgb2hsv(img_rgb);

% color in range
img_ranged = in_range(img_hsv, [0.8, 0.3, 0.0], [1.0,1.0,1.0]);

% dilate image
se = strel('sphere',5);
img_ranged = imdilate(img_ranged, se);

%see images converted
result{1} = img_rgb;
result{2} = img_ranged;
display_images(result,1,2);


