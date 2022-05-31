function T = tichPhanHinhThang(xx, yy)
    n = size(xx, 2);
    T = 0;
    for ii=2:n
        T = T + (xx(ii) - xx(ii - 1)) * (yy(ii) + yy(ii - 1)) / 2;
    end
end