%Exercise 4 page 26:
A=[1:4;5:8;9:12]
%(1) deleting the first row of A
A(1,:)=[]
%(2)
A=[1:4;5:8;9:12]
A(:,[2,4])=[]
%(3)
A=[1:4;5:8;9:12]
A(end,:)=[]
A(:,end)=[]
%(4)
A=[1:4;5:8;9:12]
[A A]
%(5)
A=[1:4;5:8;9:12]
A'
transpose(A) %in case A contains complex numbers.
%(6)
A=[1:4;5:8;9:12]
A(:,[2,4])=A(:,[4,2])
%(7)
A=[1:4;5:8;9:12]
A.^2
%(8)
A=[1:4;5:8;9:12]
A+3
%(9)
A=[1:4;5:8;9:12]
A.^(0.5)
sqrt(A)
%(10)
A=[1:4;5:8;9:12]
sin(A)
%(11)
A=[1:4;5:8;9:12]
A(1,2) = -2
%(12)
A=[1:4;5:8;9:12]
A(2,:) = [-1 0 -2 3]

%Exercise 5 page 28:
A=[1:8;20:-2:6;2.^[1:8]]
%(1)
sum(A) %summs the elements of A column wise
%(2)
sum(A,2) %sums the elements of A line (row) wise
%(3)
reshape(A,6,4) %it parses the columns of A into the columns of the new
%matrix
%(4)
max(A) %gives the maximum of each column of A
%(5)
max(A,[],2) %gives the maximum of each row of A
%(6)
max(A,2) %replaces every element that is lesser than 2 by 2.
%(7)
flipud(A) %flip A upside-down
%(8)
fliplr(A) %flip A left-right
%(9)
size(A) %dimentions of A
%(10)
length(A) %gives the bigger dimension of A

N=input('Type an integer: ');
if mod(N,3)==0
disp('divisible by 3');
else
disp(sprintf('the remainder after dividing by 3 is: %d', mod(N,3) ))
end


i=0;
while (i<100)
    i=i+1;
    if (i==50)
        break;
    end
end


a= [];
for i=1:8
    if i==5
        continue;
    else
        a = [a i]
    end
end

%Exercise 8
a=rand(1,20)
b = a(a>0.5)
%Exercise 9
A = diag(1:5)+diag(3:3:9,-2)
B = triu(2*ones(5))-4*diag([1 1 1 1 1])

%Exercise 10:
A = [1:4;5:8;9:12]
A = [A, mean(A,2)]
%Exercise 10b:
b = [1:4;5:8;9:12]
b = [b; sum(b)]
