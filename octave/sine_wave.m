t=linspace(0,10,1000);
s=sin(1.3*t);

figure('Position',[100 100 700 300])
plot(t,s)
title('Sinusoide')
axis nolabel
axis([0 10 -1.3 1.3])
xlabel('Time')
ylabel('Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S800,200")