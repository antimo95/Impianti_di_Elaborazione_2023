load interarrivals.txt
[y,tR71] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR71 = 1 - empTTF;
plot(tR71, empTTF,'-*b',tR71,empRelR71,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');