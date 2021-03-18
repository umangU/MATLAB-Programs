function x = abc(f,f1,x0,maxsteps,tol)
x(1) = x0;
 for n = 1:maxsteps
  x(n+1) = x(n)-f(x(n))/f1(x(n));
  if abs(x(n+1)-x(n))<= tol
   break
  end
 end
fprintf('The solution after %2i iterations is %9.6f \n', length(x) - 1, x(end));
end