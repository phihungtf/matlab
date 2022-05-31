function [yE, yE1] = euler_PTVPC1(f, xx, y0)
    yE = zeros(1, length(xx));
    yE(1) = y0;
    yEt = zeros(1, length(xx));
    yEt(1) = y0;
    yE1 = zeros(1, length(xx));
    yE1 = y0;
    for ik = 2:length(xx)
        yE(ik) = yE(ik - 1) + (xx(ik) - xx(ik - 1)) * f(xx(ik - 1), yE(ik - 1));
        yEt(ik) = yE1(ik - 1) + (xx(ik) - xx(ik - 1)) * f(xx(ik - 1), yE1(ik - 1));
        yE1(ik) = yE1(ik - 1) + (xx(ik) - xx(ik - 1)) * (f(xx(ik - 1), yE1(ik - 1)) + f(xx(ik), yEt(ik))) / 2;
    end
end