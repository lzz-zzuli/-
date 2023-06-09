function data_bpsked = bin2bpsk(bin)
%函数的功能：将二进制字符串进行BPSK调制
%函数的描述：
%函数的使用：y=bin2bpsk(input1)
%输入：
%     input1:二进制序列
%输出：
%     Y:二进制调制后的BPSK序列
%注意事项：输入应该为字符串
    if(ischar(bin))  %如果输入类型是字符串
        data = bin2array(bin);
        data_bpsked = (data - 1/2)*2; % 0 -> -1  1 -> 1  经过 y = 2 * x - 1 后即可完成转变
    else        %如果输入类型不是字符串，比如数组
        data_bpsked = (bin - 1/2)*2; % 0 -> -1  1 -> 1  经过 y = 2 * x - 1 后即可完成转变
end
   
end