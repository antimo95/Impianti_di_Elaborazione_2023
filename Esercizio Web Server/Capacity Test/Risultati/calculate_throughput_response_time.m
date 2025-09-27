function [throughput, response_time] = calculate_throughput_response_time(file)

elapsed = xlsread(file,'B:B');
time = xlsread(file,'A:A');
duration = (max(time) - min(time))/1000;
requests = size(elapsed, 1);
throughput = requests/duration;
response_time = (sum(elapsed)/requests)/1000;
r1 = ["Throughput","Response Time"];
r2 = [throughput, response_time];
xlswrite(file, r1, 'R1:S1');
xlswrite(file, r2, 'R2:S2');


