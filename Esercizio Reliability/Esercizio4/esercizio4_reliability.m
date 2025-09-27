%punto A
%x = linspace(0,8000,1000);
%RsysA = 1 - (1 - exp(-x/900).*exp(-x/7000)).*(1 - exp(-x/900).*exp(-x/1000));
%RsysB = exp(-x/900).*(1 - (1 - exp(-x/7000)).*(1 - exp(-x/1000)));
%plot(x,RsysA, x, RsysB);
%legend('System A','System B');
%xlabel('Time');
%ylabel('System Reliability');

%punto B
%x = linspace(0,8000,1000);
%RsysA = exp(-x/900).*(1 - (1 - exp(-x/900)).*(1 - exp(-x/7000)));
%RsysB = exp(-x/900);
%plot(x,RsysA, x, RsysB);
%legend('System A','System B');
%xlabel('Time');
%ylabel('System Reliability');

%punto C
%x = linspace(0,8000,1000);
%RsysA = exp(-x/900).*exp(-x/7000).*(1 - (1 - exp(-x/900)).*(1 - exp(-x/7000)));
%RsysB = exp(-x/900).*exp(-x/7000);
%plot(x,RsysA, x, RsysB);
%legend('System A','System B');
%xlabel('Time');
%ylabel('System Reliability');

%punto D
x = linspace(0,8000,1000);
RsysA = 1 - (1 - exp(-x/900)).*(1 - exp(-x/900).*exp(-x/7000));
RsysB = exp(-x/900);
plot(x,RsysA, x, RsysB);
legend('System A','System B');
xlabel('Time');
ylabel('System Reliability');
