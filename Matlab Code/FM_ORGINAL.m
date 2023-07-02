[R C]=size(a);
ffmd=zeros(1,C)
ffmn=zeros(1,C)
ffr=zeros(1,C)
ffmfd=zeros(1,C)
for i=1:C
     ffmd(1,i)=FMD(a(:,i))
     ffr(1,i)=FR(a(:,i))
     ffmn(1,i)=FMN(a(:,i))  
     ffmfd(1,i)=MFMD(a(:,i))
end

[R C]=size(b);
ffmd2=zeros(1,C)
ffmn2=zeros(1,C)
ffr2=zeros(1,C)
ffmfd2=zeros(1,C)
for i=1:C
     ffmd2(1,i)=FMD(b(:,i))
     ffr2(1,i)=FR(b(:,i))
     ffmn2(1,i)=FMN(b(:,i)) 
     ffmfd2(1,i)=MFMD(b(:,i))
end

[R C]=size(c);
ffmd3=zeros(1,C)
ffmn3=zeros(1,C)
ffr3=zeros(1,C)
ffmfd3=zeros(1,C)
for i=1:C
     ffmd3(1,i)=FMD(c(:,i))
     ffr3(1,i)=FR(c(:,i))
     ffmn3(1,i)=FMN(c(:,i))
     ffmfd3(1,i)=MFMD(c(:,i))
end

[R C]=size(d);
ffmd4=zeros(1,C)
ffmn4=zeros(1,C)
ffr4=zeros(1,C)
ffmfd4=zeros(1,C)
for i=1:C
     ffmd4(1,i)=FMD(d(:,i))
     ffr4(1,i)=FR(d(:,i))
     ffmn4(1,i)=FMN(d(:,i))
    ffmfd4(1,i)=MFMD(d(:,i)) 
end

[R C]=size(e);
ffmd5=zeros(1,C)
ffmn5=zeros(1,C)
ffr5=zeros(1,C)
ffmfd5=zeros(1,C)
for i=1:C
     ffmd5(1,i)=FMD(e(:,i))
     ffr5(1,i)=FR(e(:,i))
     ffmn5(1,i)=FMN(e(:,i))
    ffmfd5(1,i)=MFMD(e(:,i)) 
end

featuers=[ffmd ffmd2 ffmd3 ffmd4 ffmd5;ffr ffr2 ffr3 ffr4 ffr5;ffmn ffmn2 ffmn3 ffmn4 ffmn5;ffmfd ffmfd2 ffmfd3 ffmfd4 ffmfd5];
featuer=zeros(4,50);
for i=1:4
    h(i)=max(featuers(i,:));
    featuer(i,:)=(featuers(i,:)/h(i));
end
