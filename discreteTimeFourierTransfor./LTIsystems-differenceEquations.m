k=-3*pi:0.01:3*pi;% frequency range
h=zeros(size(k));
for w=1:length(k)
  %frquency response of given system
  h(w)=h(w)+(1/(1-0.9*exp(-1j*k(w)))); 
end
figure;
subplot(2,1,1);
%plotting the magnitude
plot(k,abs(h));
xlabel('frequency w');
ylabel('H(w)');
title('Magnitude of H(w)');

subplot(2,1,2);
%plotting the phase
plot(k,angle(h));
xlabel('frequency w');
ylabel('H(w)');
title('Phase of H(w)');
figure;

subplot(2,1,1);
%plotting the real part
plot(k,real(h));
xlabel('frequency w');
ylabel('H(w)');
title('Real part of H(w)');

subplot(2,1,2);
%plottng the imaginary part
plot(k,imag(h));
xlabel('frequency w');
ylabel('H(w)');
title('Imaginary part of H(w)');
