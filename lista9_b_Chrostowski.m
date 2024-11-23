%Oskar Chrostowski lista 9
clear all
%Podpunkt B
a0=12;
g=9.81;
tablicaMax=[];
for t0=0:100
    t= 0:t0;
    y=(1/2)*(a0-g).*t.^2-(a0.*t.^6)/(30*t0^4);
    tablicaMax = [tablicaMax, max(y) ];
end
hold on
plot(t,tablicaMax)
axis([10 100 0 7300])
title("Wykres ymax(t0)")
xlabel("t0[s]")
ylabel("y[m]")
hold off

