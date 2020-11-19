function CL = CLpoly(alpha,delta)
% polynomial curve fit
    CL_coef_alpha = [-1.666e-7, -1.272e-6, 1.034e-5, -5.288e-5, 0.0419, 0.2232];
    CL_coef_delta = [-3.358e-5, -0.007591, 0];
    CL = polyval(CL_coef_alpha,rad2deg(alpha)) + polyval(CL_coef_delta,rad2deg(delta));
end
