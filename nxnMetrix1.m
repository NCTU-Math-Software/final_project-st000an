function nxnMetrix1(n) 
%input:n
%output1: nxn ���x�}  �o�ӯx�}���U�C�ʽ�:�L�q�L�������}�l�O1 ���U�Ӷ��ɰw�̧Ƕ�J2�B3�B4...��n����
%output2: �W�z�x�}���﨤�u�H�ΤϹ﨤�u���M
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
    X=(n+1)/2; %�_�l��l�b���ߪ��|�檺�k�W
    Y=(n+1)/2; %�_�l��l�b���ߪ��|�檺�k�W
    A(X,Y)=1;%�_�l��l
    numberFilled=2; %�n��J����
    direction=1;%�M�w��V 1:�V�F 2:�V�n 3:�V�� 4:�V�_
for ii=1:n-2 %��2n-4����J�A�C��J�⦸�A��J���Ʀr+1�A�C�@����J�����ܤ�V
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


end