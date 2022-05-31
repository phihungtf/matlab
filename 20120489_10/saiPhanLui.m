function S = saiPhanLui(xx, yy, x0)
    if (~any(xx == x0))
        fprintf("Khong the tinh dao ham theo sai phan lui!");
        S = NaN;
        return;
    end
    n = size(xx, 2);
    index = find(xx == x0);
    if (index == 1)
        fprintf("Khong the tinh dao ham theo sai phan lui!");
        S = NaN;
        return;
    end
    S = (yy(index) - yy(index - 1)) / (xx(index) - xx(index - 1));
end