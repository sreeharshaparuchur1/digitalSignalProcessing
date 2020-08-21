Using MATLABs inbuilt window functions, the code filterDesign designs an N-tap low pass FIR (finite impulse response)
filter. The inputs are the type of filter (MATLAB functions) and the length of the filter.

The impulse response and the frequency responses are plotted for the filter of the given window function.

The code signalFiltering.m generates a low frequency sinusoid (< 0.4 𝜋) and a high frequency sinusoid (> 0.4 𝜋)
and adds the two signals. This combined signal is passed thorugh the designed FIR filter (convoluting the two vectors).

The result is plotted in the time as well as frequency domain.

This concept is explored in the paper - https://ieeexplore.ieee.org/document/6273383
