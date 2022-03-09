function A=solve_mat2_ex2(a,kmin,kmax,t)
    A=(a^(t-1))*length(kmin:kmax)*(a-1);
end