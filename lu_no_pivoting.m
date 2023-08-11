m=round(100 + (1000-100).*rand(1,1));
A=100.*rand(m);
for k=1:m-1
  for j=k+1:m
    b_jk=A(j,k)./A(k,k);
    A(j,k:m)=A(j,k:m)-b_jk.*A(k,k:m);
    A(j,k)=b_jk;
    end
end