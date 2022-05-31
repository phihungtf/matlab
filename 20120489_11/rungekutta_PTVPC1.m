function [yR1, yR2] = rungekutta_PTVPC1(f, xx, y0)
    n = length(xx);
    yR1 = zeros(1, n);
    yR1(1) = y0;
    yR2 = zeros(1, n);
    yR2(1) = y0;
    for ii=2:n
        %Runge Kutta bac 2
        h = xx(ii) - xx(ii - 1);
        k11 = h*f(xx(ii - 1), yR1(ii - 1));
        k21 = h*f(xx(ii), yR1(ii - 1) + k11);
        yR1(ii) = yR1(ii - 1) + (k11 + k21) / 2;
        % Runge Kutta bac 3
        k12 = h*f(xx(ii - 1), yR2(ii - 1));
        k22 = h*f(xx(ii - 1) + h/2, yR2(ii - 1) + k12/2);
        k32 = h*f(xx(ii - 1) + h, yR2(ii - 1) - k12 + 2*k22);
        yR2(ii) = yR2(ii - 1) + (k12 + 4*k22 + k32) / 6;
    end
end