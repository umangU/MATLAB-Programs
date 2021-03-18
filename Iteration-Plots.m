f=@(x) cos(5*x)/4+erf(x);
g=@(x) (2*exp(-x^2))/pi^(1/2) - (5*sin(5*x))/4;
list=[];
x_initial=linspace(-1,1,500);

for i=1:length(x_initial)
  x0=x_initial(i);
  for j=1:10000
    x_final=x0-f(x0)/g(x0);
    if(abs(x_final-x0)/abs(x_final)<=1e-12)
      break;
    end
    x0=x_final;
   end
list(i)=j;
end

plot(x_initial,list);
xlabel("X0");
ylabel("Iterations");
title("Plot of iterations vs x_initial");
