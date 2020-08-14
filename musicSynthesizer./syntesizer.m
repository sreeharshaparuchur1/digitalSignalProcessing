function y = synthesizer(notes,a,d,s,r,dur,fs)
  % Initialize output as empty
  y = [];
  % Loop over the notes(frequency)
  for i=1:length(notes)
    % Compute the time vector and ADSR envelope for this note
    [t,e] = envelope(fs,a,d,s,dur,r);
    % Compute the sum of harmonics for this note
    h = harmonics(0:1/fs:1,notes(i));
    % Modulate the sum of harmonics with the envelope
    n =h.*e;
    % Appending the note to the sequence
    y = [y,n];
  end
  % Play the sound
  sound(y,fs);
  plot(y);
  xlabel('frequencies');
  ylabel('Scaled Amplitude');
  title('Synthesiser');
end
