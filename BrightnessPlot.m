function BrightnessPlot(a,b,A,B,L)
% To graw a graph of the brightness transform function
%N=1000;
%h=0.01;
G=zeros(1,L);
for k=1:L
    x=(k-1);
    G(k)=editbright(x,a,b,A,B,L);
end
% T=['a=',int2str(a),blanks(5),'A=',int2str(A),blanks(5),'b=',int2str(b),...
%                    blanks(5),'B=',int2str(B),blanks(5),'L=',int2str(L)];
X=['a=',int2str(a),blanks(20),'b=',int2str(b),blanks(20)]; 
Y=['A=',int2str(A),blanks(50),'B=',int2str(B),blanks(20)];
H=['The Brightness Transformation Function',blanks(15),'L=',int2str(L)];               
ShowPlot(G,H,X,Y);
end

