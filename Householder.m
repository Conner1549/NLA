m=round(100 + (1000-100).*rand(1,1));
A=10.*rand(m);
B=A;
tic
[Q,R] = qr(A);
toc
tic    
for k=1:m
    x=A(k:m,k);
    e=zeros(m-k+1,1);
    e(1,1)=1;
    v_k=sign(x(1)).*norm(x)*e+x;
    v_k=v_k./norm(v_k);
    A(k:m,k:m)=A(k:m,k:m)-2.*(v_k)*((v_k)'*(A(k:m,k:m)));
end
toc
