function a = partition_numbers(n)
    a =zeros(n,n);
    for i=1:n
        for j=1:i
            if (j==1)%if when k=1
                a(i,j)=1;
            elseif(i==j)%when n==k
                a(i,j)=1;
            else%when n>k
                a(i,j)=a(i-1,j-1)+a(i-j,j);
            end
        end
    end
end