%Oskar Chrostowski
%Program służy do wyświetlania liczby rzeczywistej
%według określonych schematów.

number=12345.6789;
fprintf("Bez formatowania: %f \n",number)
fprintf("Pole szerokości 10 z 4 miejscami po przecinku: %10.4f \n",number)
fprintf("Pole szerokości 10 z 2 miejscami po przecinku: %10.2f \n",number)
fprintf("Pole szerokości 6 z 4 miejscami po przecinku: %6.4f \n",number)
fprintf("Pole szerokości 2 z 4 miejscami po przecinku: %2.4f \n",number)