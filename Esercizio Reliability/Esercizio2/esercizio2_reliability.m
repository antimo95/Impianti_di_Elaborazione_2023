%grafico della reliability
x = linspace(0,1,1000)
y1 = 5*x.^3 - 10*x.^6 + 10*x.^9 - 5*x.^12 + x.^15
y2 = x.^15 - 15*x.^14 + 105*x.^13 - 455*x.^12 + 1365*x.^11 - 3000*x.^10 + 4975*x.^9 - 6300*x.^8 + 6075*x.^7 - 4375*x.^6 + 2250*x.^5 - 750*x.^4 + 125*x.^3
plot(x,y1,x,y2)
legend('System A','System B')

x = linspace(0,1,1000);
y1 = 1 - (1 - x.^3).^5;
y2 = (1 - (1 -x).^5).^3;
plot(x,y1,x,y2)
legend('System A','System B')
xlabel("Component Reliability")
ylabel("System Reliability")

%grafico della reliability sul tempo
x = linspace(0, 4000, 1000);
y1 = 1 - (1 - exp(-x/1400).^3).^5;
y2 = (1 - (1 - exp(-x/1400)).^5).^3;
plot(x,y1,x,y2)
legend('System A','System B')
xlabel("Time")
ylabel("System Reliability")
