The fourier series reconstruction code takes as input:
• A, a 2*N+1 vector of Fourier Series coefficients { a(-N), ..., a(-1), a(0), a(1), ... a(N) }
• T, the period of the signal
• t, a time vector

It returns Y, this is the fourier series reconstruction obtained from computing the partial Fourier Sum
from -N to N.

The squareFS code takes as input:
• the signal period, T
• the value, T1
• a time vector, t
• number of coefficients, N

It returns the following outputs:
• A, a 2*N+1 vector which contains the Fourier Series coefficients { a(-N), ..., a(-1), a(0), a(1), ...
a(N) } for the square wave
• y, where y(t) corresponds to the Fourier series reconstruction obtained by computing the
partial sum from -N to N (using the fourier series reconstruction code)
• sq, which corresponds to the ideal square wave sq(t) at the samples in t
