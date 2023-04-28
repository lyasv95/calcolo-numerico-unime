function [A_1] = GEM(A)
% Metodo di Gauss per matrici quadrate.
%
% Algoritmo di eliminazione di Gauss per ottenere una matrice triangolare superiore
% Nell'algoritmo di eliminazione di Gauss implementato dalla funzione gauss_elim 
% viene utilizzata l'operazione di somma di una riga con un multiplo di un'altra riga 
% per azzerare gli elementi sottostanti all'elemento sulla diagonale principale. 
% In particolare, viene sottratto da ogni riga successiva un multiplo della riga corrente 
% in modo che gli elementi sottostanti l'elemento sulla diagonale principale diventino zero.

n=length(A);

for i=1 : n-1
    % controllo se la matrice non è quad. o ci sono zeri nella diagonale principale
    if A(i,i) == 0 || mod(n,2) == 1
        disp("La Matrice non è fattorizzabile!")
        return
    end
% n-1 poichè l'ultimo elemento della diagonale non deve essere zero
    for k=1:n-1
        for j=k+1:n
            m = A(j,k)/A(k,k);
            % Riga j - m * Riga k
            A(j,k:n) = A(j,k:n) - m*A(k,k:n);
        end
    end
end

A_1 = A;
end

