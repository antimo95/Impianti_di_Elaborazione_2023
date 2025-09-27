load interarrivals.txt
[y,tJ18_11] = cdfcalc(interarrivals);
empTTF = y(2:size(y,1));
empRelJ18_11 = 1 - empTTF;
plot(tJ18_11, empTTF,'-*b',tJ18_11,empRelJ18_11,'-+r');
xlabel('time [s]'); ylabel('p');
legend('emp TTF', 'emp Rel');