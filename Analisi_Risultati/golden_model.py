import math

START = -4.0
SAMPLES = 256
STEP_SIZE = 0.03125 

def sigmoid(x):
    return 1 / (1 + math.exp(-x))

with open("sigmoid_outputs_sw.txt", "w") as f:
    for i in range(SAMPLES):
        x = START + (i * STEP_SIZE)
        y = sigmoid(x)
        f.write(f"{y:.15f}\n")
