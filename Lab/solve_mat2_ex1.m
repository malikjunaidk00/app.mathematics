function A = solve_mat2_ex1(n)
    A = ones(n);
    A(1,2:(n-1))= zeros(1,n-2);
    A(n,2:(n-1))= zeros(1,n-2);
    A(2:(n-1),1)= zeros(1,n-2);
    A(2:(n-1),n)= zeros(1,n-2);
end
