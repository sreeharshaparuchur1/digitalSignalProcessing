function y=observe()
  T1=1/4;
  t=-2*pi:0.01:2*pi;
  sq=zeros(size(t));
  sq=rectangularPulse(-T1,T1,t);
  for T=1:0.5:20
  %iterating over multiple time periods
    w=(2*pi)/T;
    %new frequency
    N=round((2*T))/T1;
    A=zeros(1,2*N+1);   
    for K=-N:N
    %constructing T_ak for different time periods
      if(N~=0)
        Ta_k(N+K+1)=(2*sin(K*w*T1))/(K*w);
      else
        Ta_k(N+K+1)=2*T1;
      end
    end
  subplot(2,1,1)
  %plotting ak vs k
  stem(Ta_k);
  title('fourier series coefficients Ta_k vs k');
  subplot(2,1,2)
  %plotting impulse train
  plot(t,sq);
  pause(0.5);
  %delay
  end
end
