The function directdft computes the N length DFT by mulitplying the column vector with an N X N DFT matrix.

directdft generates the N X N DFT matrix and multiplies it with the input column vector using MATLAB's vector and matrix-based syntax.
The result should be similar to what is obtained on using MATLAB's FFT command.

The radix2fft code implements the decimation in time FFT(fast fourier transform) algorithm.
The length of the input vector has to be a power of 2. There is a recursive structure to this function.
This code gives an output similar to the directdft code and MATLAB's fft command.

The DFT can also be used to compute time-domain convolutions. 

Usually the term convolution refers to the linear convolution but when dealing with DFT properties, what we actually want is "circular" convolution.
The function dftconv takes the inputs:

• h, the first signal (e.g., a filter impulse response)
• x, the second signal
• N, an integer where N is greater than or equal to max(length(h), length(x))

The function returns:


• conv_circ, the circular convolution of h and x using N points (using DFTs of length N)
• conv_lin, the linear convolution of h and x (using appropriately-sized DFTs)


The outputs of the dftconv is similar to the outputs of the MATLAB functions:

• conv_circ, the circular convolution of h and x using N points (using DFTs of length N)
• conv_lin, the linear convolution of h and x (using appropriately-sized DFTs)
