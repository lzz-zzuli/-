function res = bin2array(bin)
%函数的功能：将二进制字符串转化为数组
%函数的描述：
%函数的使用：y=bin2array(input1)
%输入：
%     input1:二进制序列
%输出：
%     Y:二进制对应的数组
%注意事项：输入应该为字符串
    bin2 = str2num(bin(:)); %先把字符串序列转化为行向量，再转化为数字
    res = bin2(:)';  %将上步骤的行向量转为列向量（一行）
end