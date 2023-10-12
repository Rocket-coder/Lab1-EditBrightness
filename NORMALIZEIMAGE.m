%NORMALIZEIMAGE;
%Name='bird.png';
%Name='Fig0203(a)(chest-xray).tif';
%Name='Fig0306(a)(bone-scan-GE).tif';
%Name='Fig0308(a)(pollen).tif';
Name='Rocket.jpg';
%RGB to BW
%-----------------------------------------------------------
A=imread(Name);
AR=A(:,:,1);
AG=A(:,:,2);
AB=A(:,:,3);
sz=size(AR);
c=[0.3;0.59;0.11]; %as in Photoshop
ABW=round(c(1)*AR+c(2)*AG+c(3)*AB);
%-----------------------------------------------------------
L=255;
C8=ABW;
C=double(C8);
%Brightness degradation
%-----------------------------------------------------------
[M,N]=size(C);
F=zeros(M,N);
a=80; b=160; A=40; B=200;
for x=1:M
    for y=1:N
        f=C(x,y);
        F(x,y)=editbright(f,a,b,A,B,L);        
    end
end
F8=uint8(F);
NewName=['BW ',Name];
imwrite(F8, NewName);
%-----------------------------------------------------------
ShowImageBW(F8,Name); pause
Histogram(F8,L,Name); pause;
%---------------Normalization-------------------------------
a=min(min(F)); b=max(max(F));  
A=0;           B=L;
D8=CorrectImage(F8,a,b,A,B,L);
Histogram(D8,L,['Normalized ',Name]); pause;
Show2ImagesBW(F8,D8,Name,'Normalized'); pause;
%----------------Correction----------------------------------
a=10; b=58; A=30; B=158;
%a=40; A=20; b=200; B=80;
%a=80; b=160; A=40; B=200;
E8=CorrectImage(D8,a,b,A,B,L); 
T=['a=',int2str(a), blanks(5),'A=',int2str(A),...
                    blanks(5),'b=',int2str(b),...
                    blanks(5),'B=',int2str(B),...
                    blanks(5),'L=',int2str(L)];
Show2ImagesBW(D8,E8,Name,T); pause 
Histogram(E8,L,['Corrected ',Name]); pause
NewName=['My ',Name];
imwrite(E8, NewName);