t=linspace(0,20,100);
f=zeros(1,100);
f(1:25)=ones(1,25);
f(50:74)=ones(1,25);
f=(f-0.5)*2;

figure
stairs(t,f)
title("Original Periodic Signal")
axis([0 20 0 1.2])
hold on
ylabel('f(t)')
xlabel('Time')
hold off
waitforbuttonpress ()
print(1,strcat("../images/original periodic signal.pdf"),"-dpdf","-S400,300")
close()

b=zeros(6,100);
n(1:6)=[1 5 10 50 100 1000];

figure
b(1,:)=-j*(2/(pi()))*exp(j*t*pi()/5)+j*(2/(pi()))*exp(j*(-1)*t*pi()/5);
plot(t,b(1,:))
title(strcat('Synthesization \w |n|=',int2str(1)))
waitforbuttonpress ()
print(1,strcat("../images/c1.pdf"),"-dpdf","-S400,300")
close()

figure
for i=2:6
    for k=1:2:2*n(i)-1
        b(i,:)=b(i,:)-j*(2/(k*pi()))*exp(j*t*k*pi()/5)+j*(2/(k*pi()))*exp(j*(-1)*t*k*pi()/5);
    end
    subplot(5,1,i-1)
    plot(t,b(i,:))
    title(strcat('Synthesization \w |n|=',int2str(n(i))))
end
waitforbuttonpress ()
print(1,strcat("../images/fourier_series_synthesization.pdf"),"-dpdf","-S400,800")
close()