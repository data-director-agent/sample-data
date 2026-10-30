# Data Director Sample Data

Example synthetic data sets for testing the Data Director AI Agent prototypes, used in the Data Stewards Network workshop *Agentic AI for Research Data Management* (University of Sheffield, 24 November 2026).

> **All data, people, organisations, grant numbers, credentials and quotes are synthetic.** Use these files, or your own *de-identified, non-sensitive* examples, and nothing else. Never upload real research data.

## Contents

Five small datasets, each shaped like a folder a researcher might genuinely inherit.

| Dataset | Discipline | Format |
|---|---|---|
| **A. Hallam Moor sensors** | Environmental science | CSV, XLSX, text, R |
| **B. Perovskite XRD and SEM** | Materials physics | ASCII scans, PNG, INI, text |
| **C. Community wellbeing survey** | Social and health science | CSV, text |
| **D. Cylinder flow simulation** | Computational science (HPC) | YAML, SLURM logs, CSV, Python |
| **E. NHS staff interviews** | Social science, health services | Text, CSV |

Pick the one closest to your own discipline. Verify every claim an AI tool makes against the files themselves.

## Layout

```
participant-packs/   one zip per dataset (folder, README and crib sheet), plus the repository scenario cards
scenario-cards/      repository scenario cards
dataset-*/           README, crib sheet and the inherited folder for each dataset
```

Each dataset has a `crib-sheet.md` listing the planted problems and the true answers. Open it after the exercise to check what the AI tool got right and wrong.
