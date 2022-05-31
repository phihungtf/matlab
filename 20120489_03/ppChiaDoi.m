function S = ppChiaDoi(f, left, right, deltaf)
    a = left;
    b = right;
    c = (a + b) / 2;
    while (abs(f(c)) > deltaf)
       if (sign(f(c)*f(a)) > 0)
           a = c;
       elseif (sign(f(c)*f(a)) < 0)
           b = c;
       end
       c = (a + b) / 2;
    end
    S = c;
end