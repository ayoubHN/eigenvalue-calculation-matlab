function [ x, e ] = invpowerLU (A , n ,x)
[ L, U, P ] = lu( A ); 
m = size (A ,1); 
for i = 1: n
px = P * x ; 
y = L \ px ; 
x = U \ y ;
M = max( x );
m = min( x );
if abs ( M ) >= abs ( m )
el = M ;
else
el = m ;
end
x = x / el ; 
end
e = 1/ el ; 
end