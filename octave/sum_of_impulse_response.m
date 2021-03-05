t=linspace(0,10,100);
y1=exp(-0.33*t);
y2=zeros(1,10);
y2(11:100)=exp(-0.33*t(1:90));
y3=zeros(1,20);
y3(21:100)=exp(-0.33*t(1:80));

figure('Position',[100 100 700 300])
subplot(1,3,1)
plot(t,y1)
title('First Response')
xlabel('Time')
ylabel('Response')
axis nolabel
subplot(1,3,2)
hold on
plot(t,y1)
plot(t,y2)
title('First+Second Response')
xlabel('Time')
ylabel('Response')
axis nolabel
hold off
subplot(1,3,3)
hold on
plot(t,y1)
plot(t,y2)
plot(t,y3)
title('First+Second+Thrid Response')
xlabel('Time')
ylabel('Response')
axis nolabel
hold off
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")