function [i_d] = diode(v_d)
%DIODE Summary of this function goes here
%   Detailed explanation goes here
A = 0.0007;
    if v_d > 0.7
        Rd = 0.01;
        i_d = A + (v_d - 0.7)/Rd;
    else
        Rd = 1000;
        i_d = A + (v_d - 0.7)/Rd;
    end
end

