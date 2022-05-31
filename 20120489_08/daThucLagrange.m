function L = daThucLagrange(xx, yy)
    n = size(xx, 2);
    syms x;
    L = 0;
    for ii=1:n
        Li = 1;
        for jj=1:n
            if (ii ~= jj)
                Li = Li * (x - xx(jj)) / (xx(ii) - xx(jj));
            end
        end
        L = L + yy(ii) * Li; 
    end
end