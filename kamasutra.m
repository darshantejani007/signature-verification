function final=kamasutra(a);

a=imresize(a,[250 250]);
f1=camasatra(a);

c=imcrop(a,[30 30 189 189]);
f2=camasatra(c);

d=imcrop(a,[70 70 109 109]);
f3=camasatra(d);

e=imcrop(a,[50 50 149 149]);
f4=camasatra(e);

final=[f1 f2 f3 f4];