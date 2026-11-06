# Changelog

## Unreleased

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
