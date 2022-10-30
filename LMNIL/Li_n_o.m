function [Li_n_o_n] = Li_n_o(lambda)
%   LI_N_O
%   This function computes the dispersion at different wavelengths
%   according to Li's 1980 n(oo) paper

    %   Create array
    Li_n_o_n = zeros(1,size(lambda,2));
    % for loop to calculate refractiion indices at different wavelengths
    for i =  1:size(lambda,2)
           % Calculate right-side of dispersion formula
           Li_n_o_Formula = 0.27620 + (0.60967*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.08636^2)...
                            + (0.0080*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 18.0^2)...
                            + (2.14973*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 25.0^2);
           % Populate array of refraction indices at different wavelengths
           Li_n_o_n(1,i) = sqrt(Li_n_o_Formula + 1);
    end

    % Create graph of findings
    figure (8)
    plot(lambda/1e-9, real(Li_n_o_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)", "FontSize", 18);
%     ylabel("Refractive Index", "FontSize", 18);
    title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
        ," Li 1980 n(o): n 150 - 500 nm", "FontSize", 18);
%     legend("Li n(o) Real", "FontSize", 18);


end

