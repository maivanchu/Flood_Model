function [lp] = maxl(i,j,k)
global Q
global n
global m

if (k >= 1) && (k < Q)
    if (j == 1)
        lp = 4;
    elseif (j > 1) && (j < n)
        lp = 5;
    elseif (j == n)
        lp = 3;
    end
end

if (i == m)
    if (j >= 1) && (j < n)
        lp = 2;
    elseif (j == n)
        lp = 1;
    elseif (j < n)
        lp = 1;
    end
end

if (k == Q)
    if (i == m || j == n)
        lp = 0;
%         disp('ERROR: l is undefined')
        return
    end
    if (i < m)
        if (j == 1)
            lp = 3;
        elseif ((j > 1) && (j < n))
            lp = 4;
        elseif ( j == n)
            lp = 2;
        end
    end
    if ((i == m) && (j < n))
        lp = 1;
    end
end