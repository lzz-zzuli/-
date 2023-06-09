function res = bpsk2nomal(bin,n)
%函数的功能：将接收到的序列判决
%函数的描述：
%函数的使用：y=bpsk2nomal(input1)
%输入：
%     input1:接收信号，幅值在[-1,1]
%输出：
%     Y:解调后的信号 0 or 1
%注意事项：

    
    if(ischar(bin))  %如果输入类型是字符串
        data = bin2array(bin);
        for ii=1:length(data)
            if(data(ii)>n)
                res(ii) = 1; % 值 大于 0 判为 1
            elseif (data(ii) < -n)
                res(ii) = 0;% 值 小于 0 判为 0
            end
        end
    else   %如果输入类型不是字符串，比如数组
        for ii=1:length(bin)
            if(bin(ii)>n)
                res(ii) = 1; % 值 大于 0 判为 1
            elseif (bin(ii) < -n)
                res(ii) = 0;% 值 小于 0 判为 0
            end
        end
end
   
end