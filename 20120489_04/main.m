clc
clear
close all
format long

% Bai tap tren lop
% Bai 1
syms x;
f = x^2 - sin(x) - 50;
S = ppTiepTuyen(f, x, 2, 0.001)
figure
fplot(f, [0 10])
hold on
plot(S, subs(f, x, S), "r*")

% Bai 3
f = @(x) x.^2 - sin(x) - 50;
S = ppDayCung(f, 0, 8, 0.003)
figure
fplot(f, [0 10])
hold on
plot(S, f(S), "r*")

% Bai tap ve nha
% Bai 7
f = @(x) 2.^x + 3.^x - 10.*x - 30;
% a
S = ppDayCung(f, -5, -3, 0.001)
figure
fplot(f, [-5 0])
hold on
plot(S, f(S), "r*")

% b
S = ppDayCung(f, -4, -2, 0.002)
figure
fplot(f, [-5 0])
hold on
plot(S, f(S), "r*")

% c
S = ppDayCung(f, 2, 4, 0.003)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")

% d (Giong het cau c)
S = ppDayCung(f, 2, 4, 0.003)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")

% Bai 8
% a
% PP tiep tuyen
f = exp(x) + 2^(-x) + 2*cos(x) - 6;
S = ppTiepTuyen(f, x, 2, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, subs(f, x, S), "r*")

% PP day cung
f = @(x) exp(x) + 2.^(-x) + 2.*cos(x) - 6;
S = ppDayCung(f, 1, 3, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")

% b
% PP tiep tuyen
f = log(x - 1) + cos(x - 1);
S = ppTiepTuyen(f, x, 1.4, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, subs(f, x, S), "r*")

% PP day cung
f = @(x) log(x - 1) + cos(x - 1);
S = ppDayCung(f, 1.1, 2, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")

% c
% PP tiep tuyen
f = (x - 1)^2 - log(x);
S = ppTiepTuyen(f, x, 0.5, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, subs(f, x, S), "r*")

% PP day cung
f = @(x) (x - 1).^2 - log(x);
S = ppDayCung(f, 0.5, 1.5, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")

% d
% PP tiep tuyen
f = sin(x) - exp(-x);
S = ppTiepTuyen(f, x, 0.5, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, subs(f, x, S), "r*")

% PP day cung
f = @(x) sin(x) - exp(-x);
S = ppDayCung(f, 0.5, 1, 0.001)
figure
fplot(f, [0 5])
hold on
plot(S, f(S), "r*")
