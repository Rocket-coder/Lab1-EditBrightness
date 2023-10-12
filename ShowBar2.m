function ShowBar2(A,xT,yT,MT)
% Ver 2 - with MasterTitle
%To show a sequence as a bar
% 
c=0.02;
subplot(1,1,1), 
%figure;
bar(A,'b')
set(gca,'xlim',[0 length(A)+1])
set(gcf,'Color','w')
   set(gca,'TickDir','out'), 
   set(gca,'XColor','k','YColor','k','fontsize',11,'fontweight','b')
set(gca,'ylim',[min(A)-c max(A)+c])
%set(gca,'XTickLabel',[l+20, l+40, l+60, l+80, l+100, l+120])
xlabel(['\fontsize{24}\it\color{red}',xT])
ylabel(['\fontsize{16}\it\color{red}',yT])
MasterTitle=[MT,blanks(20),datestr(now)];
%p2t=mtit(MasterTitle,'FontName','Times','FontAngle','oblique',...
        % 'fontsize',24,'color','r',...
	    % 'xoff',0.0,'yoff',0.01);
% xoff - horizontal shift  
% yoff - vertical shift (negative - down)
end
