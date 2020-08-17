function X = dtft(x, N0, w)
  % Evaluate the DTFT sum directly for each of the w samples
  X = zeros(length(w));
  for k=1:length(w)
    X(k)=0;
    for n=1:length(x)
      X(k)=X(k)+ (x(n)*exp(-1j*w(k)*(n-N0)));
    end
  end
  
  % Plotting the DTFT magnitude and phase
  figure;
  subplot(2,1,1);
  %plottng the magnitude part
  plot(w,abs(X));
  xlabel('frequency w');
  ylabel('H(w)');
  title('Magnitude of H(w)');
  
  subplot(2,1,2);
  %plottng the phase part
  plot(w,angle(X));
  xlabel('frequency w');
  ylabel('H(w)');
  title('Phase of H(w)');
  
  % Plotting the DTFT real and imaginary components
  figure;
  subplot(211);
  %plottng the real part
  plot(w,real(X));
  xlabel('frequency w');
  ylabel('H(w)');
  title('Real part of H(w)');
  
  subplot(212);
  %plottng the imaginary part
  plot(w,imag(X));
  xlabel('frequency w');
  ylabel('H(w)');
  title('Imaginary part of H(w)');
end
