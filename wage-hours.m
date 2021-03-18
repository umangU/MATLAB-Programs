v=[33 10.5 40 18 20 7.5];
i=1;
hours = [];
wage = [];
for i = 1:length(v)
  if(mod(i,2)==0)
     hours(i)= v(i);
  else
     wage(i)=v(i);
  end
end
hours = nonzeros(hours);
wage = nonzeros(wage);
j = 0;
total=[];
for j=1:length(hours)
    total(j)=hours(j)*wage(j);
end