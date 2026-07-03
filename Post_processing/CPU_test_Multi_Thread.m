clc; clear;
input_data = load('input_valori.txt');

% 1. Misura tempo di elaborazione
tic;
output_vec = 1 ./ (1 + exp(-input_data));
tempo_ms = toc * 1000;

fprintf('TEST 2: MULTI-THREAD VETTORIZZATO \n');
fprintf('Tempo di elaborazione: %.2f ms\n\n', tempo_ms);

disp('Premere INVIO per avviare lo stress test di 60 secondi...');
pause;

% 2. Stress test di 60 secondi per analisi del consumo
fprintf('\n Stress test in corso...\n');
tic;
while toc < 60
    output_vec = 1 ./ (1 + exp(-input_data));
end
fprintf('Stress test terminato. \n');
fprintf('=== TEST 2 COMPLETATO ===\n');