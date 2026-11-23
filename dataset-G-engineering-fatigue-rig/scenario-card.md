# Scenario card: Dataset G, Composite deck panel fatigue tests

Welcome! This folder holds the results of a two-year engineering partnership between a university and a bridge-deck manufacturer. It was left by the project's KTP Associate, who ran the fatigue tests and has since moved to the company. It combines raw data acquisition output, analysis scripts, test procedures, CAD geometry and correspondence, including one very large strain-gauge file.

Engineering (structural). Eighteen files: CSV, XLSX, INI, JSON, STEP, MATLAB, Python, Word, PNG and email. One file, `daq/run_017_strain_raw.csv`, is large: about 25 MB and 260,000 rows (stored with Git LFS). All data, people and organisations are synthetic.

- `KTP_deck_fatigue/`: the dataset folder.
- `grant/`: the grant application (`proposal.md`), grant offer letter (`award-letter.md`) and data management plan (`dmp.md`).
- `governance/`: the institution's research data policy, the collaboration agreement extract and a non-disclosure agreement with the company partner.

## Research background

Footbridge decks made of fibre-reinforced polymer (FRP) sandwich panels are light and corrosion-resistant, but clients increasingly ask for evidence that they will survive millions of load cycles. The company behind the HC-DP400 panel had no fatigue testing capability. In this Knowledge Transfer Partnership (KTP), a university structural engineering group tested eight full-size panels in four-point bending on a servo-hydraulic rig, with eight strain gauges per panel, cycling each at a constant load ratio until failure or two million cycles. The aim was to derive an S-N curve (stress range against cycles to failure) and a damage-based design check, which the company can use in its design process and the university can publish.

## What is in the folder

| Folder or file | What it holds |
|---|---|
| `specimen_log.xlsx` | The eight panels, their loads, cycle counts and failure modes |
| `daq/` | Data acquisition configuration, channel map, a run summary, a preview of one run, and the full strain record for run 017 |
| `analysis/` | MATLAB rainflow-counting scripts and a Python S-N curve fit, with a damage summary table |
| `cad/` | Panel geometry in STEP format |
| `docs/` | The test procedure (TP-04) and a sketch of the rig set-up |
| `emails/` | Correspondence about the paper draft and the rig booking |
| `README_associate.txt` | The Associate's handover notes |

The large file `run_017_strain_raw.csv` holds a full test at 2 kHz (about 260,000 rows). Strain values are in microstrain, and `daq/channel_map.json` says where each gauge sits on the panel.

## Context

- **Researcher:** an academic structural engineer who led a two-year Knowledge Transfer Partnership with a composites company. The KTP Associate who ran the fatigue tests has since joined the company. The academic wants to publish the results and deposit the data.
- **Funder:** Innovate UK (Knowledge Transfer Partnership), with an industrial partner.
- **Journal (fictional):** *Journal of Composite Bridge Engineering*. Policy: *"Data supporting the results must be deposited in a repository that issues a DOI, cited in the Data Availability statement. 'Available on request' statements are not accepted."*
- **Institution:** Aire Valley University (fictional).
- **Budget for deposit fees:** none.
- **Project stage:** the two-year partnership ended on 31 July 2026. The tests are finished and a paper draft has been sent to the company.
- **Planned collection:** strain time histories from eight gauges on each of eight panels, plus actuator load and displacement, cycles to failure, failure modes and photographs. The data acquisition software writes TDMS files, which are exported to CSV. No overall volume is stated in the project documents.
- **Where the data must go:** the journal requires a repository that issues a DOI. The grant offer letter names no repository. The University has no repository of its own and its policy asks for a suitable subject or general-purpose repository (for example Zenodo).
- **Plan:** the academic lead wants to deposit the data in a repository before the paper is published, so that the DOI can go in the Data Availability statement.

The researchers, company, journal and projects are fictional. The funder and repositories are real.
