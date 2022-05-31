function [D] = tinhSaiSo2BienLamTron(y, x1, x2, x1_e, x2_e)
    y_e = subs(y, [x1, x2], [x1_e, x2_e]);
    y_t = round(double(y_e), 3);
    aEy = abs(y_e - y_t);
    rEy = aEy / abs(y_e);
    D = [aEy, rEy, y_t];
end