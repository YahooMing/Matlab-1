%Oskar Chrostowski lista 8
clear all
v0 = 10;
kat = 30;
g = 9.81;
vx0=v0*cosd(kat);
vy0=v0*sind(kat);
t = 2*v0 * sind(kat)/g;
vy= vy0-g*t;
czas = 0:0.01:t;
x1 = vx0.*czas;
y1 = vy0.*czas-g.*czas.*czas*0.5;
czas2 =  linspace(0,t,10);
vx1 = czas2.*0+vx0;
vy2 = vy0 - g.*czas2;
vx1 = vx1 ./10;
vy2 = vy2 ./10;
x2 = vx0.*czas2;
y2 = vy0.*czas2-g.*czas2.*czas2*0.5;
z = x2 .*0;
v=sqrt(vx0.^2+vy2.^2);

%Podpunkt a
subplot(3,1,1)
hold on
plot( x1, y1)
quiver(x2, y2, vx1, z, 0)
quiver(x2, y2, z, vy2, 0)
quiver(x2, y2, vx1, vy2, 0)
xlabel("x[m]")
ylabel("y[m]")
axis([0 10 -0.5 1.5 ])
legend({"x(t)","vx(t)","vy(t)","v(t)"})
hold off

%Podpunkt B
subplot(3,1,2)
hold on
quiver(x2, y2, vx1, vy2, 0)
text(x2,y2, num2str(v'))
plot( x2, y2)
hold off

%Podpunkt C
subplot(3,1,3)
hold on

hold off
