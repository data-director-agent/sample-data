# Dataset I: GutGrain dietary intervention and gut microbiome

Life and health sciences (human microbiome, nutrition). Twenty-one files: CSV, XLSX, gzipped FASTQ and text. All data, people and organisations are synthetic.

- `GutGrain_shared/`: the dataset folder.
- `grant/`: the grant application (`proposal.md`), award letter (`award-letter.md`) and data management plan (`dmp.md`, also as `dmp.docx`).
- `governance/`: the institution's research data policy and the research ethics committee's approval letter.

## Welcome

This folder is the shared drive of a nutrition trial, tidied up by a postdoctoral researcher on their way out of the lab. It brings together human-participant material of several kinds: sample records, sequencing summaries, lab measurements, questionnaires, food diaries and consent paperwork. It is a good example of a project folder where scientific data, administrative records and personal information sit side by side.

## Research background

Wholegrain cereals are linked to better metabolic health, but how barley fibre changes the gut microbiome of healthy adults is poorly understood. GutGrain is a 12-week dietary trial in which 60 healthy volunteers were randomly assigned to eat either wholegrain barley or refined grain study foods. Stool samples were collected at several visits and sequenced (shotgun metagenomics) to follow changes in the microbes and their genes, and short-chain fatty acids, the compounds gut bacteria make from fibre, were measured by gas chromatography. Volunteers also completed health questionnaires and food diaries. The study aims to produce a well-described dataset for the diet and microbiome community.

## What is in the folder

| Folder | What it holds |
|---|---|
| `samples/` | The sample manifest: every volunteer, visit, sample tube and study arm |
| `seq/` | Sequencing summaries and small excerpts of raw reads for the first batch |
| `metabolites/` | Short-chain fatty acid results from two lab batches |
| `questionnaires/` | The week 0 health questionnaire and its data dictionary |
| `food_diaries/` | Typed-up diaries for two volunteers |
| `consent/` | Consent form versions |
| `admin/` | A volunteer key spreadsheet |
| `notes/` | An email and a storage quote |
| `old/` | An earlier version of the manifest |
| `README_postdoc.txt` | The postdoc's unfinished handover notes |

Volunteers are identified by study codes `GG001` to `GG060`, and the arms are `WG` (wholegrain) and `RG` (refined grain).

## Context

- **Researcher:** a principal investigator running a 12-week dietary trial in which 60 healthy volunteers ate wholegrain barley or refined grain foods and gave stool samples, food diaries and health questionnaires. The project postdoc has just left. The folder holds the sample manifest, the first batch of sequencing summaries with a small subset of reads, short-chain fatty acid results, questionnaires, diaries, consent forms and notes.
- **Funder:** BBSRC (UK Research and Innovation), responsive mode research grant.
- **Journal (fictional):** *Journal of Nutritional Microbiome Science*. Policy: *"Sequence data must be deposited in a recognised public archive, and accession numbers given in the Data Availability statement. Data from human participants may be deposited under controlled access."*
- **Institution:** Nidderdale University (fictional).
- **Project stage:** the grant runs from February 2025 to January 2028. Recruitment is complete, the first of two sequencing batches is done and the first paper is planned for January.
- **Planned collection:** 360 stool samples from 60 volunteers (shotgun metagenomic sequencing, about 2 TB), targeted metabolite measurements (about 5 GB), and food diaries and health questionnaires (about 200 MB).
- **Where the data must go:** the journal requires a recognised public archive for sequence data and allows controlled access for human-participant data. The award letter asks for community-recognised public repositories where they exist. The University's policy asks for a repository that issues a persistent identifier, an INSDC archive (or a controlled-access archive such as the European Genome-phenome Archive) for sequences, and offers its own Figshare-based repository with open, embargoed and restricted access.
- **Plan:** the principal investigator wants the data shared before the first paper is submitted in January.

The researchers, volunteers, journal and institution are fictional. The funder, archives and place names are real.
