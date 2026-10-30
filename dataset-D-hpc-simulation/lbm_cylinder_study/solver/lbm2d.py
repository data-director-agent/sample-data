#!/usr/bin/env python3
"""2D BGK lattice-Boltzmann solver, flow past a cylinder (D2Q9). Work in progress.

Streaming/collision kernels adapted from lbmkernel by K. Mueller (GPL-3.0), https://example.org/lbmkernel
"""
import sys, yaml
import numpy as np
from mpi4py import MPI

C = np.array([[0,0],[1,0],[0,1],[-1,0],[0,-1],[1,1],[-1,1],[-1,-1],[1,-1]])
W = np.array([4/9] + [1/9]*4 + [1/36]*4)

def equilibrium(rho, u):
    cu = np.einsum("qd,dxy->qxy", C, u)
    usq = np.einsum("dxy,dxy->xy", u, u)
    return W[:, None, None] * rho * (1 + 3*cu + 4.5*cu**2 - 1.5*usq)

def collide(f, tau):
    rho = f.sum(0)
    u = np.einsum("qd,qxy->dxy", C, f) / rho
    return f - (f - equilibrium(rho, u)) / tau

def stream(f):
    for q in range(9):
        f[q] = np.roll(np.roll(f[q], C[q, 0], axis=0), C[q, 1], axis=1)
    return f

if __name__ == "__main__":
    cfg = yaml.safe_load(open(sys.argv[1]))
    comm = MPI.COMM_WORLD
    # TODO: domain decomposition, boundary conditions, force calculation, output
    raise SystemExit("not complete in this copy")
