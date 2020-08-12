The fourier series reconstruction code takes as input:
• A, a 2*N+1 vector of Fourier Series coefficients { a(-N), ..., a(-1), a(0), a(1), ... a(N) }
• T, the period of the signal
• t, a time vector

It returns Y, this is the fourier series reconstruction obtained from computing the partial Fourier Sum
from -N to N.

