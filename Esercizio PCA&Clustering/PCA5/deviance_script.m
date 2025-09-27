dati = xlsread("dataset");
pca = xlsread("pca");
clusters = xlsread("clusters");
x = linspace(1,30,30);
for i = 1:30
   [dev_pca(i), dev_cluster(i), dev_pca_clu(i), dev_pca_clu_lost(i)] = deviance(dati, pca, clusters(:,i));
end
plot(x, dev_cluster, '-o');
title('Cluster e varianza persa');
xlabel('cluster');
ylabel('varianza intra-cluster')
