close all;
clc;
img=imread('D:\matlab class\image\1327-w.jpg');
B=rgb2gray(img);
subplot(2,2,1)
imshow(B)
pause(2)
I=double(B);

for i=1:size(I,1)-2
for j=1:size(I,2)-2
%Sobel mask for x-direction:
mx=((2*I(i+2,j+1)+I(i+2,j)+I(i+2,j+2))-(2*I(i,j+1)+I(i,j)+I(i,j+2)));
%Sobel mask for y-direction:
my=((2*I(i+1,j+2)+I(i,j+2)+I(i+2,j+2))-(2*I(i+1,j)+I(i,j)+I(i+2,j)));

B(i,j)=sqrt(mx.^2+my.^2);
end
end
subplot(2,2,2)
imshow(B); title('Sobel gradient');