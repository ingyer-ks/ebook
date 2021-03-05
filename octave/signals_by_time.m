cont_t=linspace(0,10,50);
disc_t=linspace(0,10,25);
cont_y=rand(1,length(cont_t))-0.5;
disc_y=rand(1,length(disc_t))-0.5;

figure('Position',[0 0 600 200])
subplot(1,2,1)
plot(cont_t,cont_y)
title('Continuous Time Signal')
axis nolabel
axis([0 10 -0.6 0.6])
xlabel('Time')
ylabel('Signal')
subplot(1,2,2)
stem(disc_t,disc_y,'mo')
axis nolabel
axis([0 10 -0.6 0.6])
title('Discrete Time Signal')
xlabel('Time')
ylabel('Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")