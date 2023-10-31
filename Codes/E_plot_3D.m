% This function plots the E pattern in 3D
function E_plot_3D(L_Lamda_ratio)
    syms phi theta
    % Define constants
    lamda = 0.2;                                     % Wavelength
    B = 2*pi/lamda;                                  % Beta
    L = L_Lamda_ratio * lamda;                       % Wire length
    
    E_theta = ( cos(B*L *cos(phi)/2) - cos(B*L/2) ) / sin(phi);
    
    %Converting to Cartesian Coordinates for plotting.
    x = E_theta*sin(phi)*cos(theta);
    y = E_theta*sin(phi)*sin(theta);
    z = E_theta*cos(phi);
    
    %Plotting E pattern with the defined ranges for x, y
    figure
    fsurf(x,y,z,[0 pi 0 2*pi])
    
    %for uniform plotting
    axis equal

end

