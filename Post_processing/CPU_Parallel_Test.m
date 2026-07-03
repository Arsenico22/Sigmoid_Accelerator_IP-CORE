clc; clear; close all;

% Configurazione del parallelismo esplicito
num_core = 6; 

if isempty(gcp('nocreate'))
    parpool('local', num_core); % Avvia esplicitamente i motori paralleli
end

% Carichiamo i dati e simuliamo 6 canali indipendenti (matrice)
input_singolo = load('input_valori.txt'); 
% Creiamo una matrice dove ogni colonna è un canale da elaborare
input_matrice = repmat(input_singolo, 1, num_core); 
[righe, colonne] = size(input_matrice);

output_par = zeros(righe, colonne);

% 1. Misura tempo di elaborazione esplicito (Prima esecuzione)
tic;
parfor i = 1:colonne
    % Ogni worker prende una colonna (un canale intero) e lo elabora
    output_par(:, i) = 1 ./ (1 + exp(-input_matrice(:, i)));
end
tempo_ms = toc * 1000;

fprintf('\nTEST 2B: PARALLELISMO ESPLICITO (MULTIPROCESSING) \n');
fprintf('Tempo di elaborazione per %d canali: %.2f ms\n\n', num_core, tempo_ms);
disp('Premere INVIO per avviare lo stress test di 60 secondi...');
pause;

% 2. Stress test di 60 secondi per analisi del consumo
fprintf('\nStress test in corso sui %d Worker espliciti...\n', num_core);
tic;
while toc < 60
    parfor i = 1:colonne
        output_par(:, i) = 1 ./ (1 + exp(-input_matrice(:, i)));
    end
end
fprintf('Stress test terminato. \n');
fprintf('=== TEST 2B COMPLETATO ===\n');