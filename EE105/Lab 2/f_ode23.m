function dx = f_ode23(t,x,omg)
% x -- [2xn] column vector
% u -- [1xn] vector
A = [0,1; -16,-6];
B = [0; 16];
u = sin(omg*t);
dx = A*x + B*u;
end