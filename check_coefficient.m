clear
close all
clc

% check coefficients
alpha = deg2rad(linspace(-10,20));    % [rad]
delta = deg2rad(linspace(-20,20));   % [rad]
% CL
CL_alpha = CLpoly(alpha,0);
CL_delta = CLpoly(0,delta);
% CD
CD_alpha = CDpoly(alpha,0);
CD_delta = CDpoly(0,delta);
% Cm
Cm_alpha = Cmpoly(alpha,0);
Cm_delta = Cmpoly(0,delta);

figure(1);
subplot(1,2,1);
plot(rad2deg(alpha),CL_alpha);
hold on
plot(rad2deg(alpha),CD_alpha);
plot(rad2deg(alpha),Cm_alpha);
xlabel('\alpha[deg]');
ylabel('CL(\alpha),CD(\alpha),Cm(\alpha)');
legend('CL','CD','Cm');
subplot(1,2,2);
plot(rad2deg(delta),CL_delta);
hold on
plot(rad2deg(delta),CD_delta);
plot(rad2deg(delta),Cm_delta);
xlabel('\delta[deg]');
ylabel('CL(\delta),CD(\delta),Cm(\delta)');
legend('CL','CD','Cm');

% Cm=0になるところで釣り合うはず
delta = deg2rad(10);
CL = CLpoly(alpha,delta);
CD = CDpoly(alpha,delta);
Cm = Cmpoly(alpha,delta);
figure;
plot(rad2deg(alpha),CL); hold on
plot(rad2deg(alpha),CD);
plot(rad2deg(alpha),Cm);
grid on
legend('CL','CD','Cm');