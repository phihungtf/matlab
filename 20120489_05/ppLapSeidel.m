% Ham cho phep giai he n phuong trinh n an
function S = ppLapSeidel(A, C, deltaF)
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
    Xn = X0;
    k = 1;
    
    B1 = tril(B, -1);
    B2 = triu(B, 0);
    
    while (abs(fX) > deltaF)
%         Xn(1)= B(1,:)*X0 + G(1);
%         Xn(2)= B(2,1)*Xn(1) + B(2,2)*X0(2) + B(2,3)*X0(3) + G(2);
%         Xn(3)= B(3,1)*Xn(1) + B(3,2)*Xn(2) + B(3,3)*X0(3) + G(3);
        
        Xn = (eye(len) - B1)^(-1) * (B2*Xn + G);

        rEX = norm((Xn-X0)./X0);
        fX = norm(A*Xn - C);
        k = k + 1;
    end
    S = Xn;
end