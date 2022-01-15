% Random seed, allows how to set a random seed for a random sequence. This
% means that we're always using the random seed of 0. This means that if I
% run the code multiple times I will get the same results. If you want
% different sequences comment this out
rng(0);
% Generates a sample (random sequence) from Gaussian distribution 
x = randn(1,500);
n = 0:1:500;
% The code below makes its so that when we plot the randomly generated
% sequence in line 7, against n, the values for n > 99 and n < 0 are equal
% to 0
x(n>99) = 0;
x(n<0) = 0;
figure
stem(n, x, 'filled');
xlim([-10, 111]);
xlabel('n');
ylabel('x[n]');
title('Randomly generated x[n]')
grid on 
grid minor

h_n = 0.9.^(n-1);
h_n(n<1) = 0;
h_n(n>98) = 0;
figure
stem(n, h_n, 'filled');
ylim([0,1.5]);
xlim([-10, 100]);
xlabel('n');
ylabel('h[n]')
title('$$h[n] = 0.9\exp{n-1}$$', 'Interpreter','latex');
grid on
grid minor

% In order to perform the convolution use the conv() 
y_n = conv(x,h_n);
figure
stem(n(1:101), y_n(1:101), 'filled')
xlabel('n');
title('y[n]');
ylabel('y[n] = x[n] * h[n]');
grid on
grid minor

% y(0) = 0.9y(-1) + x(-1)
%y(0) = 0 because values for x less than 1 are 0
% creates a zero vector 
y =  zeros(1,101);
y(1) = 0;
% run the recursion
for k = 1:100
    y(k+1) = 0.9*y(k) + x(k);
end
figure
stem(n(1:101), y, 'filled');
xlabel('n');
ylabel('y[n]');
title('y[n]');
grid on
grid minor