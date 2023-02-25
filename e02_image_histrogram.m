clear all
close all
img = imread("baboon.png");

[fil, col, ch] = size(img);
img_gray = rgb2gray(img);

figure;
subplot(1,2,1);
imshow(img_gray);

histog = zeros(1,256);

for x=1:fil
    for y=1:col
        rk = img_gray(x,y);
        k = rk + 1;
        histog(1,k) = histog(1,k) + 1;
    end
end

subplot(1,2,2);
bar(histog)



