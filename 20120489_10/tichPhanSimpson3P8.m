function T = tichPhanSimpson3P8(xx, yy)
    n = size(xx, 2);
    T = 0;
    for ii=2:3:(n-2)
        T = T + (xx(ii + 2) - xx(ii - 1)) * (yy(ii + 2) + 3*yy(ii + 1) + 3*yy(ii) + yy(ii - 1)) / 8;
    end
end