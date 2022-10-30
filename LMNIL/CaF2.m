% Create array of desired wavelengths
lambda_Mal = 0.230:0.001:9.7;
lambda_Li = 0.150:0.001:12.0;
lambda_DM_25 = 0.138:0.001:2.326;
lambda_DM_20 = 0.138:0.001:2.326;
% Execute functions to produce graphs with imaginary parts ignored
Mal = Malitson(lambda_Mal);
DM20C = Daimon_Masumura_20C(lambda_DM_20);
DM25C = Daimon_Masumura_25C(lambda_DM_25);
CaF2_L_i = CaF2_Li(lambda_Li);

% Overlay all plots on one figure
% Real
figure (5)
hold on
plot(lambda_Mal/1e-6, real(Mal), 'LineWidth', 3);
plot(lambda_DM_20/1e-6, real(DM20C), 'LineWidth', 4);
plot(lambda_DM_25/1e-6, real(DM25C), 'LineWidth', 2);
plot(lambda_Li/1e-6, real(CaF2_L_i), 'LineWidth', 1);
grid on
xlabel("Wavelength (um)","FontSize",18);
% ylabel("Refractive Index, Real Part", "FontSize", 18);
title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
        ," All Formulas: n 150 - 500 nm","FontSize", 18);
legend("Malitson", "Daimon & Masumura 20 ^oC",...
        "Daimon & Masumura 25 ^oC", "Li", "FontSize", 18)
% ax = gca; % returns the current axis
% ax.XRuler.Exponent = -9;
hold off

% figure(6)
% hold on
% plot(lambda/1e-9, imag(Mal), 'LineWidth', 3);
% plot(lambda/1e-9, imag(DM20C), 'LineWidth', 3);
% plot(lambda/1e-9, imag(DM25C), 'LineWidth', 3);
% plot(lambda/1e-9, imag(CaF2_L_i), 'LineWidth', 3);
% xlabel("Wavelength (nm)","FontSize",18);
% % ylabel("Refractive Index, Imaginary Part", "FontSize", 18);
% title("CaF_2 (Calcium Fluoride) Refractive Index Info"...
%         ," All Formulas: n 150 - 500 nm","FontSize", 18);
% legend("Malitson Imag", "Daimon & Masumura 20 ^oC Imag", ...
%         "Daimon & Masumura 25 ^oC Imag", "Li Imag", "FontSize", 18)
% % ax = gca; % returns the current axis
% % ax.XRuler.Exponent = -9;
% hold off



