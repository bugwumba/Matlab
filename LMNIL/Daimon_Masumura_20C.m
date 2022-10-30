function [D_M_20_n] = Daimon_Masumura_20C(lambda)
%   DAIMON_MASUMURA_20C 
%   This function computes the dispersion at different wavelengths
%   according to Daimon and Masumura's 2002 paper at 20 degrees celsius

    %   Create array
    D_M_20_n = zeros(1,size(lambda,2));
    % for loop to calculate refractiion indices at different wavelengths
    for i =  1:size(lambda,2)
           % Calculate right-side of dispersion formula
           D_M_20_Formula = (0.443749998*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.00178027854)...
                            + (0.444930066*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.00788536061)...
                            + (0.150133991*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 0.0124119491) +...
                            (8.85319946*lambda(1,i)^2)/...
                            (lambda(1,i)^2 - 2752.28175);
           % Populate array of refraction indices at different wavelengths
           D_M_20_n(1,i) = sqrt(D_M_20_Formula + 1);
    end

    % Create graph of findings
    figure (2)
    plot(lambda/1e-9, real(D_M_20_n), 'LineWidth', 3);
    grid on
    xlabel("Wavelength (um)","FontSize", 18);
%     ylabel("Refractive Index","FontSize",18);
    title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
        ," Daimon & Masumura 2002: n 150 - 500 nm 20 ^oC","FontSize", 18);
%     legend("Daimon & Masumura 20 ^oC", "FontSize", 18)


end

