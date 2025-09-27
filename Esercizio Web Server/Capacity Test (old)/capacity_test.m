clc;
clear;

[THROUGHPUT_obs_1, RESPTIME_obs_1, COV_T_1, COV_R_1] = statistic_fun ('hl2500_1', 'hl2500_2', 'hl2500_3');
[THROUGHPUT_obs_2, RESPTIME_obs_2, COV_T_2, COV_R_2] = statistic_fun ('hl5000_1', 'hl5000_2', 'hl5000_3');
[THROUGHPUT_obs_3, RESPTIME_obs_3, COV_T_3, COV_R_3] = statistic_fun ('hl6500_1', 'hl6500_2', 'hl6500_3');
[THROUGHPUT_obs_4, RESPTIME_obs_4, COV_T_4, COV_R_4] = statistic_fun ('hl7500_1', 'hl7500_2', 'hl7500_3');
[THROUGHPUT_obs_5, RESPTIME_obs_5, COV_T_5, COV_R_5] = statistic_fun ('hl8500_1', 'hl8500_2', 'hl8500_3');
[THROUGHPUT_obs_6, RESPTIME_obs_6, COV_T_6, COV_R_6] = statistic_fun ('hl8800_1', 'hl8800_2', 'hl8800_3');
[THROUGHPUT_obs_7, RESPTIME_obs_7, COV_T_7, COV_R_7] = statistic_fun ('hl9300_1', 'hl9300_2', 'hl9300_3');
[THROUGHPUT_obs_8, RESPTIME_obs_8, COV_T_8, COV_R_8] = statistic_fun ('hl9600_1', 'hl9600_2', 'hl9600_3');
[THROUGHPUT_obs_9, RESPTIME_obs_9, COV_T_9, COV_R_9] = statistic_fun ('hl10000_1', 'hl10000_2', 'hl10000_3');
[THROUGHPUT_obs_10, RESPTIME_obs_10, COV_T_10, COV_R_10] = statistic_fun ('hl12500_1', 'hl12500_2', 'hl12500_3');
[THROUGHPUT_obs_11, RESPTIME_obs_11, COV_T_11, COV_R_11] = statistic_fun ('hl15000_1', 'hl15000_2', 'hl15000_3');
[THROUGHPUT_obs_12, RESPTIME_obs_12, COV_T_12, COV_R_12] = statistic_fun ('hl17500_1', 'hl17500_2', 'hl17500_3');
[THROUGHPUT_obs_13, RESPTIME_obs_13, COV_T_13, COV_R_13] = statistic_fun ('hl20000_1', 'hl20000_2', 'hl20000_3');
[THROUGHPUT_obs_14, RESPTIME_obs_14, COV_T_14, COV_R_14] = statistic_fun ('hl25000_1', 'hl25000_2', 'hl25000_3');

throughputs = [THROUGHPUT_obs_1,THROUGHPUT_obs_2,THROUGHPUT_obs_3,THROUGHPUT_obs_4,THROUGHPUT_obs_5,THROUGHPUT_obs_6,THROUGHPUT_obs_7,THROUGHPUT_obs_8,THROUGHPUT_obs_9,THROUGHPUT_obs_10,THROUGHPUT_obs_11,THROUGHPUT_obs_12,THROUGHPUT_obs_13,THROUGHPUT_obs_14];
times = [RESPTIME_obs_1, RESPTIME_obs_2,RESPTIME_obs_3,RESPTIME_obs_4,RESPTIME_obs_5,RESPTIME_obs_6,RESPTIME_obs_7,RESPTIME_obs_8,RESPTIME_obs_9,RESPTIME_obs_10,RESPTIME_obs_11,RESPTIME_obs_12,RESPTIME_obs_13,RESPTIME_obs_14];
points = [41.6,83.3,108.3,125,141.6,146.6,155,160,166.6,208.3,250,291.6,333.3,416.6];


powers = [THROUGHPUT_obs_1/RESPTIME_obs_1, THROUGHPUT_obs_2/RESPTIME_obs_2, THROUGHPUT_obs_3/RESPTIME_obs_3, THROUGHPUT_obs_4/RESPTIME_obs_4, THROUGHPUT_obs_5/RESPTIME_obs_5, THROUGHPUT_obs_6/RESPTIME_obs_6, THROUGHPUT_obs_7/RESPTIME_obs_7, THROUGHPUT_obs_8/RESPTIME_obs_8,  THROUGHPUT_obs_9/RESPTIME_obs_9,  THROUGHPUT_obs_10/RESPTIME_obs_10, THROUGHPUT_obs_11/RESPTIME_obs_11,THROUGHPUT_obs_12/RESPTIME_obs_12,THROUGHPUT_obs_13/RESPTIME_obs_13,THROUGHPUT_obs_14/RESPTIME_obs_14];



figure

subplot(3,1,1) 
plot(points, throughputs, 'b-o')     
x1=[xline(166.6, 'g');xline(208.3, 'r')];
xlabel('Request per second');
ylabel('Measured Throughput'); 
legend(x1, 'Knee Capacity', 'Usable Capacity');
title('Throughput')

subplot(3,1,2)  
plot(points, times, 'b-o') 
x2=[xline(166.6, 'g');xline(208.3, 'r')];
xlabel('Request per second');
ylabel('Measured Response Time'); 
legend(x2, 'Knee Capacity', 'Usable Capacity');
title('Response time')

subplot(3,1,3)
plot(points, powers, 'b-o')       
x3= [xline(166.6, 'g'); xline(208.3, 'r')];
xlabel('Request per second');
ylabel('Power'); 
legend(x3, 'Knee Capacity', 'Usable Capacity');
title('Power')
     
