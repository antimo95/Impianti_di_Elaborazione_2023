function [DEV_PCA_per, DEV_CLUSTER, DEV_PCA_CLU, DEV_PCA_CLU_LOST] = deviance (data, pca_data, cluster_data)

%% Read the data
%data = xlsread(dati);
%pca_data = xlsread(pca);
%cluster_data = xlsread(cluster);
N_cluster = max (cluster_data); %

%% Total Deviance
data_norm = zscore(data);
DEV_TOT = sum(sum((data_norm-mean(data_norm)).^2)); % total deviance

%% PCA Deviance
DEV_PCA = sum(sum((pca_data-mean(pca_data)).^2)); % deviance after pca
DEV_PCA_per = (DEV_PCA/DEV_TOT)*100; % percentage deviance after pca

%% Cluster Deviance
W = zeros (N_cluster,1); % deviance intra (within) clusters
B = zeros (N_cluster,1); % deviance inter (between) clusters
for i = 1: N_cluster
   index = find(cluster_data==i); % find the index of cluster i
   n_ele = size(index, 1); % number of samples of the cluster i

   if (size(index) == 1) 
        centroid = pca_data(index,:);
    else
        centroid = mean(pca_data(index,:)); % centroid of the cluster i
    end

   
   W(i) = sum(sum((centroid-pca_data(index,:)).^2));
   B(i)= n_ele*sum((centroid-mean(pca_data)).^2);
end

W = sum(W); % total deviance intra (within) cluster
B = sum(B); % total deviance inter (between) cluster
(W+B)/DEV_PCA; % check if B+W is equal to the deviance after pca

DEV_CLUSTER = (W/DEV_PCA)*100;

DEV_PCA_CLU = (B/DEV_TOT)*100; % percentage deviance after pca & clustering
DEV_PCA_CLU_LOST = ((1-DEV_PCA/DEV_TOT)+(W/DEV_TOT))*100; % percentage deviance lost after pca & clustering 

end