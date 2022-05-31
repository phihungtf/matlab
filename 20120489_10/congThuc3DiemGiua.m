function S = congThuc3DiemGiua(xx, yy, x0)
    if (~any(xx == x0))
        fprintf("Khong the tinh dao ham theo cong thuc 3 diem giua!");
        S = NaN;
        return;
    end
    n = size(xx, 2);
    index = find(xx == x0);
    if (index == n || index == 1)
        fprintf("Khong the tinh dao ham theo cong thuc 3 diem giua!");
        S = NaN;
        return;
    end
    S = (-yy(index - 1) + yy(index + 1)) / (xx(index + 1) - xx(index - 1));
end