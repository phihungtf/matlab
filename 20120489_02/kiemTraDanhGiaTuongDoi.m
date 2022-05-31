function [O] = kiemTraDanhGiaTuongDoi(p_e, p_t, rEp)
    aEp = p_t * rEp;
    p_L = p_t - aEp;
    p_R = p_t + aEp;
    if (p_L <= p_e && p_e <= p_R)
        O = 1;
    else
        O = 0;
    end
end