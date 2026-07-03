clc; clear;
input_data = load('input_valori.txt');

% Inizializzazione GPU e "Warm-up" iniziale per svegliare i CUDA core
g = gpuDevice(1);
input_gpu = gpuArray(input_data);
dummy = 1 ./ (1 + exp(-input_gpu)); 
wait(g); 

% 1. Misura tempo di elaborazione (A regime / Solo calcolo)
tic;
output_gpu = 1 ./ (1 + exp(-input_gpu));
wait(g); % Forza MATLAB ad aspettare la fine del calcolo hardware
tempo_ms = toc * 1000;

fprintf('TEST 3: ACCELERAZIONE GPU (RTX 4050) \n');
fprintf('Tempo di micro-elaborazione: %.4f ms\n\n', tempo_ms);

disp('Premere INVIO per avviare lo stress test di 60 secondi...');
pause;

% 2. Stress test di 60 secondi per analisi del consumo
fprintf('\n Stress test GPU in corso...\n');
tic;
while toc < 60
    output_gpu = 1 ./ (1 + exp(-input_gpu));
    wait(g); % Sincronizza il ciclo per tenere la GPU costantemente al 100%
end
fprintf('Stress test terminato. \n');
fprintf('=== TEST 3 COMPLETATO ===\n');