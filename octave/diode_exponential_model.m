v=linspace(-3,2,1000);
is=10^(-14);
id=is*(exp(v/0.025)-1);
plot(v,id)
title('Diode Exponential I-V Curve')
xlabel('V_D')
ylabel('I_D')
set(gca,'XTick',[], 'YTick', [])
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S200,200")