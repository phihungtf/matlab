function T = tichPhanSimpson1P3(xx, yy)
    n = size(xx, 2);
    T = 0;
    for ii=2:2:(n-1)
        T = T + (xx(ii + 1) - xx(ii - 1)) * (yy(ii + 1) + 4*yy(ii) + yy(ii - 1)) / 6;
    end
end