vd=linspace(0,5,1000);
id=zeros(1,1000);
id(1:300)=-(vd(1:300)-1.5).^2+2.25;
id(301:length(id))=(-(vd(300)-1.5).^2+2.25)*ones(1,700);
plot(vd,id)
set(gca,'XTick',[], 'YTick', [])
title('V_D-I_D Curve')
xlabel('V_D')
ylabel('I_D')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,400")
close()