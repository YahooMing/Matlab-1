%Oskar Chrostowski
%Skrypt który tworzy wykres funkcji exp(x) dla x zmieniającego sie w
%zakresie od -2 do 2 z krokiem 0.1.

x=-2:0.1:2;
y=exp(x);
plot(x,y)
title('Wykres exp(x)')
xlabel('x');
ylabel('y');
