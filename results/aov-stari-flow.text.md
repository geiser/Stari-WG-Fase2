ANCOVA in flow (textual prod) (flow (textual prod))
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
- [Summary of Results](#summary-of-results)
  - [Descriptive Statistics](#descriptive-statistics)
  - [ANCOVA Table Comparison](#ancova-table-comparison)
  - [PairWise Table Comparison](#pairwise-table-comparison)
  - [EMMS Table Comparison](#emms-table-comparison)

**NOTE**:

- Teste ANCOVA para determinar se houve diferenças significativas no
  flow (textual prod) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (textual prod) (measured using pre- and post-tests).

# Setting Initial Variables

``` r
dv = "flow.text"
dv.pos = "fss.media.text"
dv.pre = "dfs.media.text"

fatores2 <- c("Sexo","Zona","Cor.Raca","Serie")
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

| grupo | Sexo | Zona | Cor.Raca | Serie | variable | n | mean | median | min | max | sd | se | ci | iqr | symmetry | skewness | kurtosis |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|---:|---:|
| Controle |  |  |  |  | dfs.media.text | 94 | 3.345 | 3.333 | 1.333 | 4.778 | 0.572 | 0.059 | 0.117 | 0.618 | YES | -0.490 | 0.954 |
| Experimental |  |  |  |  | dfs.media.text | 44 | 3.472 | 3.444 | 1.889 | 4.444 | 0.575 | 0.087 | 0.175 | 0.694 | YES | -0.208 | -0.173 |
|  |  |  |  |  | dfs.media.text | 138 | 3.385 | 3.389 | 1.333 | 4.778 | 0.574 | 0.049 | 0.097 | 0.667 | YES | -0.397 | 0.682 |
| Controle |  |  |  |  | fss.media.text | 94 | 3.491 | 3.556 | 1.889 | 5.000 | 0.594 | 0.061 | 0.122 | 0.889 | YES | -0.121 | -0.341 |
| Experimental |  |  |  |  | fss.media.text | 44 | 3.380 | 3.354 | 2.333 | 4.667 | 0.586 | 0.088 | 0.178 | 0.833 | YES | 0.111 | -0.751 |
|  |  |  |  |  | fss.media.text | 138 | 3.456 | 3.444 | 1.889 | 5.000 | 0.591 | 0.050 | 0.100 | 0.889 | YES | -0.045 | -0.462 |
| Controle | F |  |  |  | dfs.media.text | 42 | 3.368 | 3.333 | 2.333 | 4.444 | 0.500 | 0.077 | 0.156 | 0.444 | YES | 0.102 | -0.362 |
| Controle | M |  |  |  | dfs.media.text | 52 | 3.326 | 3.389 | 1.333 | 4.778 | 0.628 | 0.087 | 0.175 | 0.778 | NO | -0.677 | 0.956 |
| Experimental | F |  |  |  | dfs.media.text | 15 | 3.289 | 3.333 | 1.889 | 4.444 | 0.686 | 0.177 | 0.380 | 0.778 | YES | -0.160 | -0.697 |
| Experimental | M |  |  |  | dfs.media.text | 29 | 3.567 | 3.444 | 2.778 | 4.444 | 0.495 | 0.092 | 0.188 | 0.667 | YES | 0.222 | -1.078 |
| Controle | F |  |  |  | fss.media.text | 42 | 3.612 | 3.722 | 2.444 | 4.778 | 0.583 | 0.090 | 0.182 | 0.771 | YES | -0.200 | -0.716 |
| Controle | M |  |  |  | fss.media.text | 52 | 3.393 | 3.444 | 1.889 | 5.000 | 0.589 | 0.082 | 0.164 | 0.889 | YES | -0.057 | -0.091 |
| Experimental | F |  |  |  | fss.media.text | 15 | 3.469 | 3.375 | 2.333 | 4.556 | 0.648 | 0.167 | 0.359 | 1.000 | YES | -0.075 | -1.230 |
| Experimental | M |  |  |  | fss.media.text | 29 | 3.334 | 3.333 | 2.333 | 4.667 | 0.558 | 0.104 | 0.212 | 0.778 | YES | 0.181 | -0.550 |
| Controle |  | Rural |  |  | dfs.media.text | 51 | 3.345 | 3.333 | 2.111 | 4.778 | 0.577 | 0.081 | 0.162 | 0.667 | YES | 0.201 | -0.340 |
| Controle |  | Urbana |  |  | dfs.media.text | 15 | 3.020 | 3.222 | 1.333 | 4.000 | 0.740 | 0.191 | 0.410 | 0.722 | NO | -0.797 | -0.424 |
| Controle |  |  |  |  | dfs.media.text | 28 | 3.518 | 3.472 | 2.778 | 4.222 | 0.369 | 0.070 | 0.143 | 0.556 | YES | 0.101 | -0.975 |
| Experimental |  | Rural |  |  | dfs.media.text | 29 | 3.494 | 3.556 | 1.889 | 4.444 | 0.625 | 0.116 | 0.238 | 0.778 | YES | -0.386 | -0.304 |
| Experimental |  | Urbana |  |  | dfs.media.text | 6 | 3.444 | 3.444 | 2.889 | 4.333 | 0.544 | 0.222 | 0.571 | 0.639 | YES | 0.383 | -1.448 |
| Experimental |  |  |  |  | dfs.media.text | 9 | 3.420 | 3.444 | 2.667 | 4.333 | 0.464 | 0.155 | 0.357 | 0.111 | YES | 0.340 | -0.447 |
| Controle |  | Rural |  |  | fss.media.text | 51 | 3.475 | 3.556 | 2.444 | 4.778 | 0.581 | 0.081 | 0.164 | 0.889 | YES | 0.033 | -0.903 |
| Controle |  | Urbana |  |  | fss.media.text | 15 | 3.511 | 3.333 | 1.889 | 5.000 | 0.791 | 0.204 | 0.438 | 1.000 | YES | 0.036 | -0.602 |
| Controle |  |  |  |  | fss.media.text | 28 | 3.508 | 3.667 | 2.333 | 4.222 | 0.512 | 0.097 | 0.198 | 0.667 | NO | -0.824 | -0.465 |
| Experimental |  | Rural |  |  | fss.media.text | 29 | 3.389 | 3.333 | 2.333 | 4.667 | 0.607 | 0.113 | 0.231 | 0.778 | YES | 0.256 | -0.729 |
| Experimental |  | Urbana |  |  | fss.media.text | 6 | 3.377 | 3.299 | 2.889 | 4.111 | 0.453 | 0.185 | 0.476 | 0.538 | YES | 0.439 | -1.520 |
| Experimental |  |  |  |  | fss.media.text | 9 | 3.355 | 3.444 | 2.333 | 4.111 | 0.655 | 0.218 | 0.504 | 1.139 | YES | -0.361 | -1.660 |
| Controle |  |  | Parda |  | dfs.media.text | 45 | 3.421 | 3.333 | 2.444 | 4.444 | 0.466 | 0.069 | 0.140 | 0.556 | YES | 0.146 | -0.364 |
| Controle |  |  | Branca |  | dfs.media.text | 9 | 3.173 | 3.222 | 2.111 | 4.222 | 0.674 | 0.225 | 0.518 | 0.667 | YES | -0.132 | -1.303 |
| Controle |  |  | Preta |  | dfs.media.text | 1 | 3.222 | 3.222 | 3.222 | 3.222 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Controle |  |  |  |  | dfs.media.text | 39 | 3.300 | 3.333 | 1.333 | 4.778 | 0.661 | 0.106 | 0.214 | 0.764 | NO | -0.618 | 0.775 |
| Experimental |  |  | Parda |  | dfs.media.text | 12 | 3.426 | 3.278 | 2.444 | 4.444 | 0.599 | 0.173 | 0.381 | 0.861 | YES | 0.177 | -1.243 |
| Experimental |  |  | Indígena |  | dfs.media.text | 5 | 3.711 | 3.667 | 3.222 | 4.333 | 0.405 | 0.181 | 0.503 | 0.222 | YES | 0.362 | -1.460 |
| Experimental |  |  | Branca |  | dfs.media.text | 6 | 3.593 | 3.500 | 2.889 | 4.444 | 0.529 | 0.216 | 0.555 | 0.444 | YES | 0.310 | -1.330 |
| Experimental |  |  | Amarela |  | dfs.media.text | 1 | 3.444 | 3.444 | 3.444 | 3.444 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Experimental |  |  |  |  | dfs.media.text | 20 | 3.406 | 3.444 | 1.889 | 4.333 | 0.637 | 0.142 | 0.298 | 0.806 | YES | -0.299 | -0.370 |
| Controle |  |  | Parda |  | fss.media.text | 45 | 3.580 | 3.667 | 2.444 | 5.000 | 0.589 | 0.088 | 0.177 | 0.778 | YES | 0.122 | -0.439 |
| Controle |  |  | Branca |  | fss.media.text | 9 | 3.358 | 3.556 | 2.556 | 4.000 | 0.538 | 0.179 | 0.414 | 0.778 | YES | -0.273 | -1.734 |
| Controle |  |  | Preta |  | fss.media.text | 1 | 4.000 | 4.000 | 4.000 | 4.000 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Controle |  |  |  |  | fss.media.text | 39 | 3.405 | 3.444 | 1.889 | 4.556 | 0.609 | 0.098 | 0.197 | 0.889 | YES | -0.318 | -0.593 |
| Experimental |  |  | Parda |  | fss.media.text | 12 | 3.130 | 3.111 | 2.333 | 4.111 | 0.556 | 0.161 | 0.353 | 0.861 | YES | 0.201 | -1.374 |
| Experimental |  |  | Indígena |  | fss.media.text | 5 | 3.675 | 3.444 | 3.222 | 4.222 | 0.458 | 0.205 | 0.568 | 0.736 | YES | 0.239 | -2.185 |
| Experimental |  |  | Branca |  | fss.media.text | 6 | 3.444 | 3.444 | 2.889 | 3.889 | 0.391 | 0.160 | 0.411 | 0.528 | YES | -0.160 | -1.905 |
| Experimental |  |  | Amarela |  | fss.media.text | 1 | 3.889 | 3.889 | 3.889 | 3.889 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Experimental |  |  |  |  | fss.media.text | 20 | 3.413 | 3.354 | 2.333 | 4.667 | 0.660 | 0.148 | 0.309 | 0.972 | YES | 0.228 | -0.980 |
| Controle |  |  |  | 6 ano | dfs.media.text | 31 | 3.269 | 3.333 | 2.000 | 4.778 | 0.665 | 0.119 | 0.244 | 0.500 | YES | -0.061 | -0.322 |
| Controle |  |  |  | 7 ano | dfs.media.text | 29 | 3.383 | 3.333 | 2.556 | 4.333 | 0.449 | 0.083 | 0.171 | 0.667 | YES | 0.227 | -0.711 |
| Controle |  |  |  | 8 ano | dfs.media.text | 15 | 3.219 | 3.111 | 1.333 | 4.222 | 0.686 | 0.177 | 0.380 | 0.417 | NO | -1.023 | 1.430 |
| Controle |  |  |  | 9 ano | dfs.media.text | 19 | 3.510 | 3.556 | 2.444 | 4.222 | 0.470 | 0.108 | 0.227 | 0.611 | YES | -0.441 | -0.608 |
| Experimental |  |  |  | 6 ano | dfs.media.text | 15 | 3.600 | 3.667 | 1.889 | 4.444 | 0.717 | 0.185 | 0.397 | 1.000 | NO | -0.722 | -0.262 |
| Experimental |  |  |  | 7 ano | dfs.media.text | 11 | 3.505 | 3.444 | 2.889 | 4.444 | 0.534 | 0.161 | 0.359 | 0.778 | YES | 0.240 | -1.441 |
| Experimental |  |  |  | 8 ano | dfs.media.text | 9 | 3.395 | 3.444 | 2.444 | 4.333 | 0.591 | 0.197 | 0.454 | 0.444 | YES | 0.043 | -1.170 |
| Experimental |  |  |  | 9 ano | dfs.media.text | 9 | 3.296 | 3.333 | 2.667 | 3.667 | 0.309 | 0.103 | 0.238 | 0.333 | NO | -0.714 | -0.660 |
| Controle |  |  |  | 6 ano | fss.media.text | 31 | 3.488 | 3.556 | 1.889 | 4.556 | 0.595 | 0.107 | 0.218 | 0.778 | NO | -0.554 | -0.027 |
| Controle |  |  |  | 7 ano | fss.media.text | 29 | 3.586 | 3.667 | 2.444 | 5.000 | 0.686 | 0.127 | 0.261 | 0.889 | YES | 0.085 | -0.946 |
| Controle |  |  |  | 8 ano | fss.media.text | 15 | 3.304 | 3.333 | 2.333 | 4.000 | 0.480 | 0.124 | 0.266 | 0.667 | YES | -0.402 | -0.899 |
| Controle |  |  |  | 9 ano | fss.media.text | 19 | 3.497 | 3.556 | 2.556 | 4.222 | 0.526 | 0.121 | 0.253 | 0.889 | YES | -0.284 | -1.332 |
| Experimental |  |  |  | 6 ano | fss.media.text | 15 | 3.648 | 3.375 | 3.000 | 4.667 | 0.521 | 0.134 | 0.288 | 0.722 | NO | 0.631 | -1.000 |
| Experimental |  |  |  | 7 ano | fss.media.text | 11 | 3.448 | 3.444 | 2.556 | 4.111 | 0.513 | 0.155 | 0.345 | 0.535 | NO | -0.623 | -0.963 |
| Experimental |  |  |  | 8 ano | fss.media.text | 9 | 2.972 | 2.778 | 2.333 | 4.111 | 0.551 | 0.184 | 0.423 | 0.667 | NO | 0.781 | -0.624 |
| Experimental |  |  |  | 9 ano | fss.media.text | 9 | 3.259 | 3.222 | 2.333 | 4.222 | 0.629 | 0.210 | 0.483 | 0.778 | YES | 0.121 | -1.515 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "fss.media.text", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, fss.media.text ~ grupo, covariate = dfs.media.text,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          flow.text ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.text", "grupo", covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.text ~ dfs.media.text + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.text"]] <- c(wdat[["dfs.media.text"]], wdat[["fss.media.text"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]],
                            by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.text   1 135 19.051 2.51e-05     * 0.124
    ## 2          grupo   1 135  2.361 1.27e-01       0.017

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.text |   1 | 135 | 19.051 | 0.000 | \*     | 0.124 |
| grupo          |   1 | 135 |  2.361 | 0.127 |        | 0.017 |

``` r
pwc <- emmeans_test(wdat, fss.media.text ~ grupo, covariate = dfs.media.text,
                    p.adjust.method = "bonferroni")
```

| term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 135 | 1.537 | 0.127 | 0.127 | ns |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]],
                            by=c("grupo","term",".y.","group1","group2"),
                            suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.text | pre    | pos    | 272 |    -1.721 | 0.086 | 0.086 | ns           |
| Experimental | time | flow.text | pre    | pos    | 272 |     0.740 | 0.460 | 0.460 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", "grupo", covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | 94 | 3.345 | 0.059 | 3.491 | 0.061 | 3.506 | 0.057 | 3.392 | 3.619 |
| Experimental | 44 | 3.472 | 0.087 | 3.380 | 0.088 | 3.349 | 0.084 | 3.183 | 3.515 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.text", "grupo", aov, list("grupo"=pwc), addParam = c("mean_ci"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] +
  if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.text", "grupo", aov, pwc, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (textual prod)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.text", "grupo", aov, pwc.long,
    pre.post = "time", theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (textual prod)") +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax) 
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  ) +
  ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo"))) +
  ggplot2::scale_color_manual(values = color[["grupo"]]) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.text ~ dfs.media.text + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.991   0.507

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1   136   0.00832 0.927

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),],
                         "fss.media.text", c("grupo","Sexo"))
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
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Sexo)
  laov[["grupo:Sexo"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.text ~ Sexo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Sexo), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Sexo"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
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
  
  res = residuals(lm(fss.media.text ~ dfs.media.text + grupo*Sexo, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.text"]] <- c(wdat[["dfs.media.text"]], wdat[["fss.media.text"]])
  
  
  ldat[["grupo:Sexo"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Sexo)
  laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.text |   1 | 133 | 20.216 | 0.000 | \*     | 0.132 |
| grupo          |   1 | 133 |  1.780 | 0.184 |        | 0.013 |
| Sexo           |   1 | 133 |  4.986 | 0.027 | \*     | 0.036 |
| grupo:Sexo     |   1 | 133 |  0.030 | 0.863 |        | 0.000 |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.text ~ Sexo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Sexo), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

| grupo | Sexo | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | F | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 133 | 0.681 | 0.497 | 0.497 | ns |
|  | M | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 133 | 1.156 | 0.250 | 0.250 | ns |
| Controle |  | dfs.media.text\*Sexo | fss.media.text | F | M | 133 | 1.777 | 0.078 | 0.078 | ns |
| Experimental |  | dfs.media.text\*Sexo | fss.media.text | F | M | 133 | 1.356 | 0.177 | 0.177 | ns |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Sexo"]],
                                         by=c("grupo","Sexo","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Sexo | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | F | time | flow.text | pre | pos | 268 | -1.924 | 0.055 | 0.055 | ns |
| Controle | M | time | flow.text | pre | pos | 268 | -0.594 | 0.553 | 0.553 | ns |
| Experimental | F | time | flow.text | pre | pos | 268 | -0.853 | 0.394 | 0.394 | ns |
| Experimental | M | time | flow.text | pre | pos | 268 | 1.529 | 0.127 | 0.127 | ns |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Sexo"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.text","se.dfs.media.text",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]],
                                          by=c("grupo","Sexo"), suffixes = c("","'"))
}
```

| grupo | Sexo | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | F | 42 | 3.368 | 0.077 | 3.612 | 0.090 | 3.618 | 0.085 | 3.450 | 3.786 |
| Controle | M | 52 | 3.326 | 0.087 | 3.393 | 0.082 | 3.415 | 0.076 | 3.264 | 3.566 |
| Experimental | F | 15 | 3.289 | 0.177 | 3.469 | 0.167 | 3.505 | 0.142 | 3.224 | 3.786 |
| Experimental | M | 29 | 3.567 | 0.092 | 3.334 | 0.104 | 3.266 | 0.103 | 3.063 | 3.470 |

### Plots for ancova

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Sexo", aov, ylab = "flow (textual prod)",
             subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "Sexo", "grupo", aov, ylab = "flow (textual prod)",
               subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.text", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.text",
    theme = "classic", color = color[["grupo:Sexo"]],
    subtitle = which(aov$Effect == "grupo:Sexo"))
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots[["grupo:Sexo"]] + ggplot2::ylab("flow (textual prod)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.text", c("grupo","Sexo"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  plots[["grupo:Sexo"]] + ggplot2::ylab("flow (textual prod)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            facet.by = c("grupo","Sexo"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "grupo", facet.by = "Sexo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "Sexo", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Sexo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Sexo, data = wdat))
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.989   0.364

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   134     0.348 0.791

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),],
                         "fss.media.text", c("grupo","Zona"))
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
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Zona)
  laov[["grupo:Zona"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.text ~ Zona,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Zona), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Zona"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
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
  
  res = residuals(lm(fss.media.text ~ dfs.media.text + grupo*Zona, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.text"]] <- c(wdat[["dfs.media.text"]], wdat[["fss.media.text"]])
  
  
  ldat[["grupo:Zona"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Zona)
  laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.text |   1 |  96 | 16.264 | 0.000 | \*     | 0.145 |
| grupo          |   1 |  96 |  1.981 | 0.162 |        | 0.020 |
| Zona           |   1 |  96 |  0.625 | 0.431 |        | 0.006 |
| grupo:Zona     |   1 |  96 |  0.243 | 0.623 |        | 0.003 |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.text ~ Zona,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Zona), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

| grupo | Zona | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | Rural | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 96 | 1.069 | 0.288 | 0.288 | ns |
|  | Urbana | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 96 | 1.055 | 0.294 | 0.294 | ns |
| Controle |  | dfs.media.text\*Zona | fss.media.text | Rural | Urbana | 96 | -0.931 | 0.354 | 0.354 | ns |
| Experimental |  | dfs.media.text\*Zona | fss.media.text | Rural | Urbana | 96 | -0.029 | 0.977 | 0.977 | ns |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Zona"]],
                                         by=c("grupo","Zona","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Zona | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | Rural | time | flow.text | pre | pos | 194 | -1.068 | 0.287 | 0.287 | ns |
| Controle | Urbana | time | flow.text | pre | pos | 194 | -2.180 | 0.030 | 0.030 | \* |
| Experimental | Rural | time | flow.text | pre | pos | 194 | 0.651 | 0.516 | 0.516 | ns |
| Experimental | Urbana | time | flow.text | pre | pos | 194 | 0.189 | 0.851 | 0.851 | ns |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Zona"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.dfs.media.text","se.dfs.media.text",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]],
                                          by=c("grupo","Zona"), suffixes = c("","'"))
}
```

| grupo | Zona | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | Rural | 51 | 3.345 | 0.081 | 3.475 | 0.081 | 3.476 | 0.080 | 3.316 | 3.635 |
| Controle | Urbana | 15 | 3.020 | 0.191 | 3.511 | 0.204 | 3.635 | 0.151 | 3.335 | 3.936 |
| Experimental | Rural | 29 | 3.494 | 0.116 | 3.389 | 0.113 | 3.332 | 0.108 | 3.119 | 3.546 |
| Experimental | Urbana | 6 | 3.444 | 0.222 | 3.377 | 0.185 | 3.340 | 0.235 | 2.874 | 3.805 |

### Plots for ancova

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Zona", aov, ylab = "flow (textual prod)",
             subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "Zona", "grupo", aov, ylab = "flow (textual prod)",
               subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.text", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.text",
    theme = "classic", color = color[["grupo:Zona"]],
    subtitle = which(aov$Effect == "grupo:Zona"))
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots[["grupo:Zona"]] + ggplot2::ylab("flow (textual prod)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.text", c("grupo","Zona"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  plots[["grupo:Zona"]] + ggplot2::ylab("flow (textual prod)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-73-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            facet.by = c("grupo","Zona"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "grupo", facet.by = "Zona", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-75-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "Zona", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Zona)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Zona, data = wdat))
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.992   0.795

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    97     0.197 0.898

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),],
                         "fss.media.text", c("grupo","Cor.Raca"))
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
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.text ~ Cor.Raca,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Cor.Raca), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Cor.Raca"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
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
  
  res = residuals(lm(fss.media.text ~ dfs.media.text + grupo*Cor.Raca, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.text"]] <- c(wdat[["dfs.media.text"]], wdat[["fss.media.text"]])
  
  
  ldat[["grupo:Cor.Raca"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |     F |     p | p\<.05 |   ges |
|:---------------|----:|----:|------:|------:|:-------|------:|
| dfs.media.text |   1 |  67 | 9.660 | 0.003 | \*     | 0.126 |
| grupo          |   1 |  67 | 5.625 | 0.021 | \*     | 0.077 |
| Cor.Raca       |   1 |  67 | 0.002 | 0.966 |        | 0.000 |
| grupo:Cor.Raca |   1 |  67 | 1.279 | 0.262 |        | 0.019 |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.text ~ Cor.Raca,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Cor.Raca), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

| grupo | Cor.Raca | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | Parda | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 67 | 2.615 | 0.011 | 0.011 | \* |
|  | Branca | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 67 | 0.263 | 0.794 | 0.794 | ns |
| Controle |  | dfs.media.text\*Cor.Raca | fss.media.text | Parda | Branca | 67 | 0.644 | 0.522 | 0.522 | ns |
| Experimental |  | dfs.media.text\*Cor.Raca | fss.media.text | Parda | Branca | 67 | -0.938 | 0.351 | 0.351 | ns |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Cor.Raca"]],
                                         by=c("grupo","Cor.Raca","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Cor.Raca | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | Parda | time | flow.text | pre | pos | 136 | -1.390 | 0.167 | 0.167 | ns |
| Controle | Branca | time | flow.text | pre | pos | 136 | -0.722 | 0.472 | 0.472 | ns |
| Experimental | Parda | time | flow.text | pre | pos | 136 | 1.333 | 0.185 | 0.185 | ns |
| Experimental | Branca | time | flow.text | pre | pos | 136 | 0.471 | 0.638 | 0.638 | ns |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Cor.Raca"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.text","se.dfs.media.text",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]],
                                          by=c("grupo","Cor.Raca"), suffixes = c("","'"))
}
```

| grupo | Cor.Raca | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | Branca | 9 | 3.173 | 0.225 | 3.358 | 0.179 | 3.447 | 0.180 | 3.088 | 3.806 |
| Controle | Parda | 45 | 3.421 | 0.069 | 3.580 | 0.088 | 3.574 | 0.079 | 3.416 | 3.733 |
| Experimental | Branca | 6 | 3.593 | 0.216 | 3.444 | 0.160 | 3.372 | 0.219 | 2.936 | 3.809 |
| Experimental | Parda | 12 | 3.426 | 0.173 | 3.130 | 0.161 | 3.122 | 0.154 | 2.814 | 3.429 |

### Plots for ancova

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Cor.Raca", aov, ylab = "flow (textual prod)",
             subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-94-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "Cor.Raca", "grupo", aov, ylab = "flow (textual prod)",
               subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.text", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.text",
    theme = "classic", color = color[["grupo:Cor.Raca"]],
    subtitle = which(aov$Effect == "grupo:Cor.Raca"))
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (textual prod)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-97-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.text", c("grupo","Cor.Raca"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (textual prod)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-99-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-100-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "grupo", facet.by = "Cor.Raca", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-101-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "Cor.Raca", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Cor.Raca)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-102-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Cor.Raca, data = wdat))
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.980   0.314

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    68     0.996 0.400

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),],
                         "fss.media.text", c("grupo","Serie"))
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
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Serie)
  laov[["grupo:Serie"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.text ~ Serie,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Serie), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Serie"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.dfs.media.text","se.dfs.media.text","mean","se",
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
  
  res = residuals(lm(fss.media.text ~ dfs.media.text + grupo*Serie, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Serie")], wdat[,c("id","grupo","Serie")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.text"]] <- c(wdat[["dfs.media.text"]], wdat[["fss.media.text"]])
  
  
  ldat[["grupo:Serie"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Serie)
  laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.text |   1 | 129 | 16.607 | 0.000 | \*     | 0.114 |
| grupo          |   1 | 129 |  1.939 | 0.166 |        | 0.015 |
| Serie          |   3 | 129 |  2.167 | 0.095 |        | 0.048 |
| grupo:Serie    |   3 | 129 |  0.797 | 0.498 |        | 0.018 |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.text ~ Serie,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Serie), fss.media.text ~ grupo,
    covariate = dfs.media.text, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

| grupo | Serie | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | 6 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 129 | -0.267 | 0.790 | 0.790 | ns |
|  | 7 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 129 | 0.921 | 0.359 | 0.359 | ns |
|  | 8 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 129 | 1.687 | 0.094 | 0.094 | ns |
|  | 9 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 129 | 0.740 | 0.461 | 0.461 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 7 ano | 129 | -0.413 | 0.680 | 1.000 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 8 ano | 129 | 0.969 | 0.335 | 1.000 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 9 ano | 129 | 0.455 | 0.650 | 1.000 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 7 ano | 8 ano | 129 | 1.291 | 0.199 | 1.000 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 7 ano | 9 ano | 129 | 0.814 | 0.417 | 1.000 | ns |
| Controle |  | dfs.media.text\*Serie | fss.media.text | 8 ano | 9 ano | 129 | -0.491 | 0.624 | 1.000 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 7 ano | 129 | 0.767 | 0.444 | 1.000 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 8 ano | 129 | 2.608 | 0.010 | 0.061 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 6 ano | 9 ano | 129 | 1.223 | 0.223 | 1.000 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 7 ano | 8 ano | 129 | 1.774 | 0.078 | 0.471 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 7 ano | 9 ano | 129 | 0.475 | 0.635 | 1.000 | ns |
| Experimental |  | dfs.media.text\*Serie | fss.media.text | 8 ano | 9 ano | 129 | -1.237 | 0.218 | 1.000 | ns |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                           flow.text ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Serie"]],
                                         by=c("grupo","Serie","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Serie | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | 6 ano | time | flow.text | pre | pos | 260 | -1.494 | 0.136 | 0.136 | ns |
| Controle | 7 ano | time | flow.text | pre | pos | 260 | -1.336 | 0.183 | 0.183 | ns |
| Controle | 8 ano | time | flow.text | pre | pos | 260 | -0.403 | 0.687 | 0.687 | ns |
| Controle | 9 ano | time | flow.text | pre | pos | 260 | 0.066 | 0.947 | 0.947 | ns |
| Experimental | 6 ano | time | flow.text | pre | pos | 260 | -0.228 | 0.820 | 0.820 | ns |
| Experimental | 7 ano | time | flow.text | pre | pos | 260 | 0.230 | 0.818 | 0.818 | ns |
| Experimental | 8 ano | time | flow.text | pre | pos | 260 | 1.550 | 0.122 | 0.122 | ns |
| Experimental | 9 ano | time | flow.text | pre | pos | 260 | 0.136 | 0.892 | 0.892 | ns |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Serie"), covar = "dfs.media.text")
  ds <- merge(ds[ds$variable != "dfs.media.text",],
              ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.text"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.dfs.media.text","se.dfs.media.text",
              "mean","se","emmean","se.emms","conf.low","conf.high")]
  
  colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                    paste0(c("M","SE"), " (unadj)"),
                    paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")
  
  lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]],
                                          by=c("grupo","Serie"), suffixes = c("","'"))
}
```

| grupo | Serie | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | 6 ano | 31 | 3.269 | 0.119 | 3.488 | 0.107 | 3.528 | 0.099 | 3.332 | 3.724 |
| Controle | 7 ano | 29 | 3.383 | 0.083 | 3.586 | 0.127 | 3.587 | 0.102 | 3.385 | 3.789 |
| Controle | 8 ano | 15 | 3.219 | 0.177 | 3.304 | 0.124 | 3.361 | 0.143 | 3.079 | 3.643 |
| Controle | 9 ano | 19 | 3.510 | 0.108 | 3.497 | 0.121 | 3.455 | 0.127 | 3.204 | 3.705 |
| Experimental | 6 ano | 15 | 3.600 | 0.185 | 3.648 | 0.134 | 3.575 | 0.143 | 3.292 | 3.858 |
| Experimental | 7 ano | 11 | 3.505 | 0.161 | 3.448 | 0.155 | 3.407 | 0.166 | 3.079 | 3.736 |
| Experimental | 8 ano | 9 | 3.395 | 0.197 | 2.972 | 0.184 | 2.969 | 0.183 | 2.606 | 3.331 |
| Experimental | 9 ano | 9 | 3.296 | 0.103 | 3.259 | 0.210 | 3.290 | 0.183 | 2.927 | 3.652 |

### Plots for ancova

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Serie", aov, ylab = "flow (textual prod)",
             subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "Serie", "grupo", aov, ylab = "flow (textual prod)",
               subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-121-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.text", c("grupo","Serie"), aov, pwcs, covar = "dfs.media.text",
    theme = "classic", color = color[["grupo:Serie"]],
    subtitle = which(aov$Effect == "grupo:Serie"))
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots[["grupo:Serie"]] + ggplot2::ylab("flow (textual prod)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-123-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.text", c("grupo","Serie"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  plots[["grupo:Serie"]] + ggplot2::ylab("flow (textual prod)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-125-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            facet.by = c("grupo","Serie"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-126-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "grupo", facet.by = "Serie", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-127-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
            color = "Serie", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Serie)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.text_files/figure-gfm/unnamed-chunk-128-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Serie, data = wdat))
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.988   0.282

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7   130     0.830 0.564

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

| grupo | Sexo | Zona | Cor.Raca | Serie | variable | n | mean | median | min | max | sd | se | ci | iqr | symmetry | skewness | kurtosis |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|:---|---:|---:|
| Controle |  |  |  |  | dfs.media.text | 94 | 3.345 | 3.333 | 1.333 | 4.778 | 0.572 | 0.059 | 0.117 | 0.618 | YES | -0.490 | 0.954 |
| Experimental |  |  |  |  | dfs.media.text | 44 | 3.472 | 3.444 | 1.889 | 4.444 | 0.575 | 0.087 | 0.175 | 0.694 | YES | -0.208 | -0.173 |
|  |  |  |  |  | dfs.media.text | 138 | 3.385 | 3.389 | 1.333 | 4.778 | 0.574 | 0.049 | 0.097 | 0.667 | YES | -0.397 | 0.682 |
| Controle |  |  |  |  | fss.media.text | 94 | 3.491 | 3.556 | 1.889 | 5.000 | 0.594 | 0.061 | 0.122 | 0.889 | YES | -0.121 | -0.341 |
| Experimental |  |  |  |  | fss.media.text | 44 | 3.380 | 3.354 | 2.333 | 4.667 | 0.586 | 0.088 | 0.178 | 0.833 | YES | 0.111 | -0.751 |
|  |  |  |  |  | fss.media.text | 138 | 3.456 | 3.444 | 1.889 | 5.000 | 0.591 | 0.050 | 0.100 | 0.889 | YES | -0.045 | -0.462 |
| Controle | F |  |  |  | dfs.media.text | 42 | 3.368 | 3.333 | 2.333 | 4.444 | 0.500 | 0.077 | 0.156 | 0.444 | YES | 0.102 | -0.362 |
| Controle | M |  |  |  | dfs.media.text | 52 | 3.326 | 3.389 | 1.333 | 4.778 | 0.628 | 0.087 | 0.175 | 0.778 | NO | -0.677 | 0.956 |
| Experimental | F |  |  |  | dfs.media.text | 15 | 3.289 | 3.333 | 1.889 | 4.444 | 0.686 | 0.177 | 0.380 | 0.778 | YES | -0.160 | -0.697 |
| Experimental | M |  |  |  | dfs.media.text | 29 | 3.567 | 3.444 | 2.778 | 4.444 | 0.495 | 0.092 | 0.188 | 0.667 | YES | 0.222 | -1.078 |
| Controle | F |  |  |  | fss.media.text | 42 | 3.612 | 3.722 | 2.444 | 4.778 | 0.583 | 0.090 | 0.182 | 0.771 | YES | -0.200 | -0.716 |
| Controle | M |  |  |  | fss.media.text | 52 | 3.393 | 3.444 | 1.889 | 5.000 | 0.589 | 0.082 | 0.164 | 0.889 | YES | -0.057 | -0.091 |
| Experimental | F |  |  |  | fss.media.text | 15 | 3.469 | 3.375 | 2.333 | 4.556 | 0.648 | 0.167 | 0.359 | 1.000 | YES | -0.075 | -1.230 |
| Experimental | M |  |  |  | fss.media.text | 29 | 3.334 | 3.333 | 2.333 | 4.667 | 0.558 | 0.104 | 0.212 | 0.778 | YES | 0.181 | -0.550 |
| Controle |  | Rural |  |  | dfs.media.text | 51 | 3.345 | 3.333 | 2.111 | 4.778 | 0.577 | 0.081 | 0.162 | 0.667 | YES | 0.201 | -0.340 |
| Controle |  | Urbana |  |  | dfs.media.text | 15 | 3.020 | 3.222 | 1.333 | 4.000 | 0.740 | 0.191 | 0.410 | 0.722 | NO | -0.797 | -0.424 |
| Experimental |  | Rural |  |  | dfs.media.text | 29 | 3.494 | 3.556 | 1.889 | 4.444 | 0.625 | 0.116 | 0.238 | 0.778 | YES | -0.386 | -0.304 |
| Experimental |  | Urbana |  |  | dfs.media.text | 6 | 3.444 | 3.444 | 2.889 | 4.333 | 0.544 | 0.222 | 0.571 | 0.639 | YES | 0.383 | -1.448 |
| Controle |  | Rural |  |  | fss.media.text | 51 | 3.475 | 3.556 | 2.444 | 4.778 | 0.581 | 0.081 | 0.164 | 0.889 | YES | 0.033 | -0.903 |
| Controle |  | Urbana |  |  | fss.media.text | 15 | 3.511 | 3.333 | 1.889 | 5.000 | 0.791 | 0.204 | 0.438 | 1.000 | YES | 0.036 | -0.602 |
| Experimental |  | Rural |  |  | fss.media.text | 29 | 3.389 | 3.333 | 2.333 | 4.667 | 0.607 | 0.113 | 0.231 | 0.778 | YES | 0.256 | -0.729 |
| Experimental |  | Urbana |  |  | fss.media.text | 6 | 3.377 | 3.299 | 2.889 | 4.111 | 0.453 | 0.185 | 0.476 | 0.538 | YES | 0.439 | -1.520 |
| Controle |  |  | Parda |  | dfs.media.text | 45 | 3.421 | 3.333 | 2.444 | 4.444 | 0.466 | 0.069 | 0.140 | 0.556 | YES | 0.146 | -0.364 |
| Controle |  |  | Branca |  | dfs.media.text | 9 | 3.173 | 3.222 | 2.111 | 4.222 | 0.674 | 0.225 | 0.518 | 0.667 | YES | -0.132 | -1.303 |
| Experimental |  |  | Parda |  | dfs.media.text | 12 | 3.426 | 3.278 | 2.444 | 4.444 | 0.599 | 0.173 | 0.381 | 0.861 | YES | 0.177 | -1.243 |
| Experimental |  |  | Branca |  | dfs.media.text | 6 | 3.593 | 3.500 | 2.889 | 4.444 | 0.529 | 0.216 | 0.555 | 0.444 | YES | 0.310 | -1.330 |
| Controle |  |  | Parda |  | fss.media.text | 45 | 3.580 | 3.667 | 2.444 | 5.000 | 0.589 | 0.088 | 0.177 | 0.778 | YES | 0.122 | -0.439 |
| Controle |  |  | Branca |  | fss.media.text | 9 | 3.358 | 3.556 | 2.556 | 4.000 | 0.538 | 0.179 | 0.414 | 0.778 | YES | -0.273 | -1.734 |
| Experimental |  |  | Parda |  | fss.media.text | 12 | 3.130 | 3.111 | 2.333 | 4.111 | 0.556 | 0.161 | 0.353 | 0.861 | YES | 0.201 | -1.374 |
| Experimental |  |  | Branca |  | fss.media.text | 6 | 3.444 | 3.444 | 2.889 | 3.889 | 0.391 | 0.160 | 0.411 | 0.528 | YES | -0.160 | -1.905 |
| Controle |  |  |  | 6 ano | dfs.media.text | 31 | 3.269 | 3.333 | 2.000 | 4.778 | 0.665 | 0.119 | 0.244 | 0.500 | YES | -0.061 | -0.322 |
| Controle |  |  |  | 7 ano | dfs.media.text | 29 | 3.383 | 3.333 | 2.556 | 4.333 | 0.449 | 0.083 | 0.171 | 0.667 | YES | 0.227 | -0.711 |
| Controle |  |  |  | 8 ano | dfs.media.text | 15 | 3.219 | 3.111 | 1.333 | 4.222 | 0.686 | 0.177 | 0.380 | 0.417 | NO | -1.023 | 1.430 |
| Controle |  |  |  | 9 ano | dfs.media.text | 19 | 3.510 | 3.556 | 2.444 | 4.222 | 0.470 | 0.108 | 0.227 | 0.611 | YES | -0.441 | -0.608 |
| Experimental |  |  |  | 6 ano | dfs.media.text | 15 | 3.600 | 3.667 | 1.889 | 4.444 | 0.717 | 0.185 | 0.397 | 1.000 | NO | -0.722 | -0.262 |
| Experimental |  |  |  | 7 ano | dfs.media.text | 11 | 3.505 | 3.444 | 2.889 | 4.444 | 0.534 | 0.161 | 0.359 | 0.778 | YES | 0.240 | -1.441 |
| Experimental |  |  |  | 8 ano | dfs.media.text | 9 | 3.395 | 3.444 | 2.444 | 4.333 | 0.591 | 0.197 | 0.454 | 0.444 | YES | 0.043 | -1.170 |
| Experimental |  |  |  | 9 ano | dfs.media.text | 9 | 3.296 | 3.333 | 2.667 | 3.667 | 0.309 | 0.103 | 0.238 | 0.333 | NO | -0.714 | -0.660 |
| Controle |  |  |  | 6 ano | fss.media.text | 31 | 3.488 | 3.556 | 1.889 | 4.556 | 0.595 | 0.107 | 0.218 | 0.778 | NO | -0.554 | -0.027 |
| Controle |  |  |  | 7 ano | fss.media.text | 29 | 3.586 | 3.667 | 2.444 | 5.000 | 0.686 | 0.127 | 0.261 | 0.889 | YES | 0.085 | -0.946 |
| Controle |  |  |  | 8 ano | fss.media.text | 15 | 3.304 | 3.333 | 2.333 | 4.000 | 0.480 | 0.124 | 0.266 | 0.667 | YES | -0.402 | -0.899 |
| Controle |  |  |  | 9 ano | fss.media.text | 19 | 3.497 | 3.556 | 2.556 | 4.222 | 0.526 | 0.121 | 0.253 | 0.889 | YES | -0.284 | -1.332 |
| Experimental |  |  |  | 6 ano | fss.media.text | 15 | 3.648 | 3.375 | 3.000 | 4.667 | 0.521 | 0.134 | 0.288 | 0.722 | NO | 0.631 | -1.000 |
| Experimental |  |  |  | 7 ano | fss.media.text | 11 | 3.448 | 3.444 | 2.556 | 4.111 | 0.513 | 0.155 | 0.345 | 0.535 | NO | -0.623 | -0.963 |
| Experimental |  |  |  | 8 ano | fss.media.text | 9 | 2.972 | 2.778 | 2.333 | 4.111 | 0.551 | 0.184 | 0.423 | 0.667 | NO | 0.781 | -0.624 |
| Experimental |  |  |  | 9 ano | fss.media.text | 9 | 3.259 | 3.222 | 2.333 | 4.222 | 0.629 | 0.210 | 0.483 | 0.778 | YES | 0.121 | -1.515 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
df <- df[!duplicated(df$Effect),]
```

|  | Effect | DFn | DFd | F | p | p\<.05 | ges | DFn’ | DFd’ | F’ | p’ | p\<.05’ | ges’ |
|:---|:---|---:|---:|---:|---:|:---|---:|---:|---:|---:|---:|:---|---:|
| 1 | dfs.media.text | 1 | 135 | 19.051 | 0.000 | \* | 0.124 | 1 | 135 | 19.051 | 0.000 | \* | 0.124 |
| 2 | grupo | 1 | 135 | 2.361 | 0.127 |  | 0.017 | 1 | 135 | 2.361 | 0.127 |  | 0.017 |
| 5 | grupo:Sexo | 1 | 133 | 0.030 | 0.863 |  | 0.000 | 1 | 133 | 0.030 | 0.863 |  | 0.000 |
| 6 | Sexo | 1 | 133 | 4.986 | 0.027 | \* | 0.036 | 1 | 133 | 4.986 | 0.027 | \* | 0.036 |
| 9 | grupo:Zona | 1 | 96 | 0.243 | 0.623 |  | 0.003 | 1 | 96 | 0.243 | 0.623 |  | 0.003 |
| 10 | Zona | 1 | 96 | 0.625 | 0.431 |  | 0.006 | 1 | 96 | 0.625 | 0.431 |  | 0.006 |
| 11 | Cor.Raca | 1 | 67 | 0.002 | 0.966 |  | 0.000 | 1 | 67 | 0.002 | 0.966 |  | 0.000 |
| 14 | grupo:Cor.Raca | 1 | 67 | 1.279 | 0.262 |  | 0.019 | 1 | 67 | 1.279 | 0.262 |  | 0.019 |
| 17 | grupo:Serie | 3 | 129 | 0.797 | 0.498 |  | 0.018 | 3 | 129 | 0.797 | 0.498 |  | 0.018 |
| 18 | Serie | 3 | 129 | 2.167 | 0.095 |  | 0.048 | 3 | 129 | 2.167 | 0.095 |  | 0.048 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo | Sexo | Zona | Cor.Raca | Serie | group1 | group2 | df | statistic | p | p.adj | p.adj.signif | df’ | statistic’ | p’ | p.adj’ | p.adj.signif’ |
|:---|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|---:|---:|---:|---:|:---|
| Controle |  |  |  |  | pre | pos | 272 | -1.721 | 0.086 | 0.086 | ns | 272 | -1.721 | 0.086 | 0.086 | ns |
| Experimental |  |  |  |  | pre | pos | 272 | 0.740 | 0.460 | 0.460 | ns | 272 | 0.740 | 0.460 | 0.460 | ns |
|  |  |  |  |  | Controle | Experimental | 135 | 1.537 | 0.127 | 0.127 | ns | 135 | 1.537 | 0.127 | 0.127 | ns |
| Controle | F |  |  |  | pre | pos | 268 | -1.924 | 0.055 | 0.055 | ns | 268 | -1.924 | 0.055 | 0.055 | ns |
| Controle | M |  |  |  | pre | pos | 268 | -0.594 | 0.553 | 0.553 | ns | 268 | -0.594 | 0.553 | 0.553 | ns |
| Controle |  |  |  |  | F | M | 133 | 1.777 | 0.078 | 0.078 | ns | 133 | 1.777 | 0.078 | 0.078 | ns |
| Experimental | F |  |  |  | pre | pos | 268 | -0.853 | 0.394 | 0.394 | ns | 268 | -0.853 | 0.394 | 0.394 | ns |
| Experimental | M |  |  |  | pre | pos | 268 | 1.529 | 0.127 | 0.127 | ns | 268 | 1.529 | 0.127 | 0.127 | ns |
| Experimental |  |  |  |  | F | M | 133 | 1.356 | 0.177 | 0.177 | ns | 133 | 1.356 | 0.177 | 0.177 | ns |
|  | F |  |  |  | Controle | Experimental | 133 | 0.681 | 0.497 | 0.497 | ns | 133 | 0.681 | 0.497 | 0.497 | ns |
|  | M |  |  |  | Controle | Experimental | 133 | 1.156 | 0.250 | 0.250 | ns | 133 | 1.156 | 0.250 | 0.250 | ns |
| Controle |  |  |  |  | Rural | Urbana | 96 | -0.931 | 0.354 | 0.354 | ns | 96 | -0.931 | 0.354 | 0.354 | ns |
| Controle |  | Rural |  |  | pre | pos | 194 | -1.068 | 0.287 | 0.287 | ns | 194 | -1.068 | 0.287 | 0.287 | ns |
| Controle |  | Urbana |  |  | pre | pos | 194 | -2.180 | 0.030 | 0.030 | \* | 194 | -2.180 | 0.030 | 0.030 | \* |
| Experimental |  |  |  |  | Rural | Urbana | 96 | -0.029 | 0.977 | 0.977 | ns | 96 | -0.029 | 0.977 | 0.977 | ns |
| Experimental |  | Rural |  |  | pre | pos | 194 | 0.651 | 0.516 | 0.516 | ns | 194 | 0.651 | 0.516 | 0.516 | ns |
| Experimental |  | Urbana |  |  | pre | pos | 194 | 0.189 | 0.851 | 0.851 | ns | 194 | 0.189 | 0.851 | 0.851 | ns |
|  |  | Rural |  |  | Controle | Experimental | 96 | 1.069 | 0.288 | 0.288 | ns | 96 | 1.069 | 0.288 | 0.288 | ns |
|  |  | Urbana |  |  | Controle | Experimental | 96 | 1.055 | 0.294 | 0.294 | ns | 96 | 1.055 | 0.294 | 0.294 | ns |
| Controle |  |  | Branca |  | pre | pos | 136 | -0.722 | 0.472 | 0.472 | ns | 136 | -0.722 | 0.472 | 0.472 | ns |
| Controle |  |  |  |  | Parda | Branca | 67 | 0.644 | 0.522 | 0.522 | ns | 67 | 0.644 | 0.522 | 0.522 | ns |
| Controle |  |  | Parda |  | pre | pos | 136 | -1.390 | 0.167 | 0.167 | ns | 136 | -1.390 | 0.167 | 0.167 | ns |
| Experimental |  |  | Branca |  | pre | pos | 136 | 0.471 | 0.638 | 0.638 | ns | 136 | 0.471 | 0.638 | 0.638 | ns |
| Experimental |  |  |  |  | Parda | Branca | 67 | -0.938 | 0.351 | 0.351 | ns | 67 | -0.938 | 0.351 | 0.351 | ns |
| Experimental |  |  | Parda |  | pre | pos | 136 | 1.333 | 0.185 | 0.185 | ns | 136 | 1.333 | 0.185 | 0.185 | ns |
|  |  |  | Branca |  | Controle | Experimental | 67 | 0.263 | 0.794 | 0.794 | ns | 67 | 0.263 | 0.794 | 0.794 | ns |
|  |  |  | Parda |  | Controle | Experimental | 67 | 2.615 | 0.011 | 0.011 | \* | 67 | 2.615 | 0.011 | 0.011 | \* |
| Controle |  |  |  | 6 ano | pre | pos | 260 | -1.494 | 0.136 | 0.136 | ns | 260 | -1.494 | 0.136 | 0.136 | ns |
| Controle |  |  |  | 7 ano | pre | pos | 260 | -1.336 | 0.183 | 0.183 | ns | 260 | -1.336 | 0.183 | 0.183 | ns |
| Controle |  |  |  | 8 ano | pre | pos | 260 | -0.403 | 0.687 | 0.687 | ns | 260 | -0.403 | 0.687 | 0.687 | ns |
| Controle |  |  |  | 9 ano | pre | pos | 260 | 0.066 | 0.947 | 0.947 | ns | 260 | 0.066 | 0.947 | 0.947 | ns |
| Controle |  |  |  |  | 6 ano | 7 ano | 129 | -0.413 | 0.680 | 1.000 | ns | 129 | -0.413 | 0.680 | 1.000 | ns |
| Controle |  |  |  |  | 6 ano | 8 ano | 129 | 0.969 | 0.335 | 1.000 | ns | 129 | 0.969 | 0.335 | 1.000 | ns |
| Controle |  |  |  |  | 6 ano | 9 ano | 129 | 0.455 | 0.650 | 1.000 | ns | 129 | 0.455 | 0.650 | 1.000 | ns |
| Controle |  |  |  |  | 7 ano | 8 ano | 129 | 1.291 | 0.199 | 1.000 | ns | 129 | 1.291 | 0.199 | 1.000 | ns |
| Controle |  |  |  |  | 7 ano | 9 ano | 129 | 0.814 | 0.417 | 1.000 | ns | 129 | 0.814 | 0.417 | 1.000 | ns |
| Controle |  |  |  |  | 8 ano | 9 ano | 129 | -0.491 | 0.624 | 1.000 | ns | 129 | -0.491 | 0.624 | 1.000 | ns |
| Experimental |  |  |  | 6 ano | pre | pos | 260 | -0.228 | 0.820 | 0.820 | ns | 260 | -0.228 | 0.820 | 0.820 | ns |
| Experimental |  |  |  | 7 ano | pre | pos | 260 | 0.230 | 0.818 | 0.818 | ns | 260 | 0.230 | 0.818 | 0.818 | ns |
| Experimental |  |  |  | 8 ano | pre | pos | 260 | 1.550 | 0.122 | 0.122 | ns | 260 | 1.550 | 0.122 | 0.122 | ns |
| Experimental |  |  |  | 9 ano | pre | pos | 260 | 0.136 | 0.892 | 0.892 | ns | 260 | 0.136 | 0.892 | 0.892 | ns |
| Experimental |  |  |  |  | 6 ano | 7 ano | 129 | 0.767 | 0.444 | 1.000 | ns | 129 | 0.767 | 0.444 | 1.000 | ns |
| Experimental |  |  |  |  | 6 ano | 8 ano | 129 | 2.608 | 0.010 | 0.061 | ns | 129 | 2.608 | 0.010 | 0.061 | ns |
| Experimental |  |  |  |  | 6 ano | 9 ano | 129 | 1.223 | 0.223 | 1.000 | ns | 129 | 1.223 | 0.223 | 1.000 | ns |
| Experimental |  |  |  |  | 7 ano | 8 ano | 129 | 1.774 | 0.078 | 0.471 | ns | 129 | 1.774 | 0.078 | 0.471 | ns |
| Experimental |  |  |  |  | 7 ano | 9 ano | 129 | 0.475 | 0.635 | 1.000 | ns | 129 | 0.475 | 0.635 | 1.000 | ns |
| Experimental |  |  |  |  | 8 ano | 9 ano | 129 | -1.237 | 0.218 | 1.000 | ns | 129 | -1.237 | 0.218 | 1.000 | ns |
|  |  |  |  | 6 ano | Controle | Experimental | 129 | -0.267 | 0.790 | 0.790 | ns | 129 | -0.267 | 0.790 | 0.790 | ns |
|  |  |  |  | 7 ano | Controle | Experimental | 129 | 0.921 | 0.359 | 0.359 | ns | 129 | 0.921 | 0.359 | 0.359 | ns |
|  |  |  |  | 8 ano | Controle | Experimental | 129 | 1.687 | 0.094 | 0.094 | ns | 129 | 1.687 | 0.094 | 0.094 | ns |
|  |  |  |  | 9 ano | Controle | Experimental | 129 | 0.740 | 0.461 | 0.461 | ns | 129 | 0.740 | 0.461 | 0.461 | ns |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% names(lfatores)])]
```

| grupo | Sexo | Zona | Cor.Raca | Serie | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high | N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | conf.low’ | conf.high’ | N-N’ |
|:---|:---|:---|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle |  |  |  |  | 94 | 3.345 | 0.059 | 3.491 | 0.061 | 3.506 | 0.057 | 3.392 | 3.619 | 94 | 3.345 | 0.059 | 3.491 | 0.061 | 3.506 | 0.057 | 3.392 | 3.619 | 0 |
| Experimental |  |  |  |  | 44 | 3.472 | 0.087 | 3.380 | 0.088 | 3.349 | 0.084 | 3.183 | 3.515 | 44 | 3.472 | 0.087 | 3.380 | 0.088 | 3.349 | 0.084 | 3.183 | 3.515 | 0 |
| Controle | F |  |  |  | 42 | 3.368 | 0.077 | 3.612 | 0.090 | 3.618 | 0.085 | 3.450 | 3.786 | 42 | 3.368 | 0.077 | 3.612 | 0.090 | 3.618 | 0.085 | 3.450 | 3.786 | 0 |
| Controle | M |  |  |  | 52 | 3.326 | 0.087 | 3.393 | 0.082 | 3.415 | 0.076 | 3.264 | 3.566 | 52 | 3.326 | 0.087 | 3.393 | 0.082 | 3.415 | 0.076 | 3.264 | 3.566 | 0 |
| Experimental | F |  |  |  | 15 | 3.289 | 0.177 | 3.469 | 0.167 | 3.505 | 0.142 | 3.224 | 3.786 | 15 | 3.289 | 0.177 | 3.469 | 0.167 | 3.505 | 0.142 | 3.224 | 3.786 | 0 |
| Experimental | M |  |  |  | 29 | 3.567 | 0.092 | 3.334 | 0.104 | 3.266 | 0.103 | 3.063 | 3.470 | 29 | 3.567 | 0.092 | 3.334 | 0.104 | 3.266 | 0.103 | 3.063 | 3.470 | 0 |
| Controle |  | Rural |  |  | 51 | 3.345 | 0.081 | 3.475 | 0.081 | 3.476 | 0.080 | 3.316 | 3.635 | 51 | 3.345 | 0.081 | 3.475 | 0.081 | 3.476 | 0.080 | 3.316 | 3.635 | 0 |
| Controle |  | Urbana |  |  | 15 | 3.020 | 0.191 | 3.511 | 0.204 | 3.635 | 0.151 | 3.335 | 3.936 | 15 | 3.020 | 0.191 | 3.511 | 0.204 | 3.635 | 0.151 | 3.335 | 3.936 | 0 |
| Experimental |  | Rural |  |  | 29 | 3.494 | 0.116 | 3.389 | 0.113 | 3.332 | 0.108 | 3.119 | 3.546 | 29 | 3.494 | 0.116 | 3.389 | 0.113 | 3.332 | 0.108 | 3.119 | 3.546 | 0 |
| Experimental |  | Urbana |  |  | 6 | 3.444 | 0.222 | 3.377 | 0.185 | 3.340 | 0.235 | 2.874 | 3.805 | 6 | 3.444 | 0.222 | 3.377 | 0.185 | 3.340 | 0.235 | 2.874 | 3.805 | 0 |
| Controle |  |  | Branca |  | 9 | 3.173 | 0.225 | 3.358 | 0.179 | 3.447 | 0.180 | 3.088 | 3.806 | 9 | 3.173 | 0.225 | 3.358 | 0.179 | 3.447 | 0.180 | 3.088 | 3.806 | 0 |
| Controle |  |  | Parda |  | 45 | 3.421 | 0.069 | 3.580 | 0.088 | 3.574 | 0.079 | 3.416 | 3.733 | 45 | 3.421 | 0.069 | 3.580 | 0.088 | 3.574 | 0.079 | 3.416 | 3.733 | 0 |
| Experimental |  |  | Branca |  | 6 | 3.593 | 0.216 | 3.444 | 0.160 | 3.372 | 0.219 | 2.936 | 3.809 | 6 | 3.593 | 0.216 | 3.444 | 0.160 | 3.372 | 0.219 | 2.936 | 3.809 | 0 |
| Experimental |  |  | Parda |  | 12 | 3.426 | 0.173 | 3.130 | 0.161 | 3.122 | 0.154 | 2.814 | 3.429 | 12 | 3.426 | 0.173 | 3.130 | 0.161 | 3.122 | 0.154 | 2.814 | 3.429 | 0 |
| Controle |  |  |  | 6 ano | 31 | 3.269 | 0.119 | 3.488 | 0.107 | 3.528 | 0.099 | 3.332 | 3.724 | 31 | 3.269 | 0.119 | 3.488 | 0.107 | 3.528 | 0.099 | 3.332 | 3.724 | 0 |
| Controle |  |  |  | 7 ano | 29 | 3.383 | 0.083 | 3.586 | 0.127 | 3.587 | 0.102 | 3.385 | 3.789 | 29 | 3.383 | 0.083 | 3.586 | 0.127 | 3.587 | 0.102 | 3.385 | 3.789 | 0 |
| Controle |  |  |  | 8 ano | 15 | 3.219 | 0.177 | 3.304 | 0.124 | 3.361 | 0.143 | 3.079 | 3.643 | 15 | 3.219 | 0.177 | 3.304 | 0.124 | 3.361 | 0.143 | 3.079 | 3.643 | 0 |
| Controle |  |  |  | 9 ano | 19 | 3.510 | 0.108 | 3.497 | 0.121 | 3.455 | 0.127 | 3.204 | 3.705 | 19 | 3.510 | 0.108 | 3.497 | 0.121 | 3.455 | 0.127 | 3.204 | 3.705 | 0 |
| Experimental |  |  |  | 6 ano | 15 | 3.600 | 0.185 | 3.648 | 0.134 | 3.575 | 0.143 | 3.292 | 3.858 | 15 | 3.600 | 0.185 | 3.648 | 0.134 | 3.575 | 0.143 | 3.292 | 3.858 | 0 |
| Experimental |  |  |  | 7 ano | 11 | 3.505 | 0.161 | 3.448 | 0.155 | 3.407 | 0.166 | 3.079 | 3.736 | 11 | 3.505 | 0.161 | 3.448 | 0.155 | 3.407 | 0.166 | 3.079 | 3.736 | 0 |
| Experimental |  |  |  | 8 ano | 9 | 3.395 | 0.197 | 2.972 | 0.184 | 2.969 | 0.183 | 2.606 | 3.331 | 9 | 3.395 | 0.197 | 2.972 | 0.184 | 2.969 | 0.183 | 2.606 | 3.331 | 0 |
| Experimental |  |  |  | 9 ano | 9 | 3.296 | 0.103 | 3.259 | 0.210 | 3.290 | 0.183 | 2.927 | 3.652 | 9 | 3.296 | 0.103 | 3.259 | 0.210 | 3.290 | 0.183 | 2.927 | 3.652 | 0 |
