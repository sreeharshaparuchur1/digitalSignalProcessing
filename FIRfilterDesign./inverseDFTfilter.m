function [w,h] = type1_dft(N,wc)
  % Create vector of equally-spaced frequencies
  k = 0 : N-1;
  w=2*pi*k/N;   
  % Creating an ideal amplitude response of low-pass filter (it should be symmetric about w = pi)
  Ad=zeros(1,N);
  Ad(w<wc)=1;
  Ad(w>2*pi-wc)=1;
        
  % Computing the linear phase vector using correct slope
  M=(N-1)/2;
  phi = exp(-1j*w*M);
  % Compute ideal frequency samples as product of Ad and phi
  H = Ad.*phi;
  % Compute filter taps via inverse DFT
  h = ifft(H);
  % Make result real to get rid of near-zero imaginary parts
  h = real(h);
  
  % Plot impulse response, magnitude response, and phase response over a finer frequency grid
  figure;
  subplot(311)
  plot(h);
  title('impulse response');

  subplot(312)
  stem(abs(H));
  title('magnitude response');
  
  subplot(313)
  plot(angle(H));
  title('phase response');
end
