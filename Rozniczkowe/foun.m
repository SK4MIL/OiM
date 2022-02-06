h = 0.1;
t = 0:h:100;
teta = pi/2;
g = 9.81;
l = 10;
m = 0.01;
analityczna = [];
% metoda analityczna
for i = 1:1:length(t)
analityczna(i) = teta*cos(t(i)/(sqrt(g/l)));
end
v2 = [];
v2(1) = 0;
y2 = [];
y2(1) = teta;
% metoda numeryczna
for i = 2:1:length(t)
v2(i) = v2(i-1) - h * (g/l) * sin(y2(i-1));
y2(i) = y2(i-1) + v2(i) * h;
end

hold on;
plot(t, analityczna, 'r');
plot(t, y2, 'b');
xlabel('Czas');
ylabel('Położenie');
legend('Metoda analityczna', 'Metoda numeryczna');