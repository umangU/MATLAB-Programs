function result=cubiczeros(p,q)
  number=-(4*p^3 + 27*q^2);
  if(number==0 && p==0 && q==0)
    result=[0,0,0];
    disp("Triple root at zero");

  elseif(number==0 && p~=0)
    result=[3*q/p,-3*q/(2*p)];
    disp("one single and one double root");

  elseif(number<0)
    result=(nthroot(-q/2 + sqrt(q^2/4 + p^3/27),3)+nthroot(-q/2-sqrt(q^2/4 + p^3/27),3));
    disp("just a single root");

  elseif(number>0)
    w=-1/2 + sqrt(3) * i/2;
    C=nthroot(-q/2 + sqrt(q^(2/4)+p^(3/27)),3);
    result=[C-p/(3*C),C*w-p/(3*C*w),C*w^2-p/(3*C*w^2)];
  end
end
