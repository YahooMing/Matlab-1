%Oskar Chrostowski

t=0:0.25:2.25;
vy0=10;
vy=vy0 - 9.81.*t;
y=vy0.*t-((9.81.*t.^2)/2);
zero = linspace(0,0,10);
p = num2str(round(vy',1));
subplot(1,2,1)
quiver(t,y,zero,vy,1,'r')
text(t,y,p,"FontSize",10)
hold on
plot(t,y,'b')
axis([-0.5 3 -3 6]) %do wyrównania
legend('v(t)','x(t)','Location','south')
xlabel('t[s]')
ylabel('y[n]')
subplot(1,2,2)
plot(t,vy)
axis([0 2.2 -15 10]) %do wyrównania
xlabel('t[s]')
ylabel('v[m/s]')
hold off
maxH= vy0/9.81
maxT= (vy0^2)/(2*9.81)
tamV=vy0 - (9.81*maxH)