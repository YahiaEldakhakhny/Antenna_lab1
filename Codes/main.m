%% Part 1: linear antenna (dipole of general length)
L_Lamda_ratio = input("Enter length of dipole relative to lamda: ");
E_plot_2D(L_Lamda_ratio);
E_plot_3D(L_Lamda_ratio);

%% Part 2: Uniform linear antenna array(ULA)
d_lamda_ratio = input("Enter spacing w.r.t lamda (d): ");
N = input("Enter number of elements (N): ");
alpha = input("Enter the progressive shift (alpha): ");

AF_cartesian_2D(N, alpha, d_lamda_ratio);
AF_polar_2D(N, alpha, d_lamda_ratio);
AF_cartesian_3D(N, alpha, d_lamda_ratio);
