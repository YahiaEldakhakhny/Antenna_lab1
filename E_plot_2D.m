function E_plot_2D(L_Lamda_ratio)
    % Define constants
    step = 0.01;
    theta = -pi:step:pi;                                        % Theta
    lamda = 0.2;                                                % Wavelength
    B = 2*pi/lamda;                                           % Beta
    L = L_Lamda_ratio * lamda;                       % Wire length


    E_n_theta = (cos(B* L * cos(theta)/2) - cos(B*L/2)) ./ sin(theta);
    E_n_theta = E_n_theta/ max(abs(E_n_theta));
    E_n_theta = E_n_theta .* sign(theta);

    figure
    polarplot(theta, E_n_theta)
    pax = gca;
    pax.ThetaZeroLocation = 'bottom';
end

