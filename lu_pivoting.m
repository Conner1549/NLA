m=round(100 + (1000-100).*rand(1,1));
A=100.*rand(m);
[L,U,P]=lu(A);
a=sort(randperm(m));
s=a';
for k=1:m-1
    max_k=max(abs(A(k:m,k)));
    [i,col]=find(abs(A(k:m,k))==max_k);
    change=A(k,1:m);
    A(k,1:m)=A(i+k-1,1:m);
    A(i+k-1,1:m)=change;
    change=s(k,:);
    s(k,:)=s(i+k-1,:);
    s(i+k-1,:)=change;
    for j=k+1:m
    b_jk=A(j,k)./A(k,k);
    A(j,k:m)=A(j,k:m)-b_jk.*A(k,k:m);
    A(j,k)=b_jk;
    end
end