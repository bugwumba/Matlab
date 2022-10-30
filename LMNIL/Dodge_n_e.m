function [Dodge_n_e_n] = Dodge_n_e(lambda)
%   DODGE_N_E
%   This function computes the dispersion at different wavelengths
%   according to Dodge's 1984 n(e) paper

    % Create array
    Dodge_n_e_n = zeros(1,size(lambda,2));
    % for loop to calculate refractiion indices at different wavelengths
    for i =  1:size(lambda,2)
           % Calculate right-side of dispersion formula
           Dodge_n_e_Formula = (0.41344023*lambda(1,i)^2)/...
                                (lambda(1,i)^2 - 0.03684262^2)...
                            + (0.50497499*lambda(1,i)^2)/...
                                (lambda(1,i)^2 - 0.09076162^2)...
                            + (2.4904862*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 23.771995^2);
           % Populate array of refraction indices at different wavelengths
           Dodge_n_e_n(1,i) = sqrt(Dodge_n_e_Formula + 1);
    end

    % Create graph of findings
    figure (7)
    plot(lambda/1e-9, real(Dodge_n_e_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)","FontSize", 18);
%     ylabel("Refractive Index","FontSize", 18);
    title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
        ," Dodge 1984 n(e): n 150 - 500 nm", "FontSize", 18);
%     legend("Dodge n(e) Real", "FontSize", 18);


end

