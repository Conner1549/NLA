function [e,lamda]=power_iteration(A)
m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
v=zeros(m,1);
v(1,1)=1;
e=max(eig(A));
for k=1:5000
    w=A*v;
    v=w./norm(w);
    lamda=(v)'*A*v;
end
end
