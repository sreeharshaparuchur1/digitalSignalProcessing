Many musical instruments' sounds are well-modelled as the sum of harmonically related sinusoids.
In this part we will build up a signal by adding terms of the form (a_{k})sin(2𝜋𝑘𝑓0𝑡 + 𝜙𝑘), where 𝑓0 is
the fundamental frequency and [amp( k ), phase( k )] define the amplitude and phase of the 𝑘
𝑡ℎ harmonic, where k = 1, 2, ... N. 𝑓_{s} is the sampling frequency.

The function "harmonics" takes as input:
• time_vec, a time vector whose samples are 1/fs apart
• F0, the fundamental frequency in Hz
• harmamps, a length N vector of harmonic amplitudes (the first entry corresponds to the
fundamental frequency)
• harmphase, an optional length N vector of harmonic phases (if this input argument is
omitted, all the phases should be 0)

