a=imread('signn.jpg');
b=rgb2gray(a);

subplot(2,2,1);imshow(b);
c=edge(b,'canny');

subplot(2,2,2);imshow(c);

d=edge(b,'sobel');

subplot(2,2,3);imshow(d);