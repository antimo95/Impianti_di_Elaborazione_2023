%grafico della reliability sul tempo dato un m fissato

x = linspace(0,3000,1000);
k= exp(-(x/1400));
yB = (1 - (1 - k).^5).^3; ;
yA6 = 1 - (1 - k.^3).^6;
yA7 = 1 - (1 - k.^3).^7;
yA8 = 1 - (1 - k.^3).^8;
yA9 = 1 - (1 - k.^3).^9;
yA10 = 1 - (1 - k.^3).^10;
yA14 = 1 - (1 - k.^3).^14;
yA20 = 1 - (1 - k.^3).^20;
yA21 = 1 - (1 - k.^3).^21;
yA22 = 1 - (1 - k.^3).^22;
yA26 = 1 - (1 - k.^3).^26;
plot(x,yB,x,yA26);
legend('System B','m26');
xlabel('Time');
ylabel('System Reliability');