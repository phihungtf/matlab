clc;
clear;
close all;
format short;

xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy = [-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];

% Bai tap 13
fprintf("Da thuc tong quat:\n");
P = daThucTongQuat(xx, yy)
figure;
fplot(P, [xx(1) xx(end)]);
hold on; plot(xx, yy, 'bo');

% Bai tap 14
fprintf("Da thuc Lagrange:\n");
L = daThucLagrange(xx, yy)
figure;
fplot(L, [xx(1) xx(end)]);
hold on; plot(xx, yy, 'bo');

