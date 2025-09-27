load interarrivals.txt
[y,t2] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelBGL = 1 - empTTF;
plot(t2, empTTF,'-*b',t2,empRelBGL,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');