close all
img = imread("tigre_2.jpg");
[fil, col, ch] = size(img);
img = rgb2gray(img);
img_or = img;

%w=(1/9)*ones(3,3);

%w = [0  1 0
%     1 -4 1
%     0  1 0];

w = [ 0 -1  0
     -1  5 -1
      0 -1  0];

img = double(img);
img_filtrada = zeros(fil,col);

for m=2:fil-1
    for n=2:col-1
        aux = 0;
        for k=-1:1
            for l=-1:1
                aux = aux + (w(k+2,l+2)*img(m+k,n+l));
            end
        end
        img_filtrada(m,n) = aux;
    end
end
img_filtrada=uint8(img_filtrada);

figure;
subplot(1,2,1)
imshow(img_or);
subplot(1,2,2)
imshow(img_filtrada);
