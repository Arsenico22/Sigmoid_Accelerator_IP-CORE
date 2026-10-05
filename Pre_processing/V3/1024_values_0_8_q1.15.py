import math

def to_q1_15(val):
    
    scaled = int(round(val * 32768))
    return format(scaled & 0xFFFF, '04x')

def generate_values():
    res = 1024
    range_min = 0.0
    range_max = 8.0
    step = (range_max - range_min) / res 

    values = []
    for i in range(res):
        
        x = range_min + (i * step)
        sigmoid_x = 1 / (1 + math.exp(-x))
        hex_val = to_q1_15(sigmoid_x)
        values.append(f'x"{hex_val}"')
    
    with open("LUT_Values_V3.txt", "w") as f:
        for i in range(0, len(values), 8):
            comma = "," if i + 8 < len(values) else ""
            linea = "    " + ", ".join(values[i:i+8]) + comma + "\n"
            f.write(linea)

generate_values()
