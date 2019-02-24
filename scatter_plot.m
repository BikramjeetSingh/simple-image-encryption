p=11;
q=19;
randomizer=0;
x=[];
i=[];
key=input ('Enter key...');
for index=1:100
    randomizer=randomizer+key;
    x(index)=mod(mod(key^2,p*q),255);
    key=x(index);
    x(index)=mod(round(x(index)*1000)+(randomizer^4),255);
    i(index)=index;
    scatter(index,x,'filled')
end