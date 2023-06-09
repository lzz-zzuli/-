
function [mg] = m_generate(bin)
%函数的功能：输入7为二进制序列，生成127为的m序列
%函数的描述：
%函数的使用：y=m_generate(input1)
%输入：
%     input1:二进制序列
%输出：
%     Y:m序列
%注意事项：输入应该为字符串
    c = [0 ,1 ,1];
    bin = bin2array(bin);
    n = length(bin);
    output = zeros(1,n);  %定义输出序列
    for ii=1:2^n-1 
        output(ii) = bin(n);  %每次移位产生的输出码 加到 输出序列中
        xordata = xor(bin(n),bin(1));  % 长度为7，抽第1和7个寄存器的值，异或 
        for jj = n:-1:2
            bin(jj) = bin(jj-1);   %循环移位，将寄存器1—n-1的值移位到 2-n
        end
        bin(1) = xordata;   %抽头值添加到第一个寄存器
    end
    mg = output;
end
