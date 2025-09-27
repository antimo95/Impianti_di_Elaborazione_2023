load interarrivals.txt
[y,tR12] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR12 = 1 - empTTF;
plot(tR12, empTTF,'-*b',tR12,empRelR12,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');