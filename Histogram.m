function Histogram(A,L,Name);
% To construst a histogram of an image
% 
H=zeros(1,L+1);
[M,N]=size(A);
for x=1:M;
    for y=1:N; 
          f=A(x,y);         
          H(f+1)=H(f+1)+1;       
    end;
end;
mi=min(min(A)); ma=max(max(A));
T=[Name,blanks(15),'Pixels: ',int2str(M*N),blanks(5),...
                  'min=',int2str(mi),blanks(5),'max=',int2str(ma)];
ShowBar2(H,'Brightness','Number of pixels with given brightness',T);
%pause
%ShowBar2(log(1+H),'Brightness',...
%    'Logarithm of the number of pixels with given brightness',T);
end

