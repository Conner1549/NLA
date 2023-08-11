function ans = test(A)
prompt='Enter a matrix A=';
A=input(prompt);
[m,n]=size(A);
i=1;
if m>=n
    a=n;
else
    a=m;
end
for a=[m:-1:0]
    S=zeros(size(A));
    s(i)=norm(A);
    
end   