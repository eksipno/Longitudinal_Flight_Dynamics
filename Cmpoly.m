function Cm = Cmpoly(alpha,delta)
% polynomial curve fit
    Cm_coef_alpha = [2.064e-8, 1.247e-6, 6.259e-6, -0.0003454, -0.007662, -0.03874];
    Cm_coef_delta = [7.805e-6, 0.005799, 0];
    Cm = polyval(Cm_coef_alpha,deg2rad(alpha)) + polyval(Cm_coef_delta,deg2rad(delta));
end
