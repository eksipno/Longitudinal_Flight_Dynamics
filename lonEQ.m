% equation of motion
function dx = lonEQ(t,x,delta)
    % enviroment
    g = 9.8;    % [m/s^2]
    rho = 1.2;  % [kg/m^3]
    S = 0.5;      % [m^2]
    cbar = 0.2; % [m]
    Iyy = 0.01;
    m = 0.5;      % [kg]
    
    alpha = atan(x(2)/x(1));    % angle of attack[rad]
    Va = sqrt(x(1)^2+x(2)^2);   % air speed[m/s]
    
    % coefficients
    CL = CLpoly(alpha,delta);
    CD = CDpoly(alpha,delta);
    Cm = Cmpoly(alpha,delta);
    
    % aerodynamic force and moment
    L = 1/2*rho*Va^2*S*CL;
    D = 1/2*rho*Va^2*S*CD;
    M = 1/2*rho*Va^2*S*cbar*Cm;
    
    
    % equation of motion
    dx(1) = -x(3)*x(2) - g*sin(x(4)) - D/m*cos(alpha) + L/m*sin(alpha);
    dx(2) = x(3)*x(1) + g*cos(x(4)) -D/m*sin(alpha) - L/m*cos(alpha);
    dx(3) = M/Iyy;
    dx(4) = x(3);
    dx = dx';
end