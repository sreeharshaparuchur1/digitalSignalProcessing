function y = partialfouriersum(A,T,t)
% Compute N based on the length of a
N = (length(A) - 1)/2;
y = zeros(size(t));
omega = 2*pi/T;
for k=-N:N
    y = y + A(N + k + 1)*exp(j*omega*(k)*t);
end
plot(t,y)
xlabel('time');
ylabel('fourier coefficient value');
title('partial fourier sum');
end
