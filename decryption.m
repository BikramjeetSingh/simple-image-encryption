p=11;
q=19;
randomizer=0;
key=input('Enter a 64-bit key...');
my_image=imread('C:\Users\Robby\Stuff\Cryptography\Image Encryption\encrypted.tiff');
for row_index=1:size(my_image,1)
for col_index=1:size(my_image,2)
for hue_index=1:3
randomizer=randomizer+key;
key=mod(mod(key^2,p*q),255);
temp=bitxor(my_image(row_index,col_index,hue_index),mod(round(key*1000)+(randomizer^4),255));
my_image(row_index,col_index,hue_index)=temp;
end
end
end
imshow(my_image)
imwrite(my_image,'C:\Users\Robby\Stuff\Cryptography\Image Encryption\decrypted.tiff');