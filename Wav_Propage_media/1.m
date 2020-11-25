clear;
clc
k=2*pi;
w=10;
Exm=20*sqrt(2);
Hym=15*sqrt(2); 
x=0:0.01:3; 
Zo1=zeros(size(x));
for i=1:1000
  t=i*0.01;
  Ey=Exm*cos(w*tk*x).*exp(-0.5*x);
  Hz=Hym*cos(w*tk*x-pi/4).*exp(-0.5*x);
  figure(1)
  plot3(x,Ey,Zo1,'b');
  hold on;
  plot3(x,Zo1,Hz,'b');
  grid on;
  axis([0,2,-20,20,-20,20])
  Xlabel('x axis'); ylabel('electric field'); zlabel('magnetic field');
  set(gcf,'color','w')
  pause(0.01)
  hold off;
end
