t=-5:0.01:5;
y=zeros(1,floor(length(t)/2));
y(length(y)+1:length(t))=ones(1,ceil(length(t)/2));

figure('Position',[100 100 700 300])
stairs(t,y)
axis([-5 5 0 1.2])
xlabel('Time')
ylabel('Signal')
title('Unit Step Function')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S800,200")