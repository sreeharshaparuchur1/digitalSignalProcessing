function X = radix2fft(x);
  % x should be a length-N column vector
  N = length(x);
  WN = exp(-1j*2*pi/N);
  if ~isequal(unique(factor(N)),2)
    error('N is not a power of 2!');
  end
  if N == 2
   % Compute length-2 DFT directly (it's super simple)
   X = [x(1)+x(2);x(1)-x(2)];
  else

  % Split input vector into even and odd parts
 
  n=2:2:N;
  x_even = x(n);
 
  n=1:2:N;
  x_odd = x(n);
 
  % Take radix 2 FFT of each part
  X_even = radix2fft(x_even);
  X_odd = radix2fft(x_odd);

  % Recombine length N/2 results into length N result
  for k=1:N/2
    X(k)=X_even(k)+exp(-1j*2*pi*(k-1)/N)*X_odd(k); 
    X(k+N/2)=X_odd(k)-exp(-1j*2*pi*(k-1)/N)*X_even(k);
  end
 end
end
