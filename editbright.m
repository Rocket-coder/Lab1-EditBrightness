function y=editbright(x,a,b,A,B,L)
%
if       x<=a;   y=floor(A*x./a); 
elseif   x<=b;  y=floor((B-A)*(x-a)./(b-a)+A); 
else             
    y=floor((L-B)*(x-b)./(L-b))+B; 
end
end

