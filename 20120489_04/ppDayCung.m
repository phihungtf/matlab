function S = ppDayCung(f, a, b, deltaf)
    k = 0;
    c = a;
    while (abs(f(c)) >= deltaf && k <= 50)
        c = a - (b - a) * f(a) / (f(b) - f(a));
        c = double(c);
        k = k + 1;
        fc = double(f(c));
        disp([k a b c fc]);
        if (f(a) * f(c) > 0)
            a = c;
        elseif (f(a) * f(c) < 0)
            b = c;
        end
    end
    S = c;
end