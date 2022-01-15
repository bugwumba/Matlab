function [X_f,h] = part1A(f_0)
%PART1 Summary of this function goes here
%   Detailed explanation goes here
a = 0.9;
phi = 0;
f = -0.5:0.01:0.5;
X_f = ((cos(phi)) - a*cos(2*pi*f_0 -phi)*exp(-1i*2*pi*f))./...
    (1 -2*acos(2*pi*f_0)*exp(-1i*2*pi*f)+ a^(2)*exp(-1i*4*pi*f));
h = figure;
h.Position = [100 100 1000 400];
subplot(1,2,1)
%Plotting abs allows for the magnitude to show
plot(f,abs(X_f), 'Linewidth', 2.5);
xlabel('f')
ylabel('X(f)')
title('Amplitude')
grid on
grid minor

subplot(1,2,2);
plot(f,angle(X_f),'r', 'Linewidth', 2.5)
xlabel('f')
ylabel('<X(f)')
title('Phase')
grid on
grid minor
end

