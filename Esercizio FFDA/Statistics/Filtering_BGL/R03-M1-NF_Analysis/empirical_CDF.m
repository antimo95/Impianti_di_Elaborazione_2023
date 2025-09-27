load interarrivals.txt
[y,tR03] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR03 = 1 - empTTF;
plot(tR03, empTTF,'-*b',tR03,empRelR03,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');