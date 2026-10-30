# Data Director Sample Data

## Purpose

Synthetic research-data folders for testing Data Director AI agent prototypes. There is no application code, build or test suite; the files are the product.

This repository must not contain any workshop activities or exercises. It only contains sample, dummy research data with some brief context to describe the purported origins of those files.

## Repository Layout

```
dataset-{A..E}-*/
  README.md       # Participant-facing description
  crib-sheet.md   # Answer key: planted problems and true answers
  <inherited folder>/   # The messy folder participants are given
```

## Rules

- Everything must stay synthetic: people, organisations, grant numbers, credentials, quotes. Never add real data.
- The inherited folders are deliberately flawed. Do not "fix" inconsistencies, odd names or missing files; they are planted problems.
- If you change an inherited folder, update that dataset's `crib-sheet.md` to match, and the README table if the contents change.
- Keep README.md free of participant-facing hints about planted problems; those belong only in crib sheets.

## Known Staleness

The root `README.md` "Layout" section still mentions `participant-packs/` and `scenario-cards/`, which were removed in recent commits. Fix it if you touch the README.
