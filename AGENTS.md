# Data Director Sample Data

## Purpose

Synthetic research-data folders for testing Data Director AI agent prototypes. There is no application code, build or test suite; the files are the product. The data sets are designed to test the functionality of the Data Director, both in terms of giving it opportunities to succeed in providing excellent advice and generating high-quality metadata, as well as creating situations where its abilities are challenged e.g contradictory requirements, decision points where human intervention is required, etc.

This repository must not contain any workshop activities or exercises. It only contains sample, dummy research data with some brief context to describe the purported origins of those files.

## Repository Layout

```
dataset-{A..E}-*/
  README.md       # Participant-facing description
  crib-sheet.md   # Answer key: planted problems and true answers
  SHA256SUMS      # Checksums of the inherited folder; regenerate after any change
  <inherited folder>/   # The messy folder participants are given
```

## Rules

- Everything must stay synthetic: people, organisations, grant numbers, credentials, quotes. Never add real data.
- The inherited folders are deliberately flawed. Do not "fix" inconsistencies, odd names or missing files; they are planted problems.
- If you change an inherited folder, update that dataset's `crib-sheet.md` to match, and the README table if the contents change.
- Update `CHANGELOG.md` for notable changes.
- Keep README.md free of participant-facing hints about planted problems; those belong only in crib sheets.
