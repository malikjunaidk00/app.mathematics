function A = solve(n)
    A = diag(ones(1,n))+diag(-ones(1,n-1),1)+diag(-ones(1,n-1),-1)+diag(ones(1,n-2),-2)+diag(-ones(1,n-2),2)
end

