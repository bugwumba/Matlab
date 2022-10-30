% Create array of desired wavelengths
lambda_Dodge_no = 0.200:0.001:7.0;
lambda_Dodge_ne = 0.150:0.001:12.0;
lambda_Li_no = 0.140:0.001:7.5;
lambda_Li_ne = 0.140:0.001:7.5;
% Execute functions to produce graphs with imaginary parts ignored
Dno = Dodge_n_o(lambda_Dodge_no);
Dne = Dodge_n_e(lambda_Dodge_ne);
Lno = Li_n_o(lambda_Li_no);
% Kai = Kaiser_et_al(lambda);
Lne = Li_n_e(lambda_Li_ne);

% Overlay all plots on one figure
figure (10)
hold on
plot(lambda_Dodge_no/1e-9, real(Dno), 'LineWidth', 3);
plot(lambda_Dodge_ne/1e-9, real(Dne), 'LineWidth', 3);
plot(lambda_Li_no/1e-9, real(Lno), 'LineWidth', 3);
plot(lambda_Li_no/1e-9, real(Lne), 'LineWidth', 3);
grid on
xlabel("Wavelength (um)", "FontSize", 18);
% ylabel("Refractive Index, Real Part", "FontSize", 18);
title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
        ," All Formulas: n 150 - 500 nm", "FontSize", 18);
legend("Dodge n(o)", "Dodge n(e)", "Li n(o)",...
        "Li n(e)", "FontSize", 18);
% ax = gca; % returns the current axis
% ax.XRuler.Exponent = -9;
hold off

% figure (12)
% hold on
% plot(lambda2/1e-9, imag(Lno), 'LineWidth', 3);
% plot(lambda2/1e-9, imag(Lne), 'LineWidth', 3);
% plot(lambda2/1e-9, imag(Dno), 'LineWidth', 3);
% plot(lambda2/1e-9, imag(Dne), 'LineWidth', 3);
% xlabel("Wavelength (nm)", "FontSize", 18);
% % ylabel("Refractive Index, Imaginary Part", "FontSize", 18);
% title("MgF_2 (Magnesium Fluoride) Refractive Index Info"...
%         ," All Formulas: n 150 - 500 nm", "FontSize", 18);
% legend( "Li n(o) Imag","Li n(e) Imag","Dodge n(o) Imag",...
%     "Dodge n(e) Imag", "FontSize", 18);
% % ax = gca; % returns the current axis
% % ax.XRuler.Exponent = -9;
% hold off
