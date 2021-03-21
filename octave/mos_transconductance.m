vg=linspace(0,5,1000);
id=vg.^2;
gm=6;
idl=6*(vg-3)+9;
plot(vg,id)
hold on
plot(vg,idl)
hold off
legend('Real I_D-V_G Curve','Linearized I_D-V_G Curve')
set(gca,'XTick',[], 'YTick', [])
title('Transconductance')
xlabel('V_G')
ylabel('I_D')
waitforbuttonpress ()
print(1,strcat("../images/",mfilename(),".pdf"),"-dpdf","-S600,400")
close()