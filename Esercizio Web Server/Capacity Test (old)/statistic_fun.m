function [THROUGHPUT_obs,RESPTIME_obs, COV_T, COV_R] = statistic_fun(data_name1, data_name2, data_name3);
%% Lettura file e calcolo throughput
T1 = xlsread(data_name1, 'R1:R2');
T2 = xlsread(data_name2, 'R1:R2');
T3 = xlsread(data_name3, 'R1:R2');
R1 = xlsread(data_name1, 'S1:S2');
R2 = xlsread(data_name2, 'S1:S2');
R3 = xlsread(data_name3, 'S1:S2');

T = [T1,T2,T3];
R = [R1,R2,R3];

%% Calcolo C.O.V
COV_T = std(T)/mean(T);
COV_R = std(R)/mean(R);

%% Calcolo parametri uscita
if COV_T<0.5
    THROUGHPUT_obs=mean(T);
else
    THROUGHPUT_obs=median(T);
end

if COV_R<0.5
    RESPTIME_obs=mean(R);
else
    RESPTIME_obs=median(R);
end


end