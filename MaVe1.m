function MaVe1
tic
A=[1,1,4;5,1,4;1,2,3];
x=[4;5;6];

for i=1:3
    sum=0;
    for a=1:3
        sum=sum+(A(i,a).*x(a,1));
        C(i,1)=sum;
    end
end
disp(C);
toc
tic
A*x
toc
