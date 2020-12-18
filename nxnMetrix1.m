function nxnMetrix1(n) 
%input:n
%output1: nxn 的矩陣  這個矩陣有下列性質:他從他的中間開始是1 接下來順時針依序填入2、3、4...到n平方
%output2: 上述矩陣之對角線以及反對角線之和
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
    X=(n+1)/2; %起始格子在中心的四格的右上
    Y=(n+1)/2; %起始格子在中心的四格的右上
    A(X,Y)=1;%起始格子
    numberFilled=2; %要填入的數
    direction=1;%決定方向 1:向東 2:向南 3:向西 4:向北
for ii=1:n-2 %做2n-4次填入，每填入兩次，填入的數字+1，每一次填入都改變方向
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


end