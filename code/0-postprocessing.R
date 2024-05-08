
library(readxl)
library(stringr)
library(stringi)
library(digest)
library(dplyr)

#### Load data ####

sum2 <- function(x) {
  if (all(is.na(x))) NA else sum(x, na.rm = T)
}

tde.pre <- read_excel("data/data.xlsx", sheet = "tde.pre")
tde.pre[tde.pre == 2] <- 1
tde.pre$score <- apply(select(tde.pre, starts_with("P")), 1, sum2)

tde.pos <- read_excel("data/data.xlsx", sheet = "tde.pos")
tde.pos[tde.pos == 2] <- 1
tde.pos$score <- apply(select(tde.pos, starts_with("P")), 1, sum2)


dat <- read_excel("data/data.xlsx", sheet = "sumary")

tde <- tde.pre[,c("cod","score")]
colnames(tde) <- c("cod","score.tde.norm.pre")
dat <- merge(dat, tde, by="cod", all.x = T, all.y = F)

tde <- tde.pos[,c("cod","score")]
colnames(tde) <- c("cod","score.tde.norm.pos")
dat <- merge(dat, tde, by="cod", all.x = T, all.y = F)

#### Estimate quintiles based on tde.norm.pre ####

qtl <- quantile(dat$score.tde.norm.pre, probs = seq(0, 1, 1/5), na.rm = T)

dat$score.tde.norm.quintile <- sapply(
  dat$score.tde.norm.pre, function(v) {
    if (!is.na(v) && is.numeric(v)) {
      if (v < qtl[2]) "1st quintile"
      else if (v < qtl[3]) "2nd quintile"
      else if (v <= qtl[4]) "3rd quintile"
      else if (v <= qtl[5]) "4th quintile"
      else "5th quintile"
      } else NA })


#### - writing database - ####

writexl::write_xlsx(
  list(summary = dat,
       tde.pre.norm = tde.pre,
       tde.pos.norm = tde.pos),
  path = "data/data-tde-norm.xlsx"
)

