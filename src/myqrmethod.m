function [E , steps , er2] = myqrmethod( A )
[ m, n ] = size ( A );tol=1E-2;
if m ~= n
warning ( ' la matrice n est pas caree ')
return
end
H = hess ( A );
E = diag ( H );
change = 1;
steps = 0;
while change > tol
Eold = E ;
[ Q, R ] = qr( H );
H = R * Q ;
E = diag ( H );
change = norm ( E - Eold );
steps = steps +1;
end
er2=change;
end