import re

def to_q5_11(val):
    return f"{(int(round(val * 2048)) & 0xFFFF):04x}"

with open("dataset.txt", 'r', encoding='utf-8') as f:
    content = f.read().replace('–', '-').replace('—', '-')

valori = [float(x) for x in re.findall(r'-?\d*\.\d+|[+-]?\d+', content)]

with open("input_hex.hex", 'w') as h, open("output_float.txt", 'w') as f:
    # Prende a blocchi di 432 (216 input + 216 output)
    for i in range(0, len(valori), 432):
        for val in valori[i : i + 216]:
            h.write(to_q5_11(val) + "\n")
        for val in valori[i + 216 : i + 432]:
            f.write(f"{val:.6f}\n")
