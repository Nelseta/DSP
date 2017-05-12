voz = audioread('C:\Users\Nelson\Documents\MATLAB\nelson.wav'); %batida na mesa com abertura do estilete
fs = 32000;

plot(voz);
title('Som dominio do tempo');
xlabel('Tempo');
ylabel('Amplitude');

my_fft(voz,fs); %fft para plotar no dominio da frequencia
figure;
title('Som dominio da frequencia');

fpass = 2000; %frequencia de passagem
fstop = 7000; %frequencia de parada

wp = (fpass/(fs/2))*pi; %frequencia angular relacionada e frequencia de passagem
ws = (fstop/(fs/2))*pi; %frequencia angular relacionada e frequencia de parada

wt = ws - wp; %frequencia de transisao
wc = (ws + wp)/2; %frequencia de corte ou frequencia de canto

M = ceil((6.2*pi/wt));  %hanning
hd = ideal_lp(wc,M); % funcao sinc passa baixas ideal
w_han = hann(M)'; % calcula a janela de hamming
h = hd.*w_han;       % multiplica os vetores

vox = voz(:,1);
voz_filtrada = conv(h, vox); %Multiplicacao em forma de convolucaoo da janela com o audio original com a retirada das frequencias indesejadas

sound(voz_filtrada);

plot(voz_filtrada);
title('Som filtrado no dominio do tempo');
xlabel('Tempo');
ylabel('Amplitude');

my_fft(voz_filtrada,fs);
title('Som ja filtrado no dominio da frequencia');
