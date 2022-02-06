%% Rozwiazywanie rownan rozniczkowych metoda Eulera!
% dx/dt = ax
%% Zadanie 1
a = 2;
h = 0.01;
x = 0:h:5;
y = zeros(size(x));
y(1)=1;

m_an = zeros(size(x));
m_an(1)=exp(a*x(1));
for i = 2:length(y)-1
    %% f = a(f(x))
    f=a*y(i-1);
    y(i)=y(i-1) + h*f;
end
%exp(3)
m_an(:) = exp(a*x(:));

figure (1)
plot (x,y,x,m_an,'.red')
title('Metoda analityczna i numeryczna')
legend('Metoda analityczna','Metoda numryczna','Location',['south'])
ylim([0 max(y)])
s=y(:)-m_an(:);
%s= m_an(:)-y(:)
figure (2)
plot (x,s)
title('Błąd przybliżenia');
xlim([0 6]);