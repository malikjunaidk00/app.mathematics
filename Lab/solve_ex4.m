function A=solve_ex4(n)
    l=0;
    for i = 1:n
        
        for j = 1:n
            l=l+1;
            A(i,j)=l;
        end
    end
    for k=2:2:n
        A(k,:)=flip(A(k,:));
    end
end