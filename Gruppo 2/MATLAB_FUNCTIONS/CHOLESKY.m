function L = CHOLESKY(A)
% Calcola la fattorizzazione di Cholesky di una matrice simmetrica e definita positiva.

n = size(A,1);  % Determina la dimensione della matrice di input
L = zeros(n);   % Inizializza la matrice triangolare inferiore L a zero

for j = 1:n     % Scansione delle colonne della matrice L
    for i = j:n % Scansione delle righe della matrice L
        s = 0;  % Inizializza la somma s a zero
        for k = 1:j-1 % Calcola la somma necessaria per la formula di Cholesky
            s = s + L(i,k)*L(j,k);
        end
        if i == j % Se i e j sono uguali, calcola l'elemento diagonale di L
            L(i,j) = sqrt(A(i,i) - s);
        else % Altrimenti, calcola l'elemento non diagonale di L
            L(i,j) = (A(i,j) - s) / L(j,j);
        end
    end
end
end