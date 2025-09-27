load interarrivals.txt
[y,t] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelMaster = 1 - empTTF;
plot(t, empTTF,'-*b',t,empRelMaster,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');