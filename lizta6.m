%Oskar Chrostowski
%Pochodne

%Podpunkt A
x=-5:.01:5;
h=0;
y=exp(-(x.^2));
hold on
subplot(3,1,1);
plot(x,y)
xlabel('x')
ylabel('y')
title('Pierwotna funkcja');
hold off

for h = [1,0.5,0.05]
    f1=exp(-((x+h).^2));
    f2=exp(-((x-h).^2));
    fp=(f1-f2)/(2*h);
    hold on
    subplot(3,1,2);
    title('Podchodne dla h= [1, 0.5, 0.05]')
    plot(x,fp)
    xlabel('x')
    ylabel('y')
    legend('h=1', 'h=0.5','h=0.05')
    hold off
end

%Podpunkt B
df= diff(y)./diff(x)
hold on
subplot(3,1,3)
plot(x(2:end), df)
xlabel('x')
ylabel('y')
title('Podpunkt B')
hold off

%Podpunkt C
wykres2=figure;
hold on 
subplot(2,1,1);
plot(x,y)
xlabel('x')
ylabel('y')
title('Pierwotna funkcja');
hold off

%Pochodna z podpunktu A
for h = [1,0.5,0.05]
    f1=exp(-((x+h).^2));
    f2=exp(-((x-h).^2));
    fp=(f1-f2)/(2*h);
    hold on
    subplot(2,1,2);
    plot(x,fp)
    title('Wszystkie pochodne na jednym wykresie')
    hold off
end
%Podchodna obliczona diff
hold on
subplot(2,1,2)
plot(x(2:end), df)
xlabel('x')
ylabel('y')
an= (exp(-(x.^2)).*(-2.*x))
plot(x,an)
%Pochodna obliczona analitycznie
hold off
