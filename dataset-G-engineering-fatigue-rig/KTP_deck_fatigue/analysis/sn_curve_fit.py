"""Fit a Basquin S-N curve to the panel results. TB, Mar 2026.

Needs numpy and matplotlib. Reads damage_summary.csv (written by hand from
the MATLAB output and the specimen log).
"""
import csv
import numpy as np
import matplotlib.pyplot as plt

rows = list(csv.DictReader(open("damage_summary.csv")))
S = np.array([float(r["stress_range_MPa"]) for r in rows])
N = np.array([float(r["cycles"]) for r in rows])

# log N = log C - m log S
m, logC = np.polyfit(np.log10(S), np.log10(N), 1)
print(f"m = {-m:.2f}, C = {10**logC:.3g}")

plt.loglog(N, S, "o")
plt.xlabel("Cycles to failure")
plt.ylabel("Stress range (MPa)")
plt.title("HC-DP400 4-point bend fatigue")
plt.savefig("sn_curve.png", dpi=200)
