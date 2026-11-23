# Changelog

## Unreleased

- Added scenario facts (project stage, planned collection, where the data must go, plan to deposit before the paper is published) to the Context section of every dataset README, and a "Facilitator key: data journey" section to every crib sheet (governance record, repository decision, fall-back README and data dictionary, deposit-stage key), so each dataset supports the four workshop activities. Dataset E gains a fictional journal and its policy. No inherited folders changed, so `SHA256SUMS` are unaffected.

- Added a friendly introduction, research background and folder guide to each dataset README (A to I), to help someone unfamiliar with the data pick it up and use it. No inherited folders changed, so `SHA256SUMS` and the crib sheets are unaffected.
- Replaced made-up data repositories with real ones. The institutions stay fictional, so their own repositories now run on real platforms rather than having invented names: Figshare for Institutions (B, I) and DSpace (F). D deposits on plain Zenodo (no fictional community), and H's processed tables go to Zenodo. F's copy now goes to the British Library's oral history collections; the photograph lender becomes the fictional Netherbrook Local History Society (in `image_catalogue.xlsx` and the `IMG_0031.png` metadata). G-14 now uses a real closure: TB's notes and the DMP point to DANS EASY, which stopped taking deposits in December 2023 and was replaced by the DANS Data Stations; G's policy now says the University has no repository of its own. Updated the crib sheets, the F README and the `SHA256SUMS` for F and G.

- Added dataset **I. GutGrain diet and gut microbiome** (life and health sciences, extension): a BBSRC-funded dietary intervention with stool metagenomes, SCFA measurements, food diaries and health questionnaires. Its data management plan has four gaps findable from the plan alone (no repository, consent too narrow for sharing, no retention period, an ineligible post-grant storage cost) and three compliant decoys. The inherited folder adds traps on a linkage key stored with the data, a withdrawn volunteer, human reads, identifying free text and mixed units. The plan is also provided as `grant/dmp.docx`; `governance/` holds the institution's policy and an ethics approval letter.
- Added three datasets to widen the disciplinary range (criteria §7), each with a README, crib sheet, `grant/`, `governance/` and `SHA256SUMS`:
  - **F. Mill Voices oral histories** (arts and humanities, core): AHRC-funded oral history transcripts, TEI, recording agreements and loaned photograph scans. Traps on rights statements, closed and unsigned releases, a named third party, orphan works and identifiable children.
  - **G. Composite deck fatigue rig** (engineering, extension): Innovate UK KTP strain-gauge data, CAD, MATLAB and partner emails. Traps on units and sample rate, credentials in a config file, commercial confidentiality, export control and publication timing. Holds the repository's one deliberately large file (criteria §9).
  - **H. River sediment metagenomes** (life sciences, core): BBSRC-funded metagenomic sequencing with samples from an overseas partner. Traps on access and benefit-sharing, human reads, a sample swap and a stale archive accession.
- Dataset G's large file (`run_017_strain_raw.csv`, about 25 MB) is stored with Git LFS (`.gitattributes`). CI checks out LFS objects before verifying checksums.

- Fixed a code-scanning alert in dataset D: `solver/lbm2d.py` now opens its config file in a `with` block so the file handle is closed. Updated that dataset's `SHA256SUMS` and crib sheet to match.
- Added documents from the stages before data collection, outside the inherited folders: an award letter for each dataset (`grant/award-letter.md`), each fictional institution's research data policy (`governance/institutional-data-policy.md`), and the agreements that govern the data in A (land access agreement), B (collaboration agreement with the industrial partner) and D (mesh software licence and consortium agreement extract). Each crib sheet has a new earlier-stage documents section (`X-PRE-` IDs, one decoy each). B-19 now has an alternative answer when the current policy (v3.0) is given.
- Added Word and PDF copies of two DMPs (`dataset-C-health-social-survey/grant/dmp.docx`, `dataset-E-nhs-interviews/grant/dmp.pdf`), generated from the Markdown, for testing whether an agent can read a plan in the format researchers usually have.
- CI: files in `governance/` are excluded from the `SHA256SUMS` check, like `grant/`.
- Added a GitHub Actions CI workflow (`.github/workflows/ci.yml`): verifies each dataset's `SHA256SUMS` (including that no file is unlisted), checks required files exist, and lints Markdown (`.markdownlint-cli2.jsonc`).
- Added `CITATION.cff` (Joe Heffer, Ethel Mendocilla Sato).
- Added a synthetic grant proposal and data management plan to each dataset (`grant/proposal.md`, `grant/dmp.md`) for testing Blueprint R8 (checking data sharing against the DMP). Each follows a real funder template: NERC Outline DMP (A), DCC institutional template for EPSRC (B), ESRC DMP (C), Horizon Europe DMP (D), NIHR DAMP (E). Each crib sheet has a new DMP-check section with the planted gaps and one compliant decoy.
- Gave each dataset a distinct fictional institution (University of the Pennine Vale, Calderbrook University, Lindenford University, Northmoor Institute of Technology, Don Valley University). Replaced "Example University" in the inherited files.
- Changed dataset D's funder to Horizon Europe (MSCA Doctoral Network) and dataset E's to an NIHR Doctoral Fellowship. Updated E's information sheet, the READMEs, crib sheets and all five `SHA256SUMS`.
- Dataset E: added a signed P12 consent form whose filename contains a participant's full name (synthetic), so a metadata-only scan leaks personal data (E-17). Updated the crib sheet, README file count and `SHA256SUMS`.

## 0.2.0

- Reviewed all data sets against `docs/criteria.md`.
- Added an indirect prompt-injection trap (A-17) and a stale-information trap (A-18) to dataset A.
- Added an out-of-scope trap (B-18) and a stale-information trap (B-19) to dataset B.
- Added realistic mess (copies, `old/` folders, `.DS_Store`, an emailed methods note) to datasets C and E.
- Standardised crib sheets: level, hand-check time, challenge types, easy wins, acceptable alternatives. Removed workshop wording.
- Removed hint-leaking "Other facts" bullets from dataset READMEs and corrected size claims.
- Fixed the stale root README layout. Added `LICENSE-DATA.md` (CC BY 4.0).
- Added `SHA256SUMS` per dataset folder.

## 0.1.0

- Initial five data sets.
