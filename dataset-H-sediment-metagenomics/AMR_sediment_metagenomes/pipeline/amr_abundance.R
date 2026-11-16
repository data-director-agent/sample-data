# amr_abundance.R  -- TA, draft
# normalises RGI hits to 16S copies and makes the upstream/downstream plot
library(tidyverse)

counts <- read_csv("~/scratch/holme_amr/results/rgi_16s_merged.csv")   # not in this folder
meta   <- read_tsv("samples.tsv")

amr <- counts %>%
  left_join(meta, by = "sample_id") %>%
  filter(site %in% c("HR-UP", "HR-DN"))   # Kenyan samples analysed separately (chapter 5)

# TODO: ask about stats -- t-test? wilcox? n=4 per group
ggplot(amr, aes(site, sul1_per_16S)) + geom_boxplot() + geom_point()
ggsave("fig3_sul1.png", width = 4, height = 4)
write_csv(amr, "results/amr_gene_counts.csv")
