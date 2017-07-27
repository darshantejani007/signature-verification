function final=camasatra(a)

f=a;
s=size(a);

xx=s(1)/2;
yy=s(2)/2;

n1=0;

for y=1:1:yy
    for x=1:1:xx
        if f(x,y)==1
            n1=n1+1;
        end
    end
end

d1=n1/(xx*yy);



n1=0;

for y=yy:1:s(2)
    for x=xx:1:s(1)
        if f(x,y)==1
            n1=n1+1;
        end
    end
end

d2=n1/(xx*yy);



n1=0;

for y=yy:s(2)
    for x=1:1:xx
        if f(x,y)==1
            n1=n1+1;
        end
    end
end

d3=n1/(xx*yy);


n1=0;

for y=1:1:yy
    for x=xx:s(1)
        if f(x,y)==1
            n1=n1+1;
        end
    end
end

d4=n1/(xx*yy);

final=[d1 d2 d3 d4];