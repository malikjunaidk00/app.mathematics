%Floating point numbers:

%Exercise 1:
0.1-0.5+0.4==0
0.4-0.5+0.1==0

%Exercise 2:
x=1/3;
for i=1:40
x=4*x-1;
end

%Exercise 3:
2^66 + 1 == 2^66
2^66 + 100 == 2^66
2^66 + 10000 == 2^66

%Exercise 4:
a=0;
for i=1:5
a=a+0.2;
end
a==1

a=1;
for i=1:5
a=a-0.2;
end
a==0

%Exercise 9:
%(a):
e=1;
while 1+e>1
    e=e/2;
end
e=e*2;
e
%(b)
eps(1)
%Exercise 10:
%(a)
a=1;
while a>0
    f=a;
    a=a/2;
end
f
%(b)
eps(0)

%Exercise 14:
n=1;
while 1==1
    if 2^66+n~=2^66
        break;
    end
    n=n+1;
end