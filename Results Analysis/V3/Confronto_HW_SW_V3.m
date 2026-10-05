% Carica il Golden Model
golden_model = load('sigmoid_outputs_sw.txt');

% Carica i valori HEX di Vivado
hex_data = textread('risultati_HW_256.hex', '%s'); 

% Conversione e Sincronizzazione
n = min(length(golden_model), length(hex_data));
hw_output = zeros(n, 1);
sw_ideal = golden_model(1:n);

for i = 1:n
    val_hw = hex2dec(hex_data{i});
   
    % Gestione segno per Q5.11
    if val_hw >= 32768, val_hw = val_hw - 65536; end 
    hw_output(i) = val_hw / 32768;
end

% Calcolo Errori
diff_err = sw_ideal - hw_output;
mae = mean(abs(diff_err));
max_err = max(abs(diff_err));

fprintf('MAE: %.10f\n', mae);
fprintf('Errore Massimo: %.10f\n', max_err);

% Grafici
figure('Name', 'Confronto HW - SW', 'Color', 'w');

% SW
subplot(3,1,1);
plot(sw_ideal, 'b', 'LineWidth', 1);
title('Risultati SW (Golden Model Python)','FontSize', 18 );
ylabel('sigma(x)','FontSize', 16);
grid on;

% - HW
subplot(3,1,2);
plot(hw_output, 'r', 'LineWidth', 1);
title('Risultati HW (Vivado)','FontSize', 18);
ylabel('sigma(x)','FontSize', 16);
grid on;

% Errore
subplot(3,1,3);
plot(diff_err, 'm', 'LineWidth', 1);
title('Errore di Quantizzazione','FontSize', 18);
xlabel('Campioni','FontSize', 16);
ylabel('Differenza','FontSize', 16);
grid on;

linkaxes(findall(gcf,'type','axes'),'x');