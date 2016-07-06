function [t,x,v] =rk_2(f,t0,tf,x0,v0,n)
      h=(tf-t0)/n;
      t=t0:h:tf;
      x=zeros(n+1,1); %reserva memoria para n+1 element(i)os del vect(i)or x(i)
      v=zeros(n+1,1);
      x(1)=x0; v(1)=v0;
      
      for i=1:n
        k1=h*v(i);
        l1=h*f(t(i),x(i),v(i));
        k2=h*(v(i)+l1);
        l2=h*f(t(i)+h,x(i)+k1,v(i)+l1);
        
        x(i+1)=x(i)+(k1+k2)/2;
        v(i+1)=v(i)+(l1+l2)/2;        
      end
end