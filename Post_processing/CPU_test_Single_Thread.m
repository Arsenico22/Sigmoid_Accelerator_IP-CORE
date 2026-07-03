clc; clear;
input_data = load('input_valori.txt');
N = length(input_data);
output_loop = zeros(N, 1);


% 1. Misura tempo di elaborazione
tic;
for i = 1:N
    output_loop(i) = 1 / (1 + exp(-input_data(i)));
end
tempo_ms = toc * 1000;

fprintf('TEST 1: SINGLE-THREAD \n');
fprintf('Tempo di elaborazione: %.2f ms\n\n', tempo_ms);

disp('Premere INVIO per avviare lo stress test di 60 secondi...');
pause;


% 2. Stress test di 60 secondi per analisi del consumo
fprintf('\n Stress test in corso...\n');
tic;
while toc < 60
    for i = 1:N
        output_loop(i) = 1 / (1 + exp(-input_data(i)));
    end
end

fprintf('Stress test terminato. \n');
fprintf('=== TEST 1 COMPLETATO ===\n');