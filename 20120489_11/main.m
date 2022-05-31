clc
clear
close all
format short
syms x y;
% btvn  7 8 9 10 11/51
%% Bai tap 07
% Bai 1
f = x + y;
a = 0; b = 0.4; y0 = 1;
y1 = ppLap_PTVPCap1(f, a, b, y0)
% Bai 2
f = 2*x^2 + y;
a = 0; b = 0.5; y0 = 1;
y2 = ppLap_PTVPCap1(f, a, b, y0)
%% Bai tap 08 + 09
% Bai 3
f = @(x, y) x + y;
a = 0; b = 0.4; y0 = 1;
xx = a:0.1:b;
[yE, yE1] = euler_PTVPC1(f, xx, y0)
% Bai 4
f = @(x, y) 2*x^2 + y;
a = 0; b = 0.5; y0 = 1;
xx = a:0.1:b;
[yE, yE2] = euler_PTVPC1(f, xx, y0)
%% Bai tap 10 + 11
% Bai 5
f = @(x, y) x + y;
a = 0; b = 0.4; y0 = 1;
xx = a:0.1:b;
[yR1, yR2] = rungekutta_PTVPC1(f, xx, y0)
% Bai 6
f = @(x, y) 2*x^2 + y;
a = 0; b = 0.5; y0 = 1;
xx = a:0.1:b;
[yR1, yR2] = rungekutta_PTVPC1(f, xx, y0)