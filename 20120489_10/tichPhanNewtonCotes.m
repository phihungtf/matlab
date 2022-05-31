function T = tichPhanNewtonCotes(xx, yy, n)
    len = size(xx, 2);
    H = zeros(1, n + 1);
    T = 0;
    syms t;
    g = 1;
    for ii=1:n+1
        g = g * (t - ii + 1);
    end
    for ii=1:(n + 1)
        f = g / (t - ii + 1);
        H(ii) = vpa(int(f, t, [0 n])) * (-1)^(n - ii + 1) * nchoosek(n, ii - 1) / (n * factorial(n));
    end
    for ii=2:n:(len - n + 1)
        tmp = 0;
        for jj=1:n+1
            tmp = tmp + H(jj) * yy(jj + ii - 2);
        end
        T = T + (xx(ii + n - 1) - xx(ii - 1)) * tmp;
    end
end