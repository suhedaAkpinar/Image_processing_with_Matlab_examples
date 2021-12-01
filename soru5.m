clear all
clc
I = imread('C:\Users\Administrator\Desktop\Görüntüsorularý\resimler\sanliurfa.jpg');
I= rgb2gray(I);
%gaussian filter
G = fspecial('gaussian',[3 3],0.8);
Ig =imfilter(I,G,'same');
subplot(221),imshow(I); title('Orjinal Hali');
subplot(222),imshow(Ig); title('Gaussian');

%avarage filter
mat= ones(5,5)/0.8;
img1= imfilter(I,mat);
subplot(223),imshow(Ig); title('Avarage');

%median filter
M=fspecial('average', [5 5]);
img2= imfilter(I, M);
subplot(224),imshow(img2); title('Median');

