clear all
clc

resim=imread('C:\Users\Administrator\Desktop\Görüntüvizesorularý\resimler\su3.jpg');
 
sobel=rgb2gray(resim);
gray=rgb2gray(resim);
A=double(sobel);
 
for i=1:size(A,1)-2
 
for j=1:size(A,2)-2
 
%Yatay sobel kermel matrisi
 
Gx=((2*A(i+2,j+1)+A(i+2,j)+A(i+2,j+2))-(2*A(i,j+1)+A(i,j)+A(i,j+2)));
 
%Dikey sobel kernel matrisi
 
Gy=((2*A(i+1,j+2)+A(i,j+2)+A(i+2,j+2))-(2*A(i+1,j)+A(i,j)+A(i+2,j)));
 
sobel(i,j)=sqrt(Gx.^2+Gy.^2);
 
end
 
end


s=edge(gray,'prewitt', 0.05);


f = im2double(gray);
[m n]=size(f);
b =zeros(m,n);
for i=2:m-1
for j=2:n-1
b(i,j) = (5*f(i,j))-(f(i-1,j)+f(i+1,j)+f(i,j-1)+f(i,j+1));
end
end


figure;imshow(resim);title('Orjinal Hali'); 
figure,imshow(sobel);title('Sobel');
figure;imshow(s);title('Prewitt');
figure;imshow(f);title('Laplace');