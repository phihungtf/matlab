function [y1] = ppLap_PTVPCap1(f, a, b, y0)
    syms x y;
    x0 = a;
    k = 1;
    y1 = y0;
    tol = 10^(-5);
    
    rEy = 1;
    while (rEy > tol && k <= 20)
        yn = y0 + int(subs(f, y, y1), x, x0, x);
        rEy = vpa(abs(int(yn - y1, x, a, b) / int(y1, x, a, b)));
        k = k + 1;
        y1 = yn;
    end
    y1 = simplify(y1);
end