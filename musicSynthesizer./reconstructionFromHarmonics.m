function y = harmonics(t, f0)
  %initialise y to 0
  y = zeros(size(t));
  haramps = rand([1 10]);
  %creating random coefficients for the amplitudes of the sin functions
  harmphase = rand([1 10]);
  %creating random values of phase difference
  fs = 48000;
  %sampling at 48000Hz(maximum frequency is 24KHz)

  %looping over the harmonics while multiplying with 
  %a random weight also known as the amplitude
  for i = 1:length(haramps)
    y = y + haramps(i)*sin(2*pi*i*f0*t + harmphase(i));
  end
  %normalising maximum amplitude by dividing by the 
  %largest value, then reducing maximum value to 0.95
  y = (y/max(y()))*0.95;
  plot(t, y);
  xlabel("Frequencies");
  ylabel("Amplitudes");
  title("Harmonics");
  sound(y, fs)
end
