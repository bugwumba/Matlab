function Part3()
%PART3 Summary of this function goes here
%   Detailed explanation goes here
n = 0:1:1000;
x = cos(3*pi*n/4);
y = zeros(1,length(n));
y(1) = x(1);
y(2) = 1.8*cos(pi/4)*y(1)-x(2)-2*cos(3*pi/4)*x(1);
% Since we know that y[-1] and y[-2] = 0, we'll start at 3
for k = 3:length(n)
    y(k) = 1.8*cos(pi/4)*y(k-1)-0.81*y(k-2)...
        +x(k)-2*cos(3*pi/4)*x(k-1)+x(k-2);
end

h = figure;
h.Position = [100 100 1000 400];
subplot(1,2,1)
%Plotting abs allows for the magnitude to show
stem(n,y,'k','Linewidth', 2);
xlabel('n')
ylabel('y(n)')
title('3a')
grid on
grid minor

f = -0.5:0.001:0.5;
H_f = (1-2*cos(3*pi/4)*exp(-1i*2*pi*f) + exp(-1i*4*pi*f))./...
    (1-1.8*cos(pi/4)*exp(-1i*2*pi*f) + 0.81*exp(-1i*4*pi*f));
H_f_abs = abs(H_f);
H_f_phase = unwrap(angle(H_f));

y_2 = H_f_abs(f==3/8)*cos(3*pi*n/4 + H_f_phase(f==3/8));

subplot(1,2,2)
stem(n,y_2,'k','Linewidth', 2);
xlabel('n')
ylabel('y(n)')
title('3b')
grid on
grid minor

end

