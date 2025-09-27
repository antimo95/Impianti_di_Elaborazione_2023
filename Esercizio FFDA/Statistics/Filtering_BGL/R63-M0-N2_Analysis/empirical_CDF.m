load interarrivals.txt
[y,tR63] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelR63 = 1 - empTTF;
plot(tR63, empTTF,'-*b',tR63,empRelR63,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');