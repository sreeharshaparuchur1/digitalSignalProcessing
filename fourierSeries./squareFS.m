function [A, y, sq] = squareFS(T, T1, t, N)
omega = 2*pi/T;
A  = zeros(2*N + 1);
for k = -N:N
    A(N + k + 1) = (1/(k*pi))*sin(k*omega*T1);
end
A(N+1) = 2*T1/T;
y = zeros(size(t));
y = partialfouriersum(A,T,t);
y = real(y);
sq = rectangularPulse(-T1,T1,t);
%subplot(2,1,1)
%plot(t,y);
%subplot(2,1,2);
%plot(t,sq);
end
