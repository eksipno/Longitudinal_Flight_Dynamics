clear
close all
clc

t = [0 10]; % time[s]

% initial state
u0 = 10;    % [m/s]
w0 = 0;     % [m/s]
q0 = 0;     % [rad/s]
theta0 = deg2rad(10);    % [rad]
x0 = [u0;w0;q0;theta0]; % initial state vector

% control input
delta = deg2rad(10);

% simulation
[T,X] = ode45(@lonEQ,t,x0,[],delta);
u = X(:,1);
w = X(:,2);
q = X(:,3);
theta = X(:,4);

alpha = atan(w./u);

figure;
subplot(5,1,1)
plot(T,u);
ylabel('u');
subplot(5,1,2)
plot(T,w);
ylabel('w');
subplot(5,1,3)
plot(T,q);
ylabel('q');
subplot(5,1,4)
plot(T,theta);
ylabel('\theta');

subplot(5,1,5)
plot(T,rad2deg(alpha));
ylabel('\alpha[deg]');
