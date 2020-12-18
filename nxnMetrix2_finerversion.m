function nxnMetrix2_finerversion(n)
if (mod(n,2)==0) %°¸¼Æ
    sum=0;
      b=0;
    for ii=1:n-1
      if (mod(ii,2)==1)
        for a=1:4
           b=b+ii;
            sum=sum+b;
        end
      end
    end
end
if(mod(n,2)==1)%©_¼Æ
    sum=1;
    b=1;
    for ii=1:n-1
      if (mod(ii,2)==0)
        for a=1:4
           b=b+ii;
            sum=sum+b;
        end
      end
    end
sum
end
end