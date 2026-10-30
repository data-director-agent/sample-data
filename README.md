# sample-data

Example synthetic data sets for testing the Data Director AI Agent prototypes, used in the Data Stewards Network workshop *Agentic AI for Research Data Management* (University of Sheffield, 24 November 2026).

> **All data, people, organisations, grant numbers, credentials and quotes are synthetic.** Use these files, or your own *de-identified, non-sensitive* examples, and nothing else. Never upload real research data.

## Contents

Four small datasets, each shaped like a folder a researcher might genuinely inherit.

| Dataset | Discipline | Format |
|---|---|---|
| **A. Hallam Moor sensors** | Environmental science | CSV, XLSX, text, R |
| **B. Perovskite XRD and SEM** | Materials physics | ASCII scans, PNG, INI, text |
| **C. Community wellbeing survey** | Social and health science | CSV, text |
| **D. Cylinder flow simulation** | Computational science (HPC) | YAML, SLURM logs, CSV, Python |

Pick the one closest to your own discipline. Verify every claim an AI tool makes against the files themselves.

## Layout

```
participant-packs/            one zip per dataset, plus the repository scenario cards
scenario-cards/               repository scenario cards
shared/                       README template and verification / field log template
dataset-*/participant-pack/   the same datasets, unzipped
```
