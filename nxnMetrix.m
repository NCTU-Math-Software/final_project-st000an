function nxnMetrix(n)
A=zeros(n,n);
%part 1 �p��X���ӯx�}
if(mod(n,2)==0) %��n�O����
    X=n/2;
    Y=n/2;
A(X,Y)=1;
numberFilled=2;
direction=1;%�M�w��V 1:�V�F 2:�V�n 3:�V�� 4:�V�_
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

end %���Ʊ��p����

if(mod(n,2)==1) %��n�O�_��
    X=(n+1)/2;
    Y=(n+1)/2;
    A(X,Y)=1;
    numberFilled=2;
    direction=1;%�M�w��V 1:�V�F 2:�V�n 3:�V�� 4:�V�_
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


end %�_�Ʊ��p����
A

%part2 �D��﨤�u�H�ΤϹ﨤�u���`�M
sum=0;

    for ii=1:n %��﨤�u
        for jj=1:n
            if n-ii+1 == jj || ii==jj
            sum=sum+A(ii,jj);
            end
        end
    end

disp(["���x�}���﨤�u�P�Ϲ﨤�u�M��",sum]);
end
