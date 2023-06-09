function plot1(bin_num,str)
figure;
stem(bin_num, 'filled', 'LineWidth', 2);
axis([1 length(bin_num) -0.5 1.5]);
grid on;
xlabel('x');
ylabel('y');
title(str);
end

