function A=solve_ex6(n)
    A=0;
    for i = 1:n
        A=A+((-1)^(i+1))/i;
    end
end