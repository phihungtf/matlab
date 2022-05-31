function N = daThucNewton(xy)
    len = size(xy, 2);
    syms x;
    N = 0;
    Ni = zeros(len);
    Ni(1, 1:end) = xy(2, 1:end);
    T = 1;
    N = N + Ni(1) * T;
    for ii=1:(len - 1)
        T = T * (x - xy(1, ii));
        Ni(ii + 1, 1:(end - ii)) = (Ni(ii, 2:(end - ii + 1)) - Ni(ii, 1:(end - ii))) ./ ...
            (xy(1, (ii + 1):end) - xy(1, 1:(end - ii)));
        N = N + Ni(ii + 1, 1) * T;
    end
    N = simplify(N);
end