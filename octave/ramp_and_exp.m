t=linspace(0,10,100);
rampf=t;
expf=exp(0.38*t);

figure('Position',[0 0 600 200])
subplot(1,2,1)
plot(t,rampf)
title('Ramp Signal')
axis nolabel
axis([0 10 0 12])
xlabel('Time')
ylabel('Signal')
subplot(1,2,2)
plot(t,expf,"m")
axis nolabel
axis([0 10 0 exp(3)*1.1])
title('Exponential Signal')
xlabel('Time')
ylabel('Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")