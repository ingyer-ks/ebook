v=linspace(-3,2,100);
id=zeros(1,100);
id(100)=10000;
plot(v,id)
title('Diode Constant Voltage I-V Curve')
xlabel('V_D')
ylabel('I_D')
axis([-3 3 0 10])
set(gca,'XTick',[], 'YTick', [])
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S200,200")