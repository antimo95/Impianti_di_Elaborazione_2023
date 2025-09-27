x = xlsread('Dati_combinati', 'B2:B31');
y = xlsread('Dati_combinati', 'F2:F31');
plot(x, 'b-o')
hold on
plot(y, 'r-o')
title('Values for n=1000000 experiment')
xlabel('Observations'' index')
ylabel('Response time (ms)')
legend('PC1', 'PC2')