pca5_c = xlsread("pca5_variance");
pca6_c = xlsread("pca6_variance");
pca7_c = xlsread("pca7_variance");
pca = xlsread("pca_plot");

p = pca(5,2);
pca5 = repelem(p,5);
p = pca(6,2);
pca6 = repelem(p,5);
p = pca(7,2);
pca7 = repelem(p,5);

pca5_cluster(1) = pca5_c(5);
pca5_cluster(2) = pca5_c(10);
pca5_cluster(3) = pca5_c(15);
pca5_cluster(4) = pca5_c(20);
pca5_cluster(5) = pca5_c(30);

pca6_cluster(1) = pca6_c(5);
pca6_cluster(2) = pca6_c(10);
pca6_cluster(3) = pca6_c(15);
pca6_cluster(4) = pca6_c(20);
pca6_cluster(5) = pca6_c(30);

pca7_cluster(1) = pca7_c(5);
pca7_cluster(2) = pca7_c(10);
pca7_cluster(3) = pca7_c(15);
pca7_cluster(4) = pca7_c(20);
pca7_cluster(5) = pca7_c(30);



x = [5, 10, 15, 20, 30];
plot(x, pca5,'--',x, pca6,'--',x, pca7,'--',x, pca5_cluster,x, pca6_cluster,x, pca7_cluster);
title('Varianza spiegata');
xlabel('cluster');
ylabel('varianza spiegata')
legend("5 componenti principali","6 componenti principali", "7 componenti principali", "clustering su 5 PCA", "clustering su 6 PCA", "clustering su 7 PCA");


