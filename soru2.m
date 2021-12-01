clear all
clc
Res=imread('C:\Users\Administrator\Desktop\Görüntüvizesorularý\resimler\hispic.jpg');


q=histeq(Res);
negative = imcomplement(Res);
gama1 = imadjust(Res, [], [], 0.04);
gama2 = imadjust(Res, [], [], 25.0);
lenna = im2double(Res);
logarithmic = (1/log(1+255))*log(1+(lenna*255));


subplot(4,4,1),imshow(Res); title('Orjinal Hali');
subplot(4,3,2),imhist(Res); title('Histogrami');

subplot(4,4,4),imshow(q); title('Histogram Esitleme Sonrasi');

subplot(3,4,5), imshow(negative), title('negative resim');
subplot(3,4,6), imhist(negative), title('negative histogram');

subplot(3,4,7), imshow(gama1), title('Gama=0.04 resmi');
subplot(3,4,8), imhist(gama1), title('Gama=0.04 histogrami');


subplot(3,4,9), imshow(gama2), title('Gama=25.0 resmi');
subplot(3,4,10), imhist(gama2), title('Gama=25.0 histogrami');


subplot(3,4,11), imshow(logarithmic), title('logarithmic resim');
subplot(3,4,12), imhist(logarithmic), title('logarithmic histogram');

