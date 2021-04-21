#declaring x and y values
format long
y=@(t,x) exp(-t).*sin(2*x);
t=0:0.1:10;

x=linspace(-2*pi,2*pi,length(t));
comet3(t,x,y(t,x));

#Animated Plot
title('Animated plot');
xlabel('t');
ylabel('x');
zlabel('y(t,x)');
