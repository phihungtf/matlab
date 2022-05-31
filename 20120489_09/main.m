clc;
clear;
close all;
format short;

syms x

% Bai tap 15/32
xx = [-3.2 -2.5 -1.7 -0.8 0.3 1.5];
yy = [-8.982 -5.831 -4.261 -1.837 -3.298 -0.249];
N = daThucNewton([xx; yy])
figure;
fplot(N, [xx(1) xx(end)]);
hold on;
plot(xx, yy, 'bo');
fprintf("f(-2) = N(-2) = %.4f\n", subs(N, x, -2));
fprintf("f(0) = N(0) = %.4f\n", subs(N, x, 0));

% Bai tap 13/38
% a
xx = [2 4 7 8];
yy = [2.2 1.8 2.7 3.1];
S = daThucSpline(xx, yy)
figure;
for ii=1:size(S, 1)
    fplot(S(ii), [xx(ii) xx(ii+1)]);
    hold on;
end
plot(xx, yy, 'bo');
fprintf("f(3) = S(3) = %.4f\n", subs(S(1), x, 3));
fprintf("f(7.5) = S(7.5) = %.4f\n", subs(S(3), x, 7.5));

% b
xx = [2.2 3.6 4.9 5.2 5.7 6.1];
yy = [1.4 3.2 5.1 4.4 3.9 3.2];
S = daThucSpline(xx, yy)
figure;
for ii=1:size(S, 1)
    fplot(S(ii), [xx(ii) xx(ii+1)]);
    hold on;
end
plot(xx, yy, 'bo');
fprintf("f(4) = S(4) = %.4f\n", subs(S(2), x, 4));
fprintf("f(5.5) = S(5.5) = %.4f\n", subs(S(4), x, 5.5));

% Bai tap 11
% a
f = @(x) 0.5.*x.^2 + 1.5;
xx = [1, 2, 3, 4, 5];
yy = f(xx);
R = ppBinhPhuongToiTieu1(xx, yy)
figure;
fplot(R, [xx(1) xx(end)]);
hold on;
plot(xx, yy, 'bo');

% b
f = @(x) 2.*x.^2 + 1.5;
xx = [1, 2, 3, 4, 5];
yy = f(xx);
R = ppBinhPhuongToiTieu2(xx, yy)
figure;
fplot(R, [xx(1) xx(end)]);
hold on;
plot(xx, yy, 'bo');
