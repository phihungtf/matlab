function P = daThucTongQuat(xx, yy)
    n = size(xx, 2);
    % Xay dung ma tran X
    X = zeros(n, n);
    for ii=1:n
        for jj=1:n
            X(ii, jj) = xx(ii)^(jj - 1);
        end
    end
    % Xay dung ma tran Y
    Y = yy.';
    % Giai phuong trinh XA = Y
    A = X\Y;
    % Xay dung da thuc noi suy
    syms x;
    P = 0;
    for ii=1:n
        P = P + A(ii)*x^(ii-1);
    end
    P = simplify(P);
end