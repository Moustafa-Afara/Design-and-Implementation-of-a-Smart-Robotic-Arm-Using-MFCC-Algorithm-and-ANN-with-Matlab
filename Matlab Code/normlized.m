featur1=zeros(4,50);
for i=1:4
    h(i)=max(featuers(i,:));
    featur1(i,:)=(featuers(i,:)/h(i));
end
featur1=featur1'
featuers_last=featur1
