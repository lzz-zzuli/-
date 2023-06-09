function res = bpsk2nomal(bin)
    %将接收到的信号判决
    if(ischar(bin))  %如果输入类型是字符串
        data = bin2array(bin);
        for ii=1:length(data)
            if(data(ii)>0)
                res(ii) = 1; % 值 大于 0 判为 1
            else
                res(ii) = 0;% 值 小于 0 判为 0
            end
        end
    else   %如果输入类型不是字符串，比如数组
        for ii=1:length(bin)
            if(bin(ii)>0)
                res(ii) = 1;
            else
                res(ii) = 0;
            end
        end
end
   
end