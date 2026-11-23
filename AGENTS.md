# Data Director Sample Data

## Purpose

Synthetic research-data folders for testing Data Director AI agent prototypes. There is no application code, build or test suite; the files are the product. The data sets are designed to test the functionality of the Data Director, both in terms of giving it opportunities to succeed in providing excellent advice and generating high-quality metadata, as well as creating situations where its abilities are challenged e.g contradictory requirements, decision points where human intervention is required, etc.

This repository must not contain any workshop activities or exercises. It only contains sample, dummy research data with some brief context to describe the purported origins of those files.

## Repository Layout

```
dataset-{A..I}-*/
  scenario-card.md  # Participant-facing description (the scenario card)
  crib-sheet.md   # Answer key: planted problems and true answers
  grant/          # Proposal, award letter and DMP (DMP also as .docx in C and I, .pdf in E)
  governance/     # Institutional data policy and any agreements or licences
  SHA256SUMS      # Checksums of the inherited folder; regenerate after any change
  <inherited folder>/   # The messy folder participants are given
```

## Rules

- Everything must stay synthetic: people, organisations, grant numbers, credentials, quotes. Never add real data.
- The inherited folders are deliberately flawed. Do not "fix" inconsistencies, odd names or missing files; they are planted problems.
- `grant/` and `governance/` sit outside the inherited folder and are not in `SHA256SUMS`. If you change one, update the crib sheet's DMP-check or earlier-stage section to match. Regenerate `dataset-C-health-social-survey/grant/dmp.docx`, `dataset-I-gut-microbiome-diet/grant/dmp.docx` and `dataset-E-nhs-interviews/grant/dmp.pdf` when their `dmp.md` changes (`pandoc -f gfm+hard_line_breaks`, then LibreOffice for the PDF).
- If you change an inherited folder, update that dataset's `crib-sheet.md` to match, and the scenario card table if the contents change.
- Update `CHANGELOG.md` for notable changes.
- Keep scenario-card.md free of participant-facing hints about planted problems; those belong only in crib sheets.
- One file is stored with Git LFS: `dataset-G-engineering-fatigue-rig/KTP_deck_fatigue/daq/run_017_strain_raw.csv` (see `.gitattributes`). It is the deliberately large file (criteria §9). Install Git LFS before cloning, and regenerate `SHA256SUMS` from the real file, never from the LFS pointer. Do not add other files to LFS without a reason.
