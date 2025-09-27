load interarrivals.txt
[y,t] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelc401 = 1 - empTTF;
plot(t, empTTF,'-*b',t,empRelc401,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');