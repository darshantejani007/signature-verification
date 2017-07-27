function final=rotate2(a)

s=size(a);
vertical=int32(s(2)/2);

hort= zeros(1,s(1));
vert= zeros(1,s(2));
counter1=0;
xsum1=0;ysum1=0;
xsum2=0;ysum2=0;

for y=1:vertical
    for x=1:s(1)
        if a(x,y)==1
            xsum1=xsum1+x;
            ysum1=ysum1+y;
            counter1=counter1+1;
            hort(1,x)=hort(1,x)+1;
            vert(1,y)=vert(1,y)+1;
        end
    end
end

hort2= zeros(1,s(1));
vert2= zeros(1,s(2));
counter2=0;

for y=vertical:s(2)
    for x=1:s(1)
        if a(x,y)==1
            xsum2=xsum2+x;
            ysum2=ysum2+y;
            counter2=counter2+1;
            hort2(1,x)=hort2(1,x)+1;
            vert2(1,y)=vert2(1,y)+1;
        end
    end
end

x1=xsum1/counter1;
x2=xsum2/counter2;

y1=ysum1/counter1;
y2=ysum2/counter2;


angle=atand(double((x2-x1))/double((y2-y1)));
xcentroid=(x1+x2)/2;
ycentroid=(y1+y2)/2;
%display([x1,y1,x2,y2,angle,xcentroid,ycentroid]);

final=imrotate(a,angle);
%figure,imshow(a);figure,imshow(final);
