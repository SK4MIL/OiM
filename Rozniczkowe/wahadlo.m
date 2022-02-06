%% Rozwiazywanie rownan rozniczkowych metoda Eulera!
% dx/dt = ax
%% Lista 8 
clear;
h = 0.01;
x= 0:h:100;
y= zeros(size(x));
tetha = 180 * pi/180 ;
y(1)=tetha;
f = zeros(size(x));
f(1)=0;

g = 9.81;
l = 10;
m = 0.01;

m_an = zeros(1,length(x));
m_an_sum =[];

    m_an(:) =tetha*cos(x(:)*sqrt(g/l));
    m_an_sum = [m_an_sum, m_an];

for i = 2:length(x)
    f(i)= f(i-1) - h*(g/l) * sin(y(i-1));
    y(i)= y(i-1) + h*f(i);
end
plot(x,m_an,'blue', x,y,'--red')
title('Wahadło matematyczne')
xlabel('Czas trwania')
ylabel('Położenie')
legend('Metoda analityczna','Metoda numeryczna','Location',['south'])
