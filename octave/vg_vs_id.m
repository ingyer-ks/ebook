vd=linspace(0,5,1000);
id1=3*vd;
id2=8*vd;
plot(vd,id1)
hold on
plot(vd,id2)
title('Effect of V_G on I_D-V_{DS} Curve')
xlabel('V_D')
ylabel('I_D')
set(gca,'XTick',[], 'YTick', [])
hold off
legend("Small Vg","Large Vg")
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,400")
close()