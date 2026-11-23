# Scenario card: Dataset A, Hallam Moor sensors

Welcome! This is the working folder of an environmental scientist who has spent a year listening to a moor. Low-cost, solar-powered logger nodes were strung up a hillside to record how temperature, humidity, soil moisture and air quality change with height, and the researcher now has a paper to write and data to share. The folder is a realistic mix of raw logger exports, calibration records, field notes and a half-finished plotting script. Expect the sort of untidiness that builds up over a field season.

Environmental science. Six moorland logger nodes, CSV, XLSX, text and R. All data, people and organisations are synthetic.

- `HallamMoor_loggers/`: the dataset folder.
- `grant/`: the grant proposal (`proposal.md`), award letter (`award-letter.md`) and data management plan (`dmp.md`).
- `governance/`: the institution's research data policy and the land access agreement.

## Research background

Hallam Moor is an upland peat moor in the fictional Pennine Vale, restored in recent years by re-wetting. Restoration is meant to raise the water table and cool the near-surface microclimate, but most of the evidence comes from a few heavily instrumented sites. The MICROMOOR project asks whether networks of cheap loggers can resolve how microclimate and soil moisture change with elevation at a scale useful to land managers. The nodes sit on privately owned land along an elevation transect and log air temperature, relative humidity, soil temperature, soil moisture and PM2.5 every 30 minutes. Results are compared with a commercial reference weather station.

## What is in the folder

| Folder | What it holds |
|---|---|
| `data/` | Logger exports in CSV, from the first deployment period and the later network |
| `calibration/` | Node locations and elevations, and sensor calibration offsets |
| `fieldnotes/` | The researcher's visit notes from 2024 |
| `reference/` | Hourly observations from a nearby commercial weather station |
| `analysis/` | An R script for plotting the temperature gradient |

Variable names in the CSV files are abbreviated (for example `ta` for air temperature and `vwc` for volumetric water content). The field notes and calibration files are the best places to learn what the columns mean.

## Context

- **Researcher:** an environmental scientist with a year of microclimate sensor data (two CSV files, about 4 MB) for a paper.
- **Funder:** NERC (UK Research and Innovation).
- **Journal (fictional):** *Journal of Upland Ecology*. Policy: *"Data underpinning the results must be deposited in a publicly accessible repository that issues a DOI, and that DOI cited in the Data Availability statement. Data must be available at publication under CC BY 4.0 or CC0."*
- **Institution:** University of the Pennine Vale (fictional), with its own repository and policy.
- **Stage:** the monitoring year is over and a paper is being written. The plan was to log air temperature, relative humidity, soil temperature, soil moisture and PM2.5 every 30 minutes for 12 months, as CSV, with calibration and site records alongside. The outline data management plan estimated about 5 MB.
- **Where the data must go:** the NERC award letter says the data must be offered to the NERC Environmental Data Service and not deposited elsewhere in its place. The journal requires a repository that issues a DOI. The University policy says deposit with a funder's data centre satisfies it.
- **Budget for deposit fees:** none.
- **Plan:** the researcher wants to deposit the data before the paper is published, so that the DOI can be cited in the Data Availability statement.

The researchers, journals and projects are fictional. The funders and repositories are real.
