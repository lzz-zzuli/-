function dec = bin2dec_self(bin)
%函数的功能：将二进制字符串转化为10进制
%函数的描述：
%函数的使用：y=bin2dec_self(input1)
%输入：
%     input1:二进制序列
%输出：
%     Y:二进制对应的十进制数
%注意事项：输入应该为字符串
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
