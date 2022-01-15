function Part2()
%PART2 Summary of this function goes here
%   Detailed explanation goes here
f = -0.5:0.001:0.5;
H_f = (1-2*cos(3*pi/4)*exp(-1i*2*pi*f) + exp(-1i*4*pi*f))./...
    (1-1.8*cos(pi/4)*exp(-1i*2*pi*f) + 0.81*exp(-1i*4*pi*f));
h = figure;
h.Position = [100 100 1000 400];
subplot(1,2,1)
%Plotting abs allows for the magnitude to show
plot(f,abs(H_f), 'b', 'Linewidth', 2.5);
xlabel('frequency')
ylabel('|H(f)|')
title('Amplitude Response')
grid on
grid minor

subplot(1,2,2);
plot(f,unwrap(angle(H_f)),'r', 'Linewidth', 2.5)
xlabel('f')
ylabel('<H(f)')
title('Phase Response')
grid on
grid minor
end