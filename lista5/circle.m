%Oskar Chrostowski
%CIRCLE - skrypt rysujący okrąg
%------------------------------------------------------
r=input('Podaj promień okręgu: '); %podanie promienia
theta = linspace(0, 2*pi, 100); %tworzenie wektora theta
x=cos(theta)*r;                   %generowanie współrzędnych x
y=sin(theta)*r;                   %generowanie współrzędnych y
plot(x,y);                      %rysowanie okręgu
axis('equal');                  %ujednolicenie skali osi
title('Okrąg o promieniu ',num2str(r))    %wstawianie tytułu
text(0,0,"+");                  %środek okręgu oznaczony +
pole = pi*r*r;
fprintf("Pole powierzchni koła o promieniu %d wynosi %f ",r,pole);

