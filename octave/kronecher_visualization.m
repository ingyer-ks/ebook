t=-5:1:5;
y=zeros(1,11);
y(6)=1;

figure('Position',[100 100 700 300])
stem(t,y)
title('Kronecher Delta Function')
axis([-5 5 0 1.3])
ylim([0 1])
xlabel('Time')
ylabel('')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf")
