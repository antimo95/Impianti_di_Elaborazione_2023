load interarrivals.txt
[y,tR63N0] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR63N0 = 1 - empTTF;
plot(tR63N0, empTTF,'-*b',tR63N0,empRelR63N0,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');