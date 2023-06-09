function bin = dec2bin_self(dec)
    bin = '';
    while dec > 0
        remainder = mod(dec, 2); %模2的结果
        bin = strcat(num2str(remainder),bin); %把模2的结果依次加到生成的二进制序列
        dec = floor(dec / 2); %向下取整
    end
    bin = sprintf('%0*d', 7, str2double(bin));
end