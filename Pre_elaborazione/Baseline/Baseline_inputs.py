import pandas as pd
import os
import sys

os.chdir(os.path.dirname(os.path.abspath(__file__)))

def to_q5_11_hex(val):

    scaled = int(round(float(str(val).replace(',', '.')) * 2048))
    scaled = max(-32768, min(32767, scaled))
    return f"{scaled & 0xFFFF:04X}"
    
df = pd.read_excel('sigmoid.xlsx', skiprows=2).head(256)
with open('stimoli_input_baseline.mem', 'w') as f:
    for x in df['X']:
        f.write(to_q5_11_hex(x) + '\n')
