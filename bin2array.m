function res = bin2array(bin)
    bin2 = str2num(bin(:)); %先把字符串序列转化为行向量，再转化为数字
    res = bin2(:)';  %将上步骤的行向量转为列向量（一行）
end