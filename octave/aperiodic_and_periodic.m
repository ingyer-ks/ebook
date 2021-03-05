at=linspace(0,5,100);
af(1:50)=0:0.1:4.9;
af(51:100)=4.9:-0.1:0;
af(101:165)=zeros(1,65);

pt=linspace(0,25,500);
pf1=zeros(1,500);
for i=1:5
    pf1((i-1)*100+1:i*100)=af(1:100);
end

pf2=zeros(1,500);
for i=1:3
    pf2((i-1)*165+1:i*165)=af;
end

figure
subplot(1,3,1)
hold on
axis([0 25 0 6])
plot(at,af(1:100))
title('Aperiodic Signal')
axis nolabel
xlabel('Time')
ylabel('f(t)')
hold off
subplot(1,3,2)
hold on
axis([0 25 0 6])
plot(pt,pf1)
title('Periodic Signal with Small T_0')
axis nolabel
xlabel('Time')
ylabel('f_{T_0}(t)')
hold off
subplot(1,3,3)
hold on
axis([0 25 0 6])
plot(pt,pf2)
title('Periodic Signal with Larger T_0')
axis nolabel
xlabel('Time')
ylabel('f_{T_0}(t)')
hold off
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S700,300")