function signalFiltering(f)
  t = 1:1:501;
  y1 = sin(0.25*pi*t);
  y2 = sin(0.5*pi*t);
  Y = y1 + y2;
  ir = conv(Y,f);
  fr = fft(ir,1001);
  
  subplot(4,2,1)
  plot(Y)
  title("sum of the two sinusoids");
  
  subplot(4,2,2)
  plot(fftshift(20*log(abs(fft(Y,1001)))))
  title("frequency response of the summed sinusoids");
  
  subplot(4,2,3)
  plot(ir)
  title("convolved time domain signal");
  
  subplot(4,2,4)
  plot(fftshift(20*log(abs(fr))))
  title("frequency response of the convolved signal");
end
