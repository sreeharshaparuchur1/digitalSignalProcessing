The poleZeroPlot function plots the pole-zero plot for the LTI system given by

𝐻(𝑧) = 𝑧/(𝑧 − 𝑝) = 1/(1 − 𝑝𝑧^{−1}) , 𝑝 ∈ (−1,1)


The commented part of the code then plots the impulse response.
While the Z transform for an LTI system is unique, the impulse response may not be.
On observation of the graph (checking where the ROC(region of convergence) lies)
we apply the inverse z-transform and find the impulse response.
