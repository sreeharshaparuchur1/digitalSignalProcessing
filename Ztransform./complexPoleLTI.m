function complexpoles_constantradius(r)
  for k = 0:(pi/10):pi
   subplot(2,1,1)
   zplane([0 1], [1 -2*r*cos(k) r^2]);
   subplot(2,1,2)
   [h,w] = freqz([0 1], [1 -2*r*cos(k) r^2], [-3*pi:pi/100:3*pi]);
   plot([-3*pi:pi/100:3*pi], 20*log10(abs(h)));
   title("magnitude response");
   xlabel("w");
   ylabel("magnitude");
   pause(1.5);
  end
end
