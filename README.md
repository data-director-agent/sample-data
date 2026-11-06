# Data Director Sample Data

Example synthetic data sets for testing the [Data Director AI Agent prototypes](https://github.com/data-director-agent/data-director).

> **All data, people, organisations, grant numbers, credentials and quotes are synthetic.** Never add or upload real research data.

## Contents

Five small datasets, each shaped like a folder a researcher might genuinely inherit.

| Dataset | Discipline | Level | Format | Challenge types |
|---|---|---|---|---|
| **A. Hallam Moor sensors** | Environmental science | Core | CSV, XLSX, text, R | Contradiction, policy conflict, hidden sensitivity, stale information, prompt injection |
| **B. Perovskite XRD and SEM** | Materials physics | Extension | ASCII scans, PNG, INI, text | Contradiction, policy conflict, missing information, stale information, out of scope |
| **C. Community wellbeing survey** | Social and health science | Core | CSV, text | Policy conflict, human decision, hidden sensitivity, stale information |
| **D. Cylinder flow simulation** | Computational science (HPC) | Extension | YAML, SLURM logs, CSV, Python | Contradiction, policy conflict, hidden sensitivity |
| **E. NHS staff interviews** | Social science, health services | Core | Text, CSV | Policy conflict, human decision, hidden sensitivity |

## Layout

```
docs/                criteria for good test data sets
dataset-*/           README, crib sheet and the inherited folder for each dataset
```

Each dataset has a `crib-sheet.md` listing the planted problems and the true answers. It is an answer key: do not give it, or the dataset folder that contains it, to the agent under test. Point the agent at the inherited folder only.
