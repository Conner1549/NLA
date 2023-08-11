function [A,Q,R]=qr_algorithm
m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
for k=1:5000
    [Q,R]=qr(A);
    A=R*Q;
end
end