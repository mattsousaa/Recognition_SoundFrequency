% 
% Função para realizar a Transformada de Fourier de qualquer tipo de sinal
% e executa a plotagem no domínio frequência
%
% Autor: Mateus Sousa**
%
% **Graduando em Engenharia de Computação - Universidade Federal do Ceará - Campus Quixadá
%
%
% Dia 31 de Outubro de 2018
%
% Protótipo
%
% [X,freq] = my_fft(x,Fs)
% 
%
% ENTRADAS
% x é o sinal de entrada
% Fs é a frequência de amostragem do sinal
%
% SAÍDAS
%
% X é o módulo do sinal no domínio frequência
% freq é o vetor de frequências
% 

function [X,freq] = my_fft(x,Fs)

N = length(x);                      % variável N recebe o tamanho do vetor x
k = 0:N-1;                          % k é um vetor que vai de zero até N menos 1
T = N/Fs;                           % Vetor de tempo N dividido pela frequência de amostragem
freq = k/T;
X = fftn(x)/N;                      % X recebe a FFT normalizada do vetor x sobre N
cutOff = ceil(N/2);                 % cutOff ajusta o eixo X
X = X(1:cutOff);
figure();
plot(freq(1:cutOff),abs(X));        % Plota a transformada de Fourier e o valor de X em módulo
title('Fast Fourier Transform');
xlabel('Frequency (Hz)');
ylabel('Amplitude');


end