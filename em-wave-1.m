syms t x E O beta
w = input('Frequency\n ');
E = 100*cos((w*t)+(beta*x));
B = w/3e8;
E = subs(E,beta,B);
Xf = ceil(12*pi/B);
dx = Xf/1000;
space = 0:dx:Xf;
unitv = ones(1,length(space));
% Plot
Figure
f = w/(2*pi);
for time=0:1/(20*f):1/f,
  En = subs(E,{x,t},{space,unitv*time});
  plot(space,En)
  axis([0 12*pi/B min(En)-20 max(En)+20])
  xlabel('X-axis (m)')
  ylabel('Y-axis (m)')
  str=strcat('time = ', num2str(time), ' (s)');
  text(1.5, max(En)+10, str)
  pause(0.5)
  hold off
end
