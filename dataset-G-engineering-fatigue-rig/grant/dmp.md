# Data management plan

**Project:** Fatigue-qualified lightweight composite deck panels for pedestrian and cycle bridges (KTP99999X, fictional)
**Partners:** Aire Valley University (fictional) and Hoyland Composites Ltd (fictional)
**Prepared by:** Dr M. Lindqvist (academic lead)
**Version:** 0.3 DRAFT for the Local Management Committee, 2 September 2024
**Template:** DCC Checklist for a Data Management Plan (headings)

## 1. Data collection

1.1 **What data will you collect or create?** Strain time histories from eight foil gauges on each panel, sampled at 2 kHz and recorded in microstrain; actuator load and displacement; cycles to failure and failure modes; photographs of failures. Specimen details are kept in a specimen log.

1.2 **How will the data be collected or created?** On the University's servo-hydraulic rig 1 to procedure TP-04. The DAQ software writes TDMS files, which are exported to CSV for analysis. File names use the run number (`run_NNN`).

## 2. Documentation and metadata

A README and data dictionary will describe each file, the channel map, units and the test procedure.

## 3. Ethics and legal compliance

3.1 **Ethics:** not applicable.

3.2 **Intellectual property:** Hoyland's CAD models, layup schedules and resin formulations are its background IP. They will be kept on a restricted project folder and **will not be deposited or published**.

3.3 **Export control:** not applicable. The panels are a civil infrastructure product.

## 4. Storage and backup

The DAQ PC is a standalone machine, **not connected to any network**. Data are copied to the University engineering file server by USB after each run. The file server is backed up nightly.

## 5. Selection and preservation

All raw strain time histories and processed results will be preserved for at least 10 years.

## 6. Data sharing

6.1 Raw and processed test data will be deposited openly under CC BY 4.0 in the AVU Research Data Archive when the paper is accepted, after the partner has had **30 days** to review the paper.

6.2 Analysis code will be written in Python and shared under an open-source licence.

## 7. Responsibilities and resources

7.1 The KTP Associate is responsible for day-to-day data management. The academic lead is responsible overall.

7.2 No additional costs are expected.
