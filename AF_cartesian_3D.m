% This function plots the Array Factor in 3D
function AF_cartesian_3D(N, alpha, d_lamda_ratio)
    syms phi theta
    
    %Defining psi based on the inputs.
    psi = alpha + 2*pi*d_lamda_ratio * cos(phi);

    E_theta = sin(N*psi/2) ./ (N * sin(psi/2));
    
    %Converting to Cartesian Coordinates for plotting.
    x = E_theta*sin(phi).*cos(theta);
    y = E_theta*sin(phi).*sin(theta);
    z = E_theta.*cos(phi);
    
    %Plotting E pattern with the defined ranges for x, y
    figure
    fsurf(x,y,z,[0 pi 0 2*pi])
    
    %for uniform plotting
    axis equal
end
