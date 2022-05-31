function R = ppBinhPhuongToiTieu2(xx, yy)
    syms x a b;
    R = a + b*x;
    T = sum((subs(R, x, log(xx)) - log(yy)).^2);
    D = [diff(T, a), diff(T, b)];
    [A, B] = equationsToMatrix(D, [a, b]);
    X = linsolve(A, B);
    R = exp(X(1)) * x ^ X(2);
end