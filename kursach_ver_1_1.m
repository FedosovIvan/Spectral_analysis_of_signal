%% Загрузка данных 
clear all;clc;
load('Signal.mat');

%% Ввод данных сигнала
Signal=mod1;
FftL=length(Signal);       % Количество линий Фурье спектра. Равно количеству отчетов сигнала

%% Спектральное представление сигнала
FftS=fft(Signal,FftL);     % Получени спектра по ДПФ (или БПФ, по возможности)
FftS=FftS.*conj(FftS);     % FftS - спектральная плотность мощности
%% Построение графиков сигнала и спектра
figure (1)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('Сигнал');          

subplot(2,1,2);             
plot(FftS);                  
grid on;
title('Спектр сигнала');             
xlabel('Частота'); 
ylabel('СПМ');

%% Нормировка по масимальному значению

FftS=FftS./max(FftS);      
%% Построение графика сигнала и нормированного спектра
figure (2)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('Сигнал');          

subplot(2,1,2);              
plot(FftS);                
grid on;
title('Нормированный по максимуму спектр сигнала');                
xlabel('Частота');                
ylabel('СПМ');       

