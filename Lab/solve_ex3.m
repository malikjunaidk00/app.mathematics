function A = solve_ex3(n)
    A = zeros(n);
    for i=1:n
        A(1,i)=1;
        A(n,i)=1;
        A(i,n)=1;
        A(i,1)=1;
    end
end