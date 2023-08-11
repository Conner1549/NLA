function MaMa1
tic
A=[1,1,4;5,1,4;1,2,3];
B=[9,8,7;6,5,4;3,2,1];
for a=1:3
    for b=1:3
        sum=0;
        for c=1:3
            sum=sum+A(a,c)*B(c,b);
            C(a,b)=sum;
        end
    end
end
disp(C)    
toc
tic
A*B
toc