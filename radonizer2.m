function final=radonizer2(k)

theta1=[0:1:22];
theta2=[45:1:67];
theta3=[90:1:112];
theta4=[135:1:157];

theta5=[23:1:44];
theta6=[68:1:89];
theta7=[113:1:134];
theta8=[158:1:179];

k1=radon(k,theta1);
k2=radon(k,theta2);
k3=radon(k,theta3);
k4=radon(k,theta4);

k5=radon(k,theta5);
k6=radon(k,theta6);
k7=radon(k,theta7);
k8=radon(k,theta8);

[n,r]=boxcount(k1,'slope');
df = -diff(log(n))./diff(log(r));
fd1=(mean(df(4:8)));

[n,r]=boxcount(k2,'slope');
df = -diff(log(n))./diff(log(r));
fd2=mean(df(4:8));

[n,r]=boxcount(k3,'slope');
df = -diff(log(n))./diff(log(r));
fd3=(mean(df(4:8)));

[n,r]=boxcount(k4,'slope');
df = -diff(log(n))./diff(log(r));
fd4=(mean(df(4:8)));

[n,r]=boxcount(k5,'slope');
df = -diff(log(n))./diff(log(r));
fd5=(mean(df(4:8)));

[n,r]=boxcount(k6,'slope');
df = -diff(log(n))./diff(log(r));
fd6=(mean(df(4:8)));

[n,r]=boxcount(k7,'slope');
df = -diff(log(n))./diff(log(r));
fd7=(mean(df(4:8)));

[n,r]=boxcount(k8,'slope');
df = -diff(log(n))./diff(log(r));
fd8=(mean(df(4:8)));


final=[fd1 fd2 fd3 fd4 fd5 fd6 fd7 fd8];
