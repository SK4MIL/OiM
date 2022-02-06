%% Rozwiazywanie rownan rozniczkowych metoda Eulera!
%% Zadanie 2
clear;
a = 2;
h = 0.1;
x = 0:h:25;

y = zeros(size(x));
d_pochodna = zeros(size(y));

%% Warosci początkowe
y(1)=0;
d_pochodna(1)=1;

%%tablice dla wyników metody analitycznej 
m_an = zeros(size(x));
d_m_an = zeros(size(x));

for i = 2:length(y)
    y(i)=y(i-1) + (h*(-a)*d_pochodna(i-1));
    d_pochodna(i) = d_pochodna(i-1) - (h*(-a)* y(i));
end

m_an(:)=   sin((-a)*x(:));
d_m_an(:)=   cos((-a)*x(:));

figure (1)
plot (x,y,x,d_pochodna,' red')
title('Funkcja i jej pochodna')
legend('Funkcja','Pochodna','Location',['south'])
xlabel ('t');
ylabel ('v(t)');
figure(2)
subplot (1,2,1)
plot(x,y,x,m_an,'--red');
title('Funkcje obliczone numerycznie oraz analitycznie')
legend('Metoda numeryczna','Metoda analityczna','Location',['south'])
xlabel ('t');
ylabel ('v(t)');
xlim([0 25]);
%figure(3)
subplot(1,2,2)
plot(x,d_pochodna,x,d_m_an,'--red');
title('Pochodne obliczone numerycznie oraz analitycznie')
legend('Metoda numeryczna','Metoda analityczna','Location',['south'])
xlabel ('t');
ylabel ('v(t)');
xlim([0 25]);


%figure(2)
%plot (x,m_an,x,d_m_an)


%ylim([0 max(y)])
%s=y(:)- m_an(:);
%s= m_an(:)-y(:)
%figure (2)
%plot (x,s)
%title('Błąd przybliżenia');