g1=@(x) sqrt(2+log(x));
x0=1.5;
for i=1:100
  x1=g1(x0);
  if(abs(x1-x0)/abs(x1)<1e-1/2)
    break;
  end
x0=x1;
end

disp("After using g1, the root is");
disp(x1)

g2=@(x) (2+log(x))/x;
x0=1.5;
for i=1:100
    x1=g2(x0);
    if(abs(x1-x0)/abs(x1)<1e-12)
      break;
    end
  x0=x1;
end
disp("After using g2, the root is");
disp(x1)
