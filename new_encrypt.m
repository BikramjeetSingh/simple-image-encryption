key_bin=randi([0 1],128,1);
key_mat=reshape(key_bin,[],8);
key_index=1;
my_image=imread('C:\Users\Robby\Stuff\Cryptography\Image Encryption\original.tiff');
for row_index=1:size(my_image,1)
    for col_index=1:size(my_image,2)
        for hue_index=1:3
            for key_index=1:size(key_mat,1)
                active_row=key_mat(key_index,:);
                temp=bitxor(my_image(row_index,col_index,hue_index),bi2de(active_row));
                my_image(row_index,col_index,hue_index)=mod(temp,255);
                key_index=key_index+1;
            end
        end
    end
end

imshow(my_image)