rng(1);
x_2 = randn(1,500);
n_2 = 0:1:500;
% The code below makes its so that when we plot the randomly generated
% sequence in line 7, against n, the values for n > 99 and n < 0 are equal
% to 0
x_2(n_2>99) = 0;
x_2(n_2<0) = 0;
figure
stem(n_2, x_2, 'filled');
xlim([-10, 111]);
xlabel('n');
ylabel('x[n]');
title('Randomly generated x[n]')
grid on 
grid minor

h_n_2 = 0.9.^(n-1).*cos((pi/5)*(n-1));
h_n(n<1) = 0;
h_n(n>99) = 0;
figure
stem(n, h_n_2, 'filled');
ylim([0,1.5]);
xlim([-10, 100]);
xlabel('n');
ylabel('h[n]')
title('$$h[n] = 0.9\exp{n-1}$$', 'Interpreter','latex');
grid on
grid minor

% In order to perform the convolution use the conv() 
y_n = conv(x,h_n_2);
figure
stem(n_2(1:101), y_n(1:101), 'filled')
xlabel('n');
title('y[n]');
ylabel('y[n] = x[n] * h[n]');
grid on
grid minor

% y(0) = 1.8*cos(pi/5)y(-1) + 0.81y(-2) + x(-1) - 0.9cos(pi/5)x(-2)
% y(0) = 0 because values for x less than 1 are 0
% y(1) = x(1)
% creates a zero vector 
y =  zeros(1,101);
y(1) = 0;
y(2) = x(1);

% run the recursion
for k = 1:99
    y(k+2) = 1.8*cos(pi/5)*y(k+1) - 0.81*y(k) + x(k+1) - 0.9*cos(pi/5)*x(k);
end
figure
stem(n_2(1:101), y, 'filled');
xlabel('n');
ylabel('y[n]');
title('y[n]');
grid on
grid minor