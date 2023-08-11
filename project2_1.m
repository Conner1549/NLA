function TEST2 = test(A)
prompt='Enter a matrix A=';
A=input(prompt);
[m,n]=size(A);
B=A*A';
C=A'*A;
D = eig(B,'matrix');
E=(sqrt(D));
[V1,D1,W1] = eig(B);
[V2,D2,W2] = eig(C);
if m>n
    a=m-n;
    E1=E(a+1:end,a+1:end);
    E3=zeros(a,n);
    E2=[E1;E3];
elseif n>m
    a=n-m;
    E1=zeros(m,a);
    E2=[E E1];
else
    E2=E;
end
disp(V1);
disp(E2);
disp(V2);
[U,S,V] = svd(A)
end
