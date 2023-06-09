function dec = bin2dec_self(bin)

    dec = 0;
    bit_value = 1;
    if(ischar(bin)) %如果输入类型是字符串
    for ii = length(bin):-1:1
        if bin(ii) == '1'
            dec = dec + bit_value;
        end
        bit_value = bit_value * 2;
    end
    
    else %如果输入类型不是字符串，比如数组
        
        for ii = length(bin):-1:1
        if bin(ii) == 1
            dec = dec + bit_value;
        end
        bit_value = bit_value * 2;
    end
    end
end
