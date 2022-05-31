% Bai 6a, 6b
function S = ppLap(f, phi, x_0, deltaf)
    x = x_0;
    k = 0;
    while (abs(f(x)) > deltaf && k < 30)
       x = phi(x);
       k = k + 1;
       disp([k x f(x)]);
    end
    S = x;
end