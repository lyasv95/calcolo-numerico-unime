function [invA] = INVGJ(A)
% Matrice inversa tramite algoritmo di Gauss-Jordan
% Detailed explanation goes here

n = length(A);

% Solo matrici quadrate e con det. != 0 ammettono l'inversa
if not(DET(A) == 0) && mod(n,2) == 0
    x = IDE(A);
    
    for k = 1:n-1
        max = 0; 
        for i=k:n
            abso = abs(A(i,k));
            if max < abso
                max = abso;
                l = i;
            end
        end
        if max == 0 
            return;
        end
        
        if (l~=k)
            for j = k:n
                temp = A(k,j);
                A(k,j) = A(l,j);
                A(l,j) = temp;
            end
            for i = 1 : n
                temp = x(k,j);
                x(k,j) = x(l,j);
                x(i,j) = temp;
            end
            
            for i = k+1:n
                quot = A(i,j)/A(k,k);
                for j = k+1 : n
                    A(i,j) = A(i,j) - quot * A(k,j);
                end
    
                for j=1 : n
                    x(i,j) = x(i,j) - quot * A(k,j);
                end
            end
        end
    end

    
if A(k,k) == 0
    return;
end

for k=1:n
    x(n,k) = x(n,k)/A(n,n);
    for i=n-1:-1:1
        for j=i+1:n
            x(i,k)=x(i,k)-A(i,j)*x(j,k);
        end
        x(i,k)=x(i,k)/A(i,i);
    end
end

invA = x;

end

