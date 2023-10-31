% This function plots the normalized Array Factor Vs Psi in cartesian
% co-ordinates
function AF_cartesian_2D(N, alpha, d_lamda_ratio)
    % Define constants
    step = 0.01;
    gamma = -pi:step:pi;
    psi = alpha + 2*pi*d_lamda_ratio * cos(gamma);

    AF = sin(N*psi/2) ./ (N * sin(psi/2));
    AF = abs(AF);
    
    figure
    plot(psi, AF, 'linewidth', 2);
    xlabel('\Psi')
    ylabel('AF')
    title('Array Factor Vs \Psi')
end
