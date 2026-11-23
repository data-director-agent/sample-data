# Dataset D: Cylinder flow simulation

Computational science. 78 files: YAML, SLURM logs, CSV, Python. All data, people and organisations are synthetic.

- `lbm_cylinder_study/`: the dataset folder.
- `grant/`: the grant proposal (`proposal.md`), award letter (`award-letter.md`) and data management plan (`dmp.md`).
- `governance/`: the institution's research data policy, the mesh software licence and an extract of the consortium agreement.

## Welcome

This folder is the output of a doctoral researcher's computational fluid dynamics study, left behind when the project ended. It holds the code used for post-processing, the input files and job logs for each simulation run, small result tables, and a note pointing to a very large volume of field output that never left the cluster. It is a good example of what a simulation study looks like once the scripts and logs are all that remain.

## Research background

When a fluid flows past a cylinder, it can shed alternating vortices into the wake. How quickly that happens, expressed as the Strouhal number, and how much drag and lift the cylinder feels, depend on the Reynolds number, a dimensionless measure of how fast and viscous the flow is. This study simulates two-dimensional flow past a cylinder at low Reynolds numbers (roughly 20 to 120) using the lattice Boltzmann method (LBM), a mesoscopic technique that tracks populations of fluid particles on a regular grid. Each case was run at two grid resolutions to check that the answers do not depend on the mesh, and drag, lift and Strouhal number were compared with the literature. The work is part of a European doctoral network training researchers in LBM, which plans to release shared tools and benchmark cases.

## What is in the folder

| File or folder | What it holds |
|---|---|
| `run_001` onwards | One folder per simulation run, each with the input file (`input.yaml`), the batch job script and log, and result tables (forces and residuals) |
| `results_summary.csv` | A hand-assembled table of Strouhal number and mean drag for each case |
| `solver/` | The Python lattice Boltzmann solver and its requirements |
| `vendor/` | Third-party files used in the study |
| `postproc/` | The Python script that extracts the Strouhal number |
| `config.ini`, `notes.txt` | Solver configuration and the researcher's running log |
| `du_report.txt` | A disk-usage report for the scratch storage where the full field output remains |

Run folders are numbered in order of submission, not by Reynolds number, so use `results_summary.csv` or each run's `input.yaml` to see which case is which.

## Context

- **Researcher:** a doctoral researcher with a flow-simulation study: code, inputs, logs and result tables (under 1 MB), plus 2.1 TB of field output on scratch storage.
- **Funder:** European Commission, Horizon Europe (Marie Skłodowska-Curie Actions Doctoral Network).
- **Journal (fictional):** *Computational Fluid Dynamics Letters*. Policy: *"Source code and the data needed to reproduce the figures must be deposited with a DOI. Datasets larger than 50 GB should be described, and a representative subset deposited."*
- **Institution:** Northmoor Institute of Technology (fictional), one partner in a doctoral network.
- **Other facts:** the code was adapted from an open-source project. A commercial mesh file was used. The project ended and the scratch storage will be cleaned.
- **Stage:** the project has ended and the paper is being written. Nothing has been deposited yet.
- **Planned:** twelve simulation cases (six Reynolds numbers on two grids), with outputs kept on the cluster. The consortium data management plan expected about 200 GB for this doctoral researcher.
- **Where data must go:** the plan names Zenodo. The award letter asks for deposit in a trusted repository by the end of the funding period (31 December 2026). The journal asks for a deposit with a DOI. The Institute's policy names no repository.
- **Plan:** deposit the code and results before the paper is published.
- **Budget for deposit fees:** none.

The researchers, journals and projects are fictional. The funders and repositories are real.
