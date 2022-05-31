clc;
clear;
close all;

%{
Bai 10
a. Input:
 - p_e: Gia tri chinh xac
 - p_t: Gia tri gan dung
 - aEp: Sai so tuyet doi
   Output:
 1: Dai luong phu hop voi danh gia
 0: Dai luong khong phu hop voi danh gia
b. 
%}
fprintf("10b.\nInput: 17.351, 15.932, 1.247\n");
if (kiemTraDanhGiaTuyetDoi(17.351, 15.932, 1.247))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 11205, 11115, 120\n");
if (kiemTraDanhGiaTuyetDoi(11205, 11115, 120))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 38.735, 36.215, 1.327\n");
if (kiemTraDanhGiaTuyetDoi(38.735, 36.215, 1.327))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 319, 297, 15\n");
if (kiemTraDanhGiaTuyetDoi(38.735, 36.215, 1.327))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

% c.
fprintf("c. Input: 438, 425, 15\n");
if (kiemTraDanhGiaTuyetDoi(438, 425, 15))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

% d.
fprintf("d. Input: 15659, 15586, 123\n");
if (kiemTraDanhGiaTuyetDoi(15659, 15586, 123))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end


%{
Bai 11
a. Input:
 - p_e: Gia tri chinh xac
 - p_t: Gia tri gan dung
 - rEp: Sai so tuong doi
   Output:
 1: Dai luong phu hop voi danh gia
 0: Dai luong khong phu hop voi danh gia
b. 
%}
fprintf("11b.\nInput: 218, 200, 0.05\n");
if (kiemTraDanhGiaTuongDoi(218, 200, 0.05))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 6.035, 5.897, 0.02\n");
if (kiemTraDanhGiaTuongDoi(6.035, 5.897, 0.02))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 2545, 2300, 0.1\n");
if (kiemTraDanhGiaTuongDoi(2545, 2300, 0.1))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

fprintf("Input: 37.54, 35.89, 0.03\n");
if (kiemTraDanhGiaTuongDoi(37.54, 35.89, 0.03))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

% c.
fprintf("c. Input: 438, 425, 15\n");
if (kiemTraDanhGiaTuongDoi(438, 425, 15))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

% d.
fprintf("d. Input: 15659, 15586, 123\n");
if (kiemTraDanhGiaTuongDoi(15659, 15586, 123))
    fprintf("Dai luong phu hop voi danh gia\n");
else
    fprintf("Dai luong khong phu hop voi danh gia\n");
end

% Bai 12
fprintf("12a.\n");
syms x1 x2;
y = x1.^2 + x2.^2;
x1_a = 5; aEx1 = 0.03;
x2_a = 3; aEx2 = 0.06;
D = tinhSaiSo2Bien(y, x1, x2, x1_a, x2_a, aEx1, aEx2);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("12b.\n");
syms x1 x2 x3;
y = x1 + x2 .* x3;
x1_a = 5; aEx1 = 0.03;
x2_a = 3; aEx2 = 0.06;
x3_a = 7; aEx3 = 0.04;
D = tinhSaiSo3Bien(y, x1, x2, x3, x1_a, x2_a, x3_a, aEx1, aEx2, aEx3);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

fprintf("12cd.\n");

clear
fprintf("y = x1 + x2 * x3\n");
x = sym('x', [1 3]);
y = x(1) + x(2) .* x(3);
x_a = [5, 3, 7];
aEx = [0.03, 0.06, 0.04];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = x1^2 + x2 * x3^3\n");
x = sym('x', [1 3]);
y = x(1).^2 + x(2) .* x(3)^3;
x_a = [2, 4, 6];
aEx = [0.05, 0.02, 0.03];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = x3 * sqrt(x1 + x2)\n");
x = sym('x', [1 3]);
y = x(3) .* sqrt(x(1) + x(2));
x_a = [3, 7, 3];
aEx = [0.05, 0.07, 0.02];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = x1 * x2 / x3\n");
x = sym('x', [1 3]);
y = x(1) .* x(2) ./ x(3);
x_a = [3, 7, 10];
aEx = [0.08, 0.03, 0.1];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = x1 * (x2 + x3) - x2 * x3\n");
x = sym('x', [1 3]);
y = x(1) .* (x(2) + x(3)) - x(2) .* x(3);
x_a = [8, 4, 3];
aEx = [0.09, 0.02, 0.04];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = ln(x1 * x2 - x3)\n");
x = sym('x', [1 3]);
y = log(x(1) .* x(2) - x(3));
x_a = [7, 5, 2];
aEx = [0.05, 0.02, 0.03];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

clear
fprintf("y = x1 * sin(x2) - cos(x3)\n");
x = sym('x', [1 3]);
y = x(1) .* sin(x(2)) - cos(x(3));
x_a = [3, 0, 1];
aEx = [0.06, 0.02, 0.04];
D = tinhSaiSoNBien(y, x, x_a, aEx);
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

format long

% 13a.
clear
fprintf("13.a\n");
fprintf("u = ln(2y + x^2)\n");
syms x y;
u = log(2.*y + x.^2);
x_e = 1.976; y_e = 0.522;
D = tinhSaiSo2BienLamTron(u, x, y, x_e, y_e);
fprintf("Gia tri ham so u: %f\n", D(3));
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

% 13b.
clear
fprintf("13.b\n");
fprintf("u = ye^x - x^2\n");
syms x y;
u = y .* exp(x) - x.^2;
x_e = 1.675; y_e = 1.073;
D = tinhSaiSo2BienLamTron(u, x, y, x_e, y_e);
fprintf("Gia tri ham so u: %f\n", D(3));
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

% 13c.
clear
fprintf("13.b\n");
fprintf("u = xtany + (x + y)^2\n");
syms x y;
u = x .* tan(y) + (x + y).^2;
x_e = -1.395; y_e = 1.643;
D = tinhSaiSo2BienLamTron(u, x, y, x_e, y_e);
fprintf("Gia tri ham so u: %f\n", D(3));
fprintf("Sai so tuyet doi: %f\n", D(1));
fprintf("Sai so tuong doi: %f\n", D(2));

