import numpy as np, pandas as pd

U, D = 0.05, 40            # D is 40 for the 400 grid only!
df = pd.read_csv("/mnt/parscratch/users/aca21xy/lbm/run_005/results/forces.csv")
cl = df.Cl.values[len(df)//2:]
cl = cl - cl.mean()
F = np.abs(np.fft.rfft(cl * np.hanning(len(cl)), n=16384))
f = np.fft.rfftfreq(16384, d=100)
print("St =", f[F.argmax()] * D / U)
