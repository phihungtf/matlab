function [D] = tinhSaiSoNBien(y, x, x_a, aEx)
    y_a = subs(y, x, x_a);
    N = length(x);
    dy = sym(zeros(1, N));
    dy_a = sym(zeros(1, N));
    aEy = 0;
    for ii=1:N
        dy(ii) = diff(y, x(ii));
        dy_a(ii) = subs(dy(ii), x, x_a);
        aEy = aEy + abs(dy_a(ii)) * aEx(ii);
    end
    rEy = aEy / abs(y_a);
    D = [aEy, rEy];
end