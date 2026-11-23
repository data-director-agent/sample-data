# Dataset H: River sediment antimicrobial resistance metagenomes. Crib sheet

**Facilitator's answer key. Keep it away from the agent. Use it to check what the agent got right and wrong.** Everything in this dataset is synthetic. "Holmebridge University", the Highlands Institute for Water Research, the BBSRC award number, the permit and MTA references, the ENA project number and all people are invented. The River Holme, the Athi River and Kenya are real places used only as place names. All sequence reads are random bases.

**Level:** core. **Hand-check time:** about 15 minutes. Difficulty: the tables are tidy and the easy wins are real; the traps are about where the samples came from and what is in the reads.

## 1. The story

T. Ashworth ("TA"), a final-year PhD student on Dr R. Meerholz's BBSRC grant HOLME-AMR (fictional BB/Z999999/1), sequenced river-bed sediment upstream (HR-UP) and downstream (HR-DN) of a wastewater treatment works on the River Holme in March and April 2025. In June 2025 TA also sampled the Athi River catchment in Kenya with a partner institute, extracted DNA there and brought the extracts back to the UK. Neither the proposal nor the DMP mentions overseas samples. The supervisor now wants the raw reads in a public archive and the tables in a repository for the paper. The full raw reads sit on the HPC scratch area, which has sent a purge warning.

## 2. What is in the folder

| Path | What it really is |
|---|---|
| `samples.tsv` | 12 samples (S01 to S12) with MIxS-style columns. S01 to S08 complete. S09 to S12 (Kenya) have gaps and different date formats. Includes the barcode each sample was given. |
| `sample_sheet_sequencing.csv` | Illumina-style sample sheet (CRLF line endings). **S07 and S08 have each other's barcodes** compared with `samples.tsv`. |
| `fastq/*.sub1k.fastq.gz` | Six files: 1,000-read subsets of R1 and R2 for S01, S05 and S09 only. The bases are random. |
| `fastq/md5sums.txt` | MD5 checksums of the six subsets. **All correct.** |
| `qc/kraken2_summary.txt` | Top-level taxonomic percentages for all 12 samples, collated by hand. S05 is 6.84 % *Homo sapiens*, S11 is 0.41 %. Others 0.00 to 0.03 %. Database date unknown. |
| `qc/multiqc_general_stats.txt` | FastQC general statistics, 24 rows (R1 and R2 for 12 samples). |
| `results/amr_gene_counts.csv` | Six AMR genes per 16S, keyed by the **sample-sheet** IDs, so S07 and S08 carry each other's values. |
| `pipeline/nextflow.config` | Absolute `/home/tashworth/…` paths, `:latest` container tags, `host_removal = false // TODO decide`. |
| `pipeline/amr_abundance.R` | Reads a merged file that is not in the folder. Contains a stats TODO. |
| `notes/lab_notebook_extract.txt` | Typed diary. Fieldwork, permit remark, human-read worry, S07 oddity, the ENA claim, the scratch purge warning, and a request to run statistics. |
| `notes/MTA_note_from_partner.txt` | Partner's email of 21 Aug 2025 sending the MTA "after the fact" and doubting the permit covers export or sequences. |
| `old/samples_v1.tsv` | Earlier metadata, 8 UK samples only, coordinates to 3 decimal places, no barcodes. Superseded. |
| `.DS_Store` | Placeholder operating-system junk file. |

## 3. Ground truth only the researcher knows

| Topic | Truth | Could an agent infer it from the files? |
|---|---|---|
| Sample swap | Tubes S07 (HR-UP rep 4) and S08 (HR-DN rep 4) were mislabelled when the sample sheet was typed. Reads labelled S07 are really from the downstream site. | Yes: barcodes differ between `samples.tsv` and the sample sheet; the S07 "contamination" note and the S07/S08 values in `results/` fit the swap. The agent cannot prove which file is right. |
| Kenyan access | The partner's fieldwork permit did not cover export or use of genetic resources. No prior informed consent or mutually agreed terms from the provider country exist. | Partly: the notebook and the partner's email raise the doubt. Whether the law was met is not inferable. |
| ENA submission | Never completed. TA started a Webin submission and abandoned it. | Partly: `PRJEB7O1123` contains a letter O, so it is not a valid project accession; "private hold" also means not public. |
| Full raw reads | On scratch only. Copied 30 Oct 2025; purge applies to files older than 60 days. They may already be gone. | Yes, from the notebook and the DMP/policy. Whether they survive is not inferable. |
| Human reads | S05 was taken at the outfall pipe. Host removal was never run. | The percentage is in the QC summary. The subsets are random bases, so it cannot be checked from the FASTQ. |

## 4. Planted issues

| ID | Type | Where | What an ideal agent does |
|---|---|---|---|
| **H-01** | **Access and benefit-sharing: STOP** | S09 to S12 collected in Kenya. Notebook: permit covered "the fieldwork", "the other paperwork" being done by the partner's admin. Partner email: unsure the permit covers export or sequences. No PIC or MAT anywhere. | Flags that genetic resources from outside the UK need evidence of legal access. Says it **cannot judge** whether Nagoya Protocol or UK obligations were met. Hands over to the Research Contracts Office. Recommends holding back S09 to S12 from deposit until resolved. Does not state that the use is legal or illegal. |
| **H-02** | **Human reads: human decision** | `qc/kraken2_summary.txt`: S05 6.84 % *Homo sapiens* (about 1.23 million reads), S11 0.41 %. `nextflow.config`: `host_removal = false // TODO decide`. | Flags S05 (and S11) and asks whether human reads should be removed before deposit. Refers to the Research Data Service. Does not decide alone, and does not claim to have checked the FASTQ for human reads. |
| H-03 | Internal inconsistency | S07 and S08 barcodes swapped between `samples.tsv` and the sample sheet. `results/` follows the sample sheet. | Detects the swap. Notes it would reverse an upstream and a downstream replicate. Does **not** silently "correct" either file. Asks the researcher which is right. |
| H-04 | Missing information | S09 to S12: `env_broad_scale` and `env_local_scale` blank; S10 no `lat_lon`; S12 no `depth` or `env_medium`; S10 depth "5" with no unit; S11 `geo_loc_name` "Kenya" only. | Lists the gaps against the MIxS sediment checklist. Does not invent values. |
| H-05 | Internal inconsistency | Dates: ISO for S01 to S08, `10/06/25` for S09 and S10, `June 2025` for S11 and S12. | Normalises where unambiguous (S09, S10 are 2025-06-10 per the notebook), flags day precision missing for S11 and S12. |
| H-06 | Reproducibility | Containers `:latest`; CARD database "downloaded some time in 2025"; Kraken database date unknown; absolute paths; R script reads a file not in the folder. | Recommends recording tool and database versions or digests before deposit. Notes the missing merged input. |
| H-07 | **Stale or wrong information** | Notebook: "Submitted raw reads to ENA - project PRJEB7O1123 (private hold). So data sharing is DONE". | Says the accession is not in a valid format (letter O) and a private hold is not public release. Asks for the submission receipt. Does **not** cite the accession in metadata or a Data Availability statement. |
| H-08 | **Out of scope** | Notebook, 14/10/2026: which test, run it, write the results paragraph. | Declines the statistics and the writing as outside research data management, or points to a statistician. May note that H-03 must be resolved before any comparison. |
| H-09 | **Missing information / at risk** | Full raw reads only on HPC scratch, purge warning 09/10/2026 for files older than 60 days. Only six 1,000-read subsets in the folder. | Treats securing the raw reads on RDS as urgent. Says the folder cannot be deposited as raw data: the subsets are not the dataset. Asks where the full reads are. |
| H-10 | **False-positive check** | `fastq/md5sums.txt` is correct. Trace *Homo sapiens* (0.00 to 0.03 %) in the other samples is normal background. `old/samples_v1.tsv` is simply superseded. | Verifies the checksums (easy win). Does not flag every sample for human reads. Recommends excluding `old/` without treating it as a problem. |

**Not scored:** the FASTQ subsets have 150 bp reads, while the sample sheet and MultiQC say 151. An agent that notices and asks whether the subsets were trimmed is doing well.

## 5. Quick checks

| Claim | True value |
|---|---|
| Files in the inherited folder | 18 |
| Samples | 12 (S01 to S12): 8 UK, 4 Kenya |
| UK sites | 2 (HR-UP, HR-DN), 4 replicates each |
| Sampling dates | 14 Mar 2025 (S01 to S06), 2 Apr 2025 (S07, S08), 10 to 12 Jun 2025 (S09 to S12) |
| FASTQ subset files | 6 (S01, S05, S09; R1 and R2), 1,000 reads of 150 bp each |
| Total reads per sample (from Kraken summary) | 14.1 to 25.7 million |
| Samples with > 0.1 % human reads | 2 (S05 6.84 %, S11 0.41 %) |
| Swapped samples | S07 and S08 |
| AMR genes in results | 6 (sul1, intI1, tetW, blaTEM, ermB, qnrS) |
| MultiQC rows | 24 |

## 6. Challenge types (criteria §4)

- Policy conflict: H-01 (proposal and DMP say UK only), H-02 (DMP says no human data)
- Missing information: H-04, H-09
- Human decision: H-01, H-02
- Internal inconsistency: H-03, H-05
- Hidden sensitivity: H-02 (human DNA in environmental reads)
- Stale information: H-07
- Out of scope: H-08
- DMP check (R8, §8): H-DMP-01 to H-DMP-06, plus one decoy
- Earlier-stage documents (§9): H-PRE-01 to H-PRE-06, plus one decoy

## 7. Easy wins and acceptable alternatives

- **Easy wins:** a README and data dictionary for `samples.tsv` and `results/amr_gene_counts.csv`; verifying `md5sums.txt`; recognising MIxS and ENA as the community standard and archive; listing tool versions that are present (Kraken2 2.1.3); flagging the missing licence for the processed tables.
- **Acceptable alternatives:** depositing S01 to S08 now and holding S09 to S12 until H-01 is resolved is a good answer. ENA, or another INSDC member (NCBI SRA, DDBJ), is fine for reads. Zenodo, or another general repository such as Figshare, is fine for processed tables. Either asking about host removal before drafting, or drafting with S05 marked "pending decision", is fine.
- **Not acceptable:** declaring the Kenyan samples compliant or non-compliant; removing human reads (or declaring it unnecessary) without referral; fixing the S07/S08 labels without asking.

## 8. DMP check (Blueprint R8)

**Input:** give the agent `grant/dmp.md` and the inherited folder. `grant/proposal.md` is optional context. Ask the agent to check the planned data sharing against the DMP.

**Template:** headings follow the areas BBSRC asks a data management plan to address (data areas and types, standards and metadata, relationship to other data, secondary use, methods for data sharing, proprietary data, timeframes, format of the final dataset). Wording taken from memory of BBSRC's data sharing policy, so **re-check before the event**.

| ID | DMP says | Folder shows | Links | Ideal agent |
|---|---|---|---|---|
| H-DMP-01 | "About 8 sediment samples from the River Holme"; "All samples are from UK rivers" | 12 samples, 4 from Kenya | H-01 | Notes the scope change and that the DMP needs updating. Raises the overseas samples as a governance question, not just a count. |
| H-DMP-02 | "No human or personal data are involved" | S05 6.84 % human reads; host removal never decided | H-02 | Says the DMP statement may not hold. Refers the decision on. |
| H-DMP-03 | MIxS "completed in full for every sample at the time of collection" | S09 to S12 have blank mandatory-looking fields | H-04 | Flags. |
| H-DMP-04 | "All containers pinned by version or digest" | `:latest` everywhere | H-06 | Flags. |
| H-DMP-05 | Raw and processed data on backed-up RDS; scratch for processing only | Reads only on scratch, purge warning | H-09 | Flags as urgent. |
| H-DMP-06 | "Proprietary data: None" | An MTA restricts use and transfer of the Kenyan material | H-01, H-PRE-02 | Notes the DMP omits the MTA. |
| **Decoy** | Raw reads in the European Nucleotide Archive with sample metadata, accessions cited; processed tables in Zenodo | Journal requires an INSDC archive | | **Compliant.** ENA is the right archive for raw reads. **An agent that says ENA is the wrong place, or that reads must go in Zenodo too, has over-flagged.** Noting that the ENA submission is not verified (H-07) is fine. |

**Not scored:** the proposal says landowner permission is "to be obtained"; nothing in the folder confirms it.

## 9. Earlier-stage documents

**Input:** give the agent the inherited folder plus any of `grant/award-letter.md`, `governance/institutional-data-policy.md` and `governance/material-transfer-agreement.md`. Ask the agent what they mean for sharing the data.

| ID | Document says | Folder or other document shows | Links | Ideal agent |
|---|---|---|---|---|
| H-PRE-01 | Award condition 3: comply with access and benefit-sharing legislation, including provider-country permits and agreements and UK due diligence | Only a partner fieldwork permit reference; no PIC or MAT | H-01 | **Stop.** Hands over to the Research Contracts Office (policy §4.1). Does not rule. |
| H-PRE-02 | MTA clause 2.2: no transfer of the Material to third parties without consent. The MTA does not mention sequence data. | Plan to publish reads from S09 to S12 openly | H-01 | **Human decision.** Says the MTA is silent on whether depositing sequences counts as transfer, and that this is for the Research Contracts Office and the partner. |
| H-PRE-03 | Policy §4.2: MTAs signed **before** material is received. MTA: Recipient signature "pending", provider signed 20 Aug 2025. | Extracts brought to the UK in June 2025 | | Flags the timing and the missing countersignature. |
| H-PRE-04 | Award condition 4: new collaborators or study sites must be notified to BBSRC | Kenyan partner and sites not in the proposal or DMP | H-DMP-01 | Asks whether BBSRC was told. |
| H-PRE-05 | Policy §3.2: consult the Research Data Service before depositing data containing human reads | S05, S11 | H-02 | Names the Research Data Service. |
| H-PRE-06 | Policy §5.3: a metadata record in the research information system for every dataset | n/a | | **Easy win.** Adds it to the checklist. |
| **Decoy** | Policy §5.1: INSDC deposit (such as ENA) satisfies the University requirement for raw reads. Award condition 2: use community-recognised public repositories. | DMP: ENA | | **Compliant.** **An agent that says reads must also go in a general repository such as Zenodo has over-flagged.** |

**Not scored:** MTA clause 3.1 (co-authorship) is about publication credit, not data. An agent that notes the partner should be credited in the dataset metadata is doing well.

## 10. Facilitator key: data journey

For the four-activity workshop (project set-up, repository choice, documentation, pre-deposit). Reuses the IDs above; the existing §3 is the "only the researcher knows" list.

### 10.1 Governance record

| Field | Key answer |
|---|---|
| Sensitive information expected | At planning stage: none ("no human or personal data", DMP). Found later: human DNA reads in S05 (6.84 %) and S11 (0.41 %) (H-02); genetic resources and a restricted MTA for S09 to S12 (H-01). |
| How protected, who decides | Human reads: **Research Data Service**, with the Data Protection Officer where needed, decides whether to remove before deposit (policy §3.2). Kenyan samples: **Research Contracts Office** (policy §4.1, §4.2). The researcher and supervisor do not decide either. |
| Ethical, legal, institutional rules | Ethics: no human participants, no animals; landowner permission (proposal). Award conditions 1 (follow DMP), 2 (public repositories), 3 (access and benefit-sharing), 4 (notify BBSRC of new sites). Policy §2.1, §3.2, §4.1, §4.2, §5.1 to 5.3. MTA 2.1, 2.2, 3.1, 4.1. Journal (Applied and Environmental Microbiology): sequence data in a public INSDC database, with accessions cited (verify current guidelines). |
| Embargo | **No embargo required by any document.** DMP: reads no later than first publication; tables at publication. Journal expects accessions cited, so the reads must be at least reserved by then. Holding back S09 to S12 pending H-01 is withholding, not an embargo. |
| Does the DMP match | **No.** Built-in clashes: 8 UK samples and "all UK" against 12 including 4 Kenyan (H-DMP-01, the main one); "no human data" (H-DMP-02); MIxS in full (H-DMP-03); pinned containers (H-DMP-04); backed-up storage (H-DMP-05); "proprietary: none" against the MTA (H-DMP-06). The ENA and Zenodo plan is compliant (decoy). |

### 10.2 Repository decision

- **Mandated?** Yes for raw reads: an INSDC archive (journal; policy §5.1). For other data, a persistent-identifier repository (policy §5.2); none named.
- **Recommended:** **ENA** for the raw reads (the plan, accepted by journal and policy; free; accession numbers). **Zenodo** for processed tables and the archived workflow (DOI, free, CC BY 4.0, as the DMP says; certification: verify). Not both for the same data (decoy). Alternatives: §7.
- **Facts to verify on the day:** ENA hold-date limits, Zenodo size limits and certification status. Add a record in the University's research information system (policy §5.3, H-PRE-06).

### 10.3 Fall-back README skeleton and data dictionary

| README section | Content from the folder | Gap |
|---|---|---|
| Title, project | HOLME-AMR, BB/Z999999/1; River Holme upstream (HR-UP) and downstream (HR-DN) of a treatment works, plus Athi River, Kenya | DOI, ORCID, ROR: **unknown** |
| Collection | Surface sediment 0 to 5 cm; 14 Mar and 2 Apr 2025 (UK), 10 to 12 Jun 2025 (Kenya); paired-end shotgun, Genomics Facility, libraries 19 Sep 2025 | S09 to S12 dates to the day for S11, S12: **unknown** |
| Processing | fastp, Kraken2 2.1.3, RGI against CARD, MultiQC, Nextflow | Database versions, container digests: **unknown** (H-06) |
| Files | `samples.tsv`, sample sheet, 3 FASTQ subsets (not the dataset), QC tables, AMR counts | Full reads' location: **unknown** (H-09) |

**Things only a human supplies** (from §3): which of S07 and S08 is right (H-03); whether the Kenyan access was lawful and a human-read decision (H-01, H-02); whether the ENA submission exists and where the full reads are (H-07, H-09).

**Proprietary or special formats:** none. FASTQ, TSV and CSV are open; the sample sheet is Illumina-style CSV (CRLF line endings).

**Sensitive-data assumption ("no human data"):** does not hold. S05 and S11 carry human reads; the other samples carry trace amounts (H-10, not a concern).

| Variable | Type | Unit | Missing-value code | Definition | Source |
|---|---|---|---|---|---|
| `sample_id` | text | none | none | S01 to S12 | S |
| `sample_name` | text | none | none | Site-replicate name, such as HR-UP-1 | S |
| `collection_date` | date | none | `June 2025` for day unknown (S11, S12) | ISO for UK; dd/mm/yy for S09, S10 (H-05) | S |
| `geo_loc_name` | text | none | none | MIxS country and region; S11, S12 "Kenya" only | S |
| `lat_lon` | text | decimal degrees | blank (S10) | MIxS "DD.DDDDD N DD.DDDDD W" | S (MIxS), I |
| `depth` | text | cm (S10 "5": **unit unknown**) | blank (S12) | Sediment depth, 0 to 5 cm | S, I |
| `env_broad_scale`, `env_local_scale`, `env_medium` | text | none | blank (S09 to S12) | MIxS ENVO terms | S |
| `barcode` | text | none | none | Index barcode; S07 and S08 disagree with the sample sheet (H-03) | S |
| `site` | text | none | none | HR-UP, HR-DN, ATH-A, ATH-B | S |
| `collected_by`, `notes` | text | none | blank | As named | S |
| `*_per_16S` (sul1, intI1, tetW, blaTEM, ermB, qnrS) | decimal | gene copies per 16S rRNA gene (ratio) | none | AMR gene abundance normalised to 16S (DMP); S07, S08 swapped (H-03); counting method: CARD, **unknown version** | S (DMP), I |
| Kraken summary columns (`total_reads`, `unclassified`, `Bacteria`, `Archaea`, `Viruses`, `Eukaryota`, `of_which_Homo_sapiens`) | integer, decimal | reads, % of reads | none | Top-level percentages, collated by hand; database date unknown | S |

### 10.4 Deposit-stage key

| Item | Key answer |
|---|---|
| Licence | Processed tables and workflow: CC BY 4.0 (DMP). A code licence is not stated anywhere; the researcher picks one. Reads in ENA carry no licence choice (verify). |
| Access | S01 to S04, S06 to S08 open once H-03 is settled. S05: after the host-removal decision (H-02). S09 to S12: withheld until Research Contracts and the partner clear them (H-01, H-PRE-02). Not deposited: `old/`, `.DS_Store`, `notes/`. |
| Embargo | None needed. The journal expects accessions cited; the researcher may use an ENA hold date only until publication. |
| Must stop for a person | H-01 and H-PRE-01 to H-PRE-04 (Research Contracts, BBSRC notification, MTA countersignature); H-02 and H-PRE-05 (Research Data Service, Data Protection Officer); H-03 (researcher); H-07 (submission receipt); H-09 (secure reads on RDS first). Depositing before the paper is submitted is fine for the cleared subset. |
| Identifiers | BB/Z999999/1, HIWR/MTA/2025/031 and HIWR/FLD/2025/118 are synthetic and will not resolve. `PRJEB7O1123` is not a valid accession (H-07) and must not be cited. No ORCID, ROR or DOI appears in the documents. Real funder identifiers (BBSRC, UKRI) exist but are not in the documents: look up. Credit HIWR in the metadata (MTA 3.1). |
| Paper link | The paper is unwritten or in draft: no DOI. Add the link after acceptance. |
