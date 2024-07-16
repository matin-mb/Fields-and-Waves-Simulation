

freq = 5e9:0.1e9:15e9;
epsilon_0 = 8.854e-12; 
mu_0 = 4 * pi * 1e-7; 
er = 2.56; 
c = 299792458; 
d = 9.375e-3;
w = 2 * pi * freq;
n = sqrt(er);
beta = n * w / c;
% Theoretically found:
R = abs(sqrt(2) ./ (1i * 4 .* tan(freq*(pi/2e10)) + 3*sqrt(2) ));

figure;
plot(freq, R);
xlabel('f (10*GHz)');
ylabel('Gamma');
title('Frequency plot');
grid on;
