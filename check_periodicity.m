p=11;
q=19;
randomizer=0;
key=input ('Enter key...');

randomizer=randomizer+key;
x=mod(mod(key^2,p*q),255);
key=x;
x=mod(round(x*1000)+(randomizer^4),255);
j=x;

randomizer=randomizer+key;
x=mod(mod(key^2,p*q),255);
key=x;
x=mod(round(x*1000)+(randomizer^4),255);
k=x;
    
for index=1:10000000
    prev_x=x;
    randomizer=randomizer+key;
    x=mod(mod(key^2,p*q),255);
    key=x;
    x=mod(round(x*1000)+(randomizer^3),255);
    if(x==k && prev_x==j)
        index
        break
    end
end