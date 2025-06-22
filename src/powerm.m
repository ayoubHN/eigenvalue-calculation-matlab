function [lambda,x,iter,relres]=powerm(A,z0,tol,nmax)
q=z0/norm(z0); q2=q;
relres=tol+1; iter=0; z=A*q;
while relres(end)>=tol & iter<=nmax
q=z/norm(z); z=A*q;
lambda=q'*z; x=q;
z2=q2'*A; q2=z2/norm(z2); q2=q2';
y1=q2; t=abs(y1'*x);
if t >= 5e-2
iter=iter+1;
temp=norm(z-lambda*q)/t;
relres=[relres; temp];
else
fprintf('multiple valeur'); break;
end
end
return