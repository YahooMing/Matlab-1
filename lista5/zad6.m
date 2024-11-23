%Oskar Chrostowski
%Program służy do obliczenia obciążenia powierzchni skrzydła

kg = input('Podaj wagę samolotu w kilogramach: ');
m = input('Podaj powierzchnię skrzydła w metrach kwadratowych: ');
o = kg/m;
fprintf('Obciążenie powierzchni skrzydła wynosi %.3f \n kg/m^2',o);
