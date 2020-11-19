function CD = CDpoly(alpha,delta)
% polinomial couve fit
    CD_coef_alpha = [6.713e-8, 5.151e-8, -3.298e-5, 0.0005992, 0.006312, 0.03464];
    CD_coef_delta = [3.133e-5, -0.002794, 0];
    CD = polyval(CD_coef_alpha,deg2rad(alpha)) + polyval(CD_coef_delta,deg2rad(delta));
   end