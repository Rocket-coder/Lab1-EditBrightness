%CORRECTBRIGHTNESS;
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
C8=ABW;
C=double(C8);
[M,N]=size(C);
D=zeros(M,N);
L=255;

a=80; b=160; A=40; B=200;
ShowImageBW(C8,Name); pause
BrightnessPlot(a,b,A,B,L); pause
for x=1:M
    for y=1:N
        f=C(x,y);
        D(x,y)=editbright(f,a,b,A,B,L);        
    end
end
D8=uint8(D);
T=['a=',int2str(a),blanks(5),'A=',int2str(A),...
                   blanks(5),'b=',int2str(b),...
                   blanks(5),'B=',int2str(B),...
                   blanks(5),'L=',int2str(L)];
Show2ImagesBW(C8,D8,Name,T); pause
ShowImageBW(D8,Name); pause

F=zeros(M,N);
a=10; b=58; A=30; B=158;
BrightnessPlot(a,b,A,B,L); pause
for x=1:M
    for y=1:N
        f=D(x,y);
        F(x,y)=editbright(f,a,b,A,B,L);        
    end
end
F8=uint8(F);
T=['a=',int2str(a),blanks(5),'A=',int2str(A),...
                   blanks(5),'b=',int2str(b),...
                   blanks(5),'B=',int2str(B),...
                   blanks(5),'L=',int2str(L)];
Show2ImagesBW(D8,F8,Name,T); pause
ShowImageBW(D8,Name); pause
%pause
%imwrite(D8,'inproved.png');
%ShowImageBW(imread('inproved.png'),'inproved.png');            