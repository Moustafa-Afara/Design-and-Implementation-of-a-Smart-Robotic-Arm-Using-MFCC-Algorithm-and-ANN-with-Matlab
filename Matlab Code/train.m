load('catagury.mat')
net=patternnet
view(net)
xTrain=featuers_last'
net=train(net,xTrain,yTrain)
view(net)
y=sim(net,xTrain)
fin=vec2ind(y)
output_move=[]
for i = 1:length(fin)
    if fin(i)==1
        aaa1=strcat('1',num2str(xTrain(1,i)))
        aaa2=strcat('1',num2str(xTrain(2,i)))
        aaa3=strcat('1',num2str(xTrain(3,i)))
        aaa4=strcat('1',num2str(xTrain(4,i)))
        output_move=[output_move,str2num(aaa1),str2num(aaa2),str2num(aaa3),str2num(aaa4)]
    end
    
        if fin(i)==2
        aaa1=strcat('2',num2str(xTrain(1,i)))
        aaa2=strcat('2',num2str(xTrain(2,i)))
        aaa3=strcat('2',num2str(xTrain(3,i)))
        aaa4=strcat('2',num2str(xTrain(4,i)))
        output_move=[output_move,str2num(aaa1),str2num(aaa2),str2num(aaa3),str2num(aaa4)]
        end
    
            if fin(i)==3
        aaa1=strcat('3',num2str(xTrain(1,i)))
        aaa2=strcat('3',num2str(xTrain(2,i)))
        aaa3=strcat('3',num2str(xTrain(3,i)))
        aaa4=strcat('3',num2str(xTrain(4,i)))
        output_move=[output_move,str2num(aaa1),str2num(aaa2),str2num(aaa3),str2num(aaa4)]
            end
    
                if fin(i)==4
        aaa1=strcat('4',num2str(xTrain(1,i)))
        aaa2=strcat('4',num2str(xTrain(2,i)))
        aaa3=strcat('4',num2str(xTrain(3,i)))
        aaa4=strcat('4',num2str(xTrain(4,i)))
        output_move=[output_move,str2num(aaa1),str2num(aaa2),str2num(aaa3),str2num(aaa4)]
                end
    
                    if fin(i)==5
        aaa1=strcat('5',num2str(xTrain(1,i)))
        aaa2=strcat('5',num2str(xTrain(2,i)))
        aaa3=strcat('5',num2str(xTrain(3,i)))
        aaa4=strcat('5',num2str(xTrain(4,i)))
        output_move=[output_move,str2num(aaa1),str2num(aaa2),str2num(aaa3),str2num(aaa4)]
    end
end
        