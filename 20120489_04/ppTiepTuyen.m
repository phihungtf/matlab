function S = ppTiepTuyen(f, x, x_0, deltaf)
    df = diff(f, x);
    x_n = x_0;
    k = 0;
    while (abs(subs(f, x, x_n)) >= deltaf && k <= 50)
        x_n = x_n - subs(f, x, x_n) / subs(df, x, x_n);
        x_n = double(x_n);
        k = k + 1;
        fx = double(subs(f, x, x_n));
        disp([k x_n fx]);
    end
    S = x_n;
end