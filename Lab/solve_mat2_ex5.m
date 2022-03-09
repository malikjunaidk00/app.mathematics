function [left,right]=solve_mat2_ex5(a,kmin,kmax,t)
    right = 1+a^(1-t);
    left = 1-a^(-t);
end