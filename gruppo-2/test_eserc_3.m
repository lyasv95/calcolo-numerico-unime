% Inizializza una matrice vuota per le norme
norms = zeros(15, 4);

% Loop attraverso i valori di n
for n = 2:15
    
    % Crea una matrice di Hilbert di ordine n
    H = hilb(n);
    
    % Calcola le quattro norme
    
    % 1. Norma 1
    norms(n, 1) = max(sum(abs(H), 1));
    
    % 2. Norma 2
    norms(n, 2) = max(abs(eig(H)));
    
    % 3. Norma infinito
    norms(n, 3) = max(sum(abs(H), 2));
    
    % 4. Norma di Frobenius
    norms(n, 4) = sqrt(trace(H'*H));
    
end

% Stampa la tabella delle norme
disp(array2table(norms(2:15,:), 'VariableNames', {'Norm1', 'Norm2', 'Inf', 'Frobenius'}, 'RowNames', string(2:15)))

% Grafico dell'andamento delle norme
figure;
plot(2:15, norms(2:15, :));
xlabel('Ordine della matrice');
ylabel('Valore della norma');
legend('Norma 1', 'Norma 2', 'Norma infinito', 'Norma di Frobenius', 'Location', 'northwest');
title('Andamento delle norme matriciali al variare dell’ordine');
