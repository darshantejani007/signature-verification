function final=main(a)

%readingn actual image
%a=imread('signn.jpg');

%converting to grayscale
b=rgb2gray(a);

%adding noise
%b=addnoise(b);

%removing noise
c=removenoise(b);

%converting image to binary
d=im2bw(c,0.8);

%complementing image
e=complement(d);


%cropping image
f=crop(e);

%rotating image
g=rotate2(f);
%g=f;

h=crop(g);

%thinning signature
i=thinning(h);

%number of cross points
j=crosspoint(i);

%edge points
k=edgepoint(i);

%camasatra
l=kamasutra(i);

%printing
figure,imshow(a);
figure,imshow(b);
figure,imshow(c);
figure,imshow(d);
figure,imshow(e);
figure,imshow(f);
figure,imshow(i);

%radon transform and fractal dimensions
m=radonizer(i);
display(m);
final=[m];