%ALIASING
function aliasing()
  T = 0.1;
  t_new = 0:0.0001:2;
  %creating grid
  for T = 0.1:0.1:0.3
    %cycling over all the three different sampling periods
    t = 0:T:2;
    %the sampling points
    X = zeros(size(t));
    %creating a vector to store the sampled values of the function
    X = cos(5*pi*t);
    %sampling the function
    Y = zeros(size(t_new));
   %creating a vector with the size of the grid
    for k = 0:2/T
      %iterating over the sampling values in the range [0,2]
      Y = Y+X(k+1)*sinc((1/T)*(t_new-k*T));
      %reconstructing the signal via interpolation with the sinc function 
    end
  subplot(4,1,10*T);  
  %to display multiple graphs
  plot(t_new,Y);
  %plotting the reconstructed signal
  xlabel('time');
  ylabel('x(t)');
  title('reconstructed signal via interpolation with sinc');
  end
end
