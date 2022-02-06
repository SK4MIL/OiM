%monte carlo w 4d
% wykres objętość od wymiarów.
clear;
% Basic variables, r - radious, n - number of points, -D - number of
% dimensions to compute
r=1;
a=2*r;
n = 1500000;
D = 20;

Vodd=[];
Vdk=[];

for d = 1:1:D
    nk=0;
    Pkt = rand(n,d)*2-1;
    B=Pkt.^2;
    c=(sum(B,2)).^(0.5);
    for i = 1:1:n
        if c(i) <= 1
            nk= nk+1;
        end
    end
    Vkw=(2*r)^d;
    vkola = (Vkw*nk)/n;
    Vodd = [Vodd,vkola];
    Vdk =[Vdk, vkola/Vkw];
end
d = 1:1:D;
subplot(1,2,1)
plot(d,Vodd);
grid on
xlabel('Liczba wymiarów')
ylabel('Objętość bryły')
subplot(1,2,2)
plot(d,Vdk,'red');
xlabel('Liczba wymiarów')
ylabel('Stosunek objętości kuli do sześcianu.')


