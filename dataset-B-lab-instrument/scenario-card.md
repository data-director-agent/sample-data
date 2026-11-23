# Scenario card: Dataset B, Perovskite XRD and SEM

Welcome! This folder belongs to a materials physicist who has just finished a first round of experiments on manganese-doped perovskite thin films and needs to turn them into a paper. It contains X-ray diffraction patterns, electron microscope images, a sample log and a few pages from the electronic lab notebook, all as left by the person who ran the measurements.

Materials physics. 26 files: ASCII scans, PNG, INI, text. All data, people and organisations are synthetic.

- `Perovskite_XRD_Novak_inherited/`: the dataset folder.
- `grant/`: the grant proposal (`proposal.md`), award letter (`award-letter.md`) and data management plan (`dmp.md`).
- `governance/`: the institution's research data policy and the collaboration agreement with the industrial partner.

## Research background

Caesium lead bromide (CsPbBr₃) is a halide perovskite that emits bright, narrow green light, which makes it attractive for displays and lighting. The problem is stability: films degrade within weeks in ambient air. Adding a little manganese may stabilise the crystal lattice. The project makes a series of films with increasing manganese content (0 to 15 atomic %), characterises them by powder X-ray diffraction (XRD) to see which crystal phases are present and by scanning electron microscopy (SEM) to see the film morphology, and then ages them to see how the structure changes over time. Some precursor material comes from an industrial partner, so that the findings transfer to commercial-scale material.

## What is in the folder

| Folder or file | What it holds |
|---|---|
| `sample_log.csv` | The six samples (S1 to S6), their manganese content, precursor batch and anneal conditions |
| `xrd/` | XRD scans as plain-text `.xy` files (2θ against intensity), a silicon standard, and one proprietary vendor file in `vendor_raw/` |
| `sem/SEM_041224/` | Eight SEM images and the session settings file |
| `notebook/` | Typed-up electronic lab notebook pages |

Sample names, dates and operator initials are encoded in file names and headers. The `.xy` files are readable in any text editor; the vendor file needs the instrument manufacturer's software.

## Context

- **Researcher:** a materials physicist with X-ray diffraction patterns and electron microscope images for a paper (about 2 MB in total, plus one proprietary instrument file).
- **Funder:** EPSRC (New Investigator Award).
- **Journal (fictional):** *Journal of Emerging Photonic Materials*. Policy: *"Raw and processed data must be deposited in an open repository with a persistent identifier before acceptance. Restrictions are allowed only with a stated justification."*
- **Institution:** Calderbrook University (fictional).
- **Stage:** the first round of experiments is finished and a paper is being written. The plan was to measure XRD patterns for each film as made and after ageing in air, take SEM images, and keep a sample log. The draft data management plan estimated under 5 GB.
- **Where the data must go:** no funder or institution names a single repository. EPSRC expects data underpinning papers to be accessible, with an access statement in the paper. The University policy allows its own repository (Figshare for Institutions) or a suitable external one, by the date of publication. The journal requires an open repository with a persistent identifier before acceptance.
- **Budget for deposit fees:** none.
- **Plan:** the researcher wants to deposit the data before the paper is published.

The researchers, journals and projects are fictional. The funders and repositories are real.
