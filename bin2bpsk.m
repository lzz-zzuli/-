function data_bpsked = bin2bpsk(bin)
    
    if(ischar(bin))  %如果输入类型是字符串
        data = bin2array(bin);
        data_bpsked = (data - 1/2)*2; % 0 -> -1  1 -> 1  经过 y = 2 * x - 1 后即可完成转变
    else        %如果输入类型不是字符串，比如数组
        data_bpsked = (bin - 1/2)*2; % 0 -> -1  1 -> 1  经过 y = 2 * x - 1 后即可完成转变
end
   
end