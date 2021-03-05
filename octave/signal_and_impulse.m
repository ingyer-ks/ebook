t=0:0.01:10;
f=sin(0.6*t);
dt=0:0.5:10;
d=(dt+1)./(dt+1);
g=zeros(1,length(dt));
for i=1:length(dt)-1
    g(i)=f(50*i);
end

figure('Position',[100 100 700 300])
subplot(1,3,1)
plot(t,f)
title('Original Signal')
axis([1 10 -1.2 1])
xlabel('Time')
ylabel('f(t)')
subplot(1,3,2)
stem(dt,d,"k")
axis([1 10 0 1])
title('Impulse Train')
xlabel('Time')
ylabel('Strength')
subplot(1,3,3)
hold on
axis([1 10 -1.2 1])
plot(t,f)
stem(dt+0.5,g)
hold off
title('Signal Represented by Impuse Train')
xlabel('Time')
ylabel('Represented Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")