function X = directdft(x)
  N = length(x);
  % x should be a length-N column vector
  n = 0:1:N-1;
  % row vector for n
  k = 0:1:N-1;
  % row vecor for k
  WN = exp(-1j*2*pi/N);
  % Twiddle factor (w)
  nk = n'*k; 
  % creates a N by N matrix of nk values
  F = WN .^nk;
  % DFT matrix
  % create N x N DFT matrix
  X = F*x;
  % compute w using a matrix-vector product
end
