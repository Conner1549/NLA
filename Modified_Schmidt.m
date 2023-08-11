m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
q(:,1)=A(:,1)/norm(A(:,1));
tic
for i=1:m
   v(:,i)=A(:,i);
end
for i=1:m
    q(:,i)=v(:,i)./norm(v(:,i));
    for j=i:m
        r_{i,j}=(q(:,i))'*v(:,j);
        v(:,j)=v(:,j)-r_{i,j}*(q(:,i));
    end
end
toc
tic
[Q,R] = qr(A);
toc