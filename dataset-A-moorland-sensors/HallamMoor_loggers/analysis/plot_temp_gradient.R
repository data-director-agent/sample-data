# temperature gradient plot - DW
library(tidyverse)
d <- read_csv("../data/data_final_v2.csv")     # TODO: where did this go?
d$SM_pct <- (3000 - d$SM) / 1400 * 40 + 15      # rough conversion for the old firmware
d <- d %>% filter(T_air < 40, T_air > -30)
elev <- c(N01 = 310, N02 = 360, N03 = 410)
d$elev <- elev[d$Node]
ggplot(d, aes(elev, T_air)) + geom_jitter(alpha = .05) + geom_smooth(method = "lm")
ggsave("gradient.png")
