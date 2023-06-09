dec = input('请输入一个十进制数');
bin =  dec2bin_self(dec);
bin_array = bin2array(bin);
m = m_generate(bin);
expanded_b = zeros(1, 7*127);
expanded_m = zeros(1, 7*127);


%检验生成的m序列中1和0的个数是否满足要求
s = 0;
for jj = 1 : 127
    if(m(jj)==1)
        s = s + 1;
    end
end
expanded_b = zeros(1, 7*127);
for i = 1:7
    if bin_array(i) == 1
        expanded_b((i-1)*127+1:i*127) = 1; % 将1填充到对应的127位中
    end
end

%disp(expanded_b); % 显示扩展后的二进制数
expanded_m = zeros(1, 7*127);

for i = 1:7
    expanded_m(127*(i-1) + 1:127*i) = m;
end


expanded_b_bpsk = bin2bpsk(expanded_b);
expanded_m_bpsk = bin2bpsk(expanded_m);

x = expanded_b_bpsk.*expanded_m_bpsk;


SNR = 10;   % 信噪比（dB）
noise = randn(size(x));  % 高斯随机噪声
plot1(noise,'原噪声');
noise = noise / rms(noise) * rms(x) / (10^(SNR/10));
plot1(noise / rms(noise)* rms(x),'归一化噪声');
plot1(noise,'噪声');
z = x + noise;

zz = z.*expanded_m_bpsk;
r = x.*expanded_m_bpsk;

r_normal = bpsk2nomal(r);
zz_normal = bpsk2nomal(zz);
disp('----------------------------\n\n\nn\n\n\n\n\n\nn\n\nn\n\nn\n\nn\\n\n\n\n');
sum = 0;
for ii = 1:889
    %disp([r(ii),0,expanded_b_bpsk(ii)]);
    if(r(ii)==expanded_b_bpsk(ii))
    %disp([x(ii),0,expanded_b_bpsk(ii)]);
    sum = sum + 1;
    end
end
r_bin = [0,0,0,0,0,0,0];
for ii=1:7
    sum_p = 0;
    for jj = 127*(ii-1) + 1:127*ii
        sum_p = sum_p + r_normal(jj);
    end
    sum_p;
    r_bin(ii) = sum_p / 127;
end
r_dec = bin2dec_self(r_bin);
disp('无噪声解码后的数据');
disp(r_dec);

zz_bin = [0,0,0,0,0,0,0];
for ii=1:7
    sum_p = 0;
    for jj = 127*(ii-1) + 1:127*ii
        sum_p = sum_p + r_normal(jj);
    end
    sum_p;
    zz_bin(ii) = sum_p / 127;
end

zz_dec = bin2dec_self(zz_bin);%带噪声解调为十进制
disp('有噪声解码后的数据');
disp(zz_dec);

plot1(bin_array,'二进制序列');
plot1(m,'m序列');
plot1(expanded_b_bpsk,'扩展二进制序列BPSK');
plot1(expanded_m_bpsk,'扩展m序列BPSK');
plot1(x,'加噪声前的输入序列');
plot1(noise,'噪声');
plot1(z,'经过信道传输加噪声后的序列');
plot1(r,'不加噪声解扩后的序列');
plot1(zz,'加噪声后解扩后的序列');
plot1(r_normal,'无噪声接收的信号经BPSK解调');
plot1(zz_normal,'有噪声接收的信号经BPSK解调');

