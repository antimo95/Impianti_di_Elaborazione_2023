dati = xlsread("pca_plot");
x = dati(:,1);
y = dati(:,2);
plot(x, y, '-o');
ylim([45,100]);
title('Varianza e PCA');
xlabel('numero di componenti principali');
ylabel('percentuale varianza conservata');