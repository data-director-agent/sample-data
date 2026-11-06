# Changelog

## Unreleased

- Added a GitHub Actions CI workflow (`.github/workflows/ci.yml`): verifies each dataset's `SHA256SUMS` (including that no file is unlisted), checks required files exist, and lints Markdown (`.markdownlint-cli2.jsonc`).
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
