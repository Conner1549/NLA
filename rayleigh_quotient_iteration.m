function [e,lamda]=rayleigh_quotient_iteration(A)
m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
v=ones(m,1);
v=v/norm(v);
e=max(eig(A));
I=eye(size(A));
lamda=(v)'*A*v;
for k=1:5000
    [L,U,P] = lu(A-lamda*I);
    y = L\(P*v);
    w = U\y;
    v=w./norm(w);
    lamda=(v)'*A*v;
end
end