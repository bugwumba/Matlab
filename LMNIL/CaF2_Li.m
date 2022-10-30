function [Li_n] = CaF2_Li(lambda)
%   This function computes the dispersion at different wavelengths
%   according to Li's 1980 paper

    %   Create array
    Li_n = zeros(1,size(lambda,2));
    % for loop to calculate refraction indices at different wavelengths
    for i = 1:size(lambda,2)
        % Calculate right-side of dispersion formula
        Li_Formula = 0.33973 + (0.69913*lambda(1,i)^2)/(lambda(1,i)^2....
                    - 0.09374^2) + (0.11994*lambda(1,i)^2)/...
                    (lambda(1,i)^2 - 21.18^2)...
                 + (4.35181*lambda(1,i)^2)/(lambda(1,i)^2 - 38.46^2);
        % Populate array of refraction indices at different wavelengths
        Li_n(1,i) = sqrt(Li_Formula + 1);
    end
    
    % Create graph of findings
    figure (4)
    plot(lambda/1e-6, (Li_n), 'LineWidth', 3)
    grid on
    xlabel("Wavelength (um)","FontSize",18);
%     ylabel("Refractive Index","FontSize",18);
    title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
        ," Li 1980: n 150 - 500 nm 20 ^oC","FontSize", 18);
%     legend("Li", "FontSize", 18)

%     % refractive index for 194 nm
%     Y_li_194 = interp1(lambda/1e-9, real(Li_n), 450);
    

end

