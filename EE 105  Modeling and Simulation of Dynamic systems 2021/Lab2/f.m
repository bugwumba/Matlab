function dx = f(t,x,u)
% x -- [2xn] column vector
% u -- [1xn] vector
A = [0 1; -16 -6];
B = [0; 16];
dx = A*x + B*u;
end