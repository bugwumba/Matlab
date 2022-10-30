function [Malitson_n] = Malitson(lambda)
%   MALITSON
%   This function computes the dispersion at different wavelenghts
%   according to Malitson 1963 paper at 20 degrees celsius

    %   Create array
    Malitson_n = zeros(1,size(lambda,2));
    % for loop to calculate refraction indices at different wavelengths
    for i  =  1:size(lambda,2)
        % Calculate right-side of dispersion formula
        Malitson_Formula = (0.5675888*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.050263605^2)...
                        + (0.4710914*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.1003909^2)...
                        + (3.8484723*lambda(1,i)^2)/...
                        (lambda(1,i)^2 - 34.649040^2);
        % Populate array of refraction indices at different wavelengths
        Malitson_n(1,i) = sqrt(Malitson_Formula + 1);
    end

    % Create graph of findings; only using real values
    figure (1)
    plot(lambda/1e-9, real(Malitson_n), 'LineWidth', 3);
    grid on
    xlabel("Wavelength (um)", "FontSize", 18);
%     ylabel("Refractive Index", "FontSize", 18);
    title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
        ," Malitson 1963: n 150 - 500 nm 24^o C", "FontSize", 18);
%     legend("Malitson Real", "FontSize", 18)
    
end

