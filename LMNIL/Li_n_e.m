function [Li_n_e_n] = Li_n_e(lambda)
%   LI_N_E
%   This function computes the dispersion at different wavelengths
%   according to Li's 1980 n(e) paper

    %   Create array
    Li_n_e_n = zeros(1,size(lambda,2));
    % for loop to calculate refractiion indices at different wavelengths
    for i =  1:size(lambda,2)
           % Calculate right-side of dispersion formula
           Li_n_e_Formula = 0.25385 + (0.66405*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.08504^2)...
                            + (1.0899*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 22.2^2)...
                            + (0.1816*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 24.4^2)...
                            + (2.1227*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 40.6^2);
           % Populate array of refraction indices at different wavelengths
           Li_n_e_n(1,i) = sqrt(Li_n_e_Formula + 1);
    end

    % Create graph of findings
    figure (9)
    plot(lambda/1e-9, real(Li_n_e_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)", "FontSize", 18);
%     ylabel("Refractive Index", "FontSize", 18);
    title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
        ," Li 1980 n(e): n 150 - 500 nm", "FontSize", 18);
%     legend("Li n(e) Real", "FontSize", 18);

end

