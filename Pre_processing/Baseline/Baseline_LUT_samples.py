import pandas as pd
import sys
import os

os.chdir(os.path.dirname(os.path.abspath(__file__)))

df = pd.read_excel('sigmoid.xlsx', skiprows=2)
y_values = df['Y'].fillna(0).tolist()[:256]

def to_q5_11_hex(val):

    val_float = float(str(val).replace(',', '.'))
    scaled = int(round(val_float * 2048))
    if scaled > 32767: scaled = 32767
    if scaled < -32768: scaled = -32768
    if scaled < 0: scaled = (1 << 16) + scaled
    return f'x"{scaled:04x}"'

vhdl_hex = [to_q5_11_hex(y) for y in y_values]

with open("LUT_Values.txt", "w") as f:
    for i in range(0, len(vhdl_hex), 8):
        line = ", ".join(vhdl_hex[i:i+8])
        if i + 8 < len(vhdl_hex):
            f.write(f"{line},\n")
        else:
            f.write(f"{line}\n")
    
