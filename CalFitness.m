function fitness = CalFitness(chrom, N,data_anger)
%开始计算适应度
    fitness =zeros(N,1);
    for j = 1:N
        a1=chrom(j,1);
        a2=chrom(j,2);
        a3=chrom(j,3);
        a4=chrom(j,4);
        a5=chrom(j,5);
        loss=0;
        for i=1:197
                x1= data_anger(i,1);
                x2= data_anger(i,2);
                x3= data_anger(i,3);
                v_real=data_anger(i,4);
                %模型输出的V
                v_simulation = min(a1*a2+sqrt((a1*a2)^2-a1*(2*x1-x2*a2+(x3^2)/a3)),x1+2.5*a4*a2*sqrt((1-x2/a5)*(0.025+x2/a5)));
                %目标函数，模型输出的v和实际的v的平方和
                loss = loss + sqrt((v_real-v_simulation)^2);
        end
        fitness(j,1) = loss;
    end

