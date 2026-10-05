import numpy as np

def sigmoid(x):
        return 1 / (1 + np.exp(-x))

x_values = np.linspace(-4.0, 4.0, 1024)
y_values = sigmoid(x_values)

with open("sigmoid_1024_outputs_sw.txt", "w") as f:
    for y in y_values:
        f.write(f"{y:.15f}\n")

