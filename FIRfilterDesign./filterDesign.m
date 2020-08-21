function f = filterDesign(N,window,len)
  k = (N-1)/2;
  x = -k:k;
  f = zeros(1,N);
  for x = -k:k;
     f(x+k+1) = sin(0.4*pi*x)/pi/x*window(x+k+1);
  end
  f(k+1)=1/pi*window(k+1);
  F = fftshift(abs(fft(f,len)));

  subplot(2,1,1);
  stem(f);
  title("Low pass filter Kaiser window - impulse response");
  %Replace Kaiser with the window used

  subplot(2,1,2);
  stem(-pi:2*pi/1000:pi,F);
  title("Low pass filter kaiser window - frequency response");
end
