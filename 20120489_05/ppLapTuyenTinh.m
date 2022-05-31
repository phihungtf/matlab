% Ham cho phep giai he n phuong trinh n an
function S = ppLapTuyenTinh(A, C, deltaF)
    len = size(A, 2);
    rowSum = sum(A, 2);
    diagA = diag(A);
    for ii=1:len
        if ((rowSum(ii) - diagA(ii)) > diagA(ii))
            fprintf("Ma tran khong co duong cheo troi, kha nang cao khong co nghiem.");
            S = 0;
            return;
        end
    end
    
    B = -A ./ diagA + eye(len);
    
    fX = deltaF + 1;
    G = C ./ diagA;
    X0 = G;
    k = 1;
    
    while (abs(fX) > deltaF)
        Xn = B * X0 + G;
        rEX = norm((Xn - X0) ./ X0);
        fX = norm(A*Xn - C);
        X0 = Xn;
        k = k + 1;
    end
    S = Xn;
end