function S = saiPhanTien(xx, yy, x0)
    if (~any(xx == x0))
        fprintf("Khong the tinh dao ham theo sai phan tien!");
        S = NaN;
        return;
    end
    n = size(xx, 2);
    index = find(xx == x0);
    if (index == n)
        fprintf("Khong the tinh dao ham theo sai phan tien!");
        S = NaN;
        return;
    end
    S = (yy(index + 1) - yy(index)) / (xx(index + 1) - xx(index));
end