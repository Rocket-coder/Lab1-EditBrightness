function ShowPlot(G,Name,XCom,YCom)
%To draw plot of a function
%
color='r';
[M,N]=size(G);
N=max(M,N); %to work with rows and columns simultaneously
y=1:N; 
plot(y,G,'-ro','LineWidth',1,'MarkerEdgeColor',color,...
                 'MarkerFaceColor',color,'MarkerSize',2);
%hold off
axis xy
%axis([0 10 0 3])
grid on
set(gcf,'Color','w')
set(gca,'TickDir','in'), 
set(gca,'XColor','k','YColor','k','fontsize',12,'fontweight','b')
fs='\fontsize{18}\bf\color{blue}';
xlabel([fs,XCom]);
ft='\fontsize{20}\bf\color{red}';
ylabel([fs,YCom]);
title([ft,Name])
axis square
%text(     22, 2.15,   [ts,'Function    log_{N}\Phi(N)']);    
end

