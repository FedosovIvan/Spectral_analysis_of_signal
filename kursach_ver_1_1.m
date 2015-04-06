%% Loading data
clear all;clc;
load('Signal.mat');

%% ���� ������ �������
Signal=mod1;
FftL=length(Signal);       % ���������� ����� ����� �������. ����� ���������� ������� �������

%% ������������ ������������� �������
FftS=fft(Signal,FftL);     % �������� ������� �� ��� (��� ���, �� �����������)
FftS=FftS.*conj(FftS)/FftL;% FftS - ������������ ��������� ��������
FftS=FftS(1:(FftL/2));
%% ���������� �������� ������� � �������
figure (1)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('������');          

subplot(2,1,2);             
plot(FftS);                  
grid on;
title('������ �������');             
xlabel('�������'); 
ylabel('���');

%% ���������� �� ������������ ��������
FftS=FftS./max(FftS);      
%% ���������� ������� ������� � �������������� �������
figure (2)
subplot(2,1,1);           
plot(Signal);      
grid on;
title('������');          

subplot(2,1,2);              
plot(FftS);                
grid on;
title('������������� �� ��������� ������ �������');                
xlabel('�������');                
ylabel('���');       

