clc
clear
close all

% Bai tap 5
f = @(x) exp(x) - x - 3;
% a
S = ppChiaDoi(f, 0, 3, 0.001)
% b
S = ppChiaDoi(f, 0, 2, 0.005)
% c
S = ppChiaDoi(f, -3, 0, 0.0001)
% d
S = ppChiaDoi(f, -3, -1, 0.0001)

% Bai tap 6
% c
f = @(x) x + sin(x) - 2;
phi = @(x) 2 - sin(x);
S = ppLap(f, phi, 1.05, 0.001)

% d
f = @(x) x^2 + x - 5;
phi = @(x) sqrt(5 - x);
S = ppLap(f, phi, 1.5, 0.001)

% Bai tap 7
f = @(x) x - x/2 - 1/x;
phi = @(x) x/2 + 1/x;
% a
S = ppLap(f, phi, 1, 0.001)

% b
S = ppLap(f, phi, 2, 0.003)

% c
S = ppLap(f, phi, -2, 0.01)

% d
S = ppLap(f, phi, -5, 0.0001)

% Bai tap 8
% a.
f = @(x) exp(x) + 2^(-x) + 2*cos(x) - 6;
S = ppChiaDoi(f, 1, 2, 0.001)

phi = @(x) log(6 - 2*cos(x) - 2^(-x));
S = ppLap(f, phi, 2, 0.001)

% b.
f = @(x) log(x - 1) + cos(x - 1);
S = ppChiaDoi(f, 1, 1.5, 0.001)

phi = @(x) exp(-cos(x - 1)) + 1;
S = ppLap(f, phi, 1.5, 0.001)

% c.
f = @(x) (x - 2)^2 - log(x);
S = ppChiaDoi(f, 3, 4, 0.001)

phi = @(x) sqrt(log(x)) + 2;
S = ppLap(f, phi, 3, 0.001)

% d.
f = @(x) sin(x) - exp(-x);
S = ppChiaDoi(f, 0.5, 0.6, 0.001)

phi = @(x) asin(exp(-x));
S = ppLap(f, phi, 0.55, 0.001)

