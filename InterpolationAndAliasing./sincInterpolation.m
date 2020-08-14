%RECONSTRUCTING SIGNAL BY USING THE SINC FUNCTION
t = 0:0.1:2;
%sampling times
t_new = 0:0.0001:2;
%grid
Y = zeros(size(t_new));
%creating a vector
Z = zeros(size(t_new));
%creating a vector
Z = 1 + sin(3 * pi * t_new) + cos(5 *pi * t_new);
%generating continuous time signal
for k=0:20
  Y = Y + X(k + 1) * sinc(10 * (t_new - k * 0.1));
  %interpolating the sampled signal with the sinc function
 end
subplot(3,1,1)
plot(t,X,'b');
%plotting sampled signal
xlabel('time');
ylabel('x(t)');
title('sampled signal')
subplot(3,1,2)
plot(t_new,Y,'c');
%plotting reconstructed signal
xlabel('time');
ylabel('x(t)');
title('reconstructed signal')
hold
plot(t_new,Z,'y');
%original signal
