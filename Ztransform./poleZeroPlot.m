function transferFunc(p)
  n = -3 * pi : 0.01 : 3 * pi;
  for k=1:length(p)
    subplot(2,1,1)
    %function to plot pole zero plot
    zplane([1],[1 p(k)],-3*pi:0.01:3*pi)
    xlabel("Re(z)");
    ylabel("im(z)");
    title("POLES AND ZEROES");
    subplot(2,1,2)
    %function to plot frequency reponse
    [h,w]=freqz([1 0],[1 p(k)],-3*pi:0.01:3*pi);
    plot(n,20*log10(abs(h)));
    xlabel("w");
    ylabel("Re(H(e^jw))");
    title("DTFT");
    pause(1);
    %subplot(3,1,3)
    %function to plot impulse response
    %impz([1 0],[1 p(k)])
    %xlabel("n");
    %ylabel("Amplitude");
    %title("Impulse Response Signal");
  end
end
