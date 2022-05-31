clc
clear
close all
format long

f = @(x) x + sin(x) - 2;
S1 = ppChiaDoi(f, 1, 1.4, 0.001)

phi = @(x) 2 - sin(x);
S2 = ppLap(f, phi, 1.05, 0.001)

syms x;
g = sym(f);
vpasolve(g == 0, x)