function [t,e] = envelope(fs, a, d, s, dur, r)
  %in each phase of the signal, determine the corresponding 
  %piece of time vector and envelope.

  %Attack: The signal linearly increases from
  %0 to 1 in 'a' seconds
  t = 0:1/fs:a;
  %creating the time vector
  e = t/a;
  %the function of the corresponding ADSR line

  %Decay: The signal linearly decreases from 1 to 0
  %in 'd' seconds
  tdelay = (a+1/fs):1/fs:a+d;
  %the time over which the delay takes place
  t = [t, tdelay];
  %appending to the time vector
  e = [e, ((s - 1)/d)*(tdelay - a) + 1];
  %appending to the final graph

  %Sustaining the signal at value 's' for dur seconds
  tsustain = a+d+1/fs:1/fs:(a+d+dur);
  %creating the time interval for the "sustaining" period
  t = [t, tsustain];
  %appending to the time vector
  e = [e, s*ones([1 length(tsustain)])];
  %appending to the final graph

  %Release: The signal decays from 's' to 0 lineary in r seconds
  trelease = (a + d + dur + 1/fs):1/fs:(a + d + dur + r);
  %creating the time interval for the release part of the adsr graph
  t = [t, trelease];
  %appending to the time vector
  e = [e, s - (s/r)*(trelease - (a + d + dur))];
  %appending to the final graph

  plot(t,e);
  title('ASDR graph');
  xlabel('time');
  ylabel('Relative amplitude');
end
