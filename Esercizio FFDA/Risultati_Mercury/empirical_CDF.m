load interarrivals.txt
[y,t1] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelMercury = 1 - empTTF;
plot(t1, empTTF,'-*b',t1,empRelMercury,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');