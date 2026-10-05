import numpy as np

num_samples = 1024
range_min = -4.0
range_max = 4.0

def to_q5_11_hex(val):
    
    scaled_val = int(round(val * (2048)))
    
    if scaled_val < 0:
        scaled_val = (1 << 16) + scaled_val
      
    return f"{scaled_val & 0xFFFF:04X}"

inputs = np.linspace(range_min, range_max, num_samples)

with open("stimoli_input_1024.mem", "w") as f:
    for val in inputs:
        hex_val = to_q5_11_hex(val)
        f.write(f"{hex_val}\n")


