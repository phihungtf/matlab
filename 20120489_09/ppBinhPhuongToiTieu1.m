function R = ppBinhPhuongToiTieu1(xx, yy)
    syms x a b;
    R = a*x^2 + b;
    T = sum((subs(R, x, xx) - yy).^2);
    D = [diff(T, a), diff(T, b)];
    [A, B] = equationsToMatrix(D, [a, b]);
    X = linsolve(A, B);
    R = X(1) * x^2 + X(2);
end