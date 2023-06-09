function plot1(bin_num,str)
%函数的功能：画散点图
%函数的描述：
%函数的使用：plot1(input1，input2)
%输入：
%     input1:一个序列
%     input2:图的名称
%注意事项：
figure;
stem(bin_num, 'filled', 'LineWidth', 2);
axis([1 length(bin_num) -0.5 1.5]);
grid on;
xlabel('x');
ylabel('y');
title(str);
end

