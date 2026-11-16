# Data Director Sample Data

Example synthetic data sets for testing the [Data Director AI Agent prototypes](https://github.com/data-director-agent/data-director). To download this data, please click "Code" and then "Download ZIP".

> [!CAUTION]
> All data, people, organisations, grant numbers, credentials and quotes are **synthetic**. _Never add or upload real research data._

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
dataset-*/           README, crib sheet, grant/, governance/ and the inherited folder for each dataset
```

> [!NOTE]
> Each dataset has a `crib-sheet.md` listing the planted problems and the true answers. It is an answer key: do not give it, or the dataset folder that contains it, to the agent under test. Point the agent at the inherited folder only.

Each dataset also has a `grant/` folder with a synthetic grant proposal, award letter and data management plan (DMP), each from a different fictional institution and following a real funder's template. To test checking data sharing against a DMP (Blueprint R8), give the agent `grant/dmp.md` alongside the inherited folder. The crib sheet's DMP-check section lists the planted gaps and one compliant decoy. Dataset C's plan is also provided as `grant/dmp.docx` and dataset E's as `grant/dmp.pdf`, to test reading a plan in the format researchers usually have.

Each dataset also has a `governance/` folder with the fictional institution's research data policy and, for datasets A, B and D, the agreements that govern the data (a land access agreement, a collaboration agreement, a software licence and a consortium agreement extract). Together with the award letter, these stand for the documents a researcher holds from the stages before data collection: funding, approvals and agreements. Give them to the agent alongside the inherited folder; the crib sheet's earlier-stage documents section lists what they should lead to.
