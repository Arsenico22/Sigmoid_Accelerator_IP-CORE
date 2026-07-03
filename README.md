# Design e caratterizzazione di IP-Core su FPGA per funzioni di attivazione in modelli di AI

Questo repository contiene il materiale didattico e il codice sorgente relativo al lavoro di Tesi di Laurea Magistrale in Ingegneria Elettronica (Università della Calabria).

## Struttura del Repository
* `/` (Root): File sorgenti VHDL (`*.vhd`) delle release Baseline, V2 e V3 dell'IP-Core per il calcolo della Sigmoide, file di configurazione delle memorie (`*.mem`) e file di vincolo (`*.xdc`).
* `/pre processing post processing e analisi risultati`: Contiene gli script Python e Matlab utilizzati per la generazione dei vettori di stimolo, la quantizzazione fixed-point (Q1.15) e l'analisi comparativa delle prestazioni (OOC, CPU vs FPGA)
