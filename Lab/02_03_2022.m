%Matlab 1 exercises:
%Ex1:
%Write a function, that returns the nxn version of the matrix below. [0 0 1; 0 1 0; 1 0 0]
function A = solve_ex1(n)
    flip(eye(n))
end
%Ex2:
%Write a function, that returns for a given n the nxn version of the matrix
%below. [1 -1 1; -1 1 -1; 1 -1 1]

function A = solve(n)
    A = zeros(n);
    for i=1:n
        for j=1:n
            A(i,j)=(-1)^(i+j);
        end
    end
end

diag(ones(1,n))+diag(-ones(1,n-1),1)+diag(-ones(1,n-1),-1)

%diag(ones(1,n)): creates an n*n matrix with ones in the main diagonal
%diag(-ones(1,n-1),1): creates an n*n matrix with ones in the first
%diagonal

%Ex 3 :
%Write a function, that returns for a given n the nxn version of the matrix
%below: [1 1 1 1; 1 0 0 1; 1 0 0 1; 1 1 1 1]
function A = solve(n)
    A = zeros(n);
    for i=1:n
        A(1,i)=1;
        A(n,i)=1;
        A(i,n)=1;
        A(i,1)=1;
    end
end
%Ex4:
%Write a function, that returns for a given n the nxn version of the matrix
%below: [1 2 3; 4 5 6; 7 8 9]

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

%Ex 5:
%Write a function, that returns Sn for a given n, where
%Sn=∑1/k
function A=solve(n)
    A=sum(1./(1:n));
end
%Ex 6:
%Write a function, that returns Sn for a given n, where Sn=∑(−1)^(k+1)/k
function A=solve(n)
    A=0;
    for i = 1:n
        A=A+((-1)^(i+1))/i;
    end
end

%Matlab 2 exercises:
%Ex1:
%Write a function, that returns for a given n the nxn version of the matrix
%below: [1 0 1; 0 1 0; 1 0 1]
function A = solve(n)
    A = ones(n)
    A(1,2:(n-1))= zeros(1,n-2);
    A(n,2:(n-1))= zeros(1,n-2);
    A(2:(n-1),1)= zeros(1,n-2);
    A(2:(n-1),n)= zeros(1,n-2);
end

%Ex 2 :
%Let F be a floating point system. Write a function, that returns the number of positive, normalized elements in F. In the parameters of the function kmin=k− and kmax=k+.
%F=( a | k− | k+ | t )
function A=solve(a,kmin,kmax,t)
    A=(a^(t-1))*length(kmin:kmax)
end

%Ex 3:
%Let F be a floating point system. Write a function, that returns the smallest positive, normalized number in F. In the parameters of the function kmin=k− and kmax=k+.
%F=( a | k− | k+ | t )
function A=solve(a,kmin,kmax,t)
    A=a^(kmin-1);
end

%Ex 4:
%Let F be a floating point system. Write a function, that returns the largest positive, normalized number in F. In the parameters of the function kmin=k− and kmax=k+.
%F=( a | k− | k+ | t )
function A=solve(a,kmin,kmax,t)
    A = (a^kmax)*(1-a^(-t))
end

%Ex 5:
%Let F be a floating point system. Write a function, that returns the left and right neighbour of 1 in F. In the parameters of the function kmin=k−, kmax=k+ and left=1−, right=1+.
%F=( a | k− | k+ | t )
function [left,right]=solve(a,kmin,kmax,t)
    right = 1+a^(1-t);
    left = 1-a^(-t);
end
%Ex 6:
%Write a function, that returns Sn for a given n, where
%Sn=∑1/k!
function A = solve(n)
    A = sum(1./(factorial(1:n))
end