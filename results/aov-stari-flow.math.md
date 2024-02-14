ANCOVA in flow (prob. matemática) (flow (prob. matemática))
================
Geiser C. Challco <geiser@alumni.usp.br>

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
  flow (prob. matemática) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prob. matemática) (measured using pre- and post-tests).

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
(df <- df[,c(fatores1[fatores1 %in% colnames(df)],"variable",
             colnames(df)[!colnames(df) %in% c(fatores1,"variable")])])
```

    ##           grupo Sexo   Zona Cor.Raca Serie       variable   n  mean median   min   max    sd    se    ci
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.math  99 3.290  3.222 2.333 4.444 0.487 0.049 0.097
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.math  46 3.271  3.278 1.889 4.556 0.604 0.089 0.179
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.math 145 3.284  3.222 1.889 4.556 0.525 0.044 0.086
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.math  99 3.426  3.444 2.444 5.000 0.546 0.055 0.109
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.math  46 3.284  3.333 2.000 4.556 0.674 0.099 0.200
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.math 145 3.381  3.333 2.000 5.000 0.591 0.049 0.097
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.math  45 3.310  3.333 2.444 4.444 0.464 0.069 0.139
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.math  54 3.273  3.222 2.333 4.444 0.509 0.069 0.139
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.math  17 3.046  3.000 1.889 4.556 0.688 0.167 0.354
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.math  29 3.402  3.444 2.222 4.333 0.517 0.096 0.197
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.math  45 3.389  3.333 2.444 4.556 0.507 0.076 0.152
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.math  54 3.456  3.444 2.444 5.000 0.580 0.079 0.158
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.math  17 3.218  3.333 2.000 4.556 0.777 0.188 0.399
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.math  29 3.323  3.333 2.222 4.556 0.617 0.115 0.235
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.math  54 3.274  3.111 2.333 4.444 0.553 0.075 0.151
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.math  17 3.222  3.222 2.333 4.000 0.480 0.116 0.247
    ## 17     Controle <NA>   <NA>     <NA>  <NA> dfs.media.math  28 3.361  3.333 2.667 4.222 0.340 0.064 0.132
    ## 18 Experimental <NA>  Rural     <NA>  <NA> dfs.media.math  29 3.360  3.333 2.222 4.556 0.524 0.097 0.199
    ## 19 Experimental <NA> Urbana     <NA>  <NA> dfs.media.math   8 2.819  2.667 1.889 4.111 0.732 0.259 0.612
    ## 20 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.math   9 3.383  3.667 2.444 4.111 0.614 0.205 0.472
    ## 21     Controle <NA>  Rural     <NA>  <NA> fss.media.math  54 3.406  3.444 2.444 4.667 0.528 0.072 0.144
    ## 22     Controle <NA> Urbana     <NA>  <NA> fss.media.math  17 3.611  3.444 2.667 5.000 0.749 0.182 0.385
    ## 23     Controle <NA>   <NA>     <NA>  <NA> fss.media.math  28 3.352  3.333 2.778 4.000 0.420 0.079 0.163
    ## 24 Experimental <NA>  Rural     <NA>  <NA> fss.media.math  29 3.280  3.333 2.000 4.556 0.653 0.121 0.248
    ## 25 Experimental <NA> Urbana     <NA>  <NA> fss.media.math   8 3.184  2.889 2.444 4.333 0.735 0.260 0.615
    ## 26 Experimental <NA>   <NA>     <NA>  <NA> fss.media.math   9 3.387  3.333 2.111 4.556 0.752 0.251 0.578
    ## 27     Controle <NA>   <NA>   Branca  <NA> dfs.media.math   9 3.395  3.333 2.889 4.444 0.553 0.184 0.425
    ## 28     Controle <NA>   <NA>    Parda  <NA> dfs.media.math  46 3.346  3.333 2.333 4.444 0.552 0.081 0.164
    ## 29     Controle <NA>   <NA>    Preta  <NA> dfs.media.math   1 2.889  2.889 2.889 2.889    NA    NA   NaN
    ## 30     Controle <NA>   <NA>     <NA>  <NA> dfs.media.math  43 3.217  3.222 2.333 4.111 0.392 0.060 0.121
    ## 31 Experimental <NA>   <NA>  Amarela  <NA> dfs.media.math   1 3.778  3.778 3.778 3.778    NA    NA   NaN
    ## 32 Experimental <NA>   <NA>   Branca  <NA> dfs.media.math   6 3.093  3.333 2.222 3.667 0.568 0.232 0.596
    ## 33 Experimental <NA>   <NA> Indígena  <NA> dfs.media.math   5 3.422  3.556 2.667 4.111 0.552 0.247 0.686
    ## 34 Experimental <NA>   <NA>    Parda  <NA> dfs.media.math  12 3.315  3.333 2.444 4.222 0.540 0.156 0.343
    ## 35 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.math  22 3.237  3.111 1.889 4.556 0.683 0.146 0.303
    ## 36     Controle <NA>   <NA>   Branca  <NA> fss.media.math   9 3.481  3.556 2.444 4.667 0.603 0.201 0.464
    ## 37     Controle <NA>   <NA>    Parda  <NA> fss.media.math  46 3.478  3.444 2.444 5.000 0.552 0.081 0.164
    ## 38     Controle <NA>   <NA>    Preta  <NA> fss.media.math   1 3.333  3.333 3.333 3.333    NA    NA   NaN
    ## 39     Controle <NA>   <NA>     <NA>  <NA> fss.media.math  43 3.361  3.222 2.667 5.000 0.540 0.082 0.166
    ## 40 Experimental <NA>   <NA>  Amarela  <NA> fss.media.math   1 3.375  3.375 3.375 3.375    NA    NA   NaN
    ## 41 Experimental <NA>   <NA>   Branca  <NA> fss.media.math   6 3.319  3.333 2.667 4.250 0.577 0.236 0.606
    ## 42 Experimental <NA>   <NA> Indígena  <NA> fss.media.math   5 3.778  4.111 2.556 4.556 0.793 0.355 0.985
    ## 43 Experimental <NA>   <NA>    Parda  <NA> fss.media.math  12 3.259  3.278 2.111 4.333 0.589 0.170 0.374
    ## 44 Experimental <NA>   <NA>     <NA>  <NA> fss.media.math  22 3.172  3.111 2.000 4.556 0.721 0.154 0.320
    ## 45     Controle <NA>   <NA>     <NA> 6 ano dfs.media.math  32 3.232  3.167 2.333 4.444 0.510 0.090 0.184
    ## 46     Controle <NA>   <NA>     <NA> 7 ano dfs.media.math  31 3.336  3.333 2.444 4.222 0.482 0.087 0.177
    ## 47     Controle <NA>   <NA>     <NA> 8 ano dfs.media.math  17 3.248  3.222 2.333 4.444 0.510 0.124 0.262
    ## 48     Controle <NA>   <NA>     <NA> 9 ano dfs.media.math  19 3.351  3.333 2.444 4.444 0.459 0.105 0.221
    ## 49 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.math  15 3.526  3.556 2.556 4.556 0.581 0.150 0.322
    ## 50 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.math  11 3.303  3.333 2.556 4.222 0.533 0.161 0.358
    ## 51 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.math  11 3.000  3.111 1.889 4.111 0.648 0.195 0.435
    ## 52 Experimental <NA>   <NA>     <NA> 9 ano dfs.media.math   9 3.136  3.222 2.222 3.778 0.582 0.194 0.447
    ## 53     Controle <NA>   <NA>     <NA> 6 ano fss.media.math  32 3.452  3.444 2.444 5.000 0.585 0.103 0.211
    ## 54     Controle <NA>   <NA>     <NA> 7 ano fss.media.math  31 3.480  3.444 2.444 5.000 0.582 0.104 0.213
    ## 55     Controle <NA>   <NA>     <NA> 8 ano fss.media.math  17 3.291  3.111 2.444 4.556 0.551 0.134 0.283
    ##      iqr symmetry     skewness     kurtosis
    ## 1  0.556      YES  0.308807263 -0.323300586
    ## 2  0.889      YES -0.118110316 -0.567468125
    ## 3  0.778      YES  0.100499377 -0.276221655
    ## 4  0.764       NO  0.577171503  0.193346496
    ## 5  0.861      YES  0.183049944 -0.872014264
    ## 6  0.750      YES  0.329939344 -0.145501991
    ## 7  0.667      YES  0.293103626 -0.617473505
    ## 8  0.556      YES  0.327523677 -0.260290998
    ## 9  0.667      YES  0.454969194 -0.462974303
    ## 10 0.667      YES -0.359851930 -0.523472141
    ## 11 0.667      YES  0.400534376 -0.471648489
    ## 12 0.771       NO  0.624603536  0.272815395
    ## 13 1.000      YES  0.156500829 -1.234403055
    ## 14 0.889      YES  0.294725496 -0.877865946
    ## 15 0.719      YES  0.403551243 -0.685391899
    ## 16 0.667      YES -0.030736609 -1.067198881
    ## 17 0.444       NO  0.667166660  0.373955764
    ## 18 0.556      YES  0.261737471 -0.188718447
    ## 19 0.694      YES  0.433851237 -1.220250074
    ## 20 1.111      YES -0.461395217 -1.699328535
    ## 21 0.556      YES  0.139386178 -0.317309476
    ## 22 1.222       NO  0.644590261 -1.076251812
    ## 23 0.750      YES  0.220327134 -1.412671247
    ## 24 0.778      YES  0.093427460 -0.754085941
    ## 25 0.840       NO  0.609683849 -1.483725566
    ## 26 1.111      YES -0.059152773 -1.213231187
    ## 27 0.444       NO  0.748703987 -1.034148045
    ## 28 0.750      YES  0.106485684 -0.877360012
    ## 29 0.000 few data  0.000000000  0.000000000
    ## 30 0.444      YES -0.019734461 -0.194454135
    ## 31 0.000 few data  0.000000000  0.000000000
    ## 32 0.667       NO -0.502492376 -1.741980743
    ## 33 0.556      YES -0.139593123 -1.786167287
    ## 34 0.750      YES  0.097280997 -1.312239979
    ## 35 1.056      YES  0.004058401 -0.728270175
    ## 36 0.444      YES  0.254270453 -0.346526647
    ## 37 0.750      YES  0.321359379 -0.031438686
    ## 38 0.000 few data  0.000000000  0.000000000
    ## 39 0.778       NO  0.898576743  0.451039112
    ## 40 0.000 few data  0.000000000  0.000000000
    ## 41 0.639      YES  0.331724054 -1.467873427
    ## 42 0.778       NO -0.507395607 -1.657439446
    ## 43 0.722      YES -0.157598179 -0.653145783
    ## 44 0.722      YES  0.404259088 -0.949456174
    ## 45 0.583       NO  0.541933782 -0.503240002
    ## 46 0.646      YES -0.049777005 -0.882746345
    ## 47 0.444      YES  0.430642219 -0.031441621
    ## 48 0.444      YES  0.392247101  0.252027079
    ## 49 0.778      YES  0.090704388 -1.193225831
    ## 50 0.833      YES  0.058902402 -1.340093693
    ## 51 0.722      YES -0.137565710 -1.006605851
    ## 52 1.000      YES -0.315671280 -1.709205624
    ## 53 0.604       NO  0.620664086 -0.007106825
    ## 54 0.778      YES  0.462707075  0.059664772
    ## 55 0.667       NO  0.597442820 -0.517002242
    ##  [ reached 'max' / getOption("max.print") -- omitted 5 rows ]

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.math |  99 | 3.290 |  3.222 | 2.333 | 4.444 | 0.487 | 0.049 | 0.097 | 0.556 | YES      |    0.309 |   -0.323 |
| Experimental |      |        |          |       | dfs.media.math |  46 | 3.271 |  3.278 | 1.889 | 4.556 | 0.604 | 0.089 | 0.179 | 0.889 | YES      |   -0.118 |   -0.567 |
|              |      |        |          |       | dfs.media.math | 145 | 3.284 |  3.222 | 1.889 | 4.556 | 0.525 | 0.044 | 0.086 | 0.778 | YES      |    0.100 |   -0.276 |
| Controle     |      |        |          |       | fss.media.math |  99 | 3.426 |  3.444 | 2.444 | 5.000 | 0.546 | 0.055 | 0.109 | 0.764 | NO       |    0.577 |    0.193 |
| Experimental |      |        |          |       | fss.media.math |  46 | 3.284 |  3.333 | 2.000 | 4.556 | 0.674 | 0.099 | 0.200 | 0.861 | YES      |    0.183 |   -0.872 |
|              |      |        |          |       | fss.media.math | 145 | 3.381 |  3.333 | 2.000 | 5.000 | 0.591 | 0.049 | 0.097 | 0.750 | YES      |    0.330 |   -0.146 |
| Controle     | F    |        |          |       | dfs.media.math |  45 | 3.310 |  3.333 | 2.444 | 4.444 | 0.464 | 0.069 | 0.139 | 0.667 | YES      |    0.293 |   -0.617 |
| Controle     | M    |        |          |       | dfs.media.math |  54 | 3.273 |  3.222 | 2.333 | 4.444 | 0.509 | 0.069 | 0.139 | 0.556 | YES      |    0.328 |   -0.260 |
| Experimental | F    |        |          |       | dfs.media.math |  17 | 3.046 |  3.000 | 1.889 | 4.556 | 0.688 | 0.167 | 0.354 | 0.667 | YES      |    0.455 |   -0.463 |
| Experimental | M    |        |          |       | dfs.media.math |  29 | 3.402 |  3.444 | 2.222 | 4.333 | 0.517 | 0.096 | 0.197 | 0.667 | YES      |   -0.360 |   -0.523 |
| Controle     | F    |        |          |       | fss.media.math |  45 | 3.389 |  3.333 | 2.444 | 4.556 | 0.507 | 0.076 | 0.152 | 0.667 | YES      |    0.401 |   -0.472 |
| Controle     | M    |        |          |       | fss.media.math |  54 | 3.456 |  3.444 | 2.444 | 5.000 | 0.580 | 0.079 | 0.158 | 0.771 | NO       |    0.625 |    0.273 |
| Experimental | F    |        |          |       | fss.media.math |  17 | 3.218 |  3.333 | 2.000 | 4.556 | 0.777 | 0.188 | 0.399 | 1.000 | YES      |    0.157 |   -1.234 |
| Experimental | M    |        |          |       | fss.media.math |  29 | 3.323 |  3.333 | 2.222 | 4.556 | 0.617 | 0.115 | 0.235 | 0.889 | YES      |    0.295 |   -0.878 |
| Controle     |      | Rural  |          |       | dfs.media.math |  54 | 3.274 |  3.111 | 2.333 | 4.444 | 0.553 | 0.075 | 0.151 | 0.719 | YES      |    0.404 |   -0.685 |
| Controle     |      | Urbana |          |       | dfs.media.math |  17 | 3.222 |  3.222 | 2.333 | 4.000 | 0.480 | 0.116 | 0.247 | 0.667 | YES      |   -0.031 |   -1.067 |
| Controle     |      |        |          |       | dfs.media.math |  28 | 3.361 |  3.333 | 2.667 | 4.222 | 0.340 | 0.064 | 0.132 | 0.444 | NO       |    0.667 |    0.374 |
| Experimental |      | Rural  |          |       | dfs.media.math |  29 | 3.360 |  3.333 | 2.222 | 4.556 | 0.524 | 0.097 | 0.199 | 0.556 | YES      |    0.262 |   -0.189 |
| Experimental |      | Urbana |          |       | dfs.media.math |   8 | 2.819 |  2.667 | 1.889 | 4.111 | 0.732 | 0.259 | 0.612 | 0.694 | YES      |    0.434 |   -1.220 |
| Experimental |      |        |          |       | dfs.media.math |   9 | 3.383 |  3.667 | 2.444 | 4.111 | 0.614 | 0.205 | 0.472 | 1.111 | YES      |   -0.461 |   -1.699 |
| Controle     |      | Rural  |          |       | fss.media.math |  54 | 3.406 |  3.444 | 2.444 | 4.667 | 0.528 | 0.072 | 0.144 | 0.556 | YES      |    0.139 |   -0.317 |
| Controle     |      | Urbana |          |       | fss.media.math |  17 | 3.611 |  3.444 | 2.667 | 5.000 | 0.749 | 0.182 | 0.385 | 1.222 | NO       |    0.645 |   -1.076 |
| Controle     |      |        |          |       | fss.media.math |  28 | 3.352 |  3.333 | 2.778 | 4.000 | 0.420 | 0.079 | 0.163 | 0.750 | YES      |    0.220 |   -1.413 |
| Experimental |      | Rural  |          |       | fss.media.math |  29 | 3.280 |  3.333 | 2.000 | 4.556 | 0.653 | 0.121 | 0.248 | 0.778 | YES      |    0.093 |   -0.754 |
| Experimental |      | Urbana |          |       | fss.media.math |   8 | 3.184 |  2.889 | 2.444 | 4.333 | 0.735 | 0.260 | 0.615 | 0.840 | NO       |    0.610 |   -1.484 |
| Experimental |      |        |          |       | fss.media.math |   9 | 3.387 |  3.333 | 2.111 | 4.556 | 0.752 | 0.251 | 0.578 | 1.111 | YES      |   -0.059 |   -1.213 |
| Controle     |      |        | Branca   |       | dfs.media.math |   9 | 3.395 |  3.333 | 2.889 | 4.444 | 0.553 | 0.184 | 0.425 | 0.444 | NO       |    0.749 |   -1.034 |
| Controle     |      |        | Parda    |       | dfs.media.math |  46 | 3.346 |  3.333 | 2.333 | 4.444 | 0.552 | 0.081 | 0.164 | 0.750 | YES      |    0.106 |   -0.877 |
| Controle     |      |        | Preta    |       | dfs.media.math |   1 | 2.889 |  2.889 | 2.889 | 2.889 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | dfs.media.math |  43 | 3.217 |  3.222 | 2.333 | 4.111 | 0.392 | 0.060 | 0.121 | 0.444 | YES      |   -0.020 |   -0.194 |
| Experimental |      |        | Amarela  |       | dfs.media.math |   1 | 3.778 |  3.778 | 3.778 | 3.778 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       | dfs.media.math |   6 | 3.093 |  3.333 | 2.222 | 3.667 | 0.568 | 0.232 | 0.596 | 0.667 | NO       |   -0.502 |   -1.742 |
| Experimental |      |        | Indígena |       | dfs.media.math |   5 | 3.422 |  3.556 | 2.667 | 4.111 | 0.552 | 0.247 | 0.686 | 0.556 | YES      |   -0.140 |   -1.786 |
| Experimental |      |        | Parda    |       | dfs.media.math |  12 | 3.315 |  3.333 | 2.444 | 4.222 | 0.540 | 0.156 | 0.343 | 0.750 | YES      |    0.097 |   -1.312 |
| Experimental |      |        |          |       | dfs.media.math |  22 | 3.237 |  3.111 | 1.889 | 4.556 | 0.683 | 0.146 | 0.303 | 1.056 | YES      |    0.004 |   -0.728 |
| Controle     |      |        | Branca   |       | fss.media.math |   9 | 3.481 |  3.556 | 2.444 | 4.667 | 0.603 | 0.201 | 0.464 | 0.444 | YES      |    0.254 |   -0.347 |
| Controle     |      |        | Parda    |       | fss.media.math |  46 | 3.478 |  3.444 | 2.444 | 5.000 | 0.552 | 0.081 | 0.164 | 0.750 | YES      |    0.321 |   -0.031 |
| Controle     |      |        | Preta    |       | fss.media.math |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | fss.media.math |  43 | 3.361 |  3.222 | 2.667 | 5.000 | 0.540 | 0.082 | 0.166 | 0.778 | NO       |    0.899 |    0.451 |
| Experimental |      |        | Amarela  |       | fss.media.math |   1 | 3.375 |  3.375 | 3.375 | 3.375 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       | fss.media.math |   6 | 3.319 |  3.333 | 2.667 | 4.250 | 0.577 | 0.236 | 0.606 | 0.639 | YES      |    0.332 |   -1.468 |
| Experimental |      |        | Indígena |       | fss.media.math |   5 | 3.778 |  4.111 | 2.556 | 4.556 | 0.793 | 0.355 | 0.985 | 0.778 | NO       |   -0.507 |   -1.657 |
| Experimental |      |        | Parda    |       | fss.media.math |  12 | 3.259 |  3.278 | 2.111 | 4.333 | 0.589 | 0.170 | 0.374 | 0.722 | YES      |   -0.158 |   -0.653 |
| Experimental |      |        |          |       | fss.media.math |  22 | 3.172 |  3.111 | 2.000 | 4.556 | 0.721 | 0.154 | 0.320 | 0.722 | YES      |    0.404 |   -0.949 |
| Controle     |      |        |          | 6 ano | dfs.media.math |  32 | 3.232 |  3.167 | 2.333 | 4.444 | 0.510 | 0.090 | 0.184 | 0.583 | NO       |    0.542 |   -0.503 |
| Controle     |      |        |          | 7 ano | dfs.media.math |  31 | 3.336 |  3.333 | 2.444 | 4.222 | 0.482 | 0.087 | 0.177 | 0.646 | YES      |   -0.050 |   -0.883 |
| Controle     |      |        |          | 8 ano | dfs.media.math |  17 | 3.248 |  3.222 | 2.333 | 4.444 | 0.510 | 0.124 | 0.262 | 0.444 | YES      |    0.431 |   -0.031 |
| Controle     |      |        |          | 9 ano | dfs.media.math |  19 | 3.351 |  3.333 | 2.444 | 4.444 | 0.459 | 0.105 | 0.221 | 0.444 | YES      |    0.392 |    0.252 |
| Experimental |      |        |          | 6 ano | dfs.media.math |  15 | 3.526 |  3.556 | 2.556 | 4.556 | 0.581 | 0.150 | 0.322 | 0.778 | YES      |    0.091 |   -1.193 |
| Experimental |      |        |          | 7 ano | dfs.media.math |  11 | 3.303 |  3.333 | 2.556 | 4.222 | 0.533 | 0.161 | 0.358 | 0.833 | YES      |    0.059 |   -1.340 |
| Experimental |      |        |          | 8 ano | dfs.media.math |  11 | 3.000 |  3.111 | 1.889 | 4.111 | 0.648 | 0.195 | 0.435 | 0.722 | YES      |   -0.138 |   -1.007 |
| Experimental |      |        |          | 9 ano | dfs.media.math |   9 | 3.136 |  3.222 | 2.222 | 3.778 | 0.582 | 0.194 | 0.447 | 1.000 | YES      |   -0.316 |   -1.709 |
| Controle     |      |        |          | 6 ano | fss.media.math |  32 | 3.452 |  3.444 | 2.444 | 5.000 | 0.585 | 0.103 | 0.211 | 0.604 | NO       |    0.621 |   -0.007 |
| Controle     |      |        |          | 7 ano | fss.media.math |  31 | 3.480 |  3.444 | 2.444 | 5.000 | 0.582 | 0.104 | 0.213 | 0.778 | YES      |    0.463 |    0.060 |
| Controle     |      |        |          | 8 ano | fss.media.math |  17 | 3.291 |  3.111 | 2.444 | 4.556 | 0.551 | 0.134 | 0.283 | 0.667 | NO       |    0.597 |   -0.517 |
| Controle     |      |        |          | 9 ano | fss.media.math |  19 | 3.414 |  3.333 | 2.778 | 4.333 | 0.421 | 0.097 | 0.203 | 0.556 | YES      |    0.310 |   -0.807 |
| Experimental |      |        |          | 6 ano | fss.media.math |  15 | 3.410 |  3.333 | 2.556 | 4.556 | 0.584 | 0.151 | 0.323 | 0.410 | NO       |    0.663 |   -0.723 |
| Experimental |      |        |          | 7 ano | fss.media.math |  11 | 3.538 |  3.556 | 2.000 | 4.333 | 0.736 | 0.222 | 0.494 | 0.833 | NO       |   -0.733 |   -0.671 |
| Experimental |      |        |          | 8 ano | fss.media.math |  11 | 2.960 |  2.778 | 2.222 | 4.556 | 0.680 | 0.205 | 0.457 | 0.722 | NO       |    1.074 |    0.066 |
| Experimental |      |        |          | 9 ano | fss.media.math |   9 | 3.160 |  3.222 | 2.111 | 4.111 | 0.648 | 0.216 | 0.498 | 0.667 | YES      |    0.037 |   -1.341 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "fss.media.math", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.math"]] <- c(pdat[["dfs.media.math"]], pdat[["fss.media.math"]])

aov = anova_test(pdat, fss.media.math ~ dfs.media.math + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, fss.media.math ~ grupo, covariate = dfs.media.math,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          flow.math ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.math", "grupo", covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.math ~ dfs.media.math + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.math"]] <- c(wdat[["dfs.media.math"]], wdat[["fss.media.math"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ##  [1] "P1768" "P3630" "P130"  "P3013" "P3014" "P2244" "P3508" "P1010" "P510"  "P3624" "P1089" "P3598"
    ## [13] "P1728" "P3160" "P3495" "P2247" "P3578" "P3094" "P622"  "P2294" "P3502" "P3031" "P231"  "P1016"
    ## [25] "P3055" "P2408" "P3116" "P2380" "P1705" "P3027" "P3244" "P3516" "P829"  "P3577" "P3511" "P1701"
    ## [37] "P3002" "P458"  "P3566" "P2250" "P3153" "P2240" "P3239" "P612"  "P3519" "P1698" "P3721" "P2383"
    ## [49] "P812"  "P523"  "P960"  "P2390" "P997"  "P3091" "P124"  "P613"  "P2378" "P820"  "P3560" "P133" 
    ## [61] "P448"  "P184"  "P952"  "P3615" "P123"  "P238"  "P232"  "P3492" "P1091" "P2376" "P140"  "P121" 
    ## [73] "P2222" "P3098" "P3022" "P1764" "P626"  "P1742" "P1101" "P457"  "P192"  "P1094" "P463"  "P3093"
    ## [85] "P1711" "P3178" "P950"  "P3008" "P947"  "P3512" "P138"  "P813"  "P3569" "P943"  "P3016" "P515" 
    ## [97] "P3505" "P936"  "P3174"

``` r
aov = anova_test(wdat, fss.media.math ~ dfs.media.math + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.math   1  43 70.878 1.22e-10     * 0.622
    ## 2          grupo   1  43  4.567 3.80e-02     * 0.096

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.math |   1 |  43 | 70.878 | 0.000 | \*     | 0.622 |
| grupo          |   1 |  43 |  4.567 | 0.038 | \*     | 0.096 |

| term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
| dfs.media.math\*grupo | fss.media.math | Controle | Experimental |  43 |     2.137 | 0.038 | 0.038 | \*           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]], by=c("grupo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.math | pre    | pos    |  88 |    -5.554 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental | time | flow.math | pre    | pos    |  88 |    -2.017 | 0.047 | 0.047 | \*           |

``` r
ds <- get.descriptives(wdat, "fss.media.math", "grupo", covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     |  30 |   3.259 |    0.095 |     3.916 |      0.061 |   3.986 |    0.042 |
| Experimental |  16 |   3.632 |    0.140 |     3.958 |      0.105 |   3.827 |    0.059 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.math", "grupo", aov, list("grupo"=pwc), addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.math", "grupo", aov, pwc, covar = "dfs.media.math",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (prob. matemática)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.math", "grupo", aov, pwc.long, pre.post = "time",
    theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (prob. matemática)")
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.math", y = "fss.media.math", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  )
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.math ~ dfs.media.math + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.948  0.0409

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1    44    0.0726 0.789

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),], "fss.media.math", c("grupo","Sexo"))

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.math"]] <- c(pdat[["dfs.media.math"]], pdat[["fss.media.math"]])

aov = anova_test(pdat, fss.media.math ~ dfs.media.math + grupo*Sexo)
laov[["grupo:Sexo"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.math ~ Sexo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Sexo), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.math", c("grupo","Sexo"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.math ~ dfs.media.math + grupo*Sexo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.math"]] <- c(wdat[["dfs.media.math"]], wdat[["fss.media.math"]])


ldat[["grupo:Sexo"]] = wdat

(non.normal)
```

    ##  [1] "P3013" "P1768" "P3630" "P2244" "P130"  "P3508" "P1010" "P3014" "P3624" "P1089" "P510"  "P3160"
    ## [13] "P3495" "P3598" "P1728" "P2247" "P3502" "P231"  "P3578" "P622"  "P3094" "P2294" "P2380" "P1705"
    ## [25] "P3027" "P3031" "P1016" "P3055" "P2408" "P3244" "P3516" "P3577" "P3116" "P3566" "P2250" "P2240"
    ## [37] "P3239" "P829"  "P612"  "P1698" "P3519" "P3511" "P3002" "P458"  "P3091" "P3153" "P1701" "P3721"
    ## [49] "P812"  "P960"  "P2390" "P997"  "P2383" "P613"  "P3093" "P820"  "P523"  "P124"  "P3178" "P1711"
    ## [61] "P133"  "P2378" "P448"  "P238"  "P463"  "P232"  "P1091" "P184"  "P3560" "P3615" "P123"  "P952" 
    ## [73] "P121"  "P3492" "P140"  "P3098" "P2376" "P192"  "P2222" "P1094" "P626"  "P3022" "P1742" "P1764"
    ## [85] "P3008" "P947"  "P1101" "P138"  "P1762" "P521"

``` r
aov = anova_test(wdat, fss.media.math ~ dfs.media.math + grupo*Sexo)
laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.math   1  50 98.948 1.92e-13     * 0.664
    ## 2          grupo   1  50  6.031 1.80e-02     * 0.108
    ## 3           Sexo   1  50  0.052 8.20e-01       0.001
    ## 4     grupo:Sexo   1  50  1.515 2.24e-01       0.029

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.math |   1 |  50 | 98.948 | 0.000 | \*     | 0.664 |
| grupo          |   1 |  50 |  6.031 | 0.018 | \*     | 0.108 |
| Sexo           |   1 |  50 |  0.052 | 0.820 |        | 0.001 |
| grupo:Sexo     |   1 |  50 |  1.515 | 0.224 |        | 0.029 |

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.math ~ Sexo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Sexo), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

| grupo        | Sexo | term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | F    | dfs.media.math\*grupo | fss.media.math | Controle | Experimental |  50 |     0.687 | 0.495 | 0.495 | ns           |
|              | M    | dfs.media.math\*grupo | fss.media.math | Controle | Experimental |  50 |     2.674 | 0.010 | 0.010 | \*           |
| Controle     |      | dfs.media.math\*Sexo  | fss.media.math | F        | M            |  50 |    -0.900 | 0.373 | 0.373 | ns           |
| Experimental |      | dfs.media.math\*Sexo  | fss.media.math | F        | M            |  50 |     0.886 | 0.380 | 0.380 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Sexo"]], by=c("grupo","Sexo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Sexo | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | flow.math | pre    | pos    | 102 |    -2.851 | 0.005 | 0.005 | \*\*         |
| Controle     | M    | time | flow.math | pre    | pos    | 102 |    -4.463 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental | F    | time | flow.math | pre    | pos    | 102 |    -1.488 | 0.140 | 0.140 | ns           |
| Experimental | M    | time | flow.math | pre    | pos    | 102 |    -0.929 | 0.355 | 0.355 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.math", c("grupo","Sexo"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]], by=c("grupo","Sexo"), suffixes = c("","'"))
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | F    |  15 |   3.356 |    0.117 |     3.833 |      0.081 |   3.837 |    0.058 |
| Controle     | M    |  22 |   3.177 |    0.116 |     3.794 |      0.079 |   3.906 |    0.049 |
| Experimental | F    |   7 |   3.460 |    0.263 |     3.825 |      0.189 |   3.766 |    0.086 |
| Experimental | M    |  11 |   3.677 |    0.129 |     3.859 |      0.131 |   3.668 |    0.071 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.math", c("grupo","Sexo"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Sexo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (!is.null(plots[["Sexo"]]))
  plots[["Sexo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.math", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.math",
  theme = "classic", color = color[["grupo:Sexo"]],
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (prob. matemática)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.math", c("grupo","Sexo"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (prob. matemática)")
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.math", y = "fss.media.math", size = 0.5,
          facet.by = c("grupo","Sexo"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.math ~ dfs.media.math + grupo*Sexo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.956  0.0421

``` r
levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    51     0.800 0.500

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),], "fss.media.math", c("grupo","Zona"))

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.math"]] <- c(pdat[["dfs.media.math"]], pdat[["fss.media.math"]])

aov = anova_test(pdat, fss.media.math ~ dfs.media.math + grupo*Zona)
laov[["grupo:Zona"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.math ~ Zona,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Zona), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.math", c("grupo","Zona"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.math ~ dfs.media.math + grupo*Zona, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.math"]] <- c(wdat[["dfs.media.math"]], wdat[["fss.media.math"]])


ldat[["grupo:Zona"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.math ~ dfs.media.math + grupo*Zona)
laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05      ges
    ## 1 dfs.media.math   1 103 29.791 3.34e-07     * 0.224000
    ## 2          grupo   1 103  2.673 1.05e-01       0.025000
    ## 3           Zona   1 103  3.051 8.40e-02       0.029000
    ## 4     grupo:Zona   1 103  0.024 8.78e-01       0.000229

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.math |   1 | 103 | 29.791 | 0.000 | \*     | 0.224 |
| grupo          |   1 | 103 |  2.673 | 0.105 |        | 0.025 |
| Zona           |   1 | 103 |  3.051 | 0.084 |        | 0.029 |
| grupo:Zona     |   1 | 103 |  0.024 | 0.878 |        | 0.000 |

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.math ~ Zona,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Zona), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

| grupo        | Zona   | term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 103 |     1.364 | 0.175 | 0.175 | ns           |
|              | Urbana | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 103 |     0.899 | 0.371 | 0.371 | ns           |
| Controle     |        | dfs.media.math\*Zona  | fss.media.math | Rural    | Urbana       | 103 |    -1.537 | 0.127 | 0.127 | ns           |
| Experimental |        | dfs.media.math\*Zona  | fss.media.math | Rural    | Urbana       | 103 |    -0.856 | 0.394 | 0.394 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Zona"]], by=c("grupo","Zona","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Zona   | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | flow.math | pre    | pos    | 208 |    -1.169 | 0.244 | 0.244 | ns           |
| Controle     | Urbana | time | flow.math | pre    | pos    | 208 |    -1.943 | 0.053 | 0.053 | ns           |
| Experimental | Rural  | time | flow.math | pre    | pos    | 208 |     0.525 | 0.600 | 0.600 | ns           |
| Experimental | Urbana | time | flow.math | pre    | pos    | 208 |    -1.250 | 0.213 | 0.213 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.math", c("grupo","Zona"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]], by=c("grupo","Zona"), suffixes = c("","'"))
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Rural  |  54 |   3.274 |    0.075 |     3.406 |      0.072 |   3.396 |    0.074 |
| Controle     | Urbana |  17 |   3.222 |    0.116 |     3.611 |      0.182 |   3.629 |    0.132 |
| Experimental | Rural  |  29 |   3.360 |    0.097 |     3.280 |      0.121 |   3.224 |    0.102 |
| Experimental | Urbana |   8 |   2.819 |    0.259 |     3.184 |      0.260 |   3.416 |    0.197 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.math", c("grupo","Zona"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Zona"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (!is.null(plots[["Zona"]]))
  plots[["Zona"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.math", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.math",
  theme = "classic", color = color[["grupo:Zona"]],
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (prob. matemática)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.math", c("grupo","Zona"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (prob. matemática)")
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.math", y = "fss.media.math", size = 0.5,
          facet.by = c("grupo","Zona"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.math ~ dfs.media.math + grupo*Zona, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.980  0.0971

``` r
levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   104      1.83 0.146

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),], "fss.media.math", c("grupo","Cor.Raca"))
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
pdat.long <- rbind(pdat[,c("id","grupo","Cor.Raca")], pdat[,c("id","grupo","Cor.Raca")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.math"]] <- c(pdat[["dfs.media.math"]], pdat[["fss.media.math"]])

aov = anova_test(pdat, fss.media.math ~ dfs.media.math + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.math ~ Cor.Raca,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Cor.Raca), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.math", c("grupo","Cor.Raca"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.math ~ dfs.media.math + grupo*Cor.Raca, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.math"]] <- c(wdat[["dfs.media.math"]], wdat[["fss.media.math"]])


ldat[["grupo:Cor.Raca"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.math ~ dfs.media.math + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F       p p<.05   ges
    ## 1 dfs.media.math   1  72 16.032 0.00015     * 0.182
    ## 2          grupo   1  72  1.132 0.29100       0.015
    ## 3       Cor.Raca   2  72  1.254 0.29200       0.034
    ## 4 grupo:Cor.Raca   1  72  0.294 0.59000       0.004

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.math |   1 |  72 | 16.032 | 0.000 | \*     | 0.182 |
| grupo          |   1 |  72 |  1.132 | 0.291 |        | 0.015 |
| Cor.Raca       |   2 |  72 |  1.254 | 0.292 |        | 0.034 |
| grupo:Cor.Raca |   1 |  72 |  0.294 | 0.590 |        | 0.004 |

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.math ~ Cor.Raca,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Cor.Raca), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

| grupo        | Cor.Raca | term                     | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-------------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Branca   | dfs.media.math\*grupo    | fss.media.math | Controle | Experimental |  72 |     0.093 | 0.926 | 0.926 | ns           |
|              | Indígena | dfs.media.math\*grupo    | fss.media.math | Controle | Experimental |     |           |       |       |              |
|              | Parda    | dfs.media.math\*grupo    | fss.media.math | Controle | Experimental |  72 |     1.191 | 0.238 | 0.238 | ns           |
| Controle     |          | dfs.media.math\*Cor.Raca | fss.media.math | Branca   | Indígena     |     |           |       |       |              |
| Controle     |          | dfs.media.math\*Cor.Raca | fss.media.math | Branca   | Parda        |  72 |    -0.094 | 0.926 | 0.926 | ns           |
| Controle     |          | dfs.media.math\*Cor.Raca | fss.media.math | Indígena | Parda        |     |           |       |       |              |
| Experimental |          | dfs.media.math\*Cor.Raca | fss.media.math | Branca   | Indígena     |  72 |    -0.962 | 0.339 | 1.000 | ns           |
| Experimental |          | dfs.media.math\*Cor.Raca | fss.media.math | Branca   | Parda        |  72 |     0.602 | 0.549 | 1.000 | ns           |
| Experimental |          | dfs.media.math\*Cor.Raca | fss.media.math | Indígena | Parda        |  72 |     1.668 | 0.100 | 0.299 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Cor.Raca | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Branca   | time | flow.math | pre    | pos    | 146 |    -0.324 | 0.747 | 0.747 | ns           |
| Controle     | Indígena | time | flow.math | pre    | pos    |     |           |       |       |              |
| Controle     | Parda    | time | flow.math | pre    | pos    | 146 |    -1.112 | 0.268 | 0.268 | ns           |
| Experimental | Branca   | time | flow.math | pre    | pos    | 146 |    -0.694 | 0.489 | 0.489 | ns           |
| Experimental | Indígena | time | flow.math | pre    | pos    | 146 |    -0.992 | 0.323 | 0.323 | ns           |
| Experimental | Parda    | time | flow.math | pre    | pos    | 146 |     0.240 | 0.811 | 0.811 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.math", c("grupo","Cor.Raca"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca"), suffixes = c("","'"))
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Branca   |   9 |   3.395 |    0.184 |     3.481 |      0.201 |   3.453 |    0.177 |
| Controle     | Parda    |  46 |   3.346 |    0.081 |     3.478 |      0.081 |   3.471 |    0.078 |
| Experimental | Branca   |   6 |   3.093 |    0.232 |     3.319 |      0.236 |   3.427 |    0.218 |
| Experimental | Indígena |   5 |   3.422 |    0.247 |     3.778 |      0.355 |   3.737 |    0.237 |
| Experimental | Parda    |  12 |   3.315 |    0.156 |     3.259 |      0.170 |   3.267 |    0.153 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.math", c("grupo","Cor.Raca"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Cor.Raca"]])
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-90-1.png)<!-- -->

``` r
if (!is.null(plots[["Cor.Raca"]]))
  plots[["Cor.Raca"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

    ## Warning: Removed 2 rows containing non-finite values (`stat_bracket()`).

    ## Warning: Removed 1 rows containing missing values (`geom_point()`).

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.math", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.math",
  theme = "classic", color = color[["grupo:Cor.Raca"]],
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (prob. matemática)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-93-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.math", c("grupo","Cor.Raca"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (prob. matemática)")
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.math", y = "fss.media.math", size = 0.5,
          facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.math ~ dfs.media.math + grupo*Cor.Raca, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.976   0.155

``` r
levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     4    73     0.147 0.964

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),], "fss.media.math", c("grupo","Serie"))

pdat.long <- rbind(pdat[,c("id","grupo","Serie")], pdat[,c("id","grupo","Serie")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.math"]] <- c(pdat[["dfs.media.math"]], pdat[["fss.media.math"]])

aov = anova_test(pdat, fss.media.math ~ dfs.media.math + grupo*Serie)
laov[["grupo:Serie"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.math ~ Serie,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Serie), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.math", c("grupo","Serie"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.math ~ dfs.media.math + grupo*Serie, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Serie")], wdat[,c("id","grupo","Serie")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.math"]] <- c(wdat[["dfs.media.math"]], wdat[["fss.media.math"]])


ldat[["grupo:Serie"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.math ~ dfs.media.math + grupo*Serie)
laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.math   1 136 32.072 8.48e-08     * 0.191
    ## 2          grupo   1 136  1.490 2.24e-01       0.011
    ## 3          Serie   3 136  1.218 3.05e-01       0.026
    ## 4    grupo:Serie   3 136  0.486 6.93e-01       0.011

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.math |   1 | 136 | 32.072 | 0.000 | \*     | 0.191 |
| grupo          |   1 | 136 |  1.490 | 0.224 |        | 0.011 |
| Serie          |   3 | 136 |  1.218 | 0.305 |        | 0.026 |
| grupo:Serie    |   3 | 136 |  0.486 | 0.693 |        | 0.011 |

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.math ~ Serie,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Serie), fss.media.math ~ grupo,
  covariate = dfs.media.math, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

| grupo        | Serie | term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | 6 ano | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 136 |     1.110 | 0.269 | 0.269 | ns           |
|              | 7 ano | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 136 |    -0.398 | 0.691 | 0.691 | ns           |
|              | 8 ano | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 136 |     1.019 | 0.310 | 0.310 | ns           |
|              | 9 ano | dfs.media.math\*grupo | fss.media.math | Controle | Experimental | 136 |     0.688 | 0.493 | 0.493 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 7 ano        | 136 |     0.172 | 0.864 | 1.000 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 8 ano        | 136 |     1.067 | 0.288 | 1.000 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 9 ano        | 136 |     0.630 | 0.530 | 1.000 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 7 ano    | 8 ano        | 136 |     0.916 | 0.361 | 1.000 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 7 ano    | 9 ano        | 136 |     0.479 | 0.633 | 1.000 | ns           |
| Controle     |       | dfs.media.math\*Serie | fss.media.math | 8 ano    | 9 ano        | 136 |    -0.410 | 0.682 | 1.000 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 7 ano        | 136 |    -1.123 | 0.263 | 1.000 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 8 ano        | 136 |     0.900 | 0.370 | 1.000 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 6 ano    | 9 ano        | 136 |     0.261 | 0.795 | 1.000 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 7 ano    | 8 ano        | 136 |     1.894 | 0.060 | 0.362 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 7 ano    | 9 ano        | 136 |     1.241 | 0.217 | 1.000 | ns           |
| Experimental |       | dfs.media.math\*Serie | fss.media.math | 8 ano    | 9 ano        | 136 |    -0.565 | 0.573 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                         flow.math ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Serie"]], by=c("grupo","Serie","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Serie | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | 6 ano | time | flow.math | pre    | pos    | 274 |    -1.587 | 0.114 | 0.114 | ns           |
| Controle     | 7 ano | time | flow.math | pre    | pos    | 274 |    -1.023 | 0.307 | 0.307 | ns           |
| Controle     | 8 ano | time | flow.math | pre    | pos    | 274 |    -0.223 | 0.824 | 0.824 | ns           |
| Controle     | 9 ano | time | flow.math | pre    | pos    | 274 |    -0.348 | 0.728 | 0.728 | ns           |
| Experimental | 6 ano | time | flow.math | pre    | pos    | 274 |     0.571 | 0.569 | 0.569 | ns           |
| Experimental | 7 ano | time | flow.math | pre    | pos    | 274 |    -0.992 | 0.322 | 0.322 | ns           |
| Experimental | 8 ano | time | flow.math | pre    | pos    | 274 |     0.171 | 0.865 | 0.865 | ns           |
| Experimental | 9 ano | time | flow.math | pre    | pos    | 274 |    -0.094 | 0.925 | 0.925 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.math", c("grupo","Serie"), covar = "dfs.media.math")
ds <- merge(ds[ds$variable != "dfs.media.math",],
            ds[ds$variable == "dfs.media.math", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.math"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.math","se.dfs.media.math","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]], by=c("grupo","Serie"), suffixes = c("","'"))
```

| grupo        | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 6 ano |  32 |   3.232 |    0.090 |     3.452 |      0.103 |   3.477 |    0.094 |
| Controle     | 7 ano |  31 |   3.336 |    0.087 |     3.480 |      0.104 |   3.455 |    0.095 |
| Controle     | 8 ano |  17 |   3.248 |    0.124 |     3.291 |      0.134 |   3.308 |    0.128 |
| Controle     | 9 ano |  19 |   3.351 |    0.105 |     3.414 |      0.097 |   3.381 |    0.121 |
| Experimental | 6 ano |  15 |   3.526 |    0.150 |     3.410 |      0.151 |   3.292 |    0.138 |
| Experimental | 7 ano |  11 |   3.303 |    0.161 |     3.538 |      0.222 |   3.528 |    0.159 |
| Experimental | 8 ano |  11 |   3.000 |    0.195 |     2.960 |      0.205 |   3.098 |    0.161 |
| Experimental | 9 ano |   9 |   3.136 |    0.194 |     3.160 |      0.216 |   3.233 |    0.177 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.math", c("grupo","Serie"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Serie"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-114-1.png)<!-- -->

``` r
if (!is.null(plots[["Serie"]]))
  plots[["Serie"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-115-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.math", c("grupo","Serie"), aov, pwcs, covar = "dfs.media.math",
  theme = "classic", color = color[["grupo:Serie"]],
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (prob. matemática)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.math", c("grupo","Serie"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (prob. matemática)")
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-119-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.math", y = "fss.media.math", size = 0.5,
          facet.by = c("grupo","Serie"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-flow.math_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.math ~ dfs.media.math + grupo*Serie, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.986   0.151

``` r
levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7   137     0.477 0.850

# Summary of Results

## Descriptive Statistics

``` r
df <- get.descriptives(ldat[["grupo"]], c(dv.pre, dv.pos), c("grupo"), 
                       include.global = T, symmetry.test = T, normality.test = F)
df <- plyr::rbind.fill(
  df, do.call(plyr::rbind.fill, lapply(lfatores2, FUN = function(f) {
    if (nrow(dat) > 0 && sum(!is.na(unique(dat[[f]]))) > 1)
      get.descriptives(ldat[[paste0("grupo:",f)]], c(dv.pre,dv.pos), c("grupo", f),
                       symmetry.test = T, normality.test = F)
    }))
)
(df <- df[,c(fatores1[fatores1 %in% colnames(df)],"variable",
             colnames(df)[!colnames(df) %in% c(fatores1,"variable")])])
```

    ##           grupo Sexo   Zona Cor.Raca Serie       variable  n  mean median   min   max    sd    se    ci
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.math 30 3.259  3.167 2.333 4.444 0.520 0.095 0.194
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.math 16 3.632  3.722 2.667 4.556 0.560 0.140 0.299
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.math 46 3.389  3.333 2.333 4.556 0.558 0.082 0.166
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.math 30 3.916  3.889 3.444 4.667 0.335 0.061 0.125
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.math 16 3.958  4.056 3.333 4.556 0.419 0.105 0.224
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.math 46 3.931  3.889 3.333 4.667 0.363 0.053 0.108
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.math 15 3.356  3.222 2.778 4.444 0.455 0.117 0.252
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.math 22 3.177  3.111 2.333 4.444 0.545 0.116 0.242
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.math  7 3.460  3.333 2.667 4.556 0.695 0.263 0.643
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.math 11 3.677  3.778 3.000 4.333 0.429 0.129 0.288
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.math 15 3.833  3.778 3.444 4.333 0.312 0.081 0.173
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.math 22 3.794  3.764 3.111 4.667 0.369 0.079 0.164
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.math  7 3.825  3.556 3.333 4.556 0.500 0.189 0.463
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.math 11 3.859  3.778 3.333 4.556 0.433 0.131 0.291
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.math 54 3.274  3.111 2.333 4.444 0.553 0.075 0.151
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.math 17 3.222  3.222 2.333 4.000 0.480 0.116 0.247
    ## 17 Experimental <NA>  Rural     <NA>  <NA> dfs.media.math 29 3.360  3.333 2.222 4.556 0.524 0.097 0.199
    ## 18 Experimental <NA> Urbana     <NA>  <NA> dfs.media.math  8 2.819  2.667 1.889 4.111 0.732 0.259 0.612
    ## 19     Controle <NA>  Rural     <NA>  <NA> fss.media.math 54 3.406  3.444 2.444 4.667 0.528 0.072 0.144
    ## 20     Controle <NA> Urbana     <NA>  <NA> fss.media.math 17 3.611  3.444 2.667 5.000 0.749 0.182 0.385
    ## 21 Experimental <NA>  Rural     <NA>  <NA> fss.media.math 29 3.280  3.333 2.000 4.556 0.653 0.121 0.248
    ## 22 Experimental <NA> Urbana     <NA>  <NA> fss.media.math  8 3.184  2.889 2.444 4.333 0.735 0.260 0.615
    ## 23     Controle <NA>   <NA>   Branca  <NA> dfs.media.math  9 3.395  3.333 2.889 4.444 0.553 0.184 0.425
    ## 24     Controle <NA>   <NA>    Parda  <NA> dfs.media.math 46 3.346  3.333 2.333 4.444 0.552 0.081 0.164
    ## 25 Experimental <NA>   <NA>   Branca  <NA> dfs.media.math  6 3.093  3.333 2.222 3.667 0.568 0.232 0.596
    ## 26 Experimental <NA>   <NA> Indígena  <NA> dfs.media.math  5 3.422  3.556 2.667 4.111 0.552 0.247 0.686
    ## 27 Experimental <NA>   <NA>    Parda  <NA> dfs.media.math 12 3.315  3.333 2.444 4.222 0.540 0.156 0.343
    ## 28     Controle <NA>   <NA>   Branca  <NA> fss.media.math  9 3.481  3.556 2.444 4.667 0.603 0.201 0.464
    ## 29     Controle <NA>   <NA>    Parda  <NA> fss.media.math 46 3.478  3.444 2.444 5.000 0.552 0.081 0.164
    ## 30 Experimental <NA>   <NA>   Branca  <NA> fss.media.math  6 3.319  3.333 2.667 4.250 0.577 0.236 0.606
    ## 31 Experimental <NA>   <NA> Indígena  <NA> fss.media.math  5 3.778  4.111 2.556 4.556 0.793 0.355 0.985
    ## 32 Experimental <NA>   <NA>    Parda  <NA> fss.media.math 12 3.259  3.278 2.111 4.333 0.589 0.170 0.374
    ## 33     Controle <NA>   <NA>     <NA> 6 ano dfs.media.math 32 3.232  3.167 2.333 4.444 0.510 0.090 0.184
    ## 34     Controle <NA>   <NA>     <NA> 7 ano dfs.media.math 31 3.336  3.333 2.444 4.222 0.482 0.087 0.177
    ## 35     Controle <NA>   <NA>     <NA> 8 ano dfs.media.math 17 3.248  3.222 2.333 4.444 0.510 0.124 0.262
    ## 36     Controle <NA>   <NA>     <NA> 9 ano dfs.media.math 19 3.351  3.333 2.444 4.444 0.459 0.105 0.221
    ## 37 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.math 15 3.526  3.556 2.556 4.556 0.581 0.150 0.322
    ## 38 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.math 11 3.303  3.333 2.556 4.222 0.533 0.161 0.358
    ## 39 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.math 11 3.000  3.111 1.889 4.111 0.648 0.195 0.435
    ## 40 Experimental <NA>   <NA>     <NA> 9 ano dfs.media.math  9 3.136  3.222 2.222 3.778 0.582 0.194 0.447
    ## 41     Controle <NA>   <NA>     <NA> 6 ano fss.media.math 32 3.452  3.444 2.444 5.000 0.585 0.103 0.211
    ## 42     Controle <NA>   <NA>     <NA> 7 ano fss.media.math 31 3.480  3.444 2.444 5.000 0.582 0.104 0.213
    ## 43     Controle <NA>   <NA>     <NA> 8 ano fss.media.math 17 3.291  3.111 2.444 4.556 0.551 0.134 0.283
    ## 44     Controle <NA>   <NA>     <NA> 9 ano fss.media.math 19 3.414  3.333 2.778 4.333 0.421 0.097 0.203
    ## 45 Experimental <NA>   <NA>     <NA> 6 ano fss.media.math 15 3.410  3.333 2.556 4.556 0.584 0.151 0.323
    ## 46 Experimental <NA>   <NA>     <NA> 7 ano fss.media.math 11 3.538  3.556 2.000 4.333 0.736 0.222 0.494
    ## 47 Experimental <NA>   <NA>     <NA> 8 ano fss.media.math 11 2.960  2.778 2.222 4.556 0.680 0.205 0.457
    ## 48 Experimental <NA>   <NA>     <NA> 9 ano fss.media.math  9 3.160  3.222 2.111 4.111 0.648 0.216 0.498
    ##      iqr symmetry    skewness     kurtosis
    ## 1  0.528      YES  0.47020932  0.087055521
    ## 2  0.833      YES -0.13789114 -1.197834797
    ## 3  0.750      YES  0.26877423 -0.589814689
    ## 4  0.333       NO  0.65911958 -0.538445791
    ## 5  0.778      YES -0.08910094 -1.561926506
    ## 6  0.556      YES  0.32608561 -0.981230208
    ## 7  0.389       NO  1.00448873  0.045276551
    ## 8  0.556      YES  0.36532028 -0.289343990
    ## 9  0.944      YES  0.31286174 -1.624189257
    ## 10 0.556      YES  0.07021250 -1.433262819
    ## 11 0.389      YES  0.43518704 -1.211931233
    ## 12 0.417       NO  0.58929983  0.088780105
    ## 13 0.778      YES  0.30326818 -1.894619224
    ## 14 0.722      YES  0.19560273 -1.625971080
    ## 15 0.719      YES  0.40355124 -0.685391899
    ## 16 0.667      YES -0.03073661 -1.067198881
    ## 17 0.556      YES  0.26173747 -0.188718447
    ## 18 0.694      YES  0.43385124 -1.220250074
    ## 19 0.556      YES  0.13938618 -0.317309476
    ## 20 1.222       NO  0.64459026 -1.076251812
    ## 21 0.778      YES  0.09342746 -0.754085941
    ## 22 0.840       NO  0.60968385 -1.483725566
    ## 23 0.444       NO  0.74870399 -1.034148045
    ## 24 0.750      YES  0.10648568 -0.877360012
    ## 25 0.667       NO -0.50249238 -1.741980743
    ## 26 0.556      YES -0.13959312 -1.786167287
    ## 27 0.750      YES  0.09728100 -1.312239979
    ## 28 0.444      YES  0.25427045 -0.346526647
    ## 29 0.750      YES  0.32135938 -0.031438686
    ## 30 0.639      YES  0.33172405 -1.467873427
    ## 31 0.778       NO -0.50739561 -1.657439446
    ## 32 0.722      YES -0.15759818 -0.653145783
    ## 33 0.583       NO  0.54193378 -0.503240002
    ## 34 0.646      YES -0.04977701 -0.882746345
    ## 35 0.444      YES  0.43064222 -0.031441621
    ## 36 0.444      YES  0.39224710  0.252027079
    ## 37 0.778      YES  0.09070439 -1.193225831
    ## 38 0.833      YES  0.05890240 -1.340093693
    ## 39 0.722      YES -0.13756571 -1.006605851
    ## 40 1.000      YES -0.31567128 -1.709205624
    ## 41 0.604       NO  0.62066409 -0.007106825
    ## 42 0.778      YES  0.46270708  0.059664772
    ## 43 0.667       NO  0.59744282 -0.517002242
    ## 44 0.556      YES  0.30995611 -0.806573991
    ## 45 0.410       NO  0.66344304 -0.722925296
    ## 46 0.833       NO -0.73326654 -0.671438612
    ## 47 0.722       NO  1.07443314  0.066188539
    ## 48 0.667      YES  0.03708282 -1.340540133

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.math |  30 | 3.259 |  3.167 | 2.333 | 4.444 | 0.520 | 0.095 | 0.194 | 0.528 | YES      |    0.470 |    0.087 |
| Experimental |      |        |          |       | dfs.media.math |  16 | 3.632 |  3.722 | 2.667 | 4.556 | 0.560 | 0.140 | 0.299 | 0.833 | YES      |   -0.138 |   -1.198 |
|              |      |        |          |       | dfs.media.math |  46 | 3.389 |  3.333 | 2.333 | 4.556 | 0.558 | 0.082 | 0.166 | 0.750 | YES      |    0.269 |   -0.590 |
| Controle     |      |        |          |       | fss.media.math |  30 | 3.916 |  3.889 | 3.444 | 4.667 | 0.335 | 0.061 | 0.125 | 0.333 | NO       |    0.659 |   -0.538 |
| Experimental |      |        |          |       | fss.media.math |  16 | 3.958 |  4.056 | 3.333 | 4.556 | 0.419 | 0.105 | 0.224 | 0.778 | YES      |   -0.089 |   -1.562 |
|              |      |        |          |       | fss.media.math |  46 | 3.931 |  3.889 | 3.333 | 4.667 | 0.363 | 0.053 | 0.108 | 0.556 | YES      |    0.326 |   -0.981 |
| Controle     | F    |        |          |       | dfs.media.math |  15 | 3.356 |  3.222 | 2.778 | 4.444 | 0.455 | 0.117 | 0.252 | 0.389 | NO       |    1.004 |    0.045 |
| Controle     | M    |        |          |       | dfs.media.math |  22 | 3.177 |  3.111 | 2.333 | 4.444 | 0.545 | 0.116 | 0.242 | 0.556 | YES      |    0.365 |   -0.289 |
| Experimental | F    |        |          |       | dfs.media.math |   7 | 3.460 |  3.333 | 2.667 | 4.556 | 0.695 | 0.263 | 0.643 | 0.944 | YES      |    0.313 |   -1.624 |
| Experimental | M    |        |          |       | dfs.media.math |  11 | 3.677 |  3.778 | 3.000 | 4.333 | 0.429 | 0.129 | 0.288 | 0.556 | YES      |    0.070 |   -1.433 |
| Controle     | F    |        |          |       | fss.media.math |  15 | 3.833 |  3.778 | 3.444 | 4.333 | 0.312 | 0.081 | 0.173 | 0.389 | YES      |    0.435 |   -1.212 |
| Controle     | M    |        |          |       | fss.media.math |  22 | 3.794 |  3.764 | 3.111 | 4.667 | 0.369 | 0.079 | 0.164 | 0.417 | NO       |    0.589 |    0.089 |
| Experimental | F    |        |          |       | fss.media.math |   7 | 3.825 |  3.556 | 3.333 | 4.556 | 0.500 | 0.189 | 0.463 | 0.778 | YES      |    0.303 |   -1.895 |
| Experimental | M    |        |          |       | fss.media.math |  11 | 3.859 |  3.778 | 3.333 | 4.556 | 0.433 | 0.131 | 0.291 | 0.722 | YES      |    0.196 |   -1.626 |
| Controle     |      | Rural  |          |       | dfs.media.math |  54 | 3.274 |  3.111 | 2.333 | 4.444 | 0.553 | 0.075 | 0.151 | 0.719 | YES      |    0.404 |   -0.685 |
| Controle     |      | Urbana |          |       | dfs.media.math |  17 | 3.222 |  3.222 | 2.333 | 4.000 | 0.480 | 0.116 | 0.247 | 0.667 | YES      |   -0.031 |   -1.067 |
| Experimental |      | Rural  |          |       | dfs.media.math |  29 | 3.360 |  3.333 | 2.222 | 4.556 | 0.524 | 0.097 | 0.199 | 0.556 | YES      |    0.262 |   -0.189 |
| Experimental |      | Urbana |          |       | dfs.media.math |   8 | 2.819 |  2.667 | 1.889 | 4.111 | 0.732 | 0.259 | 0.612 | 0.694 | YES      |    0.434 |   -1.220 |
| Controle     |      | Rural  |          |       | fss.media.math |  54 | 3.406 |  3.444 | 2.444 | 4.667 | 0.528 | 0.072 | 0.144 | 0.556 | YES      |    0.139 |   -0.317 |
| Controle     |      | Urbana |          |       | fss.media.math |  17 | 3.611 |  3.444 | 2.667 | 5.000 | 0.749 | 0.182 | 0.385 | 1.222 | NO       |    0.645 |   -1.076 |
| Experimental |      | Rural  |          |       | fss.media.math |  29 | 3.280 |  3.333 | 2.000 | 4.556 | 0.653 | 0.121 | 0.248 | 0.778 | YES      |    0.093 |   -0.754 |
| Experimental |      | Urbana |          |       | fss.media.math |   8 | 3.184 |  2.889 | 2.444 | 4.333 | 0.735 | 0.260 | 0.615 | 0.840 | NO       |    0.610 |   -1.484 |
| Controle     |      |        | Branca   |       | dfs.media.math |   9 | 3.395 |  3.333 | 2.889 | 4.444 | 0.553 | 0.184 | 0.425 | 0.444 | NO       |    0.749 |   -1.034 |
| Controle     |      |        | Parda    |       | dfs.media.math |  46 | 3.346 |  3.333 | 2.333 | 4.444 | 0.552 | 0.081 | 0.164 | 0.750 | YES      |    0.106 |   -0.877 |
| Experimental |      |        | Branca   |       | dfs.media.math |   6 | 3.093 |  3.333 | 2.222 | 3.667 | 0.568 | 0.232 | 0.596 | 0.667 | NO       |   -0.502 |   -1.742 |
| Experimental |      |        | Indígena |       | dfs.media.math |   5 | 3.422 |  3.556 | 2.667 | 4.111 | 0.552 | 0.247 | 0.686 | 0.556 | YES      |   -0.140 |   -1.786 |
| Experimental |      |        | Parda    |       | dfs.media.math |  12 | 3.315 |  3.333 | 2.444 | 4.222 | 0.540 | 0.156 | 0.343 | 0.750 | YES      |    0.097 |   -1.312 |
| Controle     |      |        | Branca   |       | fss.media.math |   9 | 3.481 |  3.556 | 2.444 | 4.667 | 0.603 | 0.201 | 0.464 | 0.444 | YES      |    0.254 |   -0.347 |
| Controle     |      |        | Parda    |       | fss.media.math |  46 | 3.478 |  3.444 | 2.444 | 5.000 | 0.552 | 0.081 | 0.164 | 0.750 | YES      |    0.321 |   -0.031 |
| Experimental |      |        | Branca   |       | fss.media.math |   6 | 3.319 |  3.333 | 2.667 | 4.250 | 0.577 | 0.236 | 0.606 | 0.639 | YES      |    0.332 |   -1.468 |
| Experimental |      |        | Indígena |       | fss.media.math |   5 | 3.778 |  4.111 | 2.556 | 4.556 | 0.793 | 0.355 | 0.985 | 0.778 | NO       |   -0.507 |   -1.657 |
| Experimental |      |        | Parda    |       | fss.media.math |  12 | 3.259 |  3.278 | 2.111 | 4.333 | 0.589 | 0.170 | 0.374 | 0.722 | YES      |   -0.158 |   -0.653 |
| Controle     |      |        |          | 6 ano | dfs.media.math |  32 | 3.232 |  3.167 | 2.333 | 4.444 | 0.510 | 0.090 | 0.184 | 0.583 | NO       |    0.542 |   -0.503 |
| Controle     |      |        |          | 7 ano | dfs.media.math |  31 | 3.336 |  3.333 | 2.444 | 4.222 | 0.482 | 0.087 | 0.177 | 0.646 | YES      |   -0.050 |   -0.883 |
| Controle     |      |        |          | 8 ano | dfs.media.math |  17 | 3.248 |  3.222 | 2.333 | 4.444 | 0.510 | 0.124 | 0.262 | 0.444 | YES      |    0.431 |   -0.031 |
| Controle     |      |        |          | 9 ano | dfs.media.math |  19 | 3.351 |  3.333 | 2.444 | 4.444 | 0.459 | 0.105 | 0.221 | 0.444 | YES      |    0.392 |    0.252 |
| Experimental |      |        |          | 6 ano | dfs.media.math |  15 | 3.526 |  3.556 | 2.556 | 4.556 | 0.581 | 0.150 | 0.322 | 0.778 | YES      |    0.091 |   -1.193 |
| Experimental |      |        |          | 7 ano | dfs.media.math |  11 | 3.303 |  3.333 | 2.556 | 4.222 | 0.533 | 0.161 | 0.358 | 0.833 | YES      |    0.059 |   -1.340 |
| Experimental |      |        |          | 8 ano | dfs.media.math |  11 | 3.000 |  3.111 | 1.889 | 4.111 | 0.648 | 0.195 | 0.435 | 0.722 | YES      |   -0.138 |   -1.007 |
| Experimental |      |        |          | 9 ano | dfs.media.math |   9 | 3.136 |  3.222 | 2.222 | 3.778 | 0.582 | 0.194 | 0.447 | 1.000 | YES      |   -0.316 |   -1.709 |
| Controle     |      |        |          | 6 ano | fss.media.math |  32 | 3.452 |  3.444 | 2.444 | 5.000 | 0.585 | 0.103 | 0.211 | 0.604 | NO       |    0.621 |   -0.007 |
| Controle     |      |        |          | 7 ano | fss.media.math |  31 | 3.480 |  3.444 | 2.444 | 5.000 | 0.582 | 0.104 | 0.213 | 0.778 | YES      |    0.463 |    0.060 |
| Controle     |      |        |          | 8 ano | fss.media.math |  17 | 3.291 |  3.111 | 2.444 | 4.556 | 0.551 | 0.134 | 0.283 | 0.667 | NO       |    0.597 |   -0.517 |
| Controle     |      |        |          | 9 ano | fss.media.math |  19 | 3.414 |  3.333 | 2.778 | 4.333 | 0.421 | 0.097 | 0.203 | 0.556 | YES      |    0.310 |   -0.807 |
| Experimental |      |        |          | 6 ano | fss.media.math |  15 | 3.410 |  3.333 | 2.556 | 4.556 | 0.584 | 0.151 | 0.323 | 0.410 | NO       |    0.663 |   -0.723 |
| Experimental |      |        |          | 7 ano | fss.media.math |  11 | 3.538 |  3.556 | 2.000 | 4.333 | 0.736 | 0.222 | 0.494 | 0.833 | NO       |   -0.733 |   -0.671 |
| Experimental |      |        |          | 8 ano | fss.media.math |  11 | 2.960 |  2.778 | 2.222 | 4.556 | 0.680 | 0.205 | 0.457 | 0.722 | NO       |    1.074 |    0.066 |
| Experimental |      |        |          | 9 ano | fss.media.math |   9 | 3.160 |  3.222 | 2.111 | 4.111 | 0.648 | 0.216 | 0.498 | 0.667 | YES      |    0.037 |   -1.341 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
(df <- df[!duplicated(df$Effect),])
```

    ##            Effect DFn DFd      F        p p<.05      ges DFn' DFd'     F'       p' p<.05'     ges'
    ## 1  dfs.media.math   1  43 70.878 1.22e-10     * 0.622000    1  142 36.730 1.16e-08      * 0.206000
    ## 2           grupo   1  43  4.567 3.80e-02     * 0.096000    1  142  1.959 1.64e-01        0.014000
    ## 5      grupo:Sexo   1  50  1.515 2.24e-01       0.029000    1  140  0.713 4.00e-01        0.005000
    ## 6            Sexo   1  50  0.052 8.20e-01       0.001000    1  140  0.172 6.79e-01        0.001000
    ## 9      grupo:Zona   1 103  0.024 8.78e-01       0.000229    1  103  0.024 8.78e-01        0.000229
    ## 10           Zona   1 103  3.051 8.40e-02       0.029000    1  103  3.051 8.40e-02        0.029000
    ## 11       Cor.Raca   2  72  1.254 2.92e-01       0.034000    2   72  1.254 2.92e-01        0.034000
    ## 14 grupo:Cor.Raca   1  72  0.294 5.90e-01       0.004000    1   72  0.294 5.90e-01        0.004000
    ## 17    grupo:Serie   3 136  0.486 6.93e-01       0.011000    3  136  0.486 6.93e-01        0.011000
    ## 18          Serie   3 136  1.218 3.05e-01       0.026000    3  136  1.218 3.05e-01        0.026000

|     | Effect         | DFn | DFd |      F |     p | p\<.05 |   ges | DFn’ | DFd’ |     F’ |    p’ | p\<.05’ |  ges’ |
|:----|:---------------|----:|----:|-------:|------:|:-------|------:|-----:|-----:|-------:|------:|:--------|------:|
| 1   | dfs.media.math |   1 |  43 | 70.878 | 0.000 | \*     | 0.622 |    1 |  142 | 36.730 | 0.000 | \*      | 0.206 |
| 2   | grupo          |   1 |  43 |  4.567 | 0.038 | \*     | 0.096 |    1 |  142 |  1.959 | 0.164 |         | 0.014 |
| 5   | grupo:Sexo     |   1 |  50 |  1.515 | 0.224 |        | 0.029 |    1 |  140 |  0.713 | 0.400 |         | 0.005 |
| 6   | Sexo           |   1 |  50 |  0.052 | 0.820 |        | 0.001 |    1 |  140 |  0.172 | 0.679 |         | 0.001 |
| 9   | grupo:Zona     |   1 | 103 |  0.024 | 0.878 |        | 0.000 |    1 |  103 |  0.024 | 0.878 |         | 0.000 |
| 10  | Zona           |   1 | 103 |  3.051 | 0.084 |        | 0.029 |    1 |  103 |  3.051 | 0.084 |         | 0.029 |
| 11  | Cor.Raca       |   2 |  72 |  1.254 | 0.292 |        | 0.034 |    2 |   72 |  1.254 | 0.292 |         | 0.034 |
| 14  | grupo:Cor.Raca |   1 |  72 |  0.294 | 0.590 |        | 0.004 |    1 |   72 |  0.294 | 0.590 |         | 0.004 |
| 17  | grupo:Serie    |   3 | 136 |  0.486 | 0.693 |        | 0.011 |    3 |  136 |  0.486 | 0.693 |         | 0.011 |
| 18  | Serie          |   3 | 136 |  1.218 | 0.305 |        | 0.026 |    3 |  136 |  1.218 | 0.305 |         | 0.026 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores), names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif | df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:------|:---------|:-------------|----:|----------:|------:|------:|:-------------|----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          |       | pre      | pos          |  88 |    -5.554 | 0.000 | 0.000 | \*\*\*\*     | 286 |     -1.708 | 0.089 |  0.089 | ns            |
| Experimental |      |        |          |       | pre      | pos          |  88 |    -2.017 | 0.047 | 0.047 | \*           | 286 |     -0.117 | 0.907 |  0.907 | ns            |
|              |      |        |          |       | Controle | Experimental |  43 |     2.137 | 0.038 | 0.038 | \*           | 142 |      1.400 | 0.164 |  0.164 | ns            |
| Controle     | F    |        |          |       | pre      | pos          | 102 |    -2.851 | 0.005 | 0.005 | \*\*         | 282 |     -0.670 | 0.504 |  0.504 | ns            |
| Controle     | M    |        |          |       | pre      | pos          | 102 |    -4.463 | 0.000 | 0.000 | \*\*\*\*     | 282 |     -1.706 | 0.089 |  0.089 | ns            |
| Controle     |      |        |          |       | F        | M            |  50 |    -0.900 | 0.373 | 0.373 | ns           | 140 |     -0.809 | 0.420 |  0.420 | ns            |
| Experimental | F    |        |          |       | pre      | pos          | 102 |    -1.488 | 0.140 | 0.140 | ns           | 282 |     -0.901 | 0.368 |  0.368 | ns            |
| Experimental | M    |        |          |       | pre      | pos          | 102 |    -0.929 | 0.355 | 0.355 | ns           | 282 |      0.543 | 0.588 |  0.588 | ns            |
| Experimental |      |        |          |       | F        | M            |  50 |     0.886 | 0.380 | 0.380 | ns           | 140 |      0.484 | 0.629 |  0.629 | ns            |
|              | F    |        |          |       | Controle | Experimental |  50 |     0.687 | 0.495 | 0.495 | ns           | 140 |      0.224 | 0.823 |  0.823 | ns            |
|              | M    |        |          |       | Controle | Experimental |  50 |     2.674 | 0.010 | 0.010 | \*           | 140 |      1.637 | 0.104 |  0.104 | ns            |
| Controle     |      |        |          |       | Rural    | Urbana       | 103 |    -1.537 | 0.127 | 0.127 | ns           | 103 |     -1.537 | 0.127 |  0.127 | ns            |
| Controle     |      | Rural  |          |       | pre      | pos          | 208 |    -1.169 | 0.244 | 0.244 | ns           | 208 |     -1.169 | 0.244 |  0.244 | ns            |
| Controle     |      | Urbana |          |       | pre      | pos          | 208 |    -1.943 | 0.053 | 0.053 | ns           | 208 |     -1.943 | 0.053 |  0.053 | ns            |
| Experimental |      |        |          |       | Rural    | Urbana       | 103 |    -0.856 | 0.394 | 0.394 | ns           | 103 |     -0.856 | 0.394 |  0.394 | ns            |
| Experimental |      | Rural  |          |       | pre      | pos          | 208 |     0.525 | 0.600 | 0.600 | ns           | 208 |      0.525 | 0.600 |  0.600 | ns            |
| Experimental |      | Urbana |          |       | pre      | pos          | 208 |    -1.250 | 0.213 | 0.213 | ns           | 208 |     -1.250 | 0.213 |  0.213 | ns            |
|              |      | Rural  |          |       | Controle | Experimental | 103 |     1.364 | 0.175 | 0.175 | ns           | 103 |      1.364 | 0.175 |  0.175 | ns            |
|              |      | Urbana |          |       | Controle | Experimental | 103 |     0.899 | 0.371 | 0.371 | ns           | 103 |      0.899 | 0.371 |  0.371 | ns            |
| Controle     |      |        | Branca   |       | pre      | pos          | 146 |    -0.324 | 0.747 | 0.747 | ns           | 146 |     -0.324 | 0.747 |  0.747 | ns            |
| Controle     |      |        | Indígena |       | pre      | pos          |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          |       | Branca   | Indígena     |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          |       | Branca   | Parda        |  72 |    -0.094 | 0.926 | 0.926 | ns           |  72 |     -0.094 | 0.926 |  0.926 | ns            |
| Controle     |      |        |          |       | Indígena | Parda        |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        | Parda    |       | pre      | pos          | 146 |    -1.112 | 0.268 | 0.268 | ns           | 146 |     -1.112 | 0.268 |  0.268 | ns            |
| Experimental |      |        | Branca   |       | pre      | pos          | 146 |    -0.694 | 0.489 | 0.489 | ns           | 146 |     -0.694 | 0.489 |  0.489 | ns            |
| Experimental |      |        | Indígena |       | pre      | pos          | 146 |    -0.992 | 0.323 | 0.323 | ns           | 146 |     -0.992 | 0.323 |  0.323 | ns            |
| Experimental |      |        |          |       | Branca   | Indígena     |  72 |    -0.962 | 0.339 | 1.000 | ns           |  72 |     -0.962 | 0.339 |  1.000 | ns            |
| Experimental |      |        |          |       | Branca   | Parda        |  72 |     0.602 | 0.549 | 1.000 | ns           |  72 |      0.602 | 0.549 |  1.000 | ns            |
| Experimental |      |        |          |       | Indígena | Parda        |  72 |     1.668 | 0.100 | 0.299 | ns           |  72 |      1.668 | 0.100 |  0.299 | ns            |
| Experimental |      |        | Parda    |       | pre      | pos          | 146 |     0.240 | 0.811 | 0.811 | ns           | 146 |      0.240 | 0.811 |  0.811 | ns            |
|              |      |        | Branca   |       | Controle | Experimental |  72 |     0.093 | 0.926 | 0.926 | ns           |  72 |      0.093 | 0.926 |  0.926 | ns            |
|              |      |        | Indígena |       | Controle | Experimental |     |           |       |       |              |     |            |       |        |               |
|              |      |        | Parda    |       | Controle | Experimental |  72 |     1.191 | 0.238 | 0.238 | ns           |  72 |      1.191 | 0.238 |  0.238 | ns            |
| Controle     |      |        |          | 6 ano | pre      | pos          | 274 |    -1.587 | 0.114 | 0.114 | ns           | 274 |     -1.587 | 0.114 |  0.114 | ns            |
| Controle     |      |        |          | 7 ano | pre      | pos          | 274 |    -1.023 | 0.307 | 0.307 | ns           | 274 |     -1.023 | 0.307 |  0.307 | ns            |
| Controle     |      |        |          | 8 ano | pre      | pos          | 274 |    -0.223 | 0.824 | 0.824 | ns           | 274 |     -0.223 | 0.824 |  0.824 | ns            |
| Controle     |      |        |          | 9 ano | pre      | pos          | 274 |    -0.348 | 0.728 | 0.728 | ns           | 274 |     -0.348 | 0.728 |  0.728 | ns            |
| Controle     |      |        |          |       | 6 ano    | 7 ano        | 136 |     0.172 | 0.864 | 1.000 | ns           | 136 |      0.172 | 0.864 |  1.000 | ns            |
| Controle     |      |        |          |       | 6 ano    | 8 ano        | 136 |     1.067 | 0.288 | 1.000 | ns           | 136 |      1.067 | 0.288 |  1.000 | ns            |
| Controle     |      |        |          |       | 6 ano    | 9 ano        | 136 |     0.630 | 0.530 | 1.000 | ns           | 136 |      0.630 | 0.530 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 8 ano        | 136 |     0.916 | 0.361 | 1.000 | ns           | 136 |      0.916 | 0.361 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 9 ano        | 136 |     0.479 | 0.633 | 1.000 | ns           | 136 |      0.479 | 0.633 |  1.000 | ns            |
| Controle     |      |        |          |       | 8 ano    | 9 ano        | 136 |    -0.410 | 0.682 | 1.000 | ns           | 136 |     -0.410 | 0.682 |  1.000 | ns            |
| Experimental |      |        |          | 6 ano | pre      | pos          | 274 |     0.571 | 0.569 | 0.569 | ns           | 274 |      0.571 | 0.569 |  0.569 | ns            |
| Experimental |      |        |          | 7 ano | pre      | pos          | 274 |    -0.992 | 0.322 | 0.322 | ns           | 274 |     -0.992 | 0.322 |  0.322 | ns            |
| Experimental |      |        |          | 8 ano | pre      | pos          | 274 |     0.171 | 0.865 | 0.865 | ns           | 274 |      0.171 | 0.865 |  0.865 | ns            |
| Experimental |      |        |          | 9 ano | pre      | pos          | 274 |    -0.094 | 0.925 | 0.925 | ns           | 274 |     -0.094 | 0.925 |  0.925 | ns            |
| Experimental |      |        |          |       | 6 ano    | 7 ano        | 136 |    -1.123 | 0.263 | 1.000 | ns           | 136 |     -1.123 | 0.263 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 8 ano        | 136 |     0.900 | 0.370 | 1.000 | ns           | 136 |      0.900 | 0.370 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 9 ano        | 136 |     0.261 | 0.795 | 1.000 | ns           | 136 |      0.261 | 0.795 |  1.000 | ns            |
| Experimental |      |        |          |       | 7 ano    | 8 ano        | 136 |     1.894 | 0.060 | 0.362 | ns           | 136 |      1.894 | 0.060 |  0.362 | ns            |
| Experimental |      |        |          |       | 7 ano    | 9 ano        | 136 |     1.241 | 0.217 | 1.000 | ns           | 136 |      1.241 | 0.217 |  1.000 | ns            |
| Experimental |      |        |          |       | 8 ano    | 9 ano        | 136 |    -0.565 | 0.573 | 1.000 | ns           | 136 |     -0.565 | 0.573 |  1.000 | ns            |
|              |      |        |          | 6 ano | Controle | Experimental | 136 |     1.110 | 0.269 | 0.269 | ns           | 136 |      1.110 | 0.269 |  0.269 | ns            |
|              |      |        |          | 7 ano | Controle | Experimental | 136 |    -0.398 | 0.691 | 0.691 | ns           | 136 |     -0.398 | 0.691 |  0.691 | ns            |
|              |      |        |          | 8 ano | Controle | Experimental | 136 |     1.019 | 0.310 | 0.310 | ns           | 136 |      1.019 | 0.310 |  0.310 | ns            |
|              |      |        |          | 9 ano | Controle | Experimental | 136 |     0.688 | 0.493 | 0.493 | ns           | 136 |      0.688 | 0.493 |  0.493 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores), names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | N-N’ |
|:-------------|:-----|:-------|:---------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|-----:|
| Controle     |      |        |          |       |  30 |   3.259 |    0.095 |     3.916 |      0.061 |   3.986 |    0.042 |  99 |    3.290 |     0.049 |      3.426 |       0.055 |    3.423 |     0.053 |  -69 |
| Experimental |      |        |          |       |  16 |   3.632 |    0.140 |     3.958 |      0.105 |   3.827 |    0.059 |  46 |    3.271 |     0.089 |      3.284 |       0.099 |    3.291 |     0.078 |  -30 |
| Controle     | F    |        |          |       |  15 |   3.356 |    0.117 |     3.833 |      0.081 |   3.837 |    0.058 |  45 |    3.310 |     0.069 |      3.389 |       0.076 |    3.375 |     0.079 |  -30 |
| Controle     | M    |        |          |       |  22 |   3.177 |    0.116 |     3.794 |      0.079 |   3.906 |    0.049 |  54 |    3.273 |     0.069 |      3.456 |       0.079 |    3.462 |     0.072 |  -32 |
| Experimental | F    |        |          |       |   7 |   3.460 |    0.263 |     3.825 |      0.189 |   3.766 |    0.086 |  17 |    3.046 |     0.167 |      3.218 |       0.188 |    3.341 |     0.130 |  -10 |
| Experimental | M    |        |          |       |  11 |   3.677 |    0.129 |     3.859 |      0.131 |   3.668 |    0.071 |  29 |    3.402 |     0.096 |      3.323 |       0.115 |    3.262 |     0.099 |  -18 |
| Controle     |      | Rural  |          |       |  54 |   3.274 |    0.075 |     3.406 |      0.072 |   3.396 |    0.074 |  54 |    3.274 |     0.075 |      3.406 |       0.072 |    3.396 |     0.074 |    0 |
| Controle     |      | Urbana |          |       |  17 |   3.222 |    0.116 |     3.611 |      0.182 |   3.629 |    0.132 |  17 |    3.222 |     0.116 |      3.611 |       0.182 |    3.629 |     0.132 |    0 |
| Experimental |      | Rural  |          |       |  29 |   3.360 |    0.097 |     3.280 |      0.121 |   3.224 |    0.102 |  29 |    3.360 |     0.097 |      3.280 |       0.121 |    3.224 |     0.102 |    0 |
| Experimental |      | Urbana |          |       |   8 |   2.819 |    0.259 |     3.184 |      0.260 |   3.416 |    0.197 |   8 |    2.819 |     0.259 |      3.184 |       0.260 |    3.416 |     0.197 |    0 |
| Controle     |      |        | Branca   |       |   9 |   3.395 |    0.184 |     3.481 |      0.201 |   3.453 |    0.177 |   9 |    3.395 |     0.184 |      3.481 |       0.201 |    3.453 |     0.177 |    0 |
| Controle     |      |        | Parda    |       |  46 |   3.346 |    0.081 |     3.478 |      0.081 |   3.471 |    0.078 |  46 |    3.346 |     0.081 |      3.478 |       0.081 |    3.471 |     0.078 |    0 |
| Experimental |      |        | Branca   |       |   6 |   3.093 |    0.232 |     3.319 |      0.236 |   3.427 |    0.218 |   6 |    3.093 |     0.232 |      3.319 |       0.236 |    3.427 |     0.218 |    0 |
| Experimental |      |        | Indígena |       |   5 |   3.422 |    0.247 |     3.778 |      0.355 |   3.737 |    0.237 |   5 |    3.422 |     0.247 |      3.778 |       0.355 |    3.737 |     0.237 |    0 |
| Experimental |      |        | Parda    |       |  12 |   3.315 |    0.156 |     3.259 |      0.170 |   3.267 |    0.153 |  12 |    3.315 |     0.156 |      3.259 |       0.170 |    3.267 |     0.153 |    0 |
| Controle     |      |        |          | 6 ano |  32 |   3.232 |    0.090 |     3.452 |      0.103 |   3.477 |    0.094 |  32 |    3.232 |     0.090 |      3.452 |       0.103 |    3.477 |     0.094 |    0 |
| Controle     |      |        |          | 7 ano |  31 |   3.336 |    0.087 |     3.480 |      0.104 |   3.455 |    0.095 |  31 |    3.336 |     0.087 |      3.480 |       0.104 |    3.455 |     0.095 |    0 |
| Controle     |      |        |          | 8 ano |  17 |   3.248 |    0.124 |     3.291 |      0.134 |   3.308 |    0.128 |  17 |    3.248 |     0.124 |      3.291 |       0.134 |    3.308 |     0.128 |    0 |
| Controle     |      |        |          | 9 ano |  19 |   3.351 |    0.105 |     3.414 |      0.097 |   3.381 |    0.121 |  19 |    3.351 |     0.105 |      3.414 |       0.097 |    3.381 |     0.121 |    0 |
| Experimental |      |        |          | 6 ano |  15 |   3.526 |    0.150 |     3.410 |      0.151 |   3.292 |    0.138 |  15 |    3.526 |     0.150 |      3.410 |       0.151 |    3.292 |     0.138 |    0 |
| Experimental |      |        |          | 7 ano |  11 |   3.303 |    0.161 |     3.538 |      0.222 |   3.528 |    0.159 |  11 |    3.303 |     0.161 |      3.538 |       0.222 |    3.528 |     0.159 |    0 |
| Experimental |      |        |          | 8 ano |  11 |   3.000 |    0.195 |     2.960 |      0.205 |   3.098 |    0.161 |  11 |    3.000 |     0.195 |      2.960 |       0.205 |    3.098 |     0.161 |    0 |
| Experimental |      |        |          | 9 ano |   9 |   3.136 |    0.194 |     3.160 |      0.216 |   3.233 |    0.177 |   9 |    3.136 |     0.194 |      3.160 |       0.216 |    3.233 |     0.177 |    0 |
