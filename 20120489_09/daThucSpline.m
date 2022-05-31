function S = daThucSpline(xx, yy)
    n = size(xx, 2);
    syms x;
    S = zeros(1, n - 1);
    h = xx(2:end) - xx(1:(end-1));
    VT = zeros(n); VT(1, 1) = 1; VT(n, n) = 1;
    VP = zeros(n, 1);
    for ii=1:n-2
        VT(ii + 1, ii) = h(ii) / 6;
        VT(ii + 1, ii + 1) = (h(ii) + h(ii + 1)) / 3;
        VT(ii + 1, ii + 2) = h(ii + 1) / 6;
        VP(ii + 1) = (yy(ii + 2) - yy(ii + 1)) ./ h(ii + 1) - (yy(ii + 1) - yy(ii)) ./ h(ii);
    end
    m = (VT \ VP).';
    M = yy(1:end-1) - m(1:end-1) .* h(1:end).^2 ./ 6;
    N = yy(2:end) - m(2:end) .* h(1:end).^2 ./ 6;
    
    S = simplify(m(2:end) .* (x - xx(1:end-1)).^3 ./ (6.*h(1:end)) + m(1:end-1).*(xx(2:end) - x).^3 ./ (6.*h(1:end)) ...
        + M(1:end) .* (xx(2:end) - x) ./ h(1:end) + N(1:end) .* (x - xx(1:end-1)) ./ h(1:end)).';
end