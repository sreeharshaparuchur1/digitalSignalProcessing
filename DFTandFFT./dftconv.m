function [conv_circ, conv_lin] = dftconv(h,x,N);
  lx = length(x);
  lh = length(h);
  if N<max([lx lh])
    error('N must be at least the length of the longer signal.')
  end
  h_circ=[h;zeros(N-lh,1)];
  x_circ=[x;zeros(N-lx,1)];
  % Compute order-N circular convolution based on length-N FFTs
  conv_circ = ifft(fft(h,N).*fft(x,N));
  % Compute linear convolution based on appropriate-length
  %FFTs/zero padding
  h_lin=[h;zeros(lx-1,1)];
  x_lin=[x;zeros(lh-1,1)];
  conv_lin = ifft(fft(h_lin).*fft(x_lin));

  convAns = conv(x,h);
  cconvAns=cconv(x,h,N);
  
  subplot(4,1,1)
  stem(conv_circ);
  title('cir conv');
  
  subplot(4,1,2)
  stem(conv_lin);
  title('lin conv');
  
  subplot(4,1,3)
  stem(cconvAns);
  title('cconv');
  
  subplot(4,1,4)
  stem(convAns);
  title('conv');
 end
