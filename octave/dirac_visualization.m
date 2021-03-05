figure('Position',[100 100 700 300])
arrowx=[0.518 0.518];
arrowy=[0.11 0.92];
annotation('textarrow',arrowx,arrowy,'FontSize',13,'Linewidth',2)
annotation('textbox',[0.49 0.89 0.3 0.3],'EdgeColor','none','String','1','FontSize',13)
title('Dirac Delta Function')
axis([-1 1 0 1])
xlabel('Time')
ylabel('\delta (t)')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf")
