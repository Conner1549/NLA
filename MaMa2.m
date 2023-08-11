function MaMa2
tic
A=[1,1,4;5,1,4;1,2,3];
B=[9,8,7;6,5,4;3,2,1];
C=[0,0,0;0,0,0;0,0,0];
 for i=1:3
     x=[0;0;0];
     x=B(:,i);
     D=[0;0;0];
    for a=1:3
        E=x(a).*A(:,a); 
        D=D+E;    
    end
    C(:,i)=D;
end
disp(C)
toc
tic
A*B
toc