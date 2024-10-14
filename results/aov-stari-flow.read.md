ANCOVA in flow (reading) (flow (reading))
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
  flow (reading) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (reading) (measured using pre- and post-tests).

# Setting Initial Variables

``` r
dv = "flow.read"
dv.pos = "fss.media.read"
dv.pre = "dfs.media.read"

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
| Controle |  |  |  |  | dfs.media.read | 101 | 3.303 | 3.333 | 2.111 | 4.444 | 0.455 | 0.045 | 0.090 | 0.556 | YES | -0.085 | 0.067 |
| Experimental |  |  |  |  | dfs.media.read | 46 | 3.417 | 3.444 | 2.111 | 4.333 | 0.549 | 0.081 | 0.163 | 0.778 | YES | -0.263 | -0.596 |
|  |  |  |  |  | dfs.media.read | 147 | 3.339 | 3.333 | 2.111 | 4.444 | 0.487 | 0.040 | 0.079 | 0.667 | YES | -0.108 | -0.170 |
| Controle |  |  |  |  | fss.media.read | 101 | 3.483 | 3.444 | 2.222 | 5.000 | 0.498 | 0.050 | 0.098 | 0.556 | YES | 0.312 | 0.491 |
| Experimental |  |  |  |  | fss.media.read | 46 | 3.457 | 3.500 | 1.889 | 4.667 | 0.575 | 0.085 | 0.171 | 0.972 | YES | -0.247 | -0.306 |
|  |  |  |  |  | fss.media.read | 147 | 3.475 | 3.444 | 1.889 | 5.000 | 0.521 | 0.043 | 0.085 | 0.667 | YES | 0.073 | 0.271 |
| Controle | F |  |  |  | dfs.media.read | 45 | 3.254 | 3.222 | 2.333 | 4.444 | 0.436 | 0.065 | 0.131 | 0.556 | YES | -0.005 | 0.272 |
| Controle | M |  |  |  | dfs.media.read | 56 | 3.344 | 3.333 | 2.111 | 4.333 | 0.469 | 0.063 | 0.126 | 0.556 | YES | -0.172 | -0.114 |
| Experimental | F |  |  |  | dfs.media.read | 17 | 3.203 | 3.111 | 2.111 | 4.333 | 0.597 | 0.145 | 0.307 | 0.667 | YES | 0.264 | -0.541 |
| Experimental | M |  |  |  | dfs.media.read | 29 | 3.542 | 3.556 | 2.333 | 4.333 | 0.486 | 0.090 | 0.185 | 0.556 | NO | -0.501 | -0.447 |
| Controle | F |  |  |  | fss.media.read | 45 | 3.500 | 3.444 | 2.444 | 4.778 | 0.481 | 0.072 | 0.145 | 0.444 | NO | 0.529 | 0.150 |
| Controle | M |  |  |  | fss.media.read | 56 | 3.469 | 3.500 | 2.222 | 5.000 | 0.515 | 0.069 | 0.138 | 0.583 | YES | 0.172 | 0.540 |
| Experimental | F |  |  |  | fss.media.read | 17 | 3.439 | 3.556 | 2.444 | 4.125 | 0.568 | 0.138 | 0.292 | 1.000 | YES | -0.225 | -1.571 |
| Experimental | M |  |  |  | fss.media.read | 29 | 3.467 | 3.444 | 1.889 | 4.667 | 0.589 | 0.109 | 0.224 | 0.778 | YES | -0.252 | 0.160 |
| Controle |  | Rural |  |  | dfs.media.read | 55 | 3.307 | 3.333 | 2.111 | 4.444 | 0.549 | 0.074 | 0.148 | 0.722 | YES | -0.010 | -0.602 |
| Controle |  | Urbana |  |  | dfs.media.read | 18 | 3.241 | 3.333 | 2.556 | 3.778 | 0.380 | 0.089 | 0.189 | 0.500 | NO | -0.652 | -0.810 |
| Controle |  |  |  |  | dfs.media.read | 28 | 3.338 | 3.278 | 2.889 | 3.778 | 0.262 | 0.050 | 0.102 | 0.434 | YES | 0.088 | -1.320 |
| Experimental |  | Rural |  |  | dfs.media.read | 29 | 3.531 | 3.556 | 2.333 | 4.333 | 0.550 | 0.102 | 0.209 | 0.778 | YES | -0.368 | -0.689 |
| Experimental |  | Urbana |  |  | dfs.media.read | 8 | 3.042 | 3.167 | 2.111 | 3.556 | 0.493 | 0.174 | 0.412 | 0.472 | NO | -0.699 | -1.063 |
| Experimental |  |  |  |  | dfs.media.read | 9 | 3.383 | 3.333 | 2.778 | 4.000 | 0.481 | 0.160 | 0.370 | 0.778 | YES | 0.034 | -1.975 |
| Controle |  | Rural |  |  | fss.media.read | 55 | 3.528 | 3.444 | 2.556 | 4.778 | 0.446 | 0.060 | 0.121 | 0.500 | NO | 0.529 | 0.255 |
| Controle |  | Urbana |  |  | fss.media.read | 18 | 3.420 | 3.278 | 2.222 | 5.000 | 0.769 | 0.181 | 0.382 | 1.122 | YES | 0.372 | -0.958 |
| Controle |  |  |  |  | fss.media.read | 28 | 3.435 | 3.500 | 2.500 | 4.000 | 0.373 | 0.070 | 0.145 | 0.472 | NO | -0.515 | -0.269 |
| Experimental |  | Rural |  |  | fss.media.read | 29 | 3.472 | 3.556 | 1.889 | 4.667 | 0.630 | 0.117 | 0.239 | 0.889 | YES | -0.393 | -0.270 |
| Experimental |  | Urbana |  |  | fss.media.read | 8 | 3.431 | 3.444 | 2.778 | 4.111 | 0.509 | 0.180 | 0.425 | 0.861 | YES | 0.024 | -1.815 |
| Experimental |  |  |  |  | fss.media.read | 9 | 3.432 | 3.222 | 3.000 | 4.222 | 0.495 | 0.165 | 0.381 | 0.889 | YES | 0.404 | -1.745 |
| Controle |  |  | Parda |  | dfs.media.read | 46 | 3.451 | 3.500 | 2.444 | 4.444 | 0.457 | 0.067 | 0.136 | 0.444 | YES | -0.028 | -0.392 |
| Controle |  |  | Branca |  | dfs.media.read | 11 | 3.202 | 3.333 | 2.111 | 4.222 | 0.618 | 0.186 | 0.415 | 0.500 | YES | -0.228 | -0.922 |
| Controle |  |  | Preta |  | dfs.media.read | 1 | 3.111 | 3.111 | 3.111 | 3.111 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Controle |  |  |  |  | dfs.media.read | 43 | 3.176 | 3.222 | 2.333 | 3.778 | 0.365 | 0.056 | 0.112 | 0.444 | YES | -0.467 | -0.445 |
| Experimental |  |  | Parda |  | dfs.media.read | 12 | 3.479 | 3.444 | 2.444 | 4.333 | 0.523 | 0.151 | 0.332 | 0.618 | YES | -0.146 | -0.774 |
| Experimental |  |  | Indígena |  | dfs.media.read | 5 | 3.644 | 3.556 | 3.444 | 4.000 | 0.214 | 0.096 | 0.265 | 0.111 | NO | 0.728 | -1.303 |
| Experimental |  |  | Branca |  | dfs.media.read | 6 | 3.611 | 3.778 | 2.778 | 4.333 | 0.599 | 0.245 | 0.629 | 0.750 | YES | -0.280 | -1.814 |
| Experimental |  |  | Amarela |  | dfs.media.read | 1 | 3.000 | 3.000 | 3.000 | 3.000 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Experimental |  |  |  |  | dfs.media.read | 22 | 3.297 | 3.333 | 2.111 | 4.333 | 0.599 | 0.128 | 0.266 | 0.882 | YES | -0.093 | -0.902 |
| Controle |  |  | Parda |  | fss.media.read | 46 | 3.514 | 3.444 | 2.444 | 5.000 | 0.530 | 0.078 | 0.157 | 0.628 | NO | 0.545 | 0.343 |
| Controle |  |  | Branca |  | fss.media.read | 11 | 3.596 | 3.556 | 2.667 | 4.556 | 0.505 | 0.152 | 0.339 | 0.333 | YES | 0.140 | -0.470 |
| Controle |  |  | Preta |  | fss.media.read | 1 | 3.444 | 3.444 | 3.444 | 3.444 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Controle |  |  |  |  | fss.media.read | 43 | 3.421 | 3.444 | 2.222 | 4.556 | 0.469 | 0.072 | 0.144 | 0.500 | YES | -0.091 | 0.156 |
| Experimental |  |  | Parda |  | fss.media.read | 12 | 3.278 | 3.278 | 1.889 | 4.444 | 0.650 | 0.188 | 0.413 | 0.722 | YES | -0.325 | -0.255 |
| Experimental |  |  | Indígena |  | fss.media.read | 5 | 3.647 | 4.000 | 2.444 | 4.222 | 0.737 | 0.329 | 0.915 | 0.681 | NO | -0.703 | -1.458 |
| Experimental |  |  | Branca |  | fss.media.read | 6 | 3.556 | 3.556 | 3.000 | 4.222 | 0.410 | 0.167 | 0.430 | 0.306 | YES | 0.279 | -1.252 |
| Experimental |  |  | Amarela |  | fss.media.read | 1 | 3.222 | 3.222 | 3.222 | 3.222 |  |  |  | 0.000 | few data | 0.000 | 0.000 |
| Experimental |  |  |  |  | fss.media.read | 22 | 3.495 | 3.556 | 2.667 | 4.667 | 0.557 | 0.119 | 0.247 | 1.000 | YES | 0.133 | -1.212 |
| Controle |  |  |  | 6 ano | dfs.media.read | 32 | 3.156 | 3.222 | 2.111 | 4.444 | 0.561 | 0.099 | 0.202 | 0.750 | YES | 0.203 | -0.450 |
| Controle |  |  |  | 7 ano | dfs.media.read | 33 | 3.420 | 3.444 | 2.750 | 4.000 | 0.302 | 0.053 | 0.107 | 0.444 | YES | -0.315 | -0.571 |
| Controle |  |  |  | 8 ano | dfs.media.read | 17 | 3.268 | 3.222 | 2.556 | 4.333 | 0.445 | 0.108 | 0.229 | 0.556 | NO | 0.613 | -0.214 |
| Controle |  |  |  | 9 ano | dfs.media.read | 19 | 3.381 | 3.333 | 2.444 | 4.222 | 0.444 | 0.102 | 0.214 | 0.500 | YES | 0.152 | -0.548 |
| Experimental |  |  |  | 6 ano | dfs.media.read | 15 | 3.619 | 3.444 | 3.000 | 4.333 | 0.453 | 0.117 | 0.251 | 0.722 | YES | 0.144 | -1.548 |
| Experimental |  |  |  | 7 ano | dfs.media.read | 11 | 3.485 | 3.444 | 2.778 | 4.333 | 0.571 | 0.172 | 0.384 | 0.944 | YES | 0.238 | -1.575 |
| Experimental |  |  |  | 8 ano | dfs.media.read | 11 | 3.121 | 3.333 | 2.111 | 4.000 | 0.656 | 0.198 | 0.441 | 1.111 | YES | -0.222 | -1.662 |
| Experimental |  |  |  | 9 ano | dfs.media.read | 9 | 3.358 | 3.556 | 2.778 | 3.889 | 0.426 | 0.142 | 0.327 | 0.667 | YES | -0.246 | -1.764 |
| Controle |  |  |  | 6 ano | fss.media.read | 32 | 3.521 | 3.556 | 2.222 | 4.556 | 0.465 | 0.082 | 0.168 | 0.361 | YES | -0.132 | 0.785 |
| Controle |  |  |  | 7 ano | fss.media.read | 33 | 3.546 | 3.444 | 2.444 | 5.000 | 0.573 | 0.100 | 0.203 | 0.653 | NO | 0.567 | 0.138 |
| Controle |  |  |  | 8 ano | fss.media.read | 17 | 3.273 | 3.333 | 2.500 | 4.000 | 0.477 | 0.116 | 0.245 | 0.556 | YES | 0.026 | -1.123 |
| Controle |  |  |  | 9 ano | fss.media.read | 19 | 3.497 | 3.444 | 2.778 | 4.222 | 0.410 | 0.094 | 0.197 | 0.444 | YES | 0.234 | -0.930 |
| Experimental |  |  |  | 6 ano | fss.media.read | 15 | 3.674 | 3.667 | 3.000 | 4.667 | 0.469 | 0.121 | 0.259 | 0.722 | YES | 0.255 | -0.900 |
| Experimental |  |  |  | 7 ano | fss.media.read | 11 | 3.395 | 3.556 | 1.889 | 4.444 | 0.808 | 0.244 | 0.543 | 1.174 | YES | -0.427 | -1.227 |
| Experimental |  |  |  | 8 ano | fss.media.read | 11 | 3.222 | 3.000 | 2.778 | 4.222 | 0.463 | 0.140 | 0.311 | 0.556 | NO | 0.857 | -0.606 |
| Experimental |  |  |  | 9 ano | fss.media.read | 9 | 3.457 | 3.556 | 2.667 | 4.000 | 0.473 | 0.158 | 0.363 | 0.778 | YES | -0.336 | -1.525 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "fss.media.read", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, fss.media.read ~ grupo, covariate = dfs.media.read,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          flow.read ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.read", "grupo", covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.read ~ dfs.media.read + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.read"]] <- c(wdat[["dfs.media.read"]], wdat[["fss.media.read"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]],
                            by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.read   1 144 16.860 6.72e-05     * 0.105
    ## 2          grupo   1 144  0.542 4.63e-01       0.004

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.read |   1 | 144 | 16.860 | 0.000 | \*     | 0.105 |
| grupo          |   1 | 144 |  0.542 | 0.463 |        | 0.004 |

``` r
pwc <- emmeans_test(wdat, fss.media.read ~ grupo, covariate = dfs.media.read,
                    p.adjust.method = "bonferroni")
```

| term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 144 | 0.737 | 0.463 | 0.463 | ns |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]],
                            by=c("grupo","term",".y.","group1","group2"),
                            suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.read | pre    | pos    | 290 |    -2.525 | 0.012 | 0.012 | \*           |
| Experimental | time | flow.read | pre    | pos    | 290 |    -0.382 | 0.703 | 0.703 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", "grupo", covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
            "emmean","se.emms","conf.low","conf.high")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"),
                  paste0(c("M", "SE"), " (adj)"), "conf.low", "conf.high")

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high |
|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle | 101 | 3.303 | 0.045 | 3.483 | 0.050 | 3.495 | 0.050 | 3.397 | 3.593 |
| Experimental | 46 | 3.417 | 0.081 | 3.457 | 0.085 | 3.430 | 0.074 | 3.284 | 3.575 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.read", "grupo", aov, list("grupo"=pwc), addParam = c("mean_ci"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] +
  if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.read", "grupo", aov, pwc, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (reading)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.read", "grupo", aov, pwc.long,
    pre.post = "time", theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (reading)") +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax) 
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  ) +
  ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo"))) +
  ggplot2::scale_color_manual(values = color[["grupo"]]) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.read ~ dfs.media.read + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.996   0.951

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1   145      1.24 0.267

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),],
                         "fss.media.read", c("grupo","Sexo"))
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
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Sexo)
  laov[["grupo:Sexo"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.read ~ Sexo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Sexo), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Sexo"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
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
  
  res = residuals(lm(fss.media.read ~ dfs.media.read + grupo*Sexo, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.read"]] <- c(wdat[["dfs.media.read"]], wdat[["fss.media.read"]])
  
  
  ldat[["grupo:Sexo"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Sexo)
  laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.read |   1 | 142 | 17.341 | 0.000 | \*     | 0.109 |
| grupo          |   1 | 142 |  0.471 | 0.493 |        | 0.003 |
| Sexo           |   1 | 142 |  0.726 | 0.396 |        | 0.005 |
| grupo:Sexo     |   1 | 142 |  0.029 | 0.864 |        | 0.000 |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwcs <- list()
  pwcs[["Sexo"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.read ~ Sexo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Sexo), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
  pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
}
```

| grupo | Sexo | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | F | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 142 | 0.299 | 0.766 | 0.766 | ns |
|  | M | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 142 | 0.640 | 0.523 | 0.523 | ns |
| Controle |  | dfs.media.read\*Sexo | fss.media.read | F | M | 142 | 0.629 | 0.530 | 0.530 | ns |
| Experimental |  | dfs.media.read\*Sexo | fss.media.read | F | M | 142 | 0.609 | 0.544 | 0.544 | ns |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Sexo"]],
                                         by=c("grupo","Sexo","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Sexo | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | F | time | flow.read | pre | pos | 286 | -2.319 | 0.021 | 0.021 | \* |
| Controle | M | time | flow.read | pre | pos | 286 | -1.322 | 0.187 | 0.187 | ns |
| Experimental | F | time | flow.read | pre | pos | 286 | -1.368 | 0.172 | 0.172 | ns |
| Experimental | M | time | flow.read | pre | pos | 286 | 0.565 | 0.572 | 0.572 | ns |

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Sexo"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Sexo"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.read","se.dfs.media.read",
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
| Controle | F | 45 | 3.254 | 0.065 | 3.500 | 0.072 | 3.531 | 0.075 | 3.383 | 3.678 |
| Controle | M | 56 | 3.344 | 0.063 | 3.469 | 0.069 | 3.468 | 0.067 | 3.336 | 3.599 |
| Experimental | F | 17 | 3.203 | 0.145 | 3.439 | 0.138 | 3.488 | 0.122 | 3.248 | 3.728 |
| Experimental | M | 29 | 3.542 | 0.090 | 3.467 | 0.109 | 3.394 | 0.094 | 3.207 | 3.580 |

### Plots for ancova

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Sexo", aov, ylab = "flow (reading)",
             subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggPlotAoC2(pwcs, "Sexo", "grupo", aov, ylab = "flow (reading)",
               subtitle = which(aov$Effect == "grupo:Sexo"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.read", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.read",
    theme = "classic", color = color[["grupo:Sexo"]],
    subtitle = which(aov$Effect == "grupo:Sexo"))
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots[["grupo:Sexo"]] + ggplot2::ylab("flow (reading)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.read", c("grupo","Sexo"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  plots[["grupo:Sexo"]] + ggplot2::ylab("flow (reading)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            facet.by = c("grupo","Sexo"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "grupo", facet.by = "Sexo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-49-1.png)<!-- -->

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "Sexo", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Sexo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Sexo"))) +
    ggplot2::scale_color_manual(values = color[["Sexo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Sexo, data = wdat))
```

``` r
if (length(unique(pdat[["Sexo"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.996   0.956

``` r
if (length(unique(pdat[["Sexo"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   143      1.11 0.345

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),],
                         "fss.media.read", c("grupo","Zona"))
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
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Zona)
  laov[["grupo:Zona"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.read ~ Zona,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Zona), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Zona"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
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
  
  res = residuals(lm(fss.media.read ~ dfs.media.read + grupo*Zona, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.read"]] <- c(wdat[["dfs.media.read"]], wdat[["fss.media.read"]])
  
  
  ldat[["grupo:Zona"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Zona)
  laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.read |   1 | 105 | 12.840 | 0.001 | \*     | 0.109 |
| grupo          |   1 | 105 |  0.615 | 0.435 |        | 0.006 |
| Zona           |   1 | 105 |  0.023 | 0.879 |        | 0.000 |
| grupo:Zona     |   1 | 105 |  0.694 | 0.407 |        | 0.007 |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwcs <- list()
  pwcs[["Zona"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.read ~ Zona,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Zona), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
  pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
}
```

| grupo | Zona | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | Rural | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 105 | 1.092 | 0.277 | 0.277 | ns |
|  | Urbana | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 105 | -0.359 | 0.721 | 0.721 | ns |
| Controle |  | dfs.media.read\*Zona | fss.media.read | Rural | Urbana | 105 | 0.584 | 0.561 | 0.561 | ns |
| Experimental |  | dfs.media.read\*Zona | fss.media.read | Rural | Urbana | 105 | -0.608 | 0.545 | 0.545 | ns |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Zona"]],
                                         by=c("grupo","Zona","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Zona | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | Rural | time | flow.read | pre | pos | 212 | -2.138 | 0.034 | 0.034 | \* |
| Controle | Urbana | time | flow.read | pre | pos | 212 | -0.989 | 0.324 | 0.324 | ns |
| Experimental | Rural | time | flow.read | pre | pos | 212 | 0.413 | 0.680 | 0.680 | ns |
| Experimental | Urbana | time | flow.read | pre | pos | 212 | -1.432 | 0.154 | 0.154 | ns |

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Zona"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Zona"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Zona","n","mean.dfs.media.read","se.dfs.media.read",
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
| Controle | Rural | 55 | 3.307 | 0.074 | 3.528 | 0.060 | 3.538 | 0.072 | 3.395 | 3.681 |
| Controle | Urbana | 18 | 3.241 | 0.089 | 3.420 | 0.181 | 3.454 | 0.126 | 3.203 | 3.704 |
| Experimental | Rural | 29 | 3.531 | 0.102 | 3.472 | 0.117 | 3.402 | 0.101 | 3.202 | 3.603 |
| Experimental | Urbana | 8 | 3.042 | 0.174 | 3.431 | 0.180 | 3.535 | 0.191 | 3.156 | 3.915 |

### Plots for ancova

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Zona", aov, ylab = "flow (reading)",
             subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggPlotAoC2(pwcs, "Zona", "grupo", aov, ylab = "flow (reading)",
               subtitle = which(aov$Effect == "grupo:Zona"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.read", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.read",
    theme = "classic", color = color[["grupo:Zona"]],
    subtitle = which(aov$Effect == "grupo:Zona"))
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots[["grupo:Zona"]] + ggplot2::ylab("flow (reading)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.read", c("grupo","Zona"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  plots[["grupo:Zona"]] + ggplot2::ylab("flow (reading)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-73-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            facet.by = c("grupo","Zona"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "grupo", facet.by = "Zona", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-75-1.png)<!-- -->

``` r
if (length(unique(pdat[["Zona"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "Zona", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Zona)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Zona"))) +
    ggplot2::scale_color_manual(values = color[["Zona"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Zona, data = wdat))
```

``` r
if (length(unique(pdat[["Zona"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.997   0.999

``` r
if (length(unique(pdat[["Zona"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic       p
    ##   <int> <int>     <dbl>   <dbl>
    ## 1     3   106      4.32 0.00645

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),],
                         "fss.media.read", c("grupo","Cor.Raca"))
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
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.read ~ Cor.Raca,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Cor.Raca), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Cor.Raca"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
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
  
  res = residuals(lm(fss.media.read ~ dfs.media.read + grupo*Cor.Raca, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.read"]] <- c(wdat[["dfs.media.read"]], wdat[["fss.media.read"]])
  
  
  ldat[["grupo:Cor.Raca"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Cor.Raca)
  laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |     F |     p | p\<.05 |   ges |
|:---------------|----:|----:|------:|------:|:-------|------:|
| dfs.media.read |   1 |  70 | 8.476 | 0.005 | \*     | 0.108 |
| grupo          |   1 |  70 | 2.632 | 0.109 |        | 0.036 |
| Cor.Raca       |   1 |  70 | 1.724 | 0.193 |        | 0.024 |
| grupo:Cor.Raca |   1 |  70 | 0.040 | 0.843 |        | 0.001 |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwcs <- list()
  pwcs[["Cor.Raca"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.read ~ Cor.Raca,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Cor.Raca), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
  pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
}
```

| grupo | Cor.Raca | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | Parda | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 70 | 1.482 | 0.143 | 0.143 | ns |
|  | Branca | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 70 | 0.696 | 0.489 | 0.489 | ns |
| Controle |  | dfs.media.read\*Cor.Raca | fss.media.read | Parda | Branca | 70 | -0.967 | 0.337 | 0.337 | ns |
| Experimental |  | dfs.media.read\*Cor.Raca | fss.media.read | Parda | Branca | 70 | -0.900 | 0.371 | 0.371 | ns |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Cor.Raca"]],
                                         by=c("grupo","Cor.Raca","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Cor.Raca | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | Parda | time | flow.read | pre | pos | 142 | -0.583 | 0.561 | 0.561 | ns |
| Controle | Branca | time | flow.read | pre | pos | 142 | -1.770 | 0.079 | 0.079 | ns |
| Experimental | Parda | time | flow.read | pre | pos | 142 | 0.945 | 0.346 | 0.346 | ns |
| Experimental | Branca | time | flow.read | pre | pos | 142 | 0.184 | 0.854 | 0.854 | ns |

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Cor.Raca"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.read","se.dfs.media.read",
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
| Controle | Branca | 11 | 3.202 | 0.186 | 3.596 | 0.152 | 3.677 | 0.157 | 3.363 | 3.991 |
| Controle | Parda | 46 | 3.451 | 0.067 | 3.514 | 0.078 | 3.508 | 0.076 | 3.357 | 3.659 |
| Experimental | Branca | 6 | 3.611 | 0.245 | 3.556 | 0.167 | 3.492 | 0.211 | 3.072 | 3.913 |
| Experimental | Parda | 12 | 3.479 | 0.151 | 3.278 | 0.188 | 3.261 | 0.148 | 2.965 | 3.557 |

### Plots for ancova

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Cor.Raca", aov, ylab = "flow (reading)",
             subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-94-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggPlotAoC2(pwcs, "Cor.Raca", "grupo", aov, ylab = "flow (reading)",
               subtitle = which(aov$Effect == "grupo:Cor.Raca"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.read", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.read",
    theme = "classic", color = color[["grupo:Cor.Raca"]],
    subtitle = which(aov$Effect == "grupo:Cor.Raca"))
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (reading)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

    ## Warning: No shared levels found between `names(values)` of the manual scale and the data's colour values.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-97-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.read", c("grupo","Cor.Raca"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (reading)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-99-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-100-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "grupo", facet.by = "Cor.Raca", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-101-1.png)<!-- -->

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "Cor.Raca", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Cor.Raca)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Cor.Raca"))) +
    ggplot2::scale_color_manual(values = color[["Cor.Raca"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-102-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Cor.Raca, data = wdat))
```

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.988   0.680

``` r
if (length(unique(pdat[["Cor.Raca"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    71     0.186 0.906

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),],
                         "fss.media.read", c("grupo","Serie"))
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
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Serie)
  laov[["grupo:Serie"]] <- get_anova_table(aov)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(pdat, grupo), fss.media.read ~ Serie,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(pdat, Serie), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Serie"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.dfs.media.read","se.dfs.media.read","mean","se",
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
  
  res = residuals(lm(fss.media.read ~ dfs.media.read + grupo*Serie, data = wdat))
  non.normal = getNonNormal(res, wdat$id, plimit = 0.05)
  
  wdat = wdat[!wdat$id %in% non.normal,]
  
  wdat.long <- rbind(wdat[,c("id","grupo","Serie")], wdat[,c("id","grupo","Serie")])
  wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
  wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
  wdat.long[["flow.read"]] <- c(wdat[["dfs.media.read"]], wdat[["fss.media.read"]])
  
  
  ldat[["grupo:Serie"]] = wdat
  
  (non.normal)
}
```

    ## NULL

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Serie)
  laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]],
                                         by="Effect", suffixes = c("","'"))
  df = get_anova_table(aov)
}
```

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.read |   1 | 138 | 13.891 | 0.000 | \*     | 0.091 |
| grupo          |   1 | 138 |  0.347 | 0.557 |        | 0.003 |
| Serie          |   3 | 138 |  1.871 | 0.137 |        | 0.039 |
| grupo:Serie    |   3 | 138 |  0.224 | 0.880 |        | 0.005 |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwcs <- list()
  pwcs[["Serie"]] <- emmeans_test(
    group_by(wdat, grupo), fss.media.read ~ Serie,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  pwcs[["grupo"]] <- emmeans_test(
    group_by(wdat, Serie), fss.media.read ~ grupo,
    covariate = dfs.media.read, p.adjust.method = "bonferroni")
  
  pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
  pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
}
```

| grupo | Serie | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
|  | 6 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 138 | -0.003 | 0.998 | 0.998 | ns |
|  | 7 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 138 | 0.996 | 0.321 | 0.321 | ns |
|  | 8 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 138 | 0.011 | 0.991 | 0.991 | ns |
|  | 9 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 138 | 0.163 | 0.871 | 0.871 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 7 ano | 138 | 0.496 | 0.621 | 1.000 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 8 ano | 138 | 1.909 | 0.058 | 0.350 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 9 ano | 138 | 0.676 | 0.500 | 1.000 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 7 ano | 8 ano | 138 | 1.498 | 0.137 | 0.819 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 7 ano | 9 ano | 138 | 0.251 | 0.802 | 1.000 | ns |
| Controle |  | dfs.media.read\*Serie | fss.media.read | 8 ano | 9 ano | 138 | -1.126 | 0.262 | 1.000 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 7 ano | 138 | 1.190 | 0.236 | 1.000 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 8 ano | 138 | 1.424 | 0.157 | 0.940 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 6 ano | 9 ano | 138 | 0.623 | 0.534 | 1.000 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 7 ano | 8 ano | 138 | 0.247 | 0.806 | 1.000 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 7 ano | 9 ano | 138 | -0.464 | 0.644 | 1.000 | ns |
| Experimental |  | dfs.media.read\*Serie | fss.media.read | 8 ano | 9 ano | 138 | -0.698 | 0.486 | 1.000 | ns |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                           flow.read ~ time,
                           p.adjust.method = "bonferroni")
  lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long),
                                         lpwc[["grupo:Serie"]],
                                         by=c("grupo","Serie","term",".y.","group1","group2"),
                                         suffixes = c("","'"))
}
```

| grupo | Serie | term | .y. | group1 | group2 | df | statistic | p | p.adj | p.adj.signif |
|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|
| Controle | 6 ano | time | flow.read | pre | pos | 278 | -2.934 | 0.004 | 0.004 | \*\* |
| Controle | 7 ano | time | flow.read | pre | pos | 278 | -1.029 | 0.305 | 0.305 | ns |
| Controle | 8 ano | time | flow.read | pre | pos | 278 | -0.029 | 0.977 | 0.977 | ns |
| Controle | 9 ano | time | flow.read | pre | pos | 278 | -0.721 | 0.472 | 0.472 | ns |
| Experimental | 6 ano | time | flow.read | pre | pos | 278 | -0.306 | 0.760 | 0.760 | ns |
| Experimental | 7 ano | time | flow.read | pre | pos | 278 | 0.423 | 0.673 | 0.673 | ns |
| Experimental | 8 ano | time | flow.read | pre | pos | 278 | -0.477 | 0.634 | 0.634 | ns |
| Experimental | 9 ano | time | flow.read | pre | pos | 278 | -0.422 | 0.674 | 0.674 | ns |

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Serie"), covar = "dfs.media.read")
  ds <- merge(ds[ds$variable != "dfs.media.read",],
              ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
              by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.read"))
  ds <- merge(get_emmeans(pwcs[["grupo"]]), ds,
              by = c("grupo","Serie"), suffixes = c(".emms", ""))
  ds <- ds[,c("grupo","Serie","n","mean.dfs.media.read","se.dfs.media.read",
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
| Controle | 6 ano | 32 | 3.156 | 0.099 | 3.521 | 0.082 | 3.581 | 0.089 | 3.405 | 3.758 |
| Controle | 7 ano | 33 | 3.420 | 0.053 | 3.546 | 0.100 | 3.519 | 0.087 | 3.348 | 3.690 |
| Controle | 8 ano | 17 | 3.268 | 0.108 | 3.273 | 0.116 | 3.296 | 0.120 | 3.058 | 3.535 |
| Controle | 9 ano | 19 | 3.381 | 0.102 | 3.497 | 0.094 | 3.483 | 0.114 | 3.258 | 3.708 |
| Experimental | 6 ano | 15 | 3.619 | 0.117 | 3.674 | 0.121 | 3.582 | 0.130 | 3.324 | 3.840 |
| Experimental | 7 ano | 11 | 3.485 | 0.172 | 3.395 | 0.244 | 3.347 | 0.150 | 3.050 | 3.644 |
| Experimental | 8 ano | 11 | 3.121 | 0.198 | 3.222 | 0.140 | 3.294 | 0.151 | 2.996 | 3.592 |
| Experimental | 9 ano | 9 | 3.358 | 0.142 | 3.457 | 0.158 | 3.450 | 0.165 | 3.123 | 3.777 |

### Plots for ancova

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "grupo", "Serie", aov, ylab = "flow (reading)",
             subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggPlotAoC2(pwcs, "Serie", "grupo", aov, ylab = "flow (reading)",
               subtitle = which(aov$Effect == "grupo:Serie"), addParam = "errorbar") +
      ggplot2::scale_color_manual(values = color[["grupo"]]) +
      if (ymin.ci < ymax.ci) ggplot2::ylim(ymin.ci, ymax.ci)
}
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-121-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat, "fss.media.read", c("grupo","Serie"), aov, pwcs, covar = "dfs.media.read",
    theme = "classic", color = color[["grupo:Serie"]],
    subtitle = which(aov$Effect == "grupo:Serie"))
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots[["grupo:Serie"]] + ggplot2::ylab("flow (reading)") +
  ggplot2::scale_x_discrete(labels=c('pre', 'pos')) +
  if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-123-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  plots <- twoWayAncovaBoxPlots(
    wdat.long, "flow.read", c("grupo","Serie"), aov, pwc.long,
    pre.post = "time",
    theme = "classic", color = color$prepost)
}
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  plots[["grupo:Serie"]] + ggplot2::ylab("flow (reading)") +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-125-1.png)<!-- -->

### Checking linearity assumption

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            facet.by = c("grupo","Serie"), add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
    ) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-126-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "grupo", facet.by = "Serie", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["grupo"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-127-1.png)<!-- -->

``` r
if (length(unique(pdat[["Serie"]])) >= 2) {
  ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
            color = "Serie", facet.by = "grupo", add = "reg.line")+
    stat_regline_equation(
      aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = Serie)
    ) +
    ggplot2::labs(subtitle = rstatix::get_test_label(aov, detailed = T, row = which(aov$Effect == "grupo:Serie"))) +
    ggplot2::scale_color_manual(values = color[["Serie"]]) +
    if (ymin < ymax) ggplot2::ylim(ymin, ymax)
}
```

![](aov-stari-flow.read_files/figure-gfm/unnamed-chunk-128-1.png)<!-- -->

### Checking normality and homogeneity

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Serie, data = wdat))
```

``` r
if (length(unique(pdat[["Serie"]])) >= 2)
  shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.995   0.881

``` r
if (length(unique(pdat[["Serie"]])) >= 2) 
  levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7   139     0.749 0.631

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
| Controle |  |  |  |  | dfs.media.read | 101 | 3.303 | 3.333 | 2.111 | 4.444 | 0.455 | 0.045 | 0.090 | 0.556 | YES | -0.085 | 0.067 |
| Experimental |  |  |  |  | dfs.media.read | 46 | 3.417 | 3.444 | 2.111 | 4.333 | 0.549 | 0.081 | 0.163 | 0.778 | YES | -0.263 | -0.596 |
|  |  |  |  |  | dfs.media.read | 147 | 3.339 | 3.333 | 2.111 | 4.444 | 0.487 | 0.040 | 0.079 | 0.667 | YES | -0.108 | -0.170 |
| Controle |  |  |  |  | fss.media.read | 101 | 3.483 | 3.444 | 2.222 | 5.000 | 0.498 | 0.050 | 0.098 | 0.556 | YES | 0.312 | 0.491 |
| Experimental |  |  |  |  | fss.media.read | 46 | 3.457 | 3.500 | 1.889 | 4.667 | 0.575 | 0.085 | 0.171 | 0.972 | YES | -0.247 | -0.306 |
|  |  |  |  |  | fss.media.read | 147 | 3.475 | 3.444 | 1.889 | 5.000 | 0.521 | 0.043 | 0.085 | 0.667 | YES | 0.073 | 0.271 |
| Controle | F |  |  |  | dfs.media.read | 45 | 3.254 | 3.222 | 2.333 | 4.444 | 0.436 | 0.065 | 0.131 | 0.556 | YES | -0.005 | 0.272 |
| Controle | M |  |  |  | dfs.media.read | 56 | 3.344 | 3.333 | 2.111 | 4.333 | 0.469 | 0.063 | 0.126 | 0.556 | YES | -0.172 | -0.114 |
| Experimental | F |  |  |  | dfs.media.read | 17 | 3.203 | 3.111 | 2.111 | 4.333 | 0.597 | 0.145 | 0.307 | 0.667 | YES | 0.264 | -0.541 |
| Experimental | M |  |  |  | dfs.media.read | 29 | 3.542 | 3.556 | 2.333 | 4.333 | 0.486 | 0.090 | 0.185 | 0.556 | NO | -0.501 | -0.447 |
| Controle | F |  |  |  | fss.media.read | 45 | 3.500 | 3.444 | 2.444 | 4.778 | 0.481 | 0.072 | 0.145 | 0.444 | NO | 0.529 | 0.150 |
| Controle | M |  |  |  | fss.media.read | 56 | 3.469 | 3.500 | 2.222 | 5.000 | 0.515 | 0.069 | 0.138 | 0.583 | YES | 0.172 | 0.540 |
| Experimental | F |  |  |  | fss.media.read | 17 | 3.439 | 3.556 | 2.444 | 4.125 | 0.568 | 0.138 | 0.292 | 1.000 | YES | -0.225 | -1.571 |
| Experimental | M |  |  |  | fss.media.read | 29 | 3.467 | 3.444 | 1.889 | 4.667 | 0.589 | 0.109 | 0.224 | 0.778 | YES | -0.252 | 0.160 |
| Controle |  | Rural |  |  | dfs.media.read | 55 | 3.307 | 3.333 | 2.111 | 4.444 | 0.549 | 0.074 | 0.148 | 0.722 | YES | -0.010 | -0.602 |
| Controle |  | Urbana |  |  | dfs.media.read | 18 | 3.241 | 3.333 | 2.556 | 3.778 | 0.380 | 0.089 | 0.189 | 0.500 | NO | -0.652 | -0.810 |
| Experimental |  | Rural |  |  | dfs.media.read | 29 | 3.531 | 3.556 | 2.333 | 4.333 | 0.550 | 0.102 | 0.209 | 0.778 | YES | -0.368 | -0.689 |
| Experimental |  | Urbana |  |  | dfs.media.read | 8 | 3.042 | 3.167 | 2.111 | 3.556 | 0.493 | 0.174 | 0.412 | 0.472 | NO | -0.699 | -1.063 |
| Controle |  | Rural |  |  | fss.media.read | 55 | 3.528 | 3.444 | 2.556 | 4.778 | 0.446 | 0.060 | 0.121 | 0.500 | NO | 0.529 | 0.255 |
| Controle |  | Urbana |  |  | fss.media.read | 18 | 3.420 | 3.278 | 2.222 | 5.000 | 0.769 | 0.181 | 0.382 | 1.122 | YES | 0.372 | -0.958 |
| Experimental |  | Rural |  |  | fss.media.read | 29 | 3.472 | 3.556 | 1.889 | 4.667 | 0.630 | 0.117 | 0.239 | 0.889 | YES | -0.393 | -0.270 |
| Experimental |  | Urbana |  |  | fss.media.read | 8 | 3.431 | 3.444 | 2.778 | 4.111 | 0.509 | 0.180 | 0.425 | 0.861 | YES | 0.024 | -1.815 |
| Controle |  |  | Parda |  | dfs.media.read | 46 | 3.451 | 3.500 | 2.444 | 4.444 | 0.457 | 0.067 | 0.136 | 0.444 | YES | -0.028 | -0.392 |
| Controle |  |  | Branca |  | dfs.media.read | 11 | 3.202 | 3.333 | 2.111 | 4.222 | 0.618 | 0.186 | 0.415 | 0.500 | YES | -0.228 | -0.922 |
| Experimental |  |  | Parda |  | dfs.media.read | 12 | 3.479 | 3.444 | 2.444 | 4.333 | 0.523 | 0.151 | 0.332 | 0.618 | YES | -0.146 | -0.774 |
| Experimental |  |  | Branca |  | dfs.media.read | 6 | 3.611 | 3.778 | 2.778 | 4.333 | 0.599 | 0.245 | 0.629 | 0.750 | YES | -0.280 | -1.814 |
| Controle |  |  | Parda |  | fss.media.read | 46 | 3.514 | 3.444 | 2.444 | 5.000 | 0.530 | 0.078 | 0.157 | 0.628 | NO | 0.545 | 0.343 |
| Controle |  |  | Branca |  | fss.media.read | 11 | 3.596 | 3.556 | 2.667 | 4.556 | 0.505 | 0.152 | 0.339 | 0.333 | YES | 0.140 | -0.470 |
| Experimental |  |  | Parda |  | fss.media.read | 12 | 3.278 | 3.278 | 1.889 | 4.444 | 0.650 | 0.188 | 0.413 | 0.722 | YES | -0.325 | -0.255 |
| Experimental |  |  | Branca |  | fss.media.read | 6 | 3.556 | 3.556 | 3.000 | 4.222 | 0.410 | 0.167 | 0.430 | 0.306 | YES | 0.279 | -1.252 |
| Controle |  |  |  | 6 ano | dfs.media.read | 32 | 3.156 | 3.222 | 2.111 | 4.444 | 0.561 | 0.099 | 0.202 | 0.750 | YES | 0.203 | -0.450 |
| Controle |  |  |  | 7 ano | dfs.media.read | 33 | 3.420 | 3.444 | 2.750 | 4.000 | 0.302 | 0.053 | 0.107 | 0.444 | YES | -0.315 | -0.571 |
| Controle |  |  |  | 8 ano | dfs.media.read | 17 | 3.268 | 3.222 | 2.556 | 4.333 | 0.445 | 0.108 | 0.229 | 0.556 | NO | 0.613 | -0.214 |
| Controle |  |  |  | 9 ano | dfs.media.read | 19 | 3.381 | 3.333 | 2.444 | 4.222 | 0.444 | 0.102 | 0.214 | 0.500 | YES | 0.152 | -0.548 |
| Experimental |  |  |  | 6 ano | dfs.media.read | 15 | 3.619 | 3.444 | 3.000 | 4.333 | 0.453 | 0.117 | 0.251 | 0.722 | YES | 0.144 | -1.548 |
| Experimental |  |  |  | 7 ano | dfs.media.read | 11 | 3.485 | 3.444 | 2.778 | 4.333 | 0.571 | 0.172 | 0.384 | 0.944 | YES | 0.238 | -1.575 |
| Experimental |  |  |  | 8 ano | dfs.media.read | 11 | 3.121 | 3.333 | 2.111 | 4.000 | 0.656 | 0.198 | 0.441 | 1.111 | YES | -0.222 | -1.662 |
| Experimental |  |  |  | 9 ano | dfs.media.read | 9 | 3.358 | 3.556 | 2.778 | 3.889 | 0.426 | 0.142 | 0.327 | 0.667 | YES | -0.246 | -1.764 |
| Controle |  |  |  | 6 ano | fss.media.read | 32 | 3.521 | 3.556 | 2.222 | 4.556 | 0.465 | 0.082 | 0.168 | 0.361 | YES | -0.132 | 0.785 |
| Controle |  |  |  | 7 ano | fss.media.read | 33 | 3.546 | 3.444 | 2.444 | 5.000 | 0.573 | 0.100 | 0.203 | 0.653 | NO | 0.567 | 0.138 |
| Controle |  |  |  | 8 ano | fss.media.read | 17 | 3.273 | 3.333 | 2.500 | 4.000 | 0.477 | 0.116 | 0.245 | 0.556 | YES | 0.026 | -1.123 |
| Controle |  |  |  | 9 ano | fss.media.read | 19 | 3.497 | 3.444 | 2.778 | 4.222 | 0.410 | 0.094 | 0.197 | 0.444 | YES | 0.234 | -0.930 |
| Experimental |  |  |  | 6 ano | fss.media.read | 15 | 3.674 | 3.667 | 3.000 | 4.667 | 0.469 | 0.121 | 0.259 | 0.722 | YES | 0.255 | -0.900 |
| Experimental |  |  |  | 7 ano | fss.media.read | 11 | 3.395 | 3.556 | 1.889 | 4.444 | 0.808 | 0.244 | 0.543 | 1.174 | YES | -0.427 | -1.227 |
| Experimental |  |  |  | 8 ano | fss.media.read | 11 | 3.222 | 3.000 | 2.778 | 4.222 | 0.463 | 0.140 | 0.311 | 0.556 | NO | 0.857 | -0.606 |
| Experimental |  |  |  | 9 ano | fss.media.read | 9 | 3.457 | 3.556 | 2.667 | 4.000 | 0.473 | 0.158 | 0.363 | 0.778 | YES | -0.336 | -1.525 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
df <- df[!duplicated(df$Effect),]
```

|  | Effect | DFn | DFd | F | p | p\<.05 | ges | DFn’ | DFd’ | F’ | p’ | p\<.05’ | ges’ |
|:---|:---|---:|---:|---:|---:|:---|---:|---:|---:|---:|---:|:---|---:|
| 1 | dfs.media.read | 1 | 144 | 16.860 | 0.000 | \* | 0.105 | 1 | 144 | 16.860 | 0.000 | \* | 0.105 |
| 2 | grupo | 1 | 144 | 0.542 | 0.463 |  | 0.004 | 1 | 144 | 0.542 | 0.463 |  | 0.004 |
| 5 | grupo:Sexo | 1 | 142 | 0.029 | 0.864 |  | 0.000 | 1 | 142 | 0.029 | 0.864 |  | 0.000 |
| 6 | Sexo | 1 | 142 | 0.726 | 0.396 |  | 0.005 | 1 | 142 | 0.726 | 0.396 |  | 0.005 |
| 9 | grupo:Zona | 1 | 105 | 0.694 | 0.407 |  | 0.007 | 1 | 105 | 0.694 | 0.407 |  | 0.007 |
| 10 | Zona | 1 | 105 | 0.023 | 0.879 |  | 0.000 | 1 | 105 | 0.023 | 0.879 |  | 0.000 |
| 11 | Cor.Raca | 1 | 70 | 1.724 | 0.193 |  | 0.024 | 1 | 70 | 1.724 | 0.193 |  | 0.024 |
| 14 | grupo:Cor.Raca | 1 | 70 | 0.040 | 0.843 |  | 0.001 | 1 | 70 | 0.040 | 0.843 |  | 0.001 |
| 17 | grupo:Serie | 3 | 138 | 0.224 | 0.880 |  | 0.005 | 3 | 138 | 0.224 | 0.880 |  | 0.005 |
| 18 | Serie | 3 | 138 | 1.871 | 0.137 |  | 0.039 | 3 | 138 | 1.871 | 0.137 |  | 0.039 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo | Sexo | Zona | Cor.Raca | Serie | group1 | group2 | df | statistic | p | p.adj | p.adj.signif | df’ | statistic’ | p’ | p.adj’ | p.adj.signif’ |
|:---|:---|:---|:---|:---|:---|:---|---:|---:|---:|---:|:---|---:|---:|---:|---:|:---|
| Controle |  |  |  |  | pre | pos | 290 | -2.525 | 0.012 | 0.012 | \* | 290 | -2.525 | 0.012 | 0.012 | \* |
| Experimental |  |  |  |  | pre | pos | 290 | -0.382 | 0.703 | 0.703 | ns | 290 | -0.382 | 0.703 | 0.703 | ns |
|  |  |  |  |  | Controle | Experimental | 144 | 0.737 | 0.463 | 0.463 | ns | 144 | 0.737 | 0.463 | 0.463 | ns |
| Controle | F |  |  |  | pre | pos | 286 | -2.319 | 0.021 | 0.021 | \* | 286 | -2.319 | 0.021 | 0.021 | \* |
| Controle | M |  |  |  | pre | pos | 286 | -1.322 | 0.187 | 0.187 | ns | 286 | -1.322 | 0.187 | 0.187 | ns |
| Controle |  |  |  |  | F | M | 142 | 0.629 | 0.530 | 0.530 | ns | 142 | 0.629 | 0.530 | 0.530 | ns |
| Experimental | F |  |  |  | pre | pos | 286 | -1.368 | 0.172 | 0.172 | ns | 286 | -1.368 | 0.172 | 0.172 | ns |
| Experimental | M |  |  |  | pre | pos | 286 | 0.565 | 0.572 | 0.572 | ns | 286 | 0.565 | 0.572 | 0.572 | ns |
| Experimental |  |  |  |  | F | M | 142 | 0.609 | 0.544 | 0.544 | ns | 142 | 0.609 | 0.544 | 0.544 | ns |
|  | F |  |  |  | Controle | Experimental | 142 | 0.299 | 0.766 | 0.766 | ns | 142 | 0.299 | 0.766 | 0.766 | ns |
|  | M |  |  |  | Controle | Experimental | 142 | 0.640 | 0.523 | 0.523 | ns | 142 | 0.640 | 0.523 | 0.523 | ns |
| Controle |  |  |  |  | Rural | Urbana | 105 | 0.584 | 0.561 | 0.561 | ns | 105 | 0.584 | 0.561 | 0.561 | ns |
| Controle |  | Rural |  |  | pre | pos | 212 | -2.138 | 0.034 | 0.034 | \* | 212 | -2.138 | 0.034 | 0.034 | \* |
| Controle |  | Urbana |  |  | pre | pos | 212 | -0.989 | 0.324 | 0.324 | ns | 212 | -0.989 | 0.324 | 0.324 | ns |
| Experimental |  |  |  |  | Rural | Urbana | 105 | -0.608 | 0.545 | 0.545 | ns | 105 | -0.608 | 0.545 | 0.545 | ns |
| Experimental |  | Rural |  |  | pre | pos | 212 | 0.413 | 0.680 | 0.680 | ns | 212 | 0.413 | 0.680 | 0.680 | ns |
| Experimental |  | Urbana |  |  | pre | pos | 212 | -1.432 | 0.154 | 0.154 | ns | 212 | -1.432 | 0.154 | 0.154 | ns |
|  |  | Rural |  |  | Controle | Experimental | 105 | 1.092 | 0.277 | 0.277 | ns | 105 | 1.092 | 0.277 | 0.277 | ns |
|  |  | Urbana |  |  | Controle | Experimental | 105 | -0.359 | 0.721 | 0.721 | ns | 105 | -0.359 | 0.721 | 0.721 | ns |
| Controle |  |  | Branca |  | pre | pos | 142 | -1.770 | 0.079 | 0.079 | ns | 142 | -1.770 | 0.079 | 0.079 | ns |
| Controle |  |  |  |  | Parda | Branca | 70 | -0.967 | 0.337 | 0.337 | ns | 70 | -0.967 | 0.337 | 0.337 | ns |
| Controle |  |  | Parda |  | pre | pos | 142 | -0.583 | 0.561 | 0.561 | ns | 142 | -0.583 | 0.561 | 0.561 | ns |
| Experimental |  |  | Branca |  | pre | pos | 142 | 0.184 | 0.854 | 0.854 | ns | 142 | 0.184 | 0.854 | 0.854 | ns |
| Experimental |  |  |  |  | Parda | Branca | 70 | -0.900 | 0.371 | 0.371 | ns | 70 | -0.900 | 0.371 | 0.371 | ns |
| Experimental |  |  | Parda |  | pre | pos | 142 | 0.945 | 0.346 | 0.346 | ns | 142 | 0.945 | 0.346 | 0.346 | ns |
|  |  |  | Branca |  | Controle | Experimental | 70 | 0.696 | 0.489 | 0.489 | ns | 70 | 0.696 | 0.489 | 0.489 | ns |
|  |  |  | Parda |  | Controle | Experimental | 70 | 1.482 | 0.143 | 0.143 | ns | 70 | 1.482 | 0.143 | 0.143 | ns |
| Controle |  |  |  | 6 ano | pre | pos | 278 | -2.934 | 0.004 | 0.004 | \*\* | 278 | -2.934 | 0.004 | 0.004 | \*\* |
| Controle |  |  |  | 7 ano | pre | pos | 278 | -1.029 | 0.305 | 0.305 | ns | 278 | -1.029 | 0.305 | 0.305 | ns |
| Controle |  |  |  | 8 ano | pre | pos | 278 | -0.029 | 0.977 | 0.977 | ns | 278 | -0.029 | 0.977 | 0.977 | ns |
| Controle |  |  |  | 9 ano | pre | pos | 278 | -0.721 | 0.472 | 0.472 | ns | 278 | -0.721 | 0.472 | 0.472 | ns |
| Controle |  |  |  |  | 6 ano | 7 ano | 138 | 0.496 | 0.621 | 1.000 | ns | 138 | 0.496 | 0.621 | 1.000 | ns |
| Controle |  |  |  |  | 6 ano | 8 ano | 138 | 1.909 | 0.058 | 0.350 | ns | 138 | 1.909 | 0.058 | 0.350 | ns |
| Controle |  |  |  |  | 6 ano | 9 ano | 138 | 0.676 | 0.500 | 1.000 | ns | 138 | 0.676 | 0.500 | 1.000 | ns |
| Controle |  |  |  |  | 7 ano | 8 ano | 138 | 1.498 | 0.137 | 0.819 | ns | 138 | 1.498 | 0.137 | 0.819 | ns |
| Controle |  |  |  |  | 7 ano | 9 ano | 138 | 0.251 | 0.802 | 1.000 | ns | 138 | 0.251 | 0.802 | 1.000 | ns |
| Controle |  |  |  |  | 8 ano | 9 ano | 138 | -1.126 | 0.262 | 1.000 | ns | 138 | -1.126 | 0.262 | 1.000 | ns |
| Experimental |  |  |  | 6 ano | pre | pos | 278 | -0.306 | 0.760 | 0.760 | ns | 278 | -0.306 | 0.760 | 0.760 | ns |
| Experimental |  |  |  | 7 ano | pre | pos | 278 | 0.423 | 0.673 | 0.673 | ns | 278 | 0.423 | 0.673 | 0.673 | ns |
| Experimental |  |  |  | 8 ano | pre | pos | 278 | -0.477 | 0.634 | 0.634 | ns | 278 | -0.477 | 0.634 | 0.634 | ns |
| Experimental |  |  |  | 9 ano | pre | pos | 278 | -0.422 | 0.674 | 0.674 | ns | 278 | -0.422 | 0.674 | 0.674 | ns |
| Experimental |  |  |  |  | 6 ano | 7 ano | 138 | 1.190 | 0.236 | 1.000 | ns | 138 | 1.190 | 0.236 | 1.000 | ns |
| Experimental |  |  |  |  | 6 ano | 8 ano | 138 | 1.424 | 0.157 | 0.940 | ns | 138 | 1.424 | 0.157 | 0.940 | ns |
| Experimental |  |  |  |  | 6 ano | 9 ano | 138 | 0.623 | 0.534 | 1.000 | ns | 138 | 0.623 | 0.534 | 1.000 | ns |
| Experimental |  |  |  |  | 7 ano | 8 ano | 138 | 0.247 | 0.806 | 1.000 | ns | 138 | 0.247 | 0.806 | 1.000 | ns |
| Experimental |  |  |  |  | 7 ano | 9 ano | 138 | -0.464 | 0.644 | 1.000 | ns | 138 | -0.464 | 0.644 | 1.000 | ns |
| Experimental |  |  |  |  | 8 ano | 9 ano | 138 | -0.698 | 0.486 | 1.000 | ns | 138 | -0.698 | 0.486 | 1.000 | ns |
|  |  |  |  | 6 ano | Controle | Experimental | 138 | -0.003 | 0.998 | 0.998 | ns | 138 | -0.003 | 0.998 | 0.998 | ns |
|  |  |  |  | 7 ano | Controle | Experimental | 138 | 0.996 | 0.321 | 0.321 | ns | 138 | 0.996 | 0.321 | 0.321 | ns |
|  |  |  |  | 8 ano | Controle | Experimental | 138 | 0.011 | 0.991 | 0.991 | ns | 138 | 0.011 | 0.991 | 0.991 | ns |
|  |  |  |  | 9 ano | Controle | Experimental | 138 | 0.163 | 0.871 | 0.871 | ns | 138 | 0.163 | 0.871 | 0.871 | ns |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores)[names(lfatores) %in% colnames(df)],
            names(df)[!names(df) %in% names(lfatores)])]
```

| grupo | Sexo | Zona | Cor.Raca | Serie | N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) | conf.low | conf.high | N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | conf.low’ | conf.high’ | N-N’ |
|:---|:---|:---|:---|:---|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| Controle |  |  |  |  | 101 | 3.303 | 0.045 | 3.483 | 0.050 | 3.495 | 0.050 | 3.397 | 3.593 | 101 | 3.303 | 0.045 | 3.483 | 0.050 | 3.495 | 0.050 | 3.397 | 3.593 | 0 |
| Experimental |  |  |  |  | 46 | 3.417 | 0.081 | 3.457 | 0.085 | 3.430 | 0.074 | 3.284 | 3.575 | 46 | 3.417 | 0.081 | 3.457 | 0.085 | 3.430 | 0.074 | 3.284 | 3.575 | 0 |
| Controle | F |  |  |  | 45 | 3.254 | 0.065 | 3.500 | 0.072 | 3.531 | 0.075 | 3.383 | 3.678 | 45 | 3.254 | 0.065 | 3.500 | 0.072 | 3.531 | 0.075 | 3.383 | 3.678 | 0 |
| Controle | M |  |  |  | 56 | 3.344 | 0.063 | 3.469 | 0.069 | 3.468 | 0.067 | 3.336 | 3.599 | 56 | 3.344 | 0.063 | 3.469 | 0.069 | 3.468 | 0.067 | 3.336 | 3.599 | 0 |
| Experimental | F |  |  |  | 17 | 3.203 | 0.145 | 3.439 | 0.138 | 3.488 | 0.122 | 3.248 | 3.728 | 17 | 3.203 | 0.145 | 3.439 | 0.138 | 3.488 | 0.122 | 3.248 | 3.728 | 0 |
| Experimental | M |  |  |  | 29 | 3.542 | 0.090 | 3.467 | 0.109 | 3.394 | 0.094 | 3.207 | 3.580 | 29 | 3.542 | 0.090 | 3.467 | 0.109 | 3.394 | 0.094 | 3.207 | 3.580 | 0 |
| Controle |  | Rural |  |  | 55 | 3.307 | 0.074 | 3.528 | 0.060 | 3.538 | 0.072 | 3.395 | 3.681 | 55 | 3.307 | 0.074 | 3.528 | 0.060 | 3.538 | 0.072 | 3.395 | 3.681 | 0 |
| Controle |  | Urbana |  |  | 18 | 3.241 | 0.089 | 3.420 | 0.181 | 3.454 | 0.126 | 3.203 | 3.704 | 18 | 3.241 | 0.089 | 3.420 | 0.181 | 3.454 | 0.126 | 3.203 | 3.704 | 0 |
| Experimental |  | Rural |  |  | 29 | 3.531 | 0.102 | 3.472 | 0.117 | 3.402 | 0.101 | 3.202 | 3.603 | 29 | 3.531 | 0.102 | 3.472 | 0.117 | 3.402 | 0.101 | 3.202 | 3.603 | 0 |
| Experimental |  | Urbana |  |  | 8 | 3.042 | 0.174 | 3.431 | 0.180 | 3.535 | 0.191 | 3.156 | 3.915 | 8 | 3.042 | 0.174 | 3.431 | 0.180 | 3.535 | 0.191 | 3.156 | 3.915 | 0 |
| Controle |  |  | Branca |  | 11 | 3.202 | 0.186 | 3.596 | 0.152 | 3.677 | 0.157 | 3.363 | 3.991 | 11 | 3.202 | 0.186 | 3.596 | 0.152 | 3.677 | 0.157 | 3.363 | 3.991 | 0 |
| Controle |  |  | Parda |  | 46 | 3.451 | 0.067 | 3.514 | 0.078 | 3.508 | 0.076 | 3.357 | 3.659 | 46 | 3.451 | 0.067 | 3.514 | 0.078 | 3.508 | 0.076 | 3.357 | 3.659 | 0 |
| Experimental |  |  | Branca |  | 6 | 3.611 | 0.245 | 3.556 | 0.167 | 3.492 | 0.211 | 3.072 | 3.913 | 6 | 3.611 | 0.245 | 3.556 | 0.167 | 3.492 | 0.211 | 3.072 | 3.913 | 0 |
| Experimental |  |  | Parda |  | 12 | 3.479 | 0.151 | 3.278 | 0.188 | 3.261 | 0.148 | 2.965 | 3.557 | 12 | 3.479 | 0.151 | 3.278 | 0.188 | 3.261 | 0.148 | 2.965 | 3.557 | 0 |
| Controle |  |  |  | 6 ano | 32 | 3.156 | 0.099 | 3.521 | 0.082 | 3.581 | 0.089 | 3.405 | 3.758 | 32 | 3.156 | 0.099 | 3.521 | 0.082 | 3.581 | 0.089 | 3.405 | 3.758 | 0 |
| Controle |  |  |  | 7 ano | 33 | 3.420 | 0.053 | 3.546 | 0.100 | 3.519 | 0.087 | 3.348 | 3.690 | 33 | 3.420 | 0.053 | 3.546 | 0.100 | 3.519 | 0.087 | 3.348 | 3.690 | 0 |
| Controle |  |  |  | 8 ano | 17 | 3.268 | 0.108 | 3.273 | 0.116 | 3.296 | 0.120 | 3.058 | 3.535 | 17 | 3.268 | 0.108 | 3.273 | 0.116 | 3.296 | 0.120 | 3.058 | 3.535 | 0 |
| Controle |  |  |  | 9 ano | 19 | 3.381 | 0.102 | 3.497 | 0.094 | 3.483 | 0.114 | 3.258 | 3.708 | 19 | 3.381 | 0.102 | 3.497 | 0.094 | 3.483 | 0.114 | 3.258 | 3.708 | 0 |
| Experimental |  |  |  | 6 ano | 15 | 3.619 | 0.117 | 3.674 | 0.121 | 3.582 | 0.130 | 3.324 | 3.840 | 15 | 3.619 | 0.117 | 3.674 | 0.121 | 3.582 | 0.130 | 3.324 | 3.840 | 0 |
| Experimental |  |  |  | 7 ano | 11 | 3.485 | 0.172 | 3.395 | 0.244 | 3.347 | 0.150 | 3.050 | 3.644 | 11 | 3.485 | 0.172 | 3.395 | 0.244 | 3.347 | 0.150 | 3.050 | 3.644 | 0 |
| Experimental |  |  |  | 8 ano | 11 | 3.121 | 0.198 | 3.222 | 0.140 | 3.294 | 0.151 | 2.996 | 3.592 | 11 | 3.121 | 0.198 | 3.222 | 0.140 | 3.294 | 0.151 | 2.996 | 3.592 | 0 |
| Experimental |  |  |  | 9 ano | 9 | 3.358 | 0.142 | 3.457 | 0.158 | 3.450 | 0.165 | 3.123 | 3.777 | 9 | 3.358 | 0.142 | 3.457 | 0.158 | 3.450 | 0.165 | 3.123 | 3.777 | 0 |
