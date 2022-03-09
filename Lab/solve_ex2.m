function A = solve_ex2(n)
    A = zeros(n);
    for i=1:n
        for j=1:n
            A(i,j)=(-1)^(i+j);
        end
    end
end