function [e,lamda]=inverse_iteration(A)
m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
v=zeros(m,1);
v(1,1)=1;
e=max(eig(A));
I=eye(size(A));
miu=m;
B=find(eig(A)==miu);
tf=isempty(B);
if tf==1
for k=1:5000
    [L,U,P] = lu(A-miu*I);
    y = L\(P*v);
    w = U\y;
    v=w./norm(w);
    lamda=(v)'*A*v;
end
else 
   disp('error') ;
end