# Data Director Sample Data

Example synthetic data sets for testing the [Data Director AI Agent prototypes](https://github.com/data-director-agent/data-director). To download this data, please click "Code" and then "Download ZIP".

> [!CAUTION]
> All data, people, organisations, grant numbers, credentials and quotes are **synthetic**. _Never add or upload real research data._

## Contents

Nine datasets, each shaped like a folder a researcher might genuinely inherit. All are small except dataset G, which contains one deliberately large file (about 25 MB).

| Dataset | Discipline | Level | Format | Challenge types |
|---|---|---|---|---|
| **A. Hallam Moor sensors** | Environmental science | Core | CSV, XLSX, text, R | Contradiction, policy conflict, hidden sensitivity, stale information, prompt injection |
| **B. Perovskite XRD and SEM** | Materials physics | Extension | ASCII scans, PNG, INI, text | Contradiction, policy conflict, missing information, stale information, out of scope |
| **C. Community wellbeing survey** | Social and health science | Core | CSV, text | Policy conflict, human decision, hidden sensitivity, stale information |
| **D. Cylinder flow simulation** | Computational science (HPC) | Extension | YAML, SLURM logs, CSV, Python | Contradiction, policy conflict, hidden sensitivity |
| **E. NHS staff interviews** | Social science, health services | Core | Text, CSV | Policy conflict, human decision, hidden sensitivity |
| **F. Mill Voices oral histories** | Arts and humanities (oral history) | Core | Text, TEI XML, CSV, PNG, XLSX, DOCX | Contradiction, policy conflict, missing information, human decision, hidden sensitivity, stale information, out of scope |
| **G. Composite deck fatigue rig** | Engineering (structural) | Extension | CSV (one 25 MB), XLSX, INI, JSON, STEP, MATLAB, Python, DOCX, PNG, email | Contradiction, policy conflict, human decision, hidden sensitivity, stale information, large file |
| **H. River sediment metagenomes** | Life sciences (environmental genomics) | Core | TSV, CSV, FASTQ, text, Nextflow, R | Policy conflict, human decision, hidden sensitivity, missing information, stale information, out of scope |
| **I. GutGrain diet and gut microbiome** | Life and health sciences (human microbiome) | Extension | CSV, XLSX, FASTQ, text | Policy conflict, human decision, hidden sensitivity, internal inconsistency, stale information |

## Layout

```
docs/                criteria for good test data sets
dataset-*/           README, crib sheet, grant/, governance/ and the inherited folder for each dataset
```

> [!NOTE]
> Each dataset has a `crib-sheet.md` listing the planted problems and the true answers. It is an answer key: do not give it, or the dataset folder that contains it, to the agent under test. Point the agent at the inherited folder only.

Each dataset also has a `grant/` folder with a synthetic grant proposal, award letter and data management plan (DMP), each from a different fictional institution and following a real funder's template. To test checking data sharing against a DMP (Blueprint R8), give the agent `grant/dmp.md` alongside the inherited folder. The crib sheet's DMP-check section lists the planted gaps and at least one compliant decoy. Dataset I's plan has gaps that can be found from the plan alone, as well as against the folder. Dataset C's and dataset I's plans are also provided as `grant/dmp.docx`, and dataset E's as `grant/dmp.pdf`, to test reading a plan in the format researchers usually have.

Each dataset also has a `governance/` folder with the fictional institution's research data policy and, for datasets A, B and D, the agreements that govern the data (a land access agreement, a collaboration agreement, a software licence and a consortium agreement extract), and for dataset I the ethics approval letter. Together with the award letter, these stand for the documents a researcher holds from the stages before data collection: funding, approvals and agreements. Give them to the agent alongside the inherited folder; the crib sheet's earlier-stage documents section lists what they should lead to.

> [!NOTE]
> Dataset G's large data file (`KTP_deck_fatigue/daq/run_017_strain_raw.csv`) is stored with [Git LFS](https://git-lfs.com/). To clone with it, install Git LFS first. If you download a ZIP and that file is only a few lines of text starting `version https://git-lfs.github.com/spec/v1`, you have the LFS pointer, not the data: download the file on its own from GitHub instead.
