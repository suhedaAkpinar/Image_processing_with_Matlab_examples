 clear all
 clc
 Im=imread('C:\Users\Administrator\Desktop\Görüntüvizesorularý\resimler\lena.tif');
 figure,imshow(Im);title('Original');
 
 GIm=uint8(zeros(size(Im,1),size(Im,2)));
 
 for m=1:size(Im,1)
 for n=1:size(Im,2)
 GIm(m,n)=0.2989*Im(m,n,1)+0.5870*Im(m,n,2)+0.1140*Im(m,n,3);
 end
 end
 
 img_size=imresize(GIm,0.5);
 img_rot=imrotate(GIm,60,'bicubic');
 g=GIm(:,end:-1:1);
 
 figure,imshow(GIm);title('Gri');
 figure,imshow(GIm,[50,100]);title('Siyah-Beyaz');
 figure,imshow(img_size);title('Küçültme');
 figure,imshow(img_rot);title('60 derece döndürme');
 figure,imshow(g);title('Mirror');
 
 
