The fuction dtft.m takes as inputs:
• x, a discrete-time signal of finite duration (it will be assumed that the signal is zero
outside the specified time)
• 𝑁0, location of the sample x[0] in the given input signal x (note that 1 ≤ 𝑁0 ≤ 𝑙𝑒𝑛𝑔𝑡ℎ(𝑥)
because matlab indexing starts from 1)
• 𝜔, a vector of frequencies at which to sample and plot the DTFT

The script calculates the frequency response of an LTI (linear time invarient) system
which is described by the difference equation 𝑦[𝑛] = 𝑥[𝑛] + 0.9 𝑦[𝑛 − 1]
