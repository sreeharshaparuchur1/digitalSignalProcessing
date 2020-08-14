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

The ASDR (attack, decay, sustain, release) envelope is used in synthesizers to model
how the amplitude of a note chanes over time.

The function used to generate the envelope takes as inputs:
• fs , a sampling frequency in Hz
• a, an attack duration in seconds
• d, a decay duration in seconds
• s, a sustain level in [0,1]
• dur, a sustain duration in seconds
• r, a release duration in seconds

It returns a time vector that is sampled as f_{s}Hz for a length of a + d + dur + r seconds.
It also displays the ASDR envelope.
