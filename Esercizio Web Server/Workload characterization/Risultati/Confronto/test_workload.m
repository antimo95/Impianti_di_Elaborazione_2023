clc;
clear;

%% read data
real = xlsread('real');
synthetic = xlsread('synthetic');
N = size(real,2); %number of principal components

%% Normal Distribution -One-sample Kolmogorov-Smirnov test 
%(se gli elementi h_r e h_s sono 0 provengono da una distribuzione normale)

[h_r, p_r] = kstest(real);
[h_s, p_s] = kstest(synthetic);

%% Non Parametric Test - Wilcoxon Test 
%(se il vettore h_np avrà tutti 0 allora il sintetico rappresentativo di quello reale)

p_np = zeros(1,N);
h_np = zeros(1,N);
for i = 1:N
    [p_np(i), h_np(i)] = ranksum(synthetic(:,i), real(:,i));
end

%% Paired T-Test

[h_t, p_t] = ttest(synthetic, real);