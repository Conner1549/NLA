m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
q(:,1)=A(:,1)/norm(A(:,1));
tic
for j=1:m
    v_j=A(:,j);
    for i=1:j-1
        r_{i,j}=(q(:,i))'*(v_j);
        v_j=(v_j)-(r_{i,j})*(q(:,i));
    end
    r_{j,j}=norm(v_j);
    q(:,j)=v_j./r_{j,j};
end
toc
tic
[Q,R] = qr(A);
toc