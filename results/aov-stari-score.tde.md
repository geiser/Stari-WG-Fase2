ANCOVA in Writing (TDE) (Writing (TDE))
================
Geiser C. Challco <geiser@alumni.usp.br>

- [Setting Initial Variables](#setting-initial-variables)
- [Descriptive Statistics of Initial
  Data](#descriptive-statistics-of-initial-data)
- [ANCOVA and Pairwise for one factor:
  **grupo**](#ancova-and-pairwise-for-one-factor-grupo)
  - [Without remove non-normal data](#without-remove-non-normal-data)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok)
    - [Plots for ancova](#plots-for-ancova)
    - [Checking linearity assumption](#checking-linearity-assumption)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity)
- [ANCOVA and Pairwise for two factors
  **grupo:Sexo**](#ancova-and-pairwise-for-two-factors-gruposexo)
  - [Without remove non-normal data](#without-remove-non-normal-data-1)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok-1)
    - [Plots for ancova](#plots-for-ancova-1)
    - [Checking linearity assumption](#checking-linearity-assumption-1)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity-1)
- [ANCOVA and Pairwise for two factors
  **grupo:Zona**](#ancova-and-pairwise-for-two-factors-grupozona)
  - [Without remove non-normal data](#without-remove-non-normal-data-2)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok-2)
    - [Plots for ancova](#plots-for-ancova-2)
    - [Checking linearity assumption](#checking-linearity-assumption-2)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity-2)
- [ANCOVA and Pairwise for two factors
  **grupo:Cor.Raca**](#ancova-and-pairwise-for-two-factors-grupocorraca)
  - [Without remove non-normal data](#without-remove-non-normal-data-3)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok-3)
    - [Plots for ancova](#plots-for-ancova-3)
    - [Checking linearity assumption](#checking-linearity-assumption-3)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity-3)
- [ANCOVA and Pairwise for two factors
  **grupo:Serie**](#ancova-and-pairwise-for-two-factors-gruposerie)
  - [Without remove non-normal data](#without-remove-non-normal-data-4)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok-4)
    - [Plots for ancova](#plots-for-ancova-4)
    - [Checking linearity assumption](#checking-linearity-assumption-4)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity-4)
- [ANCOVA and Pairwise for two factors
  **grupo:score.tde.quintile**](#ancova-and-pairwise-for-two-factors-gruposcoretdequintile)
  - [Without remove non-normal data](#without-remove-non-normal-data-5)
  - [Computing ANCOVA and PairWise After removing non-normal data
    (OK)](#computing-ancova-and-pairwise-after-removing-non-normal-data-ok-5)
    - [Plots for ancova](#plots-for-ancova-5)
    - [Checking linearity assumption](#checking-linearity-assumption-5)
    - [Checking normality and
      homogeneity](#checking-normality-and-homogeneity-5)
- [Summary of Results](#summary-of-results)
  - [Descriptive Statistics](#descriptive-statistics)
  - [ANCOVA Table Comparison](#ancova-table-comparison)
  - [PairWise Table Comparison](#pairwise-table-comparison)
  - [EMMS Table Comparison](#emms-table-comparison)

**NOTE**:

- Teste ANCOVA para determinar se houve diferenças significativas no
  Writing (TDE) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Writing (TDE) (measured using pre- and post-tests).

# Setting Initial Variables

``` r
dv = "score.tde"
dv.pos = "score.tde.pos"
dv.pre = "score.tde.pre"

fatores2 <- c("Sexo","Zona","Cor.Raca","Serie","score.tde.quintile")
lfatores2 <- as.list(fatores2)
names(lfatores2) <- fatores2

fatores1 <- c("grupo", fatores2)
lfatores1 <- as.list(fatores1)
names(lfatores1) <- fatores1

lfatores <- c(lfatores1)

color <- list()
color[["prepost"]] = c("#ffee65","#f28e2B")
color[["grupo"]] = c("#bcbd22","#fd7f6f")
color[["Sexo"]] = c("#FF007F","#4D4DFF")
color[["Zona"]] = c("#AA00FF","#00CCCC")
color[["Cor.Raca"]] = c(
  "Parda"="#b97100","Indígena"="#9F262F",
  "Branca"="#87c498", "Preta"="#848283","Amarela"="#D6B91C"
)

level <- list()
level[["grupo"]] = c("Controle","Experimental")
level[["Sexo"]] = c("F","M")
level[["Zona"]] = c("Rural","Urbana")
level[["Cor.Raca"]] = c("Parda","Indígena","Branca", "Preta","Amarela")
level[["Serie"]] = c("6 ano","7 ano","8 ano","9 ano")

# ..

ymin <- 0
ymax <- 0

ymin.ci <- 0
ymax.ci <- 0


color[["grupo:Sexo"]] = c(
  "Controle:F"="#ff99cb", "Controle:M"="#b7b7ff",
  "Experimental:F"="#FF007F", "Experimental:M"="#4D4DFF",
  "Controle.F"="#ff99cb", "Controle.M"="#b7b7ff",
  "Experimental.F"="#FF007F", "Experimental.M"="#4D4DFF"
)
color[["grupo:Zona"]] = c(
  "Controle:Rural"="#b2efef","Controle:Urbana"="#e5b2ff",
  "Experimental:Rural"="#00CCCC", "Experimental:Urbana"="#AA00FF",
  "Controle.Rural"="#b2efef","Controle.Urbana"="#e5b2ff",
  "Experimental.Rural"="#00CCCC", "Experimental.Urbana"="#AA00FF"
)
color[["grupo:Cor.Raca"]] = c(
    "Controle:Parda"="#e3c699", "Experimental:Parda"="#b97100",
    "Controle:Indígena"="#e2bdc0", "Experimental:Indígena"="#9F262F",
    "Controle:Branca"="#c0e8cb", "Experimental:Branca"="#87c498",
    "Controle:Preta"="#dad9d9", "Experimental:Preta"="#848283",
    "Controle:Amarela"="#eee3a4", "Experimental:Amarela"="#D6B91C",
    
    "Controle.Parda"="#e3c699", "Experimental.Parda"="#b97100",
    "Controle.Indígena"="#e2bdc0", "Experimental.Indígena"="#9F262F",
    "Controle.Branca"="#c0e8cb", "Experimental.Branca"="#87c498",
    "Controle.Preta"="#dad9d9", "Experimental.Preta"="#848283",
    "Controle.Amarela"="#eee3a4", "Experimental.Amarela"="#D6B91C"
)


for (coln in c("vocab","vocab.teach","vocab.non.teach","score.tde",
               "TFL.lidas.per.min","TFL.corretas.per.min","TFL.erradas.per.min","TFL.omitidas.per.min",
               "leitura.compreensao")) {
  color[[paste0(coln,".quintile")]] = c("#BF0040","#FF0000","#800080","#0000FF","#4000BF")
  level[[paste0(coln,".quintile")]] = c("1st quintile","2nd quintile","3rd quintile","4th quintile","5th quintile")
  color[[paste0("grupo:",coln,".quintile")]] = c(
    "Experimental.1st quintile"="#BF0040", "Controle.1st quintile"="#d8668c",
    "Experimental.2nd quintile"="#FF0000", "Controle.2nd quintile"="#ff7f7f",
    "Experimental.3rd quintile"="#8fce00", "Controle.3rd quintile"="#ddf0b2",
    "Experimental.4th quintile"="#0000FF", "Controle.4th quintile"="#b2b2ff",
    "Experimental.5th quintile"="#4000BF", "Controle.5th quintile"="#b299e5",
    
    "Experimental:1st quintile"="#BF0040", "Controle:1st quintile"="#d8668c",
    "Experimental:2nd quintile"="#FF0000", "Controle:2nd quintile"="#ff7f7f",
    "Experimental:3rd quintile"="#8fce00", "Controle:3rd quintile"="#ddf0b2",
    "Experimental:4th quintile"="#0000FF", "Controle:4th quintile"="#b2b2ff",
    "Experimental:5th quintile"="#4000BF", "Controle:5th quintile"="#b299e5")
}


gdat <- read_excel("../data/data.xlsx", sheet = "sumary")
gdat <- gdat[which(is.na(gdat$Necessidade.Deficiencia) & !is.na(gdat$Stari.Grupo)),]



dat <- gdat
dat$grupo <- factor(dat[["Stari.Grupo"]], level[["grupo"]])
for (coln in c(names(lfatores))) {
  dat[[coln]] <- factor(dat[[coln]], level[[coln]][level[[coln]] %in% unique(dat[[coln]])])
}
dat <- dat[which(!is.na(dat[[dv.pre]]) & !is.na(dat[[dv.pos]])),]
dat <- dat[,c("id",names(lfatores),dv.pre,dv.pos)]

dat.long <- rbind(dat, dat)
dat.long$time <- c(rep("pre", nrow(dat)), rep("pos", nrow(dat)))
dat.long$time <- factor(dat.long$time, c("pre","pos"))
dat.long[[dv]] <- c(dat[[dv.pre]], dat[[dv.pos]])


for (f in c("grupo", names(lfatores))) {
  if (is.null(color[[f]]) && length(unique(dat[[f]])) > 0) 
      color[[f]] <- distinctColorPalette(length(unique(dat[[f]])))
}
for (f in c(fatores2)) {
  if (is.null(color[[paste0("grupo:",f)]]) && length(unique(dat[[f]])) > 0)
    color[[paste0("grupo:",f)]] <- distinctColorPalette(length(unique(dat[["grupo"]]))*length(unique(dat[[f]])))
}

ldat <- list()
laov <- list()
lpwc <- list()
lemms <- list()
```

# Descriptive Statistics of Initial Data

``` r
df <- get.descriptives(dat, c(dv.pre, dv.pos), c("grupo"), 
                       include.global = T, symmetry.test = T, normality.test = F)
df <- plyr::rbind.fill(
  df, do.call(plyr::rbind.fill, lapply(lfatores2, FUN = function(f) {
    if (nrow(dat) > 0 && sum(!is.na(unique(dat[[f]]))) > 1)
      get.descriptives(dat, c(dv.pre,dv.pos), c("grupo", f),
                       symmetry.test = T, normality.test = F)
    }))
)
```

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced
    ## There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced

    ## Warning: There were 2 warnings in `mutate()`.
    ## The first warning was:
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced
    ## ℹ Run `dplyr::last_dplyr_warnings()` to see the 1 remaining warning.
    ## There were 2 warnings in `mutate()`.
    ## The first warning was:
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced
    ## ℹ Run `dplyr::last_dplyr_warnings()` to see the 1 remaining warning.

``` r
df <- df[,c(fatores1[fatores1 %in% colnames(df)],"variable",
            colnames(df)[!colnames(df) %in% c(fatores1,"variable")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | score.tde.quintile | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:-------------------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       |                    | score.tde.pre | 110 | 31.136 |   31.0 |  17 |  46 |  6.480 | 0.618 |  1.225 | 11.00 | YES      |   -0.110 |   -1.000 |
| Experimental |      |        |          |       |                    | score.tde.pre |  46 | 30.022 |   29.0 |  19 |  46 |  7.154 | 1.055 |  2.124 | 13.00 | YES      |    0.228 |   -1.195 |
|              |      |        |          |       |                    | score.tde.pre | 156 | 30.808 |   30.5 |  17 |  46 |  6.682 | 0.535 |  1.057 | 12.00 | YES      |   -0.008 |   -1.069 |
| Controle     |      |        |          |       |                    | score.tde.pos | 110 | 28.882 |   29.0 |   0 |  63 | 12.312 | 1.174 |  2.327 | 17.25 | YES      |   -0.062 |   -0.184 |
| Experimental |      |        |          |       |                    | score.tde.pos |  46 | 26.565 |   26.0 |   1 |  50 | 11.968 | 1.765 |  3.554 | 18.50 | YES      |   -0.069 |   -0.438 |
|              |      |        |          |       |                    | score.tde.pos | 156 | 28.199 |   28.0 |   0 |  63 | 12.219 | 0.978 |  1.933 | 16.50 | YES      |   -0.056 |   -0.215 |
| Controle     | F    |        |          |       |                    | score.tde.pre |  48 | 31.729 |   31.5 |  20 |  41 |  6.066 | 0.876 |  1.761 | 11.00 | YES      |   -0.307 |   -1.140 |
| Controle     | M    |        |          |       |                    | score.tde.pre |  62 | 30.677 |   30.0 |  17 |  46 |  6.796 | 0.863 |  1.726 | 11.00 | YES      |    0.041 |   -0.966 |
| Experimental | F    |        |          |       |                    | score.tde.pre |  18 | 31.111 |   32.0 |  20 |  40 |  6.115 | 1.441 |  3.041 |  9.25 | YES      |   -0.200 |   -1.141 |
| Experimental | M    |        |          |       |                    | score.tde.pre |  28 | 29.321 |   26.5 |  19 |  46 |  7.775 | 1.469 |  3.015 | 14.25 | YES      |    0.456 |   -1.224 |
| Controle     | F    |        |          |       |                    | score.tde.pos |  48 | 28.208 |   28.5 |   7 |  63 | 11.567 | 1.669 |  3.359 | 15.00 | YES      |    0.292 |    0.183 |
| Controle     | M    |        |          |       |                    | score.tde.pos |  62 | 29.403 |   29.5 |   0 |  59 | 12.929 | 1.642 |  3.283 | 18.75 | YES      |   -0.281 |   -0.410 |
| Experimental | F    |        |          |       |                    | score.tde.pos |  18 | 27.111 |   26.5 |   1 |  44 | 10.471 | 2.468 |  5.207 | 11.25 | YES      |   -0.405 |    0.099 |
| Experimental | M    |        |          |       |                    | score.tde.pos |  28 | 26.214 |   24.0 |   1 |  50 | 13.014 | 2.459 |  5.046 | 19.25 | YES      |    0.076 |   -0.802 |
| Controle     |      | Rural  |          |       |                    | score.tde.pre |  66 | 31.212 |   31.0 |  17 |  46 |  6.880 | 0.847 |  1.691 | 11.75 | YES      |   -0.061 |   -1.044 |
| Controle     |      | Urbana |          |       |                    | score.tde.pre |  11 | 29.000 |   28.0 |  22 |  39 |  4.940 | 1.489 |  3.318 |  6.00 | NO       |    0.561 |   -0.801 |
| Controle     |      |        |          |       |                    | score.tde.pre |  33 | 31.697 |   33.0 |  20 |  39 |  6.111 | 1.064 |  2.167 |  9.00 | YES      |   -0.498 |   -1.042 |
| Experimental |      | Rural  |          |       |                    | score.tde.pre |  31 | 29.645 |   28.0 |  19 |  46 |  7.579 | 1.361 |  2.780 | 13.50 | YES      |    0.333 |   -1.194 |
| Experimental |      | Urbana |          |       |                    | score.tde.pre |   5 | 29.200 |   30.0 |  21 |  38 |  6.834 | 3.056 |  8.485 |  9.00 | YES      |    0.028 |   -1.949 |
| Experimental |      |        |          |       |                    | score.tde.pre |  10 | 31.600 |   30.5 |  22 |  40 |  6.328 | 2.001 |  4.527 |  9.75 | YES      |   -0.008 |   -1.707 |
| Controle     |      | Rural  |          |       |                    | score.tde.pos |  66 | 28.015 |   27.5 |   0 |  50 | 11.830 | 1.456 |  2.908 | 14.00 | YES      |   -0.282 |   -0.306 |
| Controle     |      | Urbana |          |       |                    | score.tde.pos |  11 | 28.364 |   29.0 |   8 |  42 |  9.973 | 3.007 |  6.700 | 11.50 | NO       |   -0.526 |   -0.778 |
| Controle     |      |        |          |       |                    | score.tde.pos |  33 | 30.788 |   30.0 |   7 |  63 | 13.986 | 2.435 |  4.959 | 20.00 | YES      |    0.145 |   -0.628 |
| Experimental |      | Rural  |          |       |                    | score.tde.pos |  31 | 28.065 |   26.0 |  11 |  50 | 11.144 | 2.002 |  4.088 | 19.50 | NO       |    0.519 |   -1.025 |
| Experimental |      | Urbana |          |       |                    | score.tde.pos |   5 | 22.600 |   25.0 |   2 |  36 | 13.409 | 5.997 | 16.649 | 14.00 | YES      |   -0.464 |   -1.635 |
| Experimental |      |        |          |       |                    | score.tde.pos |  10 | 23.900 |   27.0 |   1 |  38 | 14.067 | 4.448 | 10.063 | 17.75 | NO       |   -0.562 |   -1.295 |
| Controle     |      |        | Parda    |       |                    | score.tde.pre |  50 | 31.060 |   31.0 |  17 |  42 |  6.412 | 0.907 |  1.822 | 11.00 | YES      |   -0.237 |   -1.195 |
| Controle     |      |        | Indígena |       |                    | score.tde.pre |   2 | 37.500 |   37.5 |  34 |  41 |  4.950 | 3.500 | 44.472 |  3.50 | few data |    0.000 |    0.000 |
| Controle     |      |        | Branca   |       |                    | score.tde.pre |  11 | 33.000 |   31.0 |  20 |  46 |  7.861 | 2.370 |  5.281 |  9.50 | YES      |    0.217 |   -1.174 |
| Controle     |      |        | Preta    |       |                    | score.tde.pre |   1 | 26.000 |   26.0 |  26 |  26 |        |       |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       |                    | score.tde.pre |  46 | 30.609 |   30.5 |  20 |  39 |  6.256 | 0.922 |  1.858 | 11.00 | YES      |   -0.216 |   -1.329 |
| Experimental |      |        | Parda    |       |                    | score.tde.pre |  17 | 26.647 |   25.0 |  19 |  40 |  6.103 | 1.480 |  3.138 |  8.00 | NO       |    0.642 |   -0.724 |
| Experimental |      |        | Indígena |       |                    | score.tde.pre |   8 | 30.000 |   27.0 |  21 |  42 |  8.401 | 2.970 |  7.023 | 14.25 | YES      |    0.325 |   -1.861 |
| Experimental |      |        | Branca   |       |                    | score.tde.pre |   5 | 35.200 |   37.0 |  21 |  46 |  9.094 | 4.067 | 11.292 |  4.00 | YES      |   -0.420 |   -1.411 |
| Experimental |      |        |          |       |                    | score.tde.pre |  16 | 32.000 |   33.0 |  23 |  40 |  5.727 | 1.432 |  3.052 | 10.50 | YES      |   -0.252 |   -1.555 |
| Controle     |      |        | Parda    |       |                    | score.tde.pos |  50 | 25.920 |   25.5 |   0 |  50 | 12.128 | 1.715 |  3.447 | 12.75 | YES      |   -0.070 |   -0.296 |
| Controle     |      |        | Indígena |       |                    | score.tde.pos |   2 | 26.500 |   26.5 |  25 |  28 |  2.121 | 1.500 | 19.059 |  1.50 | few data |    0.000 |    0.000 |
| Controle     |      |        | Branca   |       |                    | score.tde.pos |  11 | 36.000 |   36.0 |  16 |  63 | 11.533 | 3.477 |  7.748 |  8.50 | NO       |    0.687 |    0.593 |
| Controle     |      |        | Preta    |       |                    | score.tde.pos |   1 | 40.000 |   40.0 |  40 |  40 |        |       |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       |                    | score.tde.pos |  46 | 30.261 |   32.0 |   5 |  59 | 12.259 | 1.808 |  3.641 | 20.00 | YES      |   -0.171 |   -0.824 |
| Experimental |      |        | Parda    |       |                    | score.tde.pos |  17 | 24.059 |   22.0 |   1 |  43 | 10.503 | 2.547 |  5.400 | 11.00 | YES      |    0.052 |   -0.302 |
| Experimental |      |        | Indígena |       |                    | score.tde.pos |   8 | 29.250 |   26.5 |  15 |  50 | 11.877 | 4.199 |  9.930 | 14.00 | YES      |    0.495 |   -1.321 |
| Experimental |      |        | Branca   |       |                    | score.tde.pos |   5 | 33.800 |   37.0 |   2 |  50 | 18.660 | 8.345 | 23.170 |  8.00 | NO       |   -0.825 |   -1.181 |
| Experimental |      |        |          |       |                    | score.tde.pos |  16 | 25.625 |   26.0 |   1 |  44 | 11.135 | 2.784 |  5.933 | 14.50 | YES      |   -0.349 |   -0.545 |
| Controle     |      |        |          | 6 ano |                    | score.tde.pre |  30 | 30.200 |   30.0 |  20 |  39 |  5.684 | 1.038 |  2.122 |  9.25 | YES      |   -0.096 |   -1.072 |
| Controle     |      |        |          | 7 ano |                    | score.tde.pre |  31 | 31.452 |   30.0 |  20 |  40 |  5.954 | 1.069 |  2.184 | 10.50 | YES      |   -0.148 |   -1.377 |
| Controle     |      |        |          | 8 ano |                    | score.tde.pre |  21 | 30.429 |   31.0 |  20 |  39 |  6.801 | 1.484 |  3.096 | 12.00 | YES      |   -0.265 |   -1.568 |
| Controle     |      |        |          | 9 ano |                    | score.tde.pre |  28 | 32.321 |   34.0 |  17 |  46 |  7.631 | 1.442 |  2.959 | 11.75 | YES      |   -0.165 |   -1.080 |
| Experimental |      |        |          | 6 ano |                    | score.tde.pre |  14 | 30.214 |   30.5 |  21 |  40 |  6.565 | 1.755 |  3.791 | 11.50 | YES      |   -0.021 |   -1.606 |
| Experimental |      |        |          | 7 ano |                    | score.tde.pre |  10 | 24.600 |   24.0 |  21 |  33 |  3.658 | 1.157 |  2.616 |  3.25 | NO       |    1.061 |    0.076 |
| Experimental |      |        |          | 8 ano |                    | score.tde.pre |  11 | 30.545 |   33.0 |  20 |  39 |  7.258 | 2.188 |  4.876 | 13.50 | YES      |   -0.242 |   -1.845 |
| Experimental |      |        |          | 9 ano |                    | score.tde.pre |  11 | 34.182 |   34.0 |  19 |  46 |  7.795 | 2.350 |  5.237 | 10.50 | YES      |   -0.297 |   -0.970 |
| Controle     |      |        |          | 6 ano |                    | score.tde.pos |  30 | 27.400 |   26.0 |   0 |  45 | 10.374 | 1.894 |  3.874 | 14.75 | YES      |   -0.360 |   -0.269 |
| Controle     |      |        |          | 7 ano |                    | score.tde.pos |  31 | 25.387 |   28.0 |   0 |  63 | 13.925 | 2.501 |  5.108 | 17.50 | YES      |    0.301 |    0.017 |
| Controle     |      |        |          | 8 ano |                    | score.tde.pos |  21 | 27.048 |   28.0 |   7 |  44 | 11.236 | 2.452 |  5.115 | 19.00 | YES      |   -0.197 |   -1.179 |
| Controle     |      |        |          | 9 ano |                    | score.tde.pos |  28 | 35.714 |   38.0 |  12 |  59 | 10.951 | 2.069 |  4.246 | 15.00 | YES      |   -0.135 |   -0.703 |
| Experimental |      |        |          | 6 ano |                    | score.tde.pos |  14 | 27.071 |   26.0 |  11 |  44 | 10.217 | 2.731 |  5.899 | 14.25 | YES      |    0.322 |   -1.206 |
| Experimental |      |        |          | 7 ano |                    | score.tde.pos |  10 | 20.500 |   21.5 |   2 |  31 |  7.976 | 2.522 |  5.705 |  6.75 | NO       |   -0.924 |    0.307 |
| Experimental |      |        |          | 8 ano |                    | score.tde.pos |  11 | 25.091 |   30.0 |   1 |  44 | 14.474 | 4.364 |  9.724 | 18.00 | NO       |   -0.525 |   -1.207 |
| Experimental |      |        |          | 9 ano |                    | score.tde.pos |  11 | 32.909 |   37.0 |  15 |  50 | 12.581 | 3.793 |  8.452 | 19.00 | YES      |   -0.049 |   -1.639 |
| Controle     |      |        |          |       | 1st quintile       | score.tde.pre |   1 | 17.000 |   17.0 |  17 |  17 |        |       |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | 2nd quintile       | score.tde.pre |  58 | 26.121 |   26.0 |  20 |  31 |  3.559 | 0.467 |  0.936 |  6.50 | YES      |   -0.221 |   -1.231 |
| Controle     |      |        |          |       | 3rd quintile       | score.tde.pre |  49 | 36.796 |   37.0 |  32 |  42 |  2.236 | 0.319 |  0.642 |  4.00 | YES      |   -0.111 |   -0.550 |
| Controle     |      |        |          |       | 4th quintile       | score.tde.pre |   2 | 45.000 |   45.0 |  44 |  46 |  1.414 | 1.000 | 12.706 |  1.00 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | 2nd quintile       | score.tde.pre |  25 | 24.280 |   24.0 |  19 |  30 |  3.156 | 0.631 |  1.303 |  5.00 | YES      |    0.218 |   -1.240 |
| Experimental |      |        |          |       | 3rd quintile       | score.tde.pre |  20 | 36.400 |   37.0 |  32 |  42 |  2.998 | 0.670 |  1.403 |  4.50 | YES      |   -0.023 |   -1.163 |
| Experimental |      |        |          |       | 4th quintile       | score.tde.pre |   1 | 46.000 |   46.0 |  46 |  46 |        |       |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | 1st quintile       | score.tde.pos |   1 | 24.000 |   24.0 |  24 |  24 |        |       |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | 2nd quintile       | score.tde.pos |  58 | 24.310 |   24.0 |   0 |  48 | 11.494 | 1.509 |  3.022 | 15.75 | YES      |   -0.121 |   -0.703 |
| Controle     |      |        |          |       | 3rd quintile       | score.tde.pos |  49 | 33.939 |   34.0 |   5 |  63 | 11.401 | 1.629 |  3.275 | 15.00 | YES      |    0.034 |    0.074 |
| Controle     |      |        |          |       | 4th quintile       | score.tde.pos |   2 | 40.000 |   40.0 |  37 |  43 |  4.243 | 3.000 | 38.119 |  3.00 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | 2nd quintile       | score.tde.pos |  25 | 21.320 |   19.0 |   1 |  43 |  9.577 | 1.915 |  3.953 |  9.00 | YES      |    0.114 |    0.315 |
| Experimental |      |        |          |       | 3rd quintile       | score.tde.pos |  20 | 31.950 |   34.0 |   1 |  50 | 11.302 | 2.527 |  5.289 | 11.75 | NO       |   -0.862 |    0.633 |
| Experimental |      |        |          |       | 4th quintile       | score.tde.pos |   1 | 50.000 |   50.0 |  50 |  50 |        |       |        |  0.00 | few data |    0.000 |    0.000 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "score.tde.pos", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, score.tde.pos ~ grupo, covariate = score.tde.pre,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          score.tde ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "score.tde.pos", "grupo", covar = "score.tde.pre")
ds <- merge(ds[ds$variable != "score.tde.pre",],
            ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".score.tde.pre"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]],
                            by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##          Effect DFn DFd      F        p p<.05   ges
    ## 1 score.tde.pre   1 153 45.279 3.22e-10     * 0.228
    ## 2         grupo   1 153  0.502 4.80e-01       0.003

| Effect        | DFn | DFd |      F |    p | p\<.05 |   ges |
|:--------------|----:|----:|-------:|-----:|:-------|------:|
| score.tde.pre |   1 | 153 | 45.279 | 0.00 | \*     | 0.228 |
| grupo         |   1 | 153 |  0.502 | 0.48 |        | 0.003 |

``` r
pwc <- emmeans_test(wdat, score.tde.pos ~ grupo, covariate = score.tde.pre,
                    p.adjust.method = "bonferroni")
```

| term                 | .y.           | group1   | group2       |  df | statistic |    p | p.adj | p.adj.signif |
|:---------------------|:--------------|:---------|:-------------|----:|----------:|-----:|------:|:-------------|
| score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 153 |     0.709 | 0.48 |  0.48 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         score.tde ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]],
                            by=c("grupo","term",".y.","group1","group2"),
                            suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | time | score.tde | pre    | pos    | 308 |     1.698 | 0.090 | 0.090 | ns           |
| Experimental | time | score.tde | pre    | pos    | 308 |     1.684 | 0.093 | 0.093 | ns           |

``` r
ds <- get.descriptives(wdat, "score.tde.pos", "grupo", covar = "score.tde.pre")
ds <- merge(ds[ds$variable != "score.tde.pre",],
            ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".score.tde.pre"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | 110 |  31.136 |    0.618 |    28.882 |      1.174 |  28.595 |    1.027 |   26.566 |    30.624 |
| Experimental |  46 |  30.022 |    1.055 |    26.565 |      1.765 |  27.251 |    1.590 |   24.110 |    30.393 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "score.tde.pos", "grupo", aov, list("grupo"=pwc), addParam = c("mean_ci"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] +
  if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "score.tde.pos", "grupo", aov, pwc, covar = "score.tde.pre",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "score.tde", "grupo", aov, pwc.long,
    pre.post = "time", theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("Writing (TDE)") +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax) 
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  ) +
  ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo"))) +
  ggplot2::scale_color_manual(values = color[["grupo"]]) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.990   0.363

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1   154      1.76 0.186

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),],
                         "score.tde.pos", c("grupo","Sexo"))
pdat = pdat[pdat[["Sexo"]] %in% do.call(
  intersect, lapply(unique(pdat[["grupo"]]), FUN = function(x) {
    unique(pdat[["Sexo"]][which(pdat[["grupo"]] == x)])
  })),]
pdat[["grupo"]] = factor(pdat[["grupo"]], level[["grupo"]])
pdat[["Sexo"]] = factor(
  pdat[["Sexo"]],
  level[["Sexo"]][level[["Sexo"]] %in% unique(pdat[["Sexo"]])])

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo*Sexo)
  laov[["grupo:Sexo"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(pdat, grupo), score.tde.pos ~ Sexo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Sexo), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(pdat, "score.tde.pos", c("grupo","Sexo"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
              "emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Sexo"]] <- ds
}
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  wdat = pdat 
  
  res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo*Sexo, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])
  
  
  ldat[["grupo:Sexo"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo*Sexo)
  laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect        | DFn | DFd |      F |     p | p\<.05 |   ges |
|:--------------|----:|----:|-------:|------:|:-------|------:|
| score.tde.pre |   1 | 151 | 45.687 | 0.000 | \*     | 0.232 |
| grupo         |   1 | 151 |  0.547 | 0.461 |        | 0.004 |
| Sexo          |   1 | 151 |  0.947 | 0.332 |        | 0.006 |
| grupo:Sexo    |   1 | 151 |  0.139 | 0.710 |        | 0.001 |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(wdat, grupo), score.tde.pos ~ Sexo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Sexo), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

| grupo        | Sexo | term                 | .y.           | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:---------------------|:--------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | F    | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 151 |     0.185 | 0.854 | 0.854 | ns           |
|              | M    | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 151 |     0.808 | 0.421 | 0.421 | ns           |
| Controle     |      | score.tde.pre\*Sexo  | score.tde.pos | F        | M            | 151 |    -1.021 | 0.309 | 0.309 | ns           |
| Experimental |      | score.tde.pre\*Sexo  | score.tde.pos | F        | M            | 151 |    -0.210 | 0.834 | 0.834 | ns           |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Sexo"]],
                                         by=c("grupo","Sexo","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo        | Sexo | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | score.tde | pre    | pos    | 304 |     1.744 | 0.082 | 0.082 | ns           |
| Controle     | M    | time | score.tde | pre    | pos    | 304 |     0.717 | 0.474 | 0.474 | ns           |
| Experimental | F    | time | score.tde | pre    | pos    | 304 |     1.213 | 0.226 | 0.226 | ns           |
| Experimental | M    | time | score.tde | pre    | pos    | 304 |     1.175 | 0.241 | 0.241 | ns           |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(wdat, "score.tde.pos", c("grupo","Sexo"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.score.tde.pre","se.score.tde.pre",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]],
                                          by=c("grupo","Sexo"), suffixes = c("","'"))
}
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | F    |  48 |  31.729 |    0.876 |    28.208 |      1.669 |  27.394 |    1.563 |   24.306 |    30.482 |
| Controle     | M    |  62 |  30.677 |    0.863 |    29.403 |      1.642 |  29.518 |    1.371 |   26.809 |    32.227 |
| Experimental | F    |  18 |  31.111 |    1.441 |    27.111 |      2.468 |  26.843 |    2.545 |   21.815 |    31.871 |
| Experimental | M    |  28 |  29.321 |    1.469 |    26.214 |      2.459 |  27.528 |    2.049 |   23.479 |    31.577 |

### Plots for ancova

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Sexo", aov, ylab = "Writing (TDE)",
             subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-41-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "Sexo", "grupo", aov, ylab = "Writing (TDE)",
               subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "score.tde.pos", c("grupo","Sexo"), aov, pwcs, covar = "score.tde.pre",
    theme = "classic", color = color[["grupo:Sexo"]],
    subtitle = which(aov$Effect == "grupo:Sexo"))
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots[["grupo:Sexo"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour
    ## values.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-44-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "score.tde", c("grupo","Sexo"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  plots[["grupo:Sexo"]] + ggplot2::ylab("Writing (TDE)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            facet.by = c("grupo","Sexo"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "grupo", facet.by = "Sexo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "Sexo", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Sexo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo*Sexo, data = wdat))
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.990   0.371

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   152      1.65 0.181

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),],
                         "score.tde.pos", c("grupo","Zona"))
pdat = pdat[pdat[["Zona"]] %in% do.call(
  intersect, lapply(unique(pdat[["grupo"]]), FUN = function(x) {
    unique(pdat[["Zona"]][which(pdat[["grupo"]] == x)])
  })),]
pdat[["grupo"]] = factor(pdat[["grupo"]], level[["grupo"]])
pdat[["Zona"]] = factor(
  pdat[["Zona"]],
  level[["Zona"]][level[["Zona"]] %in% unique(pdat[["Zona"]])])

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo*Zona)
  laov[["grupo:Zona"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(pdat, grupo), score.tde.pos ~ Zona,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Zona), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(pdat, "score.tde.pos", c("grupo","Zona"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
              "emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Zona"]] <- ds
}
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  wdat = pdat 
  
  res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo*Zona, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])
  
  
  ldat[["grupo:Zona"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo*Zona)
  laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect        | DFn | DFd |      F |     p | p\<.05 |   ges |
|:--------------|----:|----:|-------:|------:|:-------|------:|
| score.tde.pre |   1 | 108 | 36.328 | 0.000 | \*     | 0.252 |
| grupo         |   1 | 108 |  0.026 | 0.872 |        | 0.000 |
| Zona          |   1 | 108 |  0.001 | 0.971 |        | 0.000 |
| grupo:Zona    |   1 | 108 |  1.557 | 0.215 |        | 0.014 |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(wdat, grupo), score.tde.pos ~ Zona,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Zona), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

| grupo        | Zona   | term                 | .y.           | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:---------------------|:--------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 108 |    -0.619 | 0.537 | 0.537 | ns           |
|              | Urbana | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 108 |     1.096 | 0.276 | 0.276 | ns           |
| Controle     |        | score.tde.pre\*Zona  | score.tde.pos | Rural    | Urbana       | 108 |    -0.670 | 0.504 | 0.504 | ns           |
| Experimental |        | score.tde.pre\*Zona  | score.tde.pos | Rural    | Urbana       | 108 |     1.053 | 0.295 | 0.295 | ns           |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Zona"]],
                                         by=c("grupo","Zona","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo        | Zona   | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | score.tde | pre    | pos    | 218 |     1.929 | 0.055 | 0.055 | ns           |
| Controle     | Urbana | time | score.tde | pre    | pos    | 218 |     0.157 | 0.876 | 0.876 | ns           |
| Experimental | Rural  | time | score.tde | pre    | pos    | 218 |     0.654 | 0.514 | 0.514 | ns           |
| Experimental | Urbana | time | score.tde | pre    | pos    | 218 |     1.096 | 0.274 | 0.274 | ns           |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(wdat, "score.tde.pos", c("grupo","Zona"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.score.tde.pre","se.score.tde.pre",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]],
                                          by=c("grupo","Zona"), suffixes = c("","'"))
}
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | Rural  |  66 |  31.212 |    0.847 |    28.015 |      1.456 |  27.401 |    1.240 |   24.944 |    29.858 |
| Controle     | Urbana |  11 |  29.000 |    1.489 |    28.364 |      3.007 |  29.600 |    3.033 |   23.588 |    35.611 |
| Experimental | Rural  |  31 |  29.645 |    1.361 |    28.065 |      2.002 |  28.761 |    1.806 |   25.181 |    32.341 |
| Experimental | Urbana |   5 |  29.200 |    3.056 |    22.600 |      5.997 |  23.669 |    4.492 |   14.765 |    32.572 |

### Plots for ancova

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Zona", aov, ylab = "Writing (TDE)",
             subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "Zona", "grupo", aov, ylab = "Writing (TDE)",
               subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "score.tde.pos", c("grupo","Zona"), aov, pwcs, covar = "score.tde.pre",
    theme = "classic", color = color[["grupo:Zona"]],
    subtitle = which(aov$Effect == "grupo:Zona"))
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots[["grupo:Zona"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour
    ## values.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "score.tde", c("grupo","Zona"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  plots[["grupo:Zona"]] + ggplot2::ylab("Writing (TDE)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            facet.by = c("grupo","Zona"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "grupo", facet.by = "Zona", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-73-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "Zona", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Zona)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo*Zona, data = wdat))
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.989   0.458

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   109      1.68 0.176

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),],
                         "score.tde.pos", c("grupo","Cor.Raca"))
```

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced

``` r
pdat = pdat[pdat[["Cor.Raca"]] %in% do.call(
  intersect, lapply(unique(pdat[["grupo"]]), FUN = function(x) {
    unique(pdat[["Cor.Raca"]][which(pdat[["grupo"]] == x)])
  })),]
pdat[["grupo"]] = factor(pdat[["grupo"]], level[["grupo"]])
pdat[["Cor.Raca"]] = factor(
  pdat[["Cor.Raca"]],
  level[["Cor.Raca"]][level[["Cor.Raca"]] %in% unique(pdat[["Cor.Raca"]])])

pdat.long <- rbind(pdat[,c("id","grupo","Cor.Raca")], pdat[,c("id","grupo","Cor.Raca")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(pdat, grupo), score.tde.pos ~ Cor.Raca,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Cor.Raca), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(pdat, "score.tde.pos", c("grupo","Cor.Raca"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
              "emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Cor.Raca"]] <- ds
}
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  wdat = pdat 
  
  res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo*Cor.Raca, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])
  
  
  ldat[["grupo:Cor.Raca"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| score.tde.pre  |   1 |  78 | 24.568 | 0.000 | \*     | 0.240 |
| grupo          |   1 |  78 |  0.056 | 0.814 |        | 0.001 |
| Cor.Raca       |   1 |  78 |  4.691 | 0.033 | \*     | 0.057 |
| grupo:Cor.Raca |   1 |  78 |  0.884 | 0.350 |        | 0.011 |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(wdat, grupo), score.tde.pos ~ Cor.Raca,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Cor.Raca), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

| grupo        | Cor.Raca | term                    | .y.           | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:------------------------|:--------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Parda    | score.tde.pre\*grupo    | score.tde.pos | Controle | Experimental |  78 |    -0.662 | 0.510 | 0.510 | ns           |
|              | Branca   | score.tde.pre\*grupo    | score.tde.pos | Controle | Experimental |  78 |     0.719 | 0.474 | 0.474 | ns           |
| Controle     |          | score.tde.pre\*Cor.Raca | score.tde.pos | Parda    | Branca       |  78 |    -2.339 | 0.022 | 0.022 | \*           |
| Experimental |          | score.tde.pre\*Cor.Raca | score.tde.pos | Parda    | Branca       |  78 |    -0.382 | 0.704 | 0.704 | ns           |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Cor.Raca"]],
                                         by=c("grupo","Cor.Raca","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo        | Cor.Raca | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Parda    | time | score.tde | pre    | pos    | 158 |     2.616 | 0.010 | 0.010 | \*\*         |
| Controle     | Branca   | time | score.tde | pre    | pos    | 158 |    -0.716 | 0.475 | 0.475 | ns           |
| Experimental | Parda    | time | score.tde | pre    | pos    | 158 |     0.768 | 0.444 | 0.444 | ns           |
| Experimental | Branca   | time | score.tde | pre    | pos    | 158 |     0.225 | 0.822 | 0.822 | ns           |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(wdat, "score.tde.pos", c("grupo","Cor.Raca"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.score.tde.pre","se.score.tde.pre",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]],
                                          by=c("grupo","Cor.Raca"), suffixes = c("","'"))
}
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | Branca   |  11 |  33.000 |    2.370 |    36.000 |      3.477 |  33.926 |    3.247 |   27.463 |    40.390 |
| Controle     | Parda    |  50 |  31.060 |    0.907 |    25.920 |      1.715 |  25.567 |    1.512 |   22.558 |    28.577 |
| Experimental | Branca   |   5 |  35.200 |    4.067 |    33.800 |      8.345 |  29.775 |    4.844 |   20.131 |    39.418 |
| Experimental | Parda    |  17 |  26.647 |    1.480 |    24.059 |      2.547 |  27.621 |    2.688 |   22.270 |    32.972 |

### Plots for ancova

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Cor.Raca", aov, ylab = "Writing (TDE)",
             subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "Cor.Raca", "grupo", aov, ylab = "Writing (TDE)",
               subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-92-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "score.tde.pos", c("grupo","Cor.Raca"), aov, pwcs, covar = "score.tde.pre",
    theme = "classic", color = color[["grupo:Cor.Raca"]],
    subtitle = which(aov$Effect == "grupo:Cor.Raca"))
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour
    ## values.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-94-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "score.tde", c("grupo","Cor.Raca"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("Writing (TDE)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-97-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "grupo", facet.by = "Cor.Raca", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-98-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "Cor.Raca", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Cor.Raca)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-99-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo*Cor.Raca, data = wdat))
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.991   0.820

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    79     0.669 0.574

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),],
                         "score.tde.pos", c("grupo","Serie"))
pdat = pdat[pdat[["Serie"]] %in% do.call(
  intersect, lapply(unique(pdat[["grupo"]]), FUN = function(x) {
    unique(pdat[["Serie"]][which(pdat[["grupo"]] == x)])
  })),]
pdat[["grupo"]] = factor(pdat[["grupo"]], level[["grupo"]])
pdat[["Serie"]] = factor(
  pdat[["Serie"]],
  level[["Serie"]][level[["Serie"]] %in% unique(pdat[["Serie"]])])

pdat.long <- rbind(pdat[,c("id","grupo","Serie")], pdat[,c("id","grupo","Serie")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo*Serie)
  laov[["grupo:Serie"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(pdat, grupo), score.tde.pos ~ Serie,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Serie), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(pdat, "score.tde.pos", c("grupo","Serie"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
              "emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Serie"]] <- ds
}
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  wdat = pdat 
  
  res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo*Serie, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Serie")], wdat[,c("id","grupo","Serie")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])
  
  
  ldat[["grupo:Serie"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo*Serie)
  laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect        | DFn | DFd |      F |     p | p\<.05 |   ges |
|:--------------|----:|----:|-------:|------:|:-------|------:|
| score.tde.pre |   1 | 147 | 38.039 | 0.000 | \*     | 0.206 |
| grupo         |   1 | 147 |  0.643 | 0.424 |        | 0.004 |
| Serie         |   3 | 147 |  4.494 | 0.005 | \*     | 0.084 |
| grupo:Serie   |   3 | 147 |  0.335 | 0.800 |        | 0.007 |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(wdat, grupo), score.tde.pos ~ Serie,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Serie), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

| grupo        | Serie | term                 | .y.           | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:---------------------|:--------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | 6 ano | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 147 |     0.100 | 0.920 | 0.920 | ns           |
|              | 7 ano | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 147 |    -0.175 | 0.861 | 0.861 | ns           |
|              | 8 ano | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 147 |     0.526 | 0.600 | 0.600 | ns           |
|              | 9 ano | score.tde.pre\*grupo | score.tde.pos | Controle | Experimental | 147 |     1.156 | 0.250 | 0.250 | ns           |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 7 ano        | 147 |     1.127 | 0.261 | 1.000 | ns           |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 8 ano        | 147 |     0.181 | 0.857 | 1.000 | ns           |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 9 ano        | 147 |    -2.381 | 0.019 | 0.111 | ns           |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 7 ano    | 8 ano        | 147 |    -0.841 | 0.402 | 1.000 | ns           |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 7 ano    | 9 ano        | 147 |    -3.519 | 0.001 | 0.003 | \*\*         |
| Controle     |       | score.tde.pre\*Serie | score.tde.pos | 8 ano    | 9 ano        | 147 |    -2.349 | 0.020 | 0.121 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 7 ano        | 147 |     0.456 | 0.649 | 1.000 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 8 ano        | 147 |     0.533 | 0.595 | 1.000 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 6 ano    | 9 ano        | 147 |    -0.614 | 0.540 | 1.000 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 7 ano    | 8 ano        | 147 |     0.053 | 0.958 | 1.000 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 7 ano    | 9 ano        | 147 |    -0.972 | 0.333 | 1.000 | ns           |
| Experimental |       | score.tde.pre\*Serie | score.tde.pos | 8 ano    | 9 ano        | 147 |    -1.082 | 0.281 | 1.000 | ns           |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Serie"]],
                                         by=c("grupo","Serie","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo        | Serie | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | 6 ano | time | score.tde | pre    | pos    | 296 |     1.143 | 0.254 | 0.254 | ns           |
| Controle     | 7 ano | time | score.tde | pre    | pos    | 296 |     2.518 | 0.012 | 0.012 | \*           |
| Controle     | 8 ano | time | score.tde | pre    | pos    | 296 |     1.155 | 0.249 | 0.249 | ns           |
| Controle     | 9 ano | time | score.tde | pre    | pos    | 296 |    -1.339 | 0.182 | 0.182 | ns           |
| Experimental | 6 ano | time | score.tde | pre    | pos    | 296 |     0.877 | 0.381 | 0.381 | ns           |
| Experimental | 7 ano | time | score.tde | pre    | pos    | 296 |     0.967 | 0.334 | 0.334 | ns           |
| Experimental | 8 ano | time | score.tde | pre    | pos    | 296 |     1.349 | 0.178 | 0.178 | ns           |
| Experimental | 9 ano | time | score.tde | pre    | pos    | 296 |     0.315 | 0.753 | 0.753 | ns           |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(wdat, "score.tde.pos", c("grupo","Serie"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.score.tde.pre","se.score.tde.pre",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]],
                                          by=c("grupo","Serie"), suffixes = c("","'"))
}
```

| grupo        | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | 6 ano |  30 |  30.200 |    1.038 |    27.400 |      1.894 |  27.894 |    1.914 |   24.111 |    31.677 |
| Controle     | 7 ano |  31 |  31.452 |    1.069 |    25.387 |      2.501 |  24.863 |    1.884 |   21.141 |    28.586 |
| Controle     | 8 ano |  21 |  30.429 |    1.484 |    27.048 |      2.452 |  27.356 |    2.287 |   22.837 |    31.875 |
| Controle     | 9 ano |  28 |  32.321 |    1.442 |    35.714 |      2.069 |  34.483 |    1.990 |   30.551 |    38.416 |
| Experimental | 6 ano |  14 |  30.214 |    1.755 |    27.071 |      2.731 |  27.554 |    2.801 |   22.019 |    33.089 |
| Experimental | 7 ano |  10 |  24.600 |    1.157 |    20.500 |      2.522 |  25.548 |    3.413 |   18.804 |    32.292 |
| Experimental | 8 ano |  11 |  30.545 |    2.188 |    25.091 |      4.364 |  25.304 |    3.159 |   19.061 |    31.547 |
| Experimental | 9 ano |  11 |  34.182 |    2.350 |    32.909 |      3.793 |  30.165 |    3.190 |   23.861 |    36.469 |

### Plots for ancova

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Serie", aov, ylab = "Writing (TDE)",
             subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-116-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "Serie", "grupo", aov, ylab = "Writing (TDE)",
               subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "score.tde.pos", c("grupo","Serie"), aov, pwcs, covar = "score.tde.pre",
    theme = "classic", color = color[["grupo:Serie"]],
    subtitle = which(aov$Effect == "grupo:Serie"))
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots[["grupo:Serie"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-119-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "score.tde", c("grupo","Serie"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  plots[["grupo:Serie"]] + ggplot2::ylab("Writing (TDE)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-121-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            facet.by = c("grupo","Serie"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-122-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "grupo", facet.by = "Serie", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-123-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "Serie", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Serie)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-124-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo*Serie, data = wdat))
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.993   0.630

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7   148      1.13 0.346

# ANCOVA and Pairwise for two factors **grupo:score.tde.quintile**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["score.tde.quintile"]]),],
                         "score.tde.pos", c("grupo","score.tde.quintile"))
```

    ## Warning: There were 2 warnings in `mutate()`.
    ## The first warning was:
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced
    ## ℹ Run `dplyr::last_dplyr_warnings()` to see the 1 remaining warning.

``` r
pdat = pdat[pdat[["score.tde.quintile"]] %in% do.call(
  intersect, lapply(unique(pdat[["grupo"]]), FUN = function(x) {
    unique(pdat[["score.tde.quintile"]][which(pdat[["grupo"]] == x)])
  })),]
pdat[["grupo"]] = factor(pdat[["grupo"]], level[["grupo"]])
pdat[["score.tde.quintile"]] = factor(
  pdat[["score.tde.quintile"]],
  level[["score.tde.quintile"]][level[["score.tde.quintile"]] %in% unique(pdat[["score.tde.quintile"]])])

pdat.long <- rbind(pdat[,c("id","grupo","score.tde.quintile")], pdat[,c("id","grupo","score.tde.quintile")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["score.tde"]] <- c(pdat[["score.tde.pre"]], pdat[["score.tde.pos"]])

if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  aov = anova_test(pdat, score.tde.pos ~ score.tde.pre + grupo*score.tde.quintile)
  laov[["grupo:score.tde.quintile"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  pwcs <- list()
  pwcs[["score.tde.quintile"]] <- emmeans_test(
    group_by(pdat, grupo), score.tde.pos ~ score.tde.quintile,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, score.tde.quintile), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["score.tde.quintile"]])
  pwc <- pwc[,c("grupo","score.tde.quintile", colnames(pwc)[!colnames(pwc) %in% c("grupo","score.tde.quintile")])]
}
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","score.tde.quintile")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:score.tde.quintile"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ds <- get.descriptives(pdat, "score.tde.pos", c("grupo","score.tde.quintile"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","score.tde.quintile"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","score.tde.quintile"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","score.tde.quintile","n","mean.score.tde.pre","se.score.tde.pre","mean","se",
              "emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","score.tde.quintile", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:score.tde.quintile"]] <- ds
}
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  wdat = pdat 
  
  res = residuals(lm(score.tde.pos ~ score.tde.pre + grupo*score.tde.quintile, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","score.tde.quintile")], wdat[,c("id","grupo","score.tde.quintile")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["score.tde"]] <- c(wdat[["score.tde.pre"]], wdat[["score.tde.pos"]])
  
  
  ldat[["grupo:score.tde.quintile"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  aov = anova_test(wdat, score.tde.pos ~ score.tde.pre + grupo*score.tde.quintile)
  laov[["grupo:score.tde.quintile"]] <- merge(get_anova_table(aov), laov[["grupo:score.tde.quintile"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect                   | DFn | DFd |     F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|------:|------:|:-------|------:|
| score.tde.pre            |   1 | 147 | 7.252 | 0.008 | \*     | 0.047 |
| grupo                    |   1 | 147 | 0.655 | 0.420 |        | 0.004 |
| score.tde.quintile       |   1 | 147 | 0.092 | 0.763 |        | 0.001 |
| grupo:score.tde.quintile |   1 | 147 | 0.001 | 0.970 |        | 0.000 |

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  pwcs <- list()
  pwcs[["score.tde.quintile"]] <- emmeans_test(
    group_by(wdat, grupo), score.tde.pos ~ score.tde.quintile,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, score.tde.quintile), score.tde.pos ~ grupo,
    covariate = score.tde.pre, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["score.tde.quintile"]])
  pwc <- pwc[,c("grupo","score.tde.quintile", colnames(pwc)[!colnames(pwc) %in% c("grupo","score.tde.quintile")])]
}
```

| grupo        | score.tde.quintile | term                              | .y.           | group1       | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------------------|:----------------------------------|:--------------|:-------------|:-------------|----:|----------:|------:|------:|:-------------|
|              | 2nd quintile       | score.tde.pre\*grupo              | score.tde.pos | Controle     | Experimental | 147 |     0.573 | 0.568 | 0.568 | ns           |
|              | 3rd quintile       | score.tde.pre\*grupo              | score.tde.pos | Controle     | Experimental | 147 |     0.577 | 0.565 | 0.565 | ns           |
| Controle     |                    | score.tde.pre\*score.tde.quintile | score.tde.pos | 2nd quintile | 3rd quintile | 147 |    -0.304 | 0.762 | 0.762 | ns           |
| Experimental |                    | score.tde.pre\*score.tde.quintile | score.tde.pos | 2nd quintile | 3rd quintile | 147 |    -0.208 | 0.836 | 0.836 | ns           |

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","score.tde.quintile")),
                           score.tde ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:score.tde.quintile"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:score.tde.quintile"]],
                                         by=c("grupo","score.tde.quintile","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo        | score.tde.quintile | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------------------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | 2nd quintile       | time | score.tde | pre    | pos    | 296 |     1.193 | 0.234 | 0.234 | ns           |
| Controle     | 3rd quintile       | time | score.tde | pre    | pos    | 296 |     1.730 | 0.085 | 0.085 | ns           |
| Experimental | 2nd quintile       | time | score.tde | pre    | pos    | 296 |     1.281 | 0.201 | 0.201 | ns           |
| Experimental | 3rd quintile       | time | score.tde | pre    | pos    | 296 |     1.722 | 0.086 | 0.086 | ns           |

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ds <- get.descriptives(wdat, "score.tde.pos", c("grupo","score.tde.quintile"), covar = "score.tde.pre")
  ds <- merge(ds[ds$variable != "score.tde.pre",],
              ds[ds$variable == "score.tde.pre", !colnames(ds) %in% c("variable")],
              by = c("grupo","score.tde.quintile"), all.x = T, suffixes = c("", ".score.tde.pre"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","score.tde.quintile"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","score.tde.quintile","n","mean.score.tde.pre","se.score.tde.pre",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","score.tde.quintile", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:score.tde.quintile"]] <- merge(ds, lemms[["grupo:score.tde.quintile"]],
                                          by=c("grupo","score.tde.quintile"), suffixes = c("","'"))
}
```

| grupo        | score.tde.quintile |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|
| Controle     | 2nd quintile       |  58 |  26.121 |    0.467 |    24.310 |      1.509 |  27.876 |    1.952 |   24.019 |    31.734 |
| Controle     | 3rd quintile       |  49 |  36.796 |    0.319 |    33.939 |      1.629 |  29.028 |    2.400 |   24.286 |    33.771 |
| Experimental | 2nd quintile       |  25 |  24.280 |    0.631 |    21.320 |      1.915 |  26.348 |    2.873 |   20.669 |    32.026 |
| Experimental | 3rd quintile       |  20 |  36.400 |    0.670 |    31.950 |      2.527 |  27.354 |    2.979 |   21.466 |    33.242 |

### Plots for ancova

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "score.tde.quintile", aov, ylab = "Writing (TDE)",
             subtitle = which(aov$Effect == "grupo:score.tde.quintile"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["score.tde.quintile"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-141-1.png)<!-- -->

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ggPlotAoC2(pwcs, "score.tde.quintile", "grupo", aov, ylab = "Writing (TDE)",
               subtitle = which(aov$Effect == "grupo:score.tde.quintile"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-142-1.png)<!-- -->

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "score.tde.pos", c("grupo","score.tde.quintile"), aov, pwcs, covar = "score.tde.pre",
    theme = "classic", color = color[["grupo:score.tde.quintile"]],
    subtitle = which(aov$Effect == "grupo:score.tde.quintile"))
}
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  plots[["grupo:score.tde.quintile"]] + ggplot2::ylab("Writing (TDE)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour
    ## values.

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-144-1.png)<!-- -->

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "score.tde", c("grupo","score.tde.quintile"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) 
  plots[["grupo:score.tde.quintile"]] + ggplot2::ylab("Writing (TDE)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-146-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            facet.by = c("grupo","score.tde.quintile"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-147-1.png)<!-- -->

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "grupo", facet.by = "score.tde.quintile", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:score.tde.quintile"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-148-1.png)<!-- -->

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) {
  ggscatter(wdat, x = "score.tde.pre", y = "score.tde.pos", size = 0.5,
            color = "score.tde.quintile", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = score.tde.quintile)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:score.tde.quintile"))) +
    ggplot2::scale_color_manual(values = color[["score.tde.quintile"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-score.tde_files/figure-gfm/unnamed-chunk-149-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) 
  res <- augment(lm(score.tde.pos ~ score.tde.pre + grupo*score.tde.quintile, data = wdat))
```

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.991   0.483

``` r
if (length(unique(pdat[["score.tde.quintile"]])) >= 2) 
  levene_test(res, .resid ~ grupo*score.tde.quintile)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   148     0.937 0.424

# Summary of Results

## Descriptive Statistics

``` r
df <- get.descriptives(ldat[["grupo"]], c(dv.pre, dv.pos), c("grupo"), 
                       include.global = T, symmetry.test = T, normality.test = F)
df <- plyr::rbind.fill(
  df, do.call(plyr::rbind.fill, lapply(lfatores2, FUN = function(f) {
    if (nrow(dat) > 0 && sum(!is.na(unique(dat[[f]]))) > 1 && paste0("grupo:",f) %in% names(ldat))
      get.descriptives(ldat[[paste0("grupo:",f)]], c(dv.pre,dv.pos), c("grupo", f),
                       symmetry.test = T, normality.test = F)
    }))
)
df <- df[,c(fatores1[fatores1 %in% colnames(df)],"variable",
             colnames(df)[!colnames(df) %in% c(fatores1,"variable")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | score.tde.quintile | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:-------------------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       |                    | score.tde.pre | 110 | 31.136 |   31.0 |  17 |  46 |  6.480 | 0.618 |  1.225 | 11.00 | YES      |   -0.110 |   -1.000 |
| Experimental |      |        |          |       |                    | score.tde.pre |  46 | 30.022 |   29.0 |  19 |  46 |  7.154 | 1.055 |  2.124 | 13.00 | YES      |    0.228 |   -1.195 |
|              |      |        |          |       |                    | score.tde.pre | 156 | 30.808 |   30.5 |  17 |  46 |  6.682 | 0.535 |  1.057 | 12.00 | YES      |   -0.008 |   -1.069 |
| Controle     |      |        |          |       |                    | score.tde.pos | 110 | 28.882 |   29.0 |   0 |  63 | 12.312 | 1.174 |  2.327 | 17.25 | YES      |   -0.062 |   -0.184 |
| Experimental |      |        |          |       |                    | score.tde.pos |  46 | 26.565 |   26.0 |   1 |  50 | 11.968 | 1.765 |  3.554 | 18.50 | YES      |   -0.069 |   -0.438 |
|              |      |        |          |       |                    | score.tde.pos | 156 | 28.199 |   28.0 |   0 |  63 | 12.219 | 0.978 |  1.933 | 16.50 | YES      |   -0.056 |   -0.215 |
| Controle     | F    |        |          |       |                    | score.tde.pre |  48 | 31.729 |   31.5 |  20 |  41 |  6.066 | 0.876 |  1.761 | 11.00 | YES      |   -0.307 |   -1.140 |
| Controle     | M    |        |          |       |                    | score.tde.pre |  62 | 30.677 |   30.0 |  17 |  46 |  6.796 | 0.863 |  1.726 | 11.00 | YES      |    0.041 |   -0.966 |
| Experimental | F    |        |          |       |                    | score.tde.pre |  18 | 31.111 |   32.0 |  20 |  40 |  6.115 | 1.441 |  3.041 |  9.25 | YES      |   -0.200 |   -1.141 |
| Experimental | M    |        |          |       |                    | score.tde.pre |  28 | 29.321 |   26.5 |  19 |  46 |  7.775 | 1.469 |  3.015 | 14.25 | YES      |    0.456 |   -1.224 |
| Controle     | F    |        |          |       |                    | score.tde.pos |  48 | 28.208 |   28.5 |   7 |  63 | 11.567 | 1.669 |  3.359 | 15.00 | YES      |    0.292 |    0.183 |
| Controle     | M    |        |          |       |                    | score.tde.pos |  62 | 29.403 |   29.5 |   0 |  59 | 12.929 | 1.642 |  3.283 | 18.75 | YES      |   -0.281 |   -0.410 |
| Experimental | F    |        |          |       |                    | score.tde.pos |  18 | 27.111 |   26.5 |   1 |  44 | 10.471 | 2.468 |  5.207 | 11.25 | YES      |   -0.405 |    0.099 |
| Experimental | M    |        |          |       |                    | score.tde.pos |  28 | 26.214 |   24.0 |   1 |  50 | 13.014 | 2.459 |  5.046 | 19.25 | YES      |    0.076 |   -0.802 |
| Controle     |      | Rural  |          |       |                    | score.tde.pre |  66 | 31.212 |   31.0 |  17 |  46 |  6.880 | 0.847 |  1.691 | 11.75 | YES      |   -0.061 |   -1.044 |
| Controle     |      | Urbana |          |       |                    | score.tde.pre |  11 | 29.000 |   28.0 |  22 |  39 |  4.940 | 1.489 |  3.318 |  6.00 | NO       |    0.561 |   -0.801 |
| Experimental |      | Rural  |          |       |                    | score.tde.pre |  31 | 29.645 |   28.0 |  19 |  46 |  7.579 | 1.361 |  2.780 | 13.50 | YES      |    0.333 |   -1.194 |
| Experimental |      | Urbana |          |       |                    | score.tde.pre |   5 | 29.200 |   30.0 |  21 |  38 |  6.834 | 3.056 |  8.485 |  9.00 | YES      |    0.028 |   -1.949 |
| Controle     |      | Rural  |          |       |                    | score.tde.pos |  66 | 28.015 |   27.5 |   0 |  50 | 11.830 | 1.456 |  2.908 | 14.00 | YES      |   -0.282 |   -0.306 |
| Controle     |      | Urbana |          |       |                    | score.tde.pos |  11 | 28.364 |   29.0 |   8 |  42 |  9.973 | 3.007 |  6.700 | 11.50 | NO       |   -0.526 |   -0.778 |
| Experimental |      | Rural  |          |       |                    | score.tde.pos |  31 | 28.065 |   26.0 |  11 |  50 | 11.144 | 2.002 |  4.088 | 19.50 | NO       |    0.519 |   -1.025 |
| Experimental |      | Urbana |          |       |                    | score.tde.pos |   5 | 22.600 |   25.0 |   2 |  36 | 13.409 | 5.997 | 16.649 | 14.00 | YES      |   -0.464 |   -1.635 |
| Controle     |      |        | Parda    |       |                    | score.tde.pre |  50 | 31.060 |   31.0 |  17 |  42 |  6.412 | 0.907 |  1.822 | 11.00 | YES      |   -0.237 |   -1.195 |
| Controle     |      |        | Branca   |       |                    | score.tde.pre |  11 | 33.000 |   31.0 |  20 |  46 |  7.861 | 2.370 |  5.281 |  9.50 | YES      |    0.217 |   -1.174 |
| Experimental |      |        | Parda    |       |                    | score.tde.pre |  17 | 26.647 |   25.0 |  19 |  40 |  6.103 | 1.480 |  3.138 |  8.00 | NO       |    0.642 |   -0.724 |
| Experimental |      |        | Branca   |       |                    | score.tde.pre |   5 | 35.200 |   37.0 |  21 |  46 |  9.094 | 4.067 | 11.292 |  4.00 | YES      |   -0.420 |   -1.411 |
| Controle     |      |        | Parda    |       |                    | score.tde.pos |  50 | 25.920 |   25.5 |   0 |  50 | 12.128 | 1.715 |  3.447 | 12.75 | YES      |   -0.070 |   -0.296 |
| Controle     |      |        | Branca   |       |                    | score.tde.pos |  11 | 36.000 |   36.0 |  16 |  63 | 11.533 | 3.477 |  7.748 |  8.50 | NO       |    0.687 |    0.593 |
| Experimental |      |        | Parda    |       |                    | score.tde.pos |  17 | 24.059 |   22.0 |   1 |  43 | 10.503 | 2.547 |  5.400 | 11.00 | YES      |    0.052 |   -0.302 |
| Experimental |      |        | Branca   |       |                    | score.tde.pos |   5 | 33.800 |   37.0 |   2 |  50 | 18.660 | 8.345 | 23.170 |  8.00 | NO       |   -0.825 |   -1.181 |
| Controle     |      |        |          | 6 ano |                    | score.tde.pre |  30 | 30.200 |   30.0 |  20 |  39 |  5.684 | 1.038 |  2.122 |  9.25 | YES      |   -0.096 |   -1.072 |
| Controle     |      |        |          | 7 ano |                    | score.tde.pre |  31 | 31.452 |   30.0 |  20 |  40 |  5.954 | 1.069 |  2.184 | 10.50 | YES      |   -0.148 |   -1.377 |
| Controle     |      |        |          | 8 ano |                    | score.tde.pre |  21 | 30.429 |   31.0 |  20 |  39 |  6.801 | 1.484 |  3.096 | 12.00 | YES      |   -0.265 |   -1.568 |
| Controle     |      |        |          | 9 ano |                    | score.tde.pre |  28 | 32.321 |   34.0 |  17 |  46 |  7.631 | 1.442 |  2.959 | 11.75 | YES      |   -0.165 |   -1.080 |
| Experimental |      |        |          | 6 ano |                    | score.tde.pre |  14 | 30.214 |   30.5 |  21 |  40 |  6.565 | 1.755 |  3.791 | 11.50 | YES      |   -0.021 |   -1.606 |
| Experimental |      |        |          | 7 ano |                    | score.tde.pre |  10 | 24.600 |   24.0 |  21 |  33 |  3.658 | 1.157 |  2.616 |  3.25 | NO       |    1.061 |    0.076 |
| Experimental |      |        |          | 8 ano |                    | score.tde.pre |  11 | 30.545 |   33.0 |  20 |  39 |  7.258 | 2.188 |  4.876 | 13.50 | YES      |   -0.242 |   -1.845 |
| Experimental |      |        |          | 9 ano |                    | score.tde.pre |  11 | 34.182 |   34.0 |  19 |  46 |  7.795 | 2.350 |  5.237 | 10.50 | YES      |   -0.297 |   -0.970 |
| Controle     |      |        |          | 6 ano |                    | score.tde.pos |  30 | 27.400 |   26.0 |   0 |  45 | 10.374 | 1.894 |  3.874 | 14.75 | YES      |   -0.360 |   -0.269 |
| Controle     |      |        |          | 7 ano |                    | score.tde.pos |  31 | 25.387 |   28.0 |   0 |  63 | 13.925 | 2.501 |  5.108 | 17.50 | YES      |    0.301 |    0.017 |
| Controle     |      |        |          | 8 ano |                    | score.tde.pos |  21 | 27.048 |   28.0 |   7 |  44 | 11.236 | 2.452 |  5.115 | 19.00 | YES      |   -0.197 |   -1.179 |
| Controle     |      |        |          | 9 ano |                    | score.tde.pos |  28 | 35.714 |   38.0 |  12 |  59 | 10.951 | 2.069 |  4.246 | 15.00 | YES      |   -0.135 |   -0.703 |
| Experimental |      |        |          | 6 ano |                    | score.tde.pos |  14 | 27.071 |   26.0 |  11 |  44 | 10.217 | 2.731 |  5.899 | 14.25 | YES      |    0.322 |   -1.206 |
| Experimental |      |        |          | 7 ano |                    | score.tde.pos |  10 | 20.500 |   21.5 |   2 |  31 |  7.976 | 2.522 |  5.705 |  6.75 | NO       |   -0.924 |    0.307 |
| Experimental |      |        |          | 8 ano |                    | score.tde.pos |  11 | 25.091 |   30.0 |   1 |  44 | 14.474 | 4.364 |  9.724 | 18.00 | NO       |   -0.525 |   -1.207 |
| Experimental |      |        |          | 9 ano |                    | score.tde.pos |  11 | 32.909 |   37.0 |  15 |  50 | 12.581 | 3.793 |  8.452 | 19.00 | YES      |   -0.049 |   -1.639 |
| Controle     |      |        |          |       | 2nd quintile       | score.tde.pre |  58 | 26.121 |   26.0 |  20 |  31 |  3.559 | 0.467 |  0.936 |  6.50 | YES      |   -0.221 |   -1.231 |
| Controle     |      |        |          |       | 3rd quintile       | score.tde.pre |  49 | 36.796 |   37.0 |  32 |  42 |  2.236 | 0.319 |  0.642 |  4.00 | YES      |   -0.111 |   -0.550 |
| Experimental |      |        |          |       | 2nd quintile       | score.tde.pre |  25 | 24.280 |   24.0 |  19 |  30 |  3.156 | 0.631 |  1.303 |  5.00 | YES      |    0.218 |   -1.240 |
| Experimental |      |        |          |       | 3rd quintile       | score.tde.pre |  20 | 36.400 |   37.0 |  32 |  42 |  2.998 | 0.670 |  1.403 |  4.50 | YES      |   -0.023 |   -1.163 |
| Controle     |      |        |          |       | 2nd quintile       | score.tde.pos |  58 | 24.310 |   24.0 |   0 |  48 | 11.494 | 1.509 |  3.022 | 15.75 | YES      |   -0.121 |   -0.703 |
| Controle     |      |        |          |       | 3rd quintile       | score.tde.pos |  49 | 33.939 |   34.0 |   5 |  63 | 11.401 | 1.629 |  3.275 | 15.00 | YES      |    0.034 |    0.074 |
| Experimental |      |        |          |       | 2nd quintile       | score.tde.pos |  25 | 21.320 |   19.0 |   1 |  43 |  9.577 | 1.915 |  3.953 |  9.00 | YES      |    0.114 |    0.315 |
| Experimental |      |        |          |       | 3rd quintile       | score.tde.pos |  20 | 31.950 |   34.0 |   1 |  50 | 11.302 | 2.527 |  5.289 | 11.75 | NO       |   -0.862 |    0.633 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
df <- df[!duplicated(df$Effect),]
```

|     | Effect                   | DFn | DFd |      F |     p | p\<.05 |   ges | DFn’ | DFd’ |     F’ |    p’ | p\<.05’ |  ges’ |
|:----|:-------------------------|----:|----:|-------:|------:|:-------|------:|-----:|-----:|-------:|------:|:--------|------:|
| 1   | grupo                    |   1 | 153 |  0.502 | 0.480 |        | 0.003 |    1 |  153 |  0.502 | 0.480 |         | 0.003 |
| 2   | score.tde.pre            |   1 | 153 | 45.279 | 0.000 | \*     | 0.228 |    1 |  153 | 45.279 | 0.000 | \*      | 0.228 |
| 4   | grupo:Sexo               |   1 | 151 |  0.139 | 0.710 |        | 0.001 |    1 |  151 |  0.139 | 0.710 |         | 0.001 |
| 6   | Sexo                     |   1 | 151 |  0.947 | 0.332 |        | 0.006 |    1 |  151 |  0.947 | 0.332 |         | 0.006 |
| 8   | grupo:Zona               |   1 | 108 |  1.557 | 0.215 |        | 0.014 |    1 |  108 |  1.557 | 0.215 |         | 0.014 |
| 10  | Zona                     |   1 | 108 |  0.001 | 0.971 |        | 0.000 |    1 |  108 |  0.001 | 0.971 |         | 0.000 |
| 11  | Cor.Raca                 |   1 |  78 |  4.691 | 0.033 | \*     | 0.057 |    1 |   78 |  4.691 | 0.033 | \*      | 0.057 |
| 13  | grupo:Cor.Raca           |   1 |  78 |  0.884 | 0.350 |        | 0.011 |    1 |   78 |  0.884 | 0.350 |         | 0.011 |
| 16  | grupo:Serie              |   3 | 147 |  0.335 | 0.800 |        | 0.007 |    3 |  147 |  0.335 | 0.800 |         | 0.007 |
| 18  | Serie                    |   3 | 147 |  4.494 | 0.005 | \*     | 0.084 |    3 |  147 |  4.494 | 0.005 | \*      | 0.084 |
| 20  | grupo:score.tde.quintile |   1 | 147 |  0.001 | 0.970 |        | 0.000 |    1 |  147 |  0.001 | 0.970 |         | 0.000 |
| 22  | score.tde.quintile       |   1 | 147 |  0.092 | 0.763 |        | 0.001 |    1 |  147 |  0.092 | 0.763 |         | 0.001 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | score.tde.quintile | group1       | group2       |  df | statistic |     p | p.adj | p.adj.signif | df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:------|:-------------------|:-------------|:-------------|----:|----------:|------:|------:|:-------------|----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          |       |                    | pre          | pos          | 308 |     1.698 | 0.090 | 0.090 | ns           | 308 |      1.698 | 0.090 |  0.090 | ns            |
| Experimental |      |        |          |       |                    | pre          | pos          | 308 |     1.684 | 0.093 | 0.093 | ns           | 308 |      1.684 | 0.093 |  0.093 | ns            |
|              |      |        |          |       |                    | Controle     | Experimental | 153 |     0.709 | 0.480 | 0.480 | ns           | 153 |      0.709 | 0.480 |  0.480 | ns            |
| Controle     | F    |        |          |       |                    | pre          | pos          | 304 |     1.744 | 0.082 | 0.082 | ns           | 304 |      1.744 | 0.082 |  0.082 | ns            |
| Controle     | M    |        |          |       |                    | pre          | pos          | 304 |     0.717 | 0.474 | 0.474 | ns           | 304 |      0.717 | 0.474 |  0.474 | ns            |
| Controle     |      |        |          |       |                    | F            | M            | 151 |    -1.021 | 0.309 | 0.309 | ns           | 151 |     -1.021 | 0.309 |  0.309 | ns            |
| Experimental | F    |        |          |       |                    | pre          | pos          | 304 |     1.213 | 0.226 | 0.226 | ns           | 304 |      1.213 | 0.226 |  0.226 | ns            |
| Experimental | M    |        |          |       |                    | pre          | pos          | 304 |     1.175 | 0.241 | 0.241 | ns           | 304 |      1.175 | 0.241 |  0.241 | ns            |
| Experimental |      |        |          |       |                    | F            | M            | 151 |    -0.210 | 0.834 | 0.834 | ns           | 151 |     -0.210 | 0.834 |  0.834 | ns            |
|              | F    |        |          |       |                    | Controle     | Experimental | 151 |     0.185 | 0.854 | 0.854 | ns           | 151 |      0.185 | 0.854 |  0.854 | ns            |
|              | M    |        |          |       |                    | Controle     | Experimental | 151 |     0.808 | 0.421 | 0.421 | ns           | 151 |      0.808 | 0.421 |  0.421 | ns            |
| Controle     |      |        |          |       |                    | Rural        | Urbana       | 108 |    -0.670 | 0.504 | 0.504 | ns           | 108 |     -0.670 | 0.504 |  0.504 | ns            |
| Controle     |      | Rural  |          |       |                    | pre          | pos          | 218 |     1.929 | 0.055 | 0.055 | ns           | 218 |      1.929 | 0.055 |  0.055 | ns            |
| Controle     |      | Urbana |          |       |                    | pre          | pos          | 218 |     0.157 | 0.876 | 0.876 | ns           | 218 |      0.157 | 0.876 |  0.876 | ns            |
| Experimental |      |        |          |       |                    | Rural        | Urbana       | 108 |     1.053 | 0.295 | 0.295 | ns           | 108 |      1.053 | 0.295 |  0.295 | ns            |
| Experimental |      | Rural  |          |       |                    | pre          | pos          | 218 |     0.654 | 0.514 | 0.514 | ns           | 218 |      0.654 | 0.514 |  0.514 | ns            |
| Experimental |      | Urbana |          |       |                    | pre          | pos          | 218 |     1.096 | 0.274 | 0.274 | ns           | 218 |      1.096 | 0.274 |  0.274 | ns            |
|              |      | Rural  |          |       |                    | Controle     | Experimental | 108 |    -0.619 | 0.537 | 0.537 | ns           | 108 |     -0.619 | 0.537 |  0.537 | ns            |
|              |      | Urbana |          |       |                    | Controle     | Experimental | 108 |     1.096 | 0.276 | 0.276 | ns           | 108 |      1.096 | 0.276 |  0.276 | ns            |
| Controle     |      |        | Branca   |       |                    | pre          | pos          | 158 |    -0.716 | 0.475 | 0.475 | ns           | 158 |     -0.716 | 0.475 |  0.475 | ns            |
| Controle     |      |        |          |       |                    | Parda        | Branca       |  78 |    -2.339 | 0.022 | 0.022 | \*           |  78 |     -2.339 | 0.022 |  0.022 | \*            |
| Controle     |      |        | Parda    |       |                    | pre          | pos          | 158 |     2.616 | 0.010 | 0.010 | \*\*         | 158 |      2.616 | 0.010 |  0.010 | \*\*          |
| Experimental |      |        | Branca   |       |                    | pre          | pos          | 158 |     0.225 | 0.822 | 0.822 | ns           | 158 |      0.225 | 0.822 |  0.822 | ns            |
| Experimental |      |        |          |       |                    | Parda        | Branca       |  78 |    -0.382 | 0.704 | 0.704 | ns           |  78 |     -0.382 | 0.704 |  0.704 | ns            |
| Experimental |      |        | Parda    |       |                    | pre          | pos          | 158 |     0.768 | 0.444 | 0.444 | ns           | 158 |      0.768 | 0.444 |  0.444 | ns            |
|              |      |        | Branca   |       |                    | Controle     | Experimental |  78 |     0.719 | 0.474 | 0.474 | ns           |  78 |      0.719 | 0.474 |  0.474 | ns            |
|              |      |        | Parda    |       |                    | Controle     | Experimental |  78 |    -0.662 | 0.510 | 0.510 | ns           |  78 |     -0.662 | 0.510 |  0.510 | ns            |
| Controle     |      |        |          | 6 ano |                    | pre          | pos          | 296 |     1.143 | 0.254 | 0.254 | ns           | 296 |      1.143 | 0.254 |  0.254 | ns            |
| Controle     |      |        |          | 7 ano |                    | pre          | pos          | 296 |     2.518 | 0.012 | 0.012 | \*           | 296 |      2.518 | 0.012 |  0.012 | \*            |
| Controle     |      |        |          | 8 ano |                    | pre          | pos          | 296 |     1.155 | 0.249 | 0.249 | ns           | 296 |      1.155 | 0.249 |  0.249 | ns            |
| Controle     |      |        |          | 9 ano |                    | pre          | pos          | 296 |    -1.339 | 0.182 | 0.182 | ns           | 296 |     -1.339 | 0.182 |  0.182 | ns            |
| Controle     |      |        |          |       |                    | 6 ano        | 7 ano        | 147 |     1.127 | 0.261 | 1.000 | ns           | 147 |      1.127 | 0.261 |  1.000 | ns            |
| Controle     |      |        |          |       |                    | 6 ano        | 8 ano        | 147 |     0.181 | 0.857 | 1.000 | ns           | 147 |      0.181 | 0.857 |  1.000 | ns            |
| Controle     |      |        |          |       |                    | 6 ano        | 9 ano        | 147 |    -2.381 | 0.019 | 0.111 | ns           | 147 |     -2.381 | 0.019 |  0.111 | ns            |
| Controle     |      |        |          |       |                    | 7 ano        | 8 ano        | 147 |    -0.841 | 0.402 | 1.000 | ns           | 147 |     -0.841 | 0.402 |  1.000 | ns            |
| Controle     |      |        |          |       |                    | 7 ano        | 9 ano        | 147 |    -3.519 | 0.001 | 0.003 | \*\*         | 147 |     -3.519 | 0.001 |  0.003 | \*\*          |
| Controle     |      |        |          |       |                    | 8 ano        | 9 ano        | 147 |    -2.349 | 0.020 | 0.121 | ns           | 147 |     -2.349 | 0.020 |  0.121 | ns            |
| Experimental |      |        |          | 6 ano |                    | pre          | pos          | 296 |     0.877 | 0.381 | 0.381 | ns           | 296 |      0.877 | 0.381 |  0.381 | ns            |
| Experimental |      |        |          | 7 ano |                    | pre          | pos          | 296 |     0.967 | 0.334 | 0.334 | ns           | 296 |      0.967 | 0.334 |  0.334 | ns            |
| Experimental |      |        |          | 8 ano |                    | pre          | pos          | 296 |     1.349 | 0.178 | 0.178 | ns           | 296 |      1.349 | 0.178 |  0.178 | ns            |
| Experimental |      |        |          | 9 ano |                    | pre          | pos          | 296 |     0.315 | 0.753 | 0.753 | ns           | 296 |      0.315 | 0.753 |  0.753 | ns            |
| Experimental |      |        |          |       |                    | 6 ano        | 7 ano        | 147 |     0.456 | 0.649 | 1.000 | ns           | 147 |      0.456 | 0.649 |  1.000 | ns            |
| Experimental |      |        |          |       |                    | 6 ano        | 8 ano        | 147 |     0.533 | 0.595 | 1.000 | ns           | 147 |      0.533 | 0.595 |  1.000 | ns            |
| Experimental |      |        |          |       |                    | 6 ano        | 9 ano        | 147 |    -0.614 | 0.540 | 1.000 | ns           | 147 |     -0.614 | 0.540 |  1.000 | ns            |
| Experimental |      |        |          |       |                    | 7 ano        | 8 ano        | 147 |     0.053 | 0.958 | 1.000 | ns           | 147 |      0.053 | 0.958 |  1.000 | ns            |
| Experimental |      |        |          |       |                    | 7 ano        | 9 ano        | 147 |    -0.972 | 0.333 | 1.000 | ns           | 147 |     -0.972 | 0.333 |  1.000 | ns            |
| Experimental |      |        |          |       |                    | 8 ano        | 9 ano        | 147 |    -1.082 | 0.281 | 1.000 | ns           | 147 |     -1.082 | 0.281 |  1.000 | ns            |
|              |      |        |          | 6 ano |                    | Controle     | Experimental | 147 |     0.100 | 0.920 | 0.920 | ns           | 147 |      0.100 | 0.920 |  0.920 | ns            |
|              |      |        |          | 7 ano |                    | Controle     | Experimental | 147 |    -0.175 | 0.861 | 0.861 | ns           | 147 |     -0.175 | 0.861 |  0.861 | ns            |
|              |      |        |          | 8 ano |                    | Controle     | Experimental | 147 |     0.526 | 0.600 | 0.600 | ns           | 147 |      0.526 | 0.600 |  0.600 | ns            |
|              |      |        |          | 9 ano |                    | Controle     | Experimental | 147 |     1.156 | 0.250 | 0.250 | ns           | 147 |      1.156 | 0.250 |  0.250 | ns            |
| Controle     |      |        |          |       | 2nd quintile       | pre          | pos          | 296 |     1.193 | 0.234 | 0.234 | ns           | 296 |      1.193 | 0.234 |  0.234 | ns            |
| Controle     |      |        |          |       | 3rd quintile       | pre          | pos          | 296 |     1.730 | 0.085 | 0.085 | ns           | 296 |      1.730 | 0.085 |  0.085 | ns            |
| Controle     |      |        |          |       |                    | 2nd quintile | 3rd quintile | 147 |    -0.304 | 0.762 | 0.762 | ns           | 147 |     -0.304 | 0.762 |  0.762 | ns            |
| Experimental |      |        |          |       | 2nd quintile       | pre          | pos          | 296 |     1.281 | 0.201 | 0.201 | ns           | 296 |      1.281 | 0.201 |  0.201 | ns            |
| Experimental |      |        |          |       | 3rd quintile       | pre          | pos          | 296 |     1.722 | 0.086 | 0.086 | ns           | 296 |      1.722 | 0.086 |  0.086 | ns            |
| Experimental |      |        |          |       |                    | 2nd quintile | 3rd quintile | 147 |    -0.208 | 0.836 | 0.836 | ns           | 147 |     -0.208 | 0.836 |  0.836 | ns            |
|              |      |        |          |       | 2nd quintile       | Controle     | Experimental | 147 |     0.573 | 0.568 | 0.568 | ns           | 147 |      0.573 | 0.568 |  0.568 | ns            |
|              |      |        |          |       | 3rd quintile       | Controle     | Experimental | 147 |     0.577 | 0.565 | 0.565 | ns           | 147 |      0.577 | 0.565 |  0.565 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | score.tde.quintile |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | conf.low’ | conf.high’ | N-N’ |
|:-------------|:-----|:-------|:---------|:------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|---------:|----------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|----------:|-----------:|-----:|
| Controle     |      |        |          |       |                    | 110 |  31.136 |    0.618 |    28.882 |      1.174 |  28.595 |    1.027 |   26.566 |    30.624 | 110 |   31.136 |     0.618 |     28.882 |       1.174 |   28.595 |     1.027 |    26.566 |     30.624 |    0 |
| Experimental |      |        |          |       |                    |  46 |  30.022 |    1.055 |    26.565 |      1.765 |  27.251 |    1.590 |   24.110 |    30.393 |  46 |   30.022 |     1.055 |     26.565 |       1.765 |   27.251 |     1.590 |    24.110 |     30.393 |    0 |
| Controle     | F    |        |          |       |                    |  48 |  31.729 |    0.876 |    28.208 |      1.669 |  27.394 |    1.563 |   24.306 |    30.482 |  48 |   31.729 |     0.876 |     28.208 |       1.669 |   27.394 |     1.563 |    24.306 |     30.482 |    0 |
| Controle     | M    |        |          |       |                    |  62 |  30.677 |    0.863 |    29.403 |      1.642 |  29.518 |    1.371 |   26.809 |    32.227 |  62 |   30.677 |     0.863 |     29.403 |       1.642 |   29.518 |     1.371 |    26.809 |     32.227 |    0 |
| Experimental | F    |        |          |       |                    |  18 |  31.111 |    1.441 |    27.111 |      2.468 |  26.843 |    2.545 |   21.815 |    31.871 |  18 |   31.111 |     1.441 |     27.111 |       2.468 |   26.843 |     2.545 |    21.815 |     31.871 |    0 |
| Experimental | M    |        |          |       |                    |  28 |  29.321 |    1.469 |    26.214 |      2.459 |  27.528 |    2.049 |   23.479 |    31.577 |  28 |   29.321 |     1.469 |     26.214 |       2.459 |   27.528 |     2.049 |    23.479 |     31.577 |    0 |
| Controle     |      | Rural  |          |       |                    |  66 |  31.212 |    0.847 |    28.015 |      1.456 |  27.401 |    1.240 |   24.944 |    29.858 |  66 |   31.212 |     0.847 |     28.015 |       1.456 |   27.401 |     1.240 |    24.944 |     29.858 |    0 |
| Controle     |      | Urbana |          |       |                    |  11 |  29.000 |    1.489 |    28.364 |      3.007 |  29.600 |    3.033 |   23.588 |    35.611 |  11 |   29.000 |     1.489 |     28.364 |       3.007 |   29.600 |     3.033 |    23.588 |     35.611 |    0 |
| Experimental |      | Rural  |          |       |                    |  31 |  29.645 |    1.361 |    28.065 |      2.002 |  28.761 |    1.806 |   25.181 |    32.341 |  31 |   29.645 |     1.361 |     28.065 |       2.002 |   28.761 |     1.806 |    25.181 |     32.341 |    0 |
| Experimental |      | Urbana |          |       |                    |   5 |  29.200 |    3.056 |    22.600 |      5.997 |  23.669 |    4.492 |   14.765 |    32.572 |   5 |   29.200 |     3.056 |     22.600 |       5.997 |   23.669 |     4.492 |    14.765 |     32.572 |    0 |
| Controle     |      |        | Branca   |       |                    |  11 |  33.000 |    2.370 |    36.000 |      3.477 |  33.926 |    3.247 |   27.463 |    40.390 |  11 |   33.000 |     2.370 |     36.000 |       3.477 |   33.926 |     3.247 |    27.463 |     40.390 |    0 |
| Controle     |      |        | Parda    |       |                    |  50 |  31.060 |    0.907 |    25.920 |      1.715 |  25.567 |    1.512 |   22.558 |    28.577 |  50 |   31.060 |     0.907 |     25.920 |       1.715 |   25.567 |     1.512 |    22.558 |     28.577 |    0 |
| Experimental |      |        | Branca   |       |                    |   5 |  35.200 |    4.067 |    33.800 |      8.345 |  29.775 |    4.844 |   20.131 |    39.418 |   5 |   35.200 |     4.067 |     33.800 |       8.345 |   29.775 |     4.844 |    20.131 |     39.418 |    0 |
| Experimental |      |        | Parda    |       |                    |  17 |  26.647 |    1.480 |    24.059 |      2.547 |  27.621 |    2.688 |   22.270 |    32.972 |  17 |   26.647 |     1.480 |     24.059 |       2.547 |   27.621 |     2.688 |    22.270 |     32.972 |    0 |
| Controle     |      |        |          | 6 ano |                    |  30 |  30.200 |    1.038 |    27.400 |      1.894 |  27.894 |    1.914 |   24.111 |    31.677 |  30 |   30.200 |     1.038 |     27.400 |       1.894 |   27.894 |     1.914 |    24.111 |     31.677 |    0 |
| Controle     |      |        |          | 7 ano |                    |  31 |  31.452 |    1.069 |    25.387 |      2.501 |  24.863 |    1.884 |   21.141 |    28.586 |  31 |   31.452 |     1.069 |     25.387 |       2.501 |   24.863 |     1.884 |    21.141 |     28.586 |    0 |
| Controle     |      |        |          | 8 ano |                    |  21 |  30.429 |    1.484 |    27.048 |      2.452 |  27.356 |    2.287 |   22.837 |    31.875 |  21 |   30.429 |     1.484 |     27.048 |       2.452 |   27.356 |     2.287 |    22.837 |     31.875 |    0 |
| Controle     |      |        |          | 9 ano |                    |  28 |  32.321 |    1.442 |    35.714 |      2.069 |  34.483 |    1.990 |   30.551 |    38.416 |  28 |   32.321 |     1.442 |     35.714 |       2.069 |   34.483 |     1.990 |    30.551 |     38.416 |    0 |
| Experimental |      |        |          | 6 ano |                    |  14 |  30.214 |    1.755 |    27.071 |      2.731 |  27.554 |    2.801 |   22.019 |    33.089 |  14 |   30.214 |     1.755 |     27.071 |       2.731 |   27.554 |     2.801 |    22.019 |     33.089 |    0 |
| Experimental |      |        |          | 7 ano |                    |  10 |  24.600 |    1.157 |    20.500 |      2.522 |  25.548 |    3.413 |   18.804 |    32.292 |  10 |   24.600 |     1.157 |     20.500 |       2.522 |   25.548 |     3.413 |    18.804 |     32.292 |    0 |
| Experimental |      |        |          | 8 ano |                    |  11 |  30.545 |    2.188 |    25.091 |      4.364 |  25.304 |    3.159 |   19.061 |    31.547 |  11 |   30.545 |     2.188 |     25.091 |       4.364 |   25.304 |     3.159 |    19.061 |     31.547 |    0 |
| Experimental |      |        |          | 9 ano |                    |  11 |  34.182 |    2.350 |    32.909 |      3.793 |  30.165 |    3.190 |   23.861 |    36.469 |  11 |   34.182 |     2.350 |     32.909 |       3.793 |   30.165 |     3.190 |    23.861 |     36.469 |    0 |
| Controle     |      |        |          |       | 2nd quintile       |  58 |  26.121 |    0.467 |    24.310 |      1.509 |  27.876 |    1.952 |   24.019 |    31.734 |  58 |   26.121 |     0.467 |     24.310 |       1.509 |   27.876 |     1.952 |    24.019 |     31.734 |    0 |
| Controle     |      |        |          |       | 3rd quintile       |  49 |  36.796 |    0.319 |    33.939 |      1.629 |  29.028 |    2.400 |   24.286 |    33.771 |  49 |   36.796 |     0.319 |     33.939 |       1.629 |   29.028 |     2.400 |    24.286 |     33.771 |    0 |
| Experimental |      |        |          |       | 2nd quintile       |  25 |  24.280 |    0.631 |    21.320 |      1.915 |  26.348 |    2.873 |   20.669 |    32.026 |  25 |   24.280 |     0.631 |     21.320 |       1.915 |   26.348 |     2.873 |    20.669 |     32.026 |    0 |
| Experimental |      |        |          |       | 3rd quintile       |  20 |  36.400 |    0.670 |    31.950 |      2.527 |  27.354 |    2.979 |   21.466 |    33.242 |  20 |   36.400 |     0.670 |     31.950 |       2.527 |   27.354 |     2.979 |    21.466 |     33.242 |    0 |
