load interarrivals.txt
[y,tR62] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR62 = 1 - empTTF;
plot(tR62, empTTF,'-*b',tR62,empRelR62,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');