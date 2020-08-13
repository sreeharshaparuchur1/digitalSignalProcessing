function [AA]=lowpass(A,T,t)
  N=(length(A)-1)/2;
  for K=-N:N
    if(abs(K))<3.5
      AA(N+K+1)=A(N+K+1);
     else 
      AA(N+K+1)=0;
   end
  end
  subplot(2,1,1)
  partialfouriersum(A,T,t);
  hold on; subplot(2,1,2)
  partialfouriersum(AA,T,t);
end
------------
