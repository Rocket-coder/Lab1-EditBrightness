function D8=CorrectImage(C,a,b,A,B,L)
%
[M,N]=size(C);
C=double(C);
D=double(size(C));
for x=1:M
    for y=1:N 
        f=C(x,y);
        D(x,y)=editbright(f,a,b,A,B,L);        
    end
end
D8=uint8(D);
end

