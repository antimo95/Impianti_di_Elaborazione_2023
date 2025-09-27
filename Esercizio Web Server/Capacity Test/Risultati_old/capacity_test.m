clc;
clear;

[THROUGHPUT_obs_1, RESPTIME_obs_1, COV_T_1, COV_R_1] = statistic_fun ('500_1', '500_2', '500_3');
[THROUGHPUT_obs_2, RESPTIME_obs_2, COV_T_2, COV_R_2] = statistic_fun ('1000_1', '1000_2', '1000_3');
[THROUGHPUT_obs_3, RESPTIME_obs_3, COV_T_3, COV_R_3] = statistic_fun ('1500_1', '1500_2', '1500_3');
[THROUGHPUT_obs_4, RESPTIME_obs_4, COV_T_4, COV_R_4] = statistic_fun ('2000_1', '2000_2', '2000_3');
[THROUGHPUT_obs_5, RESPTIME_obs_5, COV_T_5, COV_R_5] = statistic_fun ('2500_1', '2500_2', '2500_3');
[THROUGHPUT_obs_6, RESPTIME_obs_6, COV_T_6, COV_R_6] = statistic_fun ('3000_1', '3000_2', '3000_3');
[THROUGHPUT_obs_7, RESPTIME_obs_7, COV_T_7, COV_R_7] = statistic_fun ('4000_1', '4000_2', '4000_3');
[THROUGHPUT_obs_8, RESPTIME_obs_8, COV_T_8, COV_R_8] = statistic_fun ('5000_1', '5000_2', '5000_3');
[THROUGHPUT_obs_9, RESPTIME_obs_9, COV_T_9, COV_R_9] = statistic_fun ('6000_1', '6000_2', '6000_3');

throughputs = [THROUGHPUT_obs_1,THROUGHPUT_obs_2,THROUGHPUT_obs_3,THROUGHPUT_obs_4,THROUGHPUT_obs_5,THROUGHPUT_obs_6,THROUGHPUT_obs_7,THROUGHPUT_obs_8,THROUGHPUT_obs_9];
times = [RESPTIME_obs_1, RESPTIME_obs_2,RESPTIME_obs_3,RESPTIME_obs_4,RESPTIME_obs_5,RESPTIME_obs_6,RESPTIME_obs_7,RESPTIME_obs_8,RESPTIME_obs_9];
points = [8.3,16.6,25,33.3,41.6,50,66.6,83.3,100];


powers = [THROUGHPUT_obs_1/RESPTIME_obs_1, THROUGHPUT_obs_2/RESPTIME_obs_2, THROUGHPUT_obs_3/RESPTIME_obs_3, THROUGHPUT_obs_4/RESPTIME_obs_4, THROUGHPUT_obs_5/RESPTIME_obs_5, THROUGHPUT_obs_6/RESPTIME_obs_6, THROUGHPUT_obs_7/RESPTIME_obs_7, THROUGHPUT_obs_8/RESPTIME_obs_8,  THROUGHPUT_obs_9/RESPTIME_obs_9];



figure

subplot(3,1,1) 
plot(points, throughputs, 'b-o')     
x1=[xline(33.3, 'g');xline(50, 'r')];
xlabel('Request per second');
ylabel('Measured Throughput'); 
legend(x1, 'Knee Capacity', 'Usable Capacity');
title('Throughput')
xlim([8.3, 100])

subplot(3,1,2)  
plot(points, times, 'b-o') 
x2=[xline(33.3, 'g');xline(50, 'r')];
xlabel('Request per second');
ylabel('Measured Response Time'); 
legend(x2, 'Knee Capacity', 'Usable Capacity');
title('Response time')
xlim([8.3, 100])

subplot(3,1,3)
plot(points, powers, 'b-o')       
x3= [xline(33.3, 'g'); xline(50, 'r')];
xlabel('Request per second');
ylabel('Power'); 
legend(x3, 'Knee Capacity', 'Usable Capacity');
title('Power')
xlim([8.3, 100])
     
