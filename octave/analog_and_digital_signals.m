t=linspace(0,10,100);
as=10*rand(1,length(t))-5;
ds=round(10*rand(1,length(t))-5);

figure('Position',[0 0 600 200])
subplot(1,2,1)
plot(t,as)
title('Analog Signal')
axis nolabel
axis([0 10 -8 8])
xlabel('Time')
ylabel('Signal')
subplot(1,2,2)
stairs(t,ds,"m")
axis nolabel
axis([0 3 -8 8])
title('Digital Signal')
xlabel('Time')
ylabel('Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")