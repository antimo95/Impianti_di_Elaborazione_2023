clc;
clear;

%% read data
PC1 = xlsread('dati_PC1');
PC2 = xlsread('dati_PC2');
PC1_50 = PC1(:,1);
PC1_200 = PC1(:,2);
PC1_500 = PC1(:,3);
PC1_1000 = PC1(:,4);
PC2_50 = PC2(:,1);
PC2_200 = PC2(:,2);
PC2_500 = PC2(:,3);
PC2_1000 = PC2(:,4);
%% Paired T-Test

[h_t_50, p_t_50] = ttest(PC1_50, PC2_50);
[h_t_200, p_t_200] = ttest(PC1_200, PC2_200);
[h_t_500, p_t_500] = ttest(PC1_500, PC2_500);
[h_t_1000, p_t_1000] = ttest(PC1_1000, PC2_1000);
