clear all
close all

img = imread("davis_hall.jpeg");

imshow(img);

X = double(rgb2gray(img));
% Start

Bx = [ -1, 0, 1;
       -2, 0, 2;
       -1, 0, 1]; %Sobel Gx kernel
By = Bx';

Yx = filter2(Bx,X); % convolve in 2d
Yy = filter2(By,X);

G = sqrt(Yy.^2 + Yx.^2); % Find magnitude

Gmin = min(min(G));
dx = max(max(G)) - Gmin; % find range
G = floor((G-Gmin)/dx*255); % normalise from  0 to 255

image(G);
axis('image')
colormap gray


