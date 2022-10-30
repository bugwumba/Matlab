function [D_M_25_n] = Daimon_Masumura_25C(lambda)
%   DAIMON_MASUMURA_25C
%   This function computes the dispersion at different wavelengths
%   according to Daimon and Masumura's 2002 paper at 25 degrees celsius

    %   Create array
    D_M_25_n = zeros(1,size(lambda,2));
    % for loop to calculate refractive indices at different wavelengths
    for i = 1:size(lambda,2)
        % Calculate right-side of dispersion formula
        D_M_25_Formula = (0.437387571*lambda(1,i)^2)/...
                        (lambda(1,i)^2 - 0.00173799328)...
                     + (0.449211397*lambda(1,i)^2)/...
                        (lambda(1,i)^2 - 0.00782718648)...
                     + (0.152068715*lambda(1,i)^2)/...
                        (lambda(1,i)^2 - 0.0124086125)...
                     + (13.0020420*lambda(1,i)^2)/...
                        (lambda(1,i)^2 - 4039.76541);
        % Populate array of refraction indices at different wavelengths
        D_M_25_n(1,i) = sqrt(D_M_25_Formula + 1);
    end

    % Create graph of findings
    figure (3)
    plot(lambda/1e-9, real(D_M_25_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)", "FontSize", 18);
%     ylabel("Refractive Index","FontSize", 18);
    title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
        ," Daimon & Masumura 2002: n 150 - 500 nm 25^o C", "FontSize", 18);
%     legend("D & M 25 ^oC Real", "FontSize", 18)

end

