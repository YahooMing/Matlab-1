%Oskar Chrostowski

t= 0:1:10;
v = linspace(10,10,11);
zero= linspace(0,0,11);
s=0:10:100;

subplot(1,2,1)
quiver(t,s,zero,v,0.35,'r')
text(t,s,"10m/s","FontSize",10)
hold on
plot(t,s,"b")
axis([-1 10 0 110]) %do wyrownania
xlabel('t[s]')
ylabel('x[m]')
legend({'v(t)','x(t)'},'Location','west')
subplot(1,2,2)
plot(t,v)
xlabel('t[s]')
ylabel('v[m/s]')
hold off