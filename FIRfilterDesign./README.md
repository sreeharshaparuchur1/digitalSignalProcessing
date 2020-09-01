Using MATLABs inbuilt window functions, the code filterDesign designs an N-tap low pass FIR (finite impulse response)
filter. The inputs are the type of filter (MATLAB functions) and the length of the filter.

The impulse response and the frequency responses are plotted for the filter of the given window function.

The code signalFiltering.m generates a low frequency sinusoid (< 0.4 𝜋) and a high frequency sinusoid (> 0.4 𝜋)
and adds the two signals. This combined signal is passed thorugh the designed FIR filter (convoluting the two vectors).

The result is plotted in the time as well as frequency domain.

This concept is explored in the paper - https://ieeexplore.ieee.org/document/6273383

The inverseDFTfilter designs an odd length, linear phase, low-pass FIR (finite impulse response) filter.
The function computes a filter tap vector *h*  by determining the idea frequency response at N equally-spaced freqeuncies and taking the inverse DFT of this vector. 

The inputs are:

• N, an odd positive integer (>=3)

• wc, a frequency cutoff in [ 0, pi )

The overshoot of a digital linear-phase low-pass FIR filter (arising from the time-frequency inverse relationship) can be lessened substantially if we allow non-binary amplitude samples near the cutoff frequency, also knows as using a transition band.

The function transitionband() takes the inputs:

• N, the length of FIR low-pass filter (N should be odd)

• wc, the cutoff frequency of the filter in radians.

• tbvals, two transition band values to be used on either side of the cutoff frequency.

On keeping the sampling locations the same and adjusting the transition band values, it is observed that we can get a very smoth (i.e., a low overshoot) filter, at the cost of a wider transition band.
