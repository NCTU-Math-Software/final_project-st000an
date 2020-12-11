function nxnMetrix(n)
A=zeros(n,n);
%part 1 計算出那個矩陣
if(mod(n,2)==0) %當n是偶數
    X=n/2;
    Y=n/2;
A(X,Y)=1;
numberFilled=2;
direction=1;%決定方向 1:向東 2:向南 3:向西 4:向北
for ii=1:n-2
    if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4);
     if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4);
end

for a=1:3
    ii=n-1;
    
    if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4); 
end

end %偶數情況完畢

if(mod(n,2)==1) %當n是奇數
    X=(n+1)/2;
    Y=(n+1)/2;
    A(X,Y)=1;
    numberFilled=2;
    direction=1;%決定方向 1:向東 2:向南 3:向西 4:向北
for ii=1:n-2
    if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4);
     if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4);
end

for a=1:3
    ii=n-1;
    
    if direction==1
            for jj=1:ii
                Y=Y+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
    end
    
       if direction==2
            for jj=1:ii
                X=X+1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==3
            for jj=1:ii
                Y=Y-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
       
       if direction==0
            for jj=1:ii
                X=X-1;
                A(X,Y)=numberFilled;
                numberFilled=numberFilled+1;
            end
       end
    
    direction=mod(direction+1,4); 
end


end %奇數情況完畢
A

%part2 求其對角線以及反對角線之總和
sum=0;

    for ii=1:n %算對角線
        for jj=1:n
            if n-ii+1 == jj || ii==jj
            sum=sum+A(ii,jj);
            end
        end
    end

disp(["此矩陣之對角線與反對角線和為",sum]);
end
