import re

with open("dataset.txt", "r", encoding="utf-8") as f:
    content = f.read().replace("–", "-").replace("—", "-")

valori = [float(x) for x in re.findall(r"-?\d*\.\d+|[+-]?\d+", content)]

with open("input_valori.txt", "w") as f:

    for b in range(min(1000, len(valori) // 432)):
        inizio = b * 432
        for val in valori[inizio : inizio + 216]:
            f.write(f"{val:.6f}\n")
