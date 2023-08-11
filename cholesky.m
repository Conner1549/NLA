m=round(100 + (1000-100).*rand(1,1));
A=10.*rand(m);
C=A*A';
B=chol(C);
R=triu(C);
for k=1:m
    for j=k+1:m
        R(j,j:m)=R(j,j:m)-R(k,j:m).*R(k,j)./R(k,k);
    end
    R(k,k:m)=R(k,k:m)./(R(k,k))^(1/2);
end