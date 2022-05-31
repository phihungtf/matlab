clc
clear
close all
format long

% Bai tap tren lop
A = [5 1 1; 1 10 1; 1 1 20];
C = [7; 12; 22];
S = ppLapTuyenTinh(A, C, 0.001);
if (S ~= 0)
    fprintf("Nghiem cua he phuong trinh tuyen tinh:");
    S
end
S = ppLapSeidel(A, C, 0.001);
if (S ~= 0)
    fprintf("Nghiem cua he phuong trinh tuyen tinh:");
    S
end

% Bai tap ve nha
% Bai 4
% a + b. Da viet tren lop
% c
A = [6 1 1 1 1; 2 9 3 1 2; 2 1 10 4 2; 1 2 1 8 3; 2 1 2 3 9];
C = [9; 1; -12; -12; 5];
S = ppLapTuyenTinh(A, C, 0.001);
if (S ~= 0)
    fprintf("Nghiem cua he phuong trinh tuyen tinh:");
    S
end
S = ppLapSeidel(A, C, 0.001);
if (S ~= 0)
    fprintf("Nghiem cua he phuong trinh tuyen tinh:");
    S
end

% Bai 5
% a + b. Da viet tren lop