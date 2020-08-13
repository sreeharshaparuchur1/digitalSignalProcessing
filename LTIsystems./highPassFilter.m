function [AA]=high(A,T,t)
N=(length(A)-1)/2;% number of coefficients
AA=zeros(2*N+1);
for K=-N:N
if(abs(K)>=3.5)%threshold frequency
AA(N+K+1)=A(N+K+1);% constructing high pass filter
else
AA(N+K+1)=0;
end
end
subplot(2,1,1)
partialfouriersum(A,2*pi,-6*pi:0.001:6*pi);
%input signal
subplot(2,1,2)
partialfouriersum(AA,2*pi,-6*pi:0.001:6*pi);
%output signal
title('output through high pass filter')
end
