function [Q,R,Z]=simultaneous_iteration(A)
m=round(100 + (1000-100).*rand(1,1));
A=rand(m);
Q=eye(size(A));
for k=1:5000
    Z=A*Q;
    [Q,R]=qr(Z);
end
end