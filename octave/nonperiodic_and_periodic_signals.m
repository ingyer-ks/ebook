t=linspace(0,10,100);
as=10*rand(1,length(t))-5;
ps_sample=10*rand(1,(length(t(1:10))))-5;
ps=zeros(1,100);
for i=1:10:91
    ps(i:i+9)=ps_sample;
end

figure('Position',[0 0 600 200])
subplot(1,2,1)
plot(t,as)
title('Non-Pereiodic Signal')
axis nolabel
axis([0 10 -8 8])
xlabel('Time')
ylabel('Signal')
subplot(1,2,2)
plot(t,ps,"m")
axis nolabel
axis([0 10 -8 8])
title('Periodic Signal')
xlabel('Time')
ylabel('Signal')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,200")