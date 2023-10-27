% This function plots the normalized Array factor pattern in polar co-ordinates in 2D
% function AF_polar(N, alpha, d_lamda_ratio)
    % Define constants
    N = 6;
    alpha = -5*pi/6; 
    d_lamda_ratio = 5/12;
    step = 0.01;
    
    gamma = -pi:step:pi;
    psi = alpha + 2*pi*d_lamda_ratio * cos(gamma);

    AF = sin(N*psi/2) ./ (N * sin(psi/2));
    AF = abs(AF);

    figure
    polarplot(psi, AF)
    pax = gca;
%     pax.ThetaZeroLocation = 'bottom';
% end

