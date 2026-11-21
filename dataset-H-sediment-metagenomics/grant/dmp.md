# Data Management Plan (BBSRC)

**Project:** Wastewater outfalls as hotspots for antimicrobial resistance genes in river sediments (HOLME-AMR), BB/Z999999/1 (fictional)
**PI:** Dr R. Meerholz, Holmebridge University (fictional)
**Version:** 1.0, submitted with the proposal (March 2024). Not updated since.

Structured under the headings BBSRC asks a data management plan to address.

## Data areas and data types

Shotgun metagenomic sequence reads (paired-end FASTQ) from about 8 sediment samples from the River Holme, UK. Sample metadata (site, date, coordinates, depth, environmental descriptors). Processed tables: taxonomic profiles and AMR gene abundances normalised to 16S rRNA genes. Estimated volume: 200 GB raw.

## Standards and metadata

Sample metadata will follow the **MIxS** standard (sediment package), **completed in full** for every sample at the time of collection. Reads in FASTQ with Phred+33 quality scores.

## Relationship to other data

All samples are from UK rivers. Results will be compared with the water company's published discharge records.

## Secondary use

The dataset will be a reference for other UK catchment studies and for AMR surveillance.

## Methods for data sharing

- **Raw reads:** deposited in the **European Nucleotide Archive (ENA)**, with sample metadata, before the first paper is submitted. Accession numbers cited in publications.
- **Processed tables and workflow:** deposited in Zenodo with a DOI, under CC BY 4.0, with the Nextflow workflow archived from GitHub.
- **Workflow:** a Nextflow pipeline with **all containers pinned by version or digest**, so that results can be reproduced exactly.
- **Storage during the project:** raw and processed data held on the University's backed-up Research Data Storage (RDS). The HPC scratch area is used for processing only.

## Proprietary data

None. No human or personal data are involved: the samples are environmental.

## Timeframes

Raw reads released no later than first publication. Processed data released at publication.

## Format of the final dataset

FASTQ (gzipped), TSV and CSV, and the pipeline code.
