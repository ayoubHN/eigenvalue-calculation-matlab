%test jqcobi
A=fix (10*rand(3,3));
A=A+A';

tic;
[D,V ,er1]=jacobi(A)
temp1=toc;

tic;
[E , steps ,er2] = myqrmethod(A)
temp2=toc;

ErrJa=er1;
ErrQr=er2;
tempJa=temp1;
tempQr=temp2;
Iter=3;
for n=1:5
    N=n*10;
A=fix (10*rand(N,N));
A=A+A';
tic;
[D,V , er1]=jacobi(A)
temp1=toc;
tic;
[E , steps ,er2] = myqrmethod(A)
temp2=toc;
ErrJa=[ErrJa er1];
ErrQr=[ErrQr er2];
tempJa=[tempJa temp1];
tempQr=[tempQr temp2];
Iter=[Iter N];
n=n+1;
end
plot(Iter,tempJa,'y',Iter,tempQr,'r')
%plot(Iter,ErrQr,'y',Iter,ErrJa,'r')