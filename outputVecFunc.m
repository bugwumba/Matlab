% output vector function
function y = outputVecFunc(x)
     % Remember that you need a dot for element by element implentation
    % since x is a vector
 y = sin(x)./(1 + exp(2.*x));
end