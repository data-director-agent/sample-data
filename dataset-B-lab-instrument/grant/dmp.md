# Data Management Plan

**Template:** Calderbrook University generic DMP (DMPonline, DCC checklist)
**Project:** Manganese doping for air-stable halide perovskite emitters (EPSRC EP/X999999/1, fictional)
**PI:** Dr S. Haldane
**Version:** 0.3 draft, 14 Oct 2024. Not yet reviewed by the Research Data Service.

## 1. Data collection

**What data will you collect or create?**
- Powder XRD patterns for each film (as-made and aged), about 2,500 points per scan.
- SEM micrographs of film morphology.
- Elemental composition from EDX for every sample, reported alongside the XRD data.
- Sample preparation log.
Estimated total volume under 5 GB.

**How will the data be collected or created?**
XRD on the departmental diffractometer, exported directly from the instrument PC to ASCII `.xy` format. Vendor binary files are not kept, because the ASCII export contains all the information. SEM images are saved as TIFF with the scale bar and pixel calibration embedded. The sample log is kept as a CSV file. File names follow `SampleID_scan_date`.

## 2. Documentation and metadata

Each XRD file carries a header with sample ID, date, operator, wavelength and scan settings. A README will describe the sample series and the composition of each sample (measured by EDX). Metadata will follow the University repository's DataCite schema.

## 3. Ethics and legal compliance

**How will you manage any ethical issues?** No human participants or personal data are involved.

**How will you manage copyright and IPR issues?** Data are owned by Calderbrook University. [Check whether the partner agreement affects this.]

## 4. Storage and backup

Data are stored on the University's research file store (backed up nightly), with a working copy on the instrument PC that is deleted after transfer.

## 5. Selection and preservation

**Which data are of long-term value?** All raw and processed XRD and SEM data that underpin publications.

**What is the long-term preservation plan?** Data will be deposited in the Calderbrook Research Data Repository. In line with EPSRC expectations, they will be securely preserved for at least 10 years from the date any privileged access period expires or, if others have accessed the data, from the last date on which access was requested.

## 6. Data sharing

**How will you share the data?** All data will be made openly available in the Calderbrook Research Data Repository under a CC BY 4.0 licence at the time of publication, with a DOI cited in each paper's data access statement.

**Are any restrictions on data sharing required?** No restrictions are anticipated.

## 7. Responsibilities and resources

The PI is responsible for data management. The PhD student will carry out day-to-day data handling. This plan follows the University Research Data Policy: https://www.example.ac.uk/research/data-policy-v1.2

No additional resources are required.
