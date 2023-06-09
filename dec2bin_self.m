function bin = dec2bin_self(dec)
%函数的功能：将10进制数转化为二进制字符串
%函数的描述：
%函数的使用：y=dec2bin_self(input1)
%输入：
%     input1:一个10进制数
%输出：
%     Y:对应的二进制字符串
%注意事项：
    bin = '';
    while dec > 0
        remainder = mod(dec, 2); %模2的结果
        bin = strcat(num2str(remainder),bin); %把模2的结果依次加到生成的二进制序列
        dec = floor(dec / 2); %向下取整
    end
    bin = sprintf('%0*d', 7, str2double(bin));
end