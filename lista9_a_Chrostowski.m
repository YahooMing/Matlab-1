%Oskar Chrostowski lista 9
clear all
%Podpunkt A
a0=12;
t0=10;
t01=20;
t02=40;
t= 0:0.01:t0;
t1=0:0.01:t01;
t2=0:0.01:t02;
g=9.81;

y=(1/2)*(a0-g).*t.^2-(a0.*t.^6)/(30.*t0^4);
y1=(1/2)*(a0-g).*t1.^2-(a0.*t1.^6)/(30.*t01^4);
y2=(1/2)*(a0-g).*t2.^2-(a0.*t2.^6)/(30.*t02^4);

v=diff(y);
v1=diff(y1);
v2=diff(y2);

a=diff(v);
a1=diff(v1);
a2=diff(v2);

hold on
subplot(3,1,1)
plot(t,y,"r")
title("Wykres wysokości od czasu dla t0=10")
xlabel("t[s]")
ylabel("y[m]")
subplot(3,1,2)
plot(t(1:(end-1)),v,"r")
title("Wykres prędkości od czasu dla t0=10")
xlabel("t[s]")
ylabel("v[m/s]")
subplot(3,1,3)
plot(t(1:(end-2)),a,"r")
title("Wykres przyspieszenia od czasu dla t0=10")
xlabel("t[s]")
ylabel("a[m/s^2]")
hold off

hold on
figure
subplot(3,1,1)
plot(t1,y1,"g")
title("Wykres wysokości od czasu dla t0=20")
xlabel("t[s]")
ylabel("y[m]")
subplot(3,1,2)
plot(t1(1:(end-1)),v1,"g")
title("Wykres prędkości od czasu dla t0=20")
xlabel("t[s]")
ylabel("v[m/s]")
subplot(3,1,3)
plot(t1(1:(end-2)),a1,"g")
title("Wykres przyspieszenia od czasu dla t0=20")
xlabel("t[s]")
ylabel("a[m/s^2]")
hold off

hold on
figure
subplot(3,1,1)
plot(t2,y2)
title("Wykres wysokości od czasu dla t0=40")
xlabel("t[s]")
ylabel("y[m]")
subplot(3,1,2)
plot(t2(1:(end-1)),v2)
title("Wykres prędkości od czasu dla t0=40")
xlabel("t[s]")
ylabel("v[m/s]")
subplot(3,1,3)
plot(t2(1:(end-2)),a2)
title("Wykres przyspieszenia od czasu dla t0=40")
xlabel("t[s]")
ylabel("a[m/s^2]")
hold off


