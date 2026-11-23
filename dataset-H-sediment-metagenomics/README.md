# Dataset H: River sediment antimicrobial resistance metagenomes

Life sciences (environmental microbiology and genomics). Eighteen files: tab- and comma-separated tables, gzipped FASTQ, text, a Nextflow configuration and an R script. All data, people and organisations are synthetic.

- `AMR_sediment_metagenomes/`: the dataset folder.
- `grant/`: the grant proposal (`proposal.md`), award letter (`award-letter.md`) and data management plan (`dmp.md`).
- `governance/`: the institution's research data policy and the material transfer agreement with the overseas partner.

## Welcome

This folder belongs to a final-year PhD student who has sequenced DNA from river mud to see how wastewater affects antibiotic resistance. It contains the sample metadata, sequencing and quality-control summaries, a few small excerpts of the raw sequence reads, the analysis pipeline and the resulting gene counts. It is a good example of a modern bioinformatics project folder.

## Research background

Treated wastewater carries antibiotic residues, resistant bacteria and mobile genetic elements into rivers, and river-bed sediment may store and amplify antimicrobial resistance (AMR) genes long after the water has passed. The HOLME-AMR project takes surface sediment from the River Holme above and below a wastewater treatment works and applies shotgun metagenomics: sequencing all the DNA in a sample rather than a single gene. The reads are profiled to identify which microbes are present and annotated against a public resistance-gene database, and the abundance of selected resistance genes is compared between the upstream and downstream sites. Comparison samples from a partner laboratory abroad extend the picture to another catchment.

## What is in the folder

| Folder or file | What it holds |
|---|---|
| `samples.tsv` | Sample metadata (sites, dates, locations and sample types) |
| `sample_sheet_sequencing.csv` | The sequencing sample sheet |
| `fastq/` | Small excerpts (1,000 reads each) of paired-end raw reads for three samples, with checksums |
| `qc/` | Read-quality and taxonomic-classification summaries |
| `pipeline/` | The Nextflow configuration and an R script that turns annotation output into gene abundances |
| `results/` | Normalised counts of selected resistance genes per sample |
| `notes/` | Typed-up lab notebook extracts and a note from the overseas partner |
| `old/` | An earlier version of the sample table |

Sample IDs (`S01`, `S02` and so on) link the files together. Sites are coded `HR-UP` (upstream) and `HR-DN` (downstream).

## Context

- **Researcher:** a final-year PhD student who sequenced river-bed sediment to measure antibiotic resistance genes upstream and downstream of a wastewater treatment works, with comparison samples from a partner laboratory abroad. The folder holds the sample metadata, sequencing and QC summaries, a small subset of the raw reads (about 1 MB) and the pipeline.
- **Funder:** BBSRC (UK Research and Innovation), research grant with an associated studentship.
- **Journal (fictional):** *Journal of Freshwater Microbial Ecology*. Policy: *"Raw sequence reads must be deposited in a member archive of the International Nucleotide Sequence Database Collaboration, and accession numbers given in the Data Availability statement before acceptance."*
- **Institution:** Holmebridge University (fictional).
- **Project stage:** the grant runs from October 2024 for 36 months. Fieldwork and sequencing are done and the first paper is being drafted.
- **Planned collection:** paired-end shotgun sequencing of surface sediment from an upstream and a downstream site on the River Holme (about 8 samples, two visits), with sample metadata and processed AMR gene tables. Expected volume: about 200 GB of raw reads.
- **Where the data must go:** the journal requires an INSDC archive for raw reads. The award letter asks for community-recognised public repositories where they exist. The University's policy accepts an INSDC archive such as ENA for raw reads, asks for a persistent-identifier repository such as Zenodo for other data, and requires a metadata record in its research information system. It has no repository of its own.
- **Plan:** the supervisor wants the raw reads in a public archive and the processed tables in a repository before the paper is submitted.

The researchers, journal, partner institute and projects are fictional. The funder, archives and countries are real.
