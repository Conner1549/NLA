function MaVe2
tic
A=[1,1,4;5,1,4;1,2,3];
x=[4;5;6];
D=[0;0;0];
for i=1:3
    C=x(i).*A(:,i);
    D=D+C;
end
disp(D)
toc
tic
A*x
toc