In most practical applications, we need real time filtering of an input signal. 
Here are two possible methods to workaround this problem.

The overlap-save method is commonly used to filter long input sequences on a block-by-block basis
using shorter DFTs. If the length of the filter is M and the length of the DFT is N, the idea is to take
DFTs of overlapping length- N blocks of the input and construct the output by concatenating
appropriate length N-(M-1) segments of the block DFTs. This can result in substantial computational
savings when x is very long (and also allows the "streaming" computation of the convolution with
little delay).

The function takes the inputs

• h, the filter to apply (which should be much shorter than the signal)

• x, the signal

• N, the FFT length

The overlap-add method takes the same inputs as the overlap-add function. 
The idea here is to take DFTs of non-overlapping length N-(M+1) blocks of the input, padded with zeros and have the output constructed by adding the overlapping results of the block DFTs.

The outputs of both functions is the ciruclar convolution of the input signals.
