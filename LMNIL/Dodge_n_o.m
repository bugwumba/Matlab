function [Dodge_n_o_n] = Dodge_n_o(lambda)
%   DODGE_N_O
%   This function computes the dispersion at different wavelengths
%   according to Dodge's 1984 n(o) paper

    %   Create array
    Dodge_n_o_n = zeros(1,size(lambda,2));
    % for loop to calculate refractiion indices at different wavelengths
    for i =  1:size(lambda,2)
           % Calculate right-side of dispersion formula
           Dodge_n_o_Formula = (0.48755108*lambda(1,i)^2)/...
                                (lambda(1,i)^2 - 0.04338408^2)...
                            + (0.39875031*lambda(1,i)^2)/...
                                (lambda(1,i)^2 - 0.09461442^2)...
                            + (2.3120353*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 23.793604^2);
           % Populate array of refraction indices at different wavelengths
           Dodge_n_o_n(1,i) = sqrt(Dodge_n_o_Formula + 1);
    end

    % Create graph of findings
    figure (6)
    plot(lambda/1e-9, real(Dodge_n_o_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)", "FontSize", 18);
%     ylabel("Refractive Index", "FontSize", 18);
    title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
        ," Dodge 1984 n(o): n 150 - 500 nm", "FontSize", 18);
%     legend("Dodge n(o) Real", "FontSize", 18);

end

