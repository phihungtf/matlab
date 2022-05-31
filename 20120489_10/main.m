clc
clear
close all
format short

%% Bai 07
xx = [0.8 0.9 1 1.1 1.2 1.3 1.4];
yy = [0.7174 0.7833 0.8415 0.8912 0.9320 0.9636 0.9854];
df = 0.5403;

df_SPT = saiPhanTien(xx, yy, 1)
rEdf_SPT = abs((df - df_SPT) / df)

df_SPL = saiPhanLui(xx, yy, 1)
rEdf_SPL = abs((df - df_SPL) / df)

%% Bai 08
xx = [0.8 0.9 1 1.1 1.2 1.3 1.4];
yy = [0.7174 0.7833 0.8415 0.8912 0.9320 0.9636 0.9854];
df = 0.5403;

df_3DC = congThuc3DiemCuoi(xx, yy, 1)
rEdf_3DC = abs((df - df_3DC) / df)

df_3DG = congThuc3DiemGiua(xx, yy, 1)
rEdf_3DG = abs((df - df_3DG) / df)

%% Bai 09
xx = [1 2 3 4 5 6 7];
yy = [4 -6 -14 -14 0 34 94];
I = 42;
I_HT = tichPhanHinhThang(xx, yy)
rEI_HT = abs((I - I_HT) / I)

xx = [-2 -1 0 1 2 3 4];
yy = [24 1 4 3 -8 -11 36];
I = 7.2;
I_HT = tichPhanHinhThang(xx, yy)
rEI_HT = abs((I - I_HT) / I)

%% Bai 10
xx = [1 2 3 4 5 6 7];
yy = [4 -6 -14 -14 0 34 94];
I = 42;
I_S13 = tichPhanSimpson1P3(xx, yy)
rEI_S13 = abs((I - I_S13) / I)

xx = [-2 -1 0 1 2 3 4];
yy = [24 1 4 3 -8 -11 36];
I = 7.2;
I_S13 = tichPhanSimpson1P3(xx, yy)
rEI_S13 = abs((I - I_S13) / I)

%% Bai 11
xx = [1 2 3 4 5 6 7];
yy = [4 -6 -14 -14 0 34 94];
I = 42;
I_S38 = tichPhanSimpson3P8(xx, yy)
rEI_S38 = abs((I - I_S38) / I)

xx = [-2 -1 0 1 2 3 4];
yy = [24 1 4 3 -8 -11 36];
I = 7.2;
I_S38 = tichPhanSimpson3P8(xx, yy)
rEI_S38 = abs((I - I_S38) / I)

%% Bai 12
xx = [1 2 3 4 5 6 7];
yy = [4 -6 -14 -14 0 34 94];
I = 42;
I_NC = tichPhanNewtonCotes(xx, yy, 4)
rEI_NC = abs((I - I_NC) / I)

%% Bai 13
syms t;
f = exp(t);
a = 2; b = 4; I = int(f, t, a, b);
I_G = tichPhanGauss(f, t, a, b)
rEI_G = vpa(abs((I - I_G)/I))

f = sin(t);
a = 0; b = pi; I = int(f, t, a, b);
I_G = tichPhanGauss(f, t, a, b)
rEI_G = vpa(abs((I - I_G)/I))