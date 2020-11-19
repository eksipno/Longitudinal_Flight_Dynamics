clear
close all
clc

% dimensionless coefficients
CL_coef_alpha = [-1.666e-7, -1.272e-6, 1.034e-5, -5.288e-5, 0.0419, 0.2232];
CL_coef_delta = [-3.358e-5, -0.007591, 0];
CD_coef_alpha = [6.713e-8, 5.151e-8, -3.298e-5, 0.0005992, 0.006312, 0.03464];
CD_coef_delta = [3.133e-5, -0.002794, 0];
Cm_coef_alpha = [2.064e-8, 1.247e-6, 6.259e-6, -0.0003454, -0.007662, -0.03874];
Cm_coef_delta = [7.805e-6, 0.005799, 0];

% check coefficients
alpha = linspace(-5,15);    % [deg]
delta = linspace(-10,10);   % [deg]
% CL
CL_alpha = polyval(CL_coef_alpha,alpha);
CL_delta = polyval(CL_coef_delta,delta);
% CD
CD_alpha = polyval(CD_coef_alpha,alpha);
CD_delta = polyval(CD_coef_delta,delta);
% Cm
Cm_alpha = polyval(Cm_coef_alpha,alpha);
Cm_delta = polyval(Cm_coef_delta,delta);

figure(1);
subplot(1,2,1);
plot(alpha,CL_alpha);
hold on
plot(alpha,CD_alpha);
plot(alpha,Cm_alpha);
xlabel('\alpha[deg]');
ylabel('CL(\alpha),CD(\alpha),Cm(\alpha)');
legend('CL','CD','Cm');
subplot(1,2,2);
plot(delta,CL_delta);
hold on
plot(delta,CD_delta);
plot(delta,Cm_delta);
xlabel('\delta[deg]');
ylabel('CL(\delta),CD(\delta),Cm(\delta)');
legend('CL','CD','Cm');