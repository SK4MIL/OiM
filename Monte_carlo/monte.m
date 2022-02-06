clear;
tic
Probki = [];
P_pi =[];
P_pi2 =[];
N=50;
step=50;
while N < 250000
%step = round(N * 0.05);
%% Rysowanie okręgu
%r  = 1;
%theta = linspace(0,2*pi,100);
%x = r*cos(theta);
%y = r*sin(theta);
%plot(x,y, 'black' )
%xlim ([-1.2 1.2]) 
%ylim ([-1.2 1.2])
%hold on
%axis equal
%% Koniec rysowania
a=2*r;
moje_pi = 0;
N0=0;
Nk=0;
punkty=rand(N,1)*a-r;
punktx=rand(N,1)*a-r;
for i= 1:N
    if punktx(i)^2+punkty(i)^2<=r^2
        %% Rysowanie punktow
        %scatter(punktx(i),punkty(i),8,'b','filled')
        %xlim ([-1.2 1.2]) 
        %ylim ([-1.2 1.2])
        %% KONIEC
        N0=N0+1;
    else 
        %% rysowanie punktow 
        %scatter(punktx(i),punkty(i),8,'r');
        %xlim ([-1.2 1.2]) 
        %ylim ([-1.2 1.2])
        %% KONIEC
        Nk=Nk+1;
    end
end
moje_pi = N0*(2*r)^2/N;
P_pi2 = [P_pi2 (moje_pi - pi)];
P_pi = [P_pi moje_pi];
Probki = [Probki N];
N= N + step;
end
%% Wykresy
PY=zeros(1,length(Probki)) + pi;
subplot(2,1,1)
plot(Probki, PY, 'red', Probki , P_pi, 'blue.','MarkerSize',10)
title 'Przyblizona wartość pi w zależności od ilości próbek' 
subplot(2,1,2)
plot(Probki,P_pi2, 'black.','MarkerSize', 10)
title 'Błąd estymacji'
%% Wykresy
toc