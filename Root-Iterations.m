format short
f=@(x) cos(5*x)+erf(x);
g=@(x) (2*exp(-x^2))/pi^(1/2) - 5*sin(5*x);
first=0;
second=1;
a_first=first;
b_first=second;
for i=1:100
  if(abs(f(first))<abs(f(second)))
    x0=first;
  else
    x0=second;
  end

  x1=x0-f(x0)/g(x0);

  if(abs(f(x1))<=0.5*abs(f(x0))&&x1<=second&&x1>=first)
    a_first=x1;
    b_first=second;
    R=x1;
  else
    c=(first+second)/2;
    R=c;
  end

  if(f(c)*f(first)<0)
    b_first=c;
  else
    a_first=c;
  end

  if(max([a_first-first,second-b_first,abs(x1-x0)])<=1e-12*abs(x1))
    break;
  end
first=a_first;
second=b_first;
end

disp("The Root is:");
disp(R);
disp("The number of Iterations are:");
disp(i);
