function S = congThuc3DiemCuoi(xx, yy, x0)
    if (~any(xx == x0))
        fprintf("Khong the tinh dao ham theo cong thuc 3 diem cuoi!");
        S = NaN;
        return;
    end
    n = size(xx, 2);
    index = find(xx == x0);
    if (index >= n - 1)
        fprintf("Khong the tinh dao ham theo cong thuc 3 diem cuoi!");
        S = NaN;
        return;
    end
    S = (-3*yy(index) + 4*yy(index + 1) - yy(index + 2)) / (xx(index + 2) - xx(index));
end