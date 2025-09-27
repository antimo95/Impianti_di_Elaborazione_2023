load interarrivals.txt
[y,tJ18_01] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelJ18_01 = 1 - empTTF;
plot(tJ18_01, empTTF,'-*b',tJ18_01,empRelJ18_01,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');