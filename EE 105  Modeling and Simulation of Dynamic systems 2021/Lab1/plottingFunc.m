function plottingFunc(N)
    dx = 5/N;
    x = 0:dx:5;
    y = outputVecFunc(x);
    figure
    plot(x,y);
    xlabel('x');
    ylabel('y = $$\frac{sin(x)}{1+e^{2x}}$$','Interpreter','latex');
    % num2str() is a function that converts a number to a string
    title(['N = ',num2str(N)]);
end
