ANCOVA in flow (debate) (flow (debate))
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
- [Summary of Results](#summary-of-results)
  - [Descriptive Statistics](#descriptive-statistics)
  - [ANCOVA Table Comparison](#ancova-table-comparison)
  - [PairWise Table Comparison](#pairwise-table-comparison)
  - [EMMS Table Comparison](#emms-table-comparison)

**NOTE**:

- Teste ANCOVA para determinar se houve diferenças significativas no
  flow (debate) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (debate) (measured using pre- and post-tests).

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

``` r
(df <- df[,c(fatores1[fatores1 %in% colnames(df)],"variable",
             colnames(df)[!colnames(df) %in% c(fatores1,"variable")])])
```

    ##           grupo Sexo   Zona Cor.Raca        variable   n  mean median   min   max    sd    se    ci   iqr
    ## 1      Controle <NA>   <NA>     <NA> dfs.media.debat  88 3.365  3.333 2.111 4.667 0.502 0.053 0.106 0.583
    ## 2  Experimental <NA>   <NA>     <NA> dfs.media.debat  35 3.379  3.222 2.222 4.556 0.575 0.097 0.197 0.500
    ## 3          <NA> <NA>   <NA>     <NA> dfs.media.debat 123 3.369  3.333 2.111 4.667 0.521 0.047 0.093 0.556
    ## 4      Controle <NA>   <NA>     <NA> fss.media.debat  88 3.431  3.444 2.222 5.000 0.520 0.055 0.110 0.556
    ## 5  Experimental <NA>   <NA>     <NA> fss.media.debat  35 3.348  3.556 2.000 4.556 0.666 0.113 0.229 1.000
    ## 6          <NA> <NA>   <NA>     <NA> fss.media.debat 123 3.408  3.444 2.000 5.000 0.564 0.051 0.101 0.611
    ## 7      Controle    F   <NA>     <NA> dfs.media.debat  41 3.415  3.333 2.333 4.667 0.480 0.075 0.151 0.556
    ## 8      Controle    M   <NA>     <NA> dfs.media.debat  47 3.321  3.333 2.111 4.667 0.521 0.076 0.153 0.667
    ## 9  Experimental    F   <NA>     <NA> dfs.media.debat  11 3.121  3.111 2.444 3.889 0.480 0.145 0.323 0.778
    ## 10 Experimental    M   <NA>     <NA> dfs.media.debat  24 3.497  3.354 2.222 4.556 0.585 0.119 0.247 0.778
    ## 11     Controle    F   <NA>     <NA> fss.media.debat  41 3.459  3.556 2.222 4.444 0.530 0.083 0.167 0.556
    ## 12     Controle    M   <NA>     <NA> fss.media.debat  47 3.407  3.444 2.222 5.000 0.516 0.075 0.151 0.611
    ## 13 Experimental    F   <NA>     <NA> fss.media.debat  11 3.417  3.556 2.444 4.444 0.594 0.179 0.399 0.778
    ## 14 Experimental    M   <NA>     <NA> fss.media.debat  24 3.317  3.500 2.000 4.556 0.706 0.144 0.298 1.066
    ## 15     Controle <NA>  Rural     <NA> dfs.media.debat  54 3.316  3.292 2.111 4.667 0.543 0.074 0.148 0.667
    ## 16     Controle <NA> Urbana     <NA> dfs.media.debat   9 3.460  3.222 2.889 4.667 0.552 0.184 0.424 0.413
    ## 17     Controle <NA>   <NA>     <NA> dfs.media.debat  25 3.436  3.444 2.667 4.222 0.381 0.076 0.157 0.444
    ## 18 Experimental <NA>  Rural     <NA> dfs.media.debat  29 3.388  3.333 2.222 4.556 0.570 0.106 0.217 0.444
    ## 19 Experimental <NA>   <NA>     <NA> dfs.media.debat   6 3.333  3.167 2.667 4.333 0.652 0.266 0.684 0.861
    ## 20     Controle <NA>  Rural     <NA> fss.media.debat  54 3.402  3.444 2.222 4.444 0.492 0.067 0.134 0.556
    ## 21     Controle <NA> Urbana     <NA> fss.media.debat   9 3.674  3.556 2.889 5.000 0.751 0.250 0.577 1.222
    ## 22     Controle <NA>   <NA>     <NA> fss.media.debat  25 3.406  3.556 2.222 4.333 0.482 0.096 0.199 0.556
    ## 23 Experimental <NA>  Rural     <NA> fss.media.debat  29 3.356  3.556 2.111 4.444 0.624 0.116 0.237 1.000
    ## 24 Experimental <NA>   <NA>     <NA> fss.media.debat   6 3.312  3.222 2.000 4.556 0.913 0.373 0.958 1.010
    ## 25     Controle <NA>   <NA>   Branca dfs.media.debat   9 3.198  3.444 2.111 4.111 0.654 0.218 0.503 0.778
    ## 26     Controle <NA>   <NA>    Parda dfs.media.debat  46 3.453  3.333 2.222 4.667 0.514 0.076 0.153 0.639
    ## 27     Controle <NA>   <NA>    Preta dfs.media.debat   1 3.222  3.222 3.222 3.222    NA    NA   NaN 0.000
    ## 28     Controle <NA>   <NA>     <NA> dfs.media.debat  32 3.289  3.333 2.556 4.111 0.432 0.076 0.156 0.500
    ## 29 Experimental <NA>   <NA>   Branca dfs.media.debat   5 3.244  3.444 2.222 3.556 0.574 0.257 0.713 0.111
    ## 30 Experimental <NA>   <NA> Indígena dfs.media.debat   5 3.475  3.444 2.556 4.333 0.638 0.285 0.793 0.292
    ## 31 Experimental <NA>   <NA>    Parda dfs.media.debat  11 3.404  3.222 2.444 4.556 0.652 0.197 0.438 0.556
    ## 32 Experimental <NA>   <NA>     <NA> dfs.media.debat  14 3.373  3.222 2.667 4.444 0.547 0.146 0.316 0.611
    ## 33     Controle <NA>   <NA>   Branca fss.media.debat   9 3.210  3.222 2.222 3.889 0.557 0.186 0.428 0.444
    ## 34     Controle <NA>   <NA>    Parda fss.media.debat  46 3.481  3.472 2.667 5.000 0.512 0.076 0.152 0.556
    ## 35     Controle <NA>   <NA>    Preta fss.media.debat   1 3.444  3.444 3.444 3.444    NA    NA   NaN 0.000
    ## 36     Controle <NA>   <NA>     <NA> fss.media.debat  32 3.421  3.500 2.222 4.444 0.528 0.093 0.190 0.667
    ## 37 Experimental <NA>   <NA>   Branca fss.media.debat   5 3.022  3.111 2.111 3.889 0.743 0.332 0.922 1.111
    ## 38 Experimental <NA>   <NA> Indígena fss.media.debat   5 3.778  3.556 2.889 4.556 0.707 0.316 0.878 1.000
    ## 39 Experimental <NA>   <NA>    Parda fss.media.debat  11 3.253  3.111 2.556 3.889 0.456 0.137 0.306 0.722
    ## 40 Experimental <NA>   <NA>     <NA> fss.media.debat  14 3.387  3.590 2.000 4.444 0.745 0.199 0.430 1.094
    ##    symmetry     skewness    kurtosis
    ## 1       YES  0.163516310  0.25478463
    ## 2       YES  0.347775268 -0.39736687
    ## 3       YES  0.241636453  0.10384049
    ## 4       YES  0.121410027  0.25842656
    ## 5       YES -0.162890273 -0.88211671
    ## 6       YES -0.054727297 -0.06377314
    ## 7       YES  0.358596502  0.13866635
    ## 8       YES  0.066793859  0.11242862
    ## 9       YES  0.085520398 -1.54636862
    ## 10      YES  0.282289481 -0.52827652
    ## 11      YES -0.068396322 -0.23234460
    ## 12      YES  0.290316636  0.65564384
    ## 13      YES  0.106052775 -1.18456582
    ## 14      YES -0.186123196 -1.04821907
    ## 15      YES  0.111777823 -0.10497728
    ## 16       NO  1.074590681 -0.19079883
    ## 17      YES  0.047367004 -0.59533796
    ## 18      YES  0.308078959 -0.19420790
    ## 19      YES  0.416333754 -1.71495854
    ## 20      YES -0.085300808 -0.30746097
    ## 21       NO  0.504872058 -1.45389640
    ## 22       NO -0.627659159  0.09042396
    ## 23      YES -0.186921846 -0.97295757
    ## 24      YES -0.035155320 -1.64623443
    ## 25      YES -0.419126827 -1.33379860
    ## 26      YES  0.358912900  0.20450195
    ## 27 few data  0.000000000  0.00000000
    ## 28      YES  0.212955694 -0.78717726
    ## 29 few data  0.000000000  0.00000000
    ## 30      YES -0.106814109 -1.48337126
    ## 31       NO  0.509920509 -0.98514847
    ## 32       NO  0.744593680 -0.83191968
    ## 33       NO -0.593394923 -1.17387887
    ## 34       NO  0.661497771  0.20507264
    ## 35 few data  0.000000000  0.00000000
    ## 36      YES -0.305875981 -0.36455136
    ## 37      YES -0.071151438 -2.05057970
    ## 38      YES  0.009311694 -2.03795153
    ## 39      YES -0.106534981 -1.65716207
    ## 40      YES -0.398827301 -1.29493581

| grupo        | Sexo | Zona   | Cor.Raca | variable        |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:----------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          | dfs.media.debat |  88 | 3.365 |  3.333 | 2.111 | 4.667 | 0.502 | 0.053 | 0.106 | 0.583 | YES      |    0.164 |    0.255 |
| Experimental |      |        |          | dfs.media.debat |  35 | 3.379 |  3.222 | 2.222 | 4.556 | 0.575 | 0.097 | 0.197 | 0.500 | YES      |    0.348 |   -0.397 |
|              |      |        |          | dfs.media.debat | 123 | 3.369 |  3.333 | 2.111 | 4.667 | 0.521 | 0.047 | 0.093 | 0.556 | YES      |    0.242 |    0.104 |
| Controle     |      |        |          | fss.media.debat |  88 | 3.431 |  3.444 | 2.222 | 5.000 | 0.520 | 0.055 | 0.110 | 0.556 | YES      |    0.121 |    0.258 |
| Experimental |      |        |          | fss.media.debat |  35 | 3.348 |  3.556 | 2.000 | 4.556 | 0.666 | 0.113 | 0.229 | 1.000 | YES      |   -0.163 |   -0.882 |
|              |      |        |          | fss.media.debat | 123 | 3.408 |  3.444 | 2.000 | 5.000 | 0.564 | 0.051 | 0.101 | 0.611 | YES      |   -0.055 |   -0.064 |
| Controle     | F    |        |          | dfs.media.debat |  41 | 3.415 |  3.333 | 2.333 | 4.667 | 0.480 | 0.075 | 0.151 | 0.556 | YES      |    0.359 |    0.139 |
| Controle     | M    |        |          | dfs.media.debat |  47 | 3.321 |  3.333 | 2.111 | 4.667 | 0.521 | 0.076 | 0.153 | 0.667 | YES      |    0.067 |    0.112 |
| Experimental | F    |        |          | dfs.media.debat |  11 | 3.121 |  3.111 | 2.444 | 3.889 | 0.480 | 0.145 | 0.323 | 0.778 | YES      |    0.086 |   -1.546 |
| Experimental | M    |        |          | dfs.media.debat |  24 | 3.497 |  3.354 | 2.222 | 4.556 | 0.585 | 0.119 | 0.247 | 0.778 | YES      |    0.282 |   -0.528 |
| Controle     | F    |        |          | fss.media.debat |  41 | 3.459 |  3.556 | 2.222 | 4.444 | 0.530 | 0.083 | 0.167 | 0.556 | YES      |   -0.068 |   -0.232 |
| Controle     | M    |        |          | fss.media.debat |  47 | 3.407 |  3.444 | 2.222 | 5.000 | 0.516 | 0.075 | 0.151 | 0.611 | YES      |    0.290 |    0.656 |
| Experimental | F    |        |          | fss.media.debat |  11 | 3.417 |  3.556 | 2.444 | 4.444 | 0.594 | 0.179 | 0.399 | 0.778 | YES      |    0.106 |   -1.185 |
| Experimental | M    |        |          | fss.media.debat |  24 | 3.317 |  3.500 | 2.000 | 4.556 | 0.706 | 0.144 | 0.298 | 1.066 | YES      |   -0.186 |   -1.048 |
| Controle     |      | Rural  |          | dfs.media.debat |  54 | 3.316 |  3.292 | 2.111 | 4.667 | 0.543 | 0.074 | 0.148 | 0.667 | YES      |    0.112 |   -0.105 |
| Controle     |      | Urbana |          | dfs.media.debat |   9 | 3.460 |  3.222 | 2.889 | 4.667 | 0.552 | 0.184 | 0.424 | 0.413 | NO       |    1.075 |   -0.191 |
| Controle     |      |        |          | dfs.media.debat |  25 | 3.436 |  3.444 | 2.667 | 4.222 | 0.381 | 0.076 | 0.157 | 0.444 | YES      |    0.047 |   -0.595 |
| Experimental |      | Rural  |          | dfs.media.debat |  29 | 3.388 |  3.333 | 2.222 | 4.556 | 0.570 | 0.106 | 0.217 | 0.444 | YES      |    0.308 |   -0.194 |
| Experimental |      |        |          | dfs.media.debat |   6 | 3.333 |  3.167 | 2.667 | 4.333 | 0.652 | 0.266 | 0.684 | 0.861 | YES      |    0.416 |   -1.715 |
| Controle     |      | Rural  |          | fss.media.debat |  54 | 3.402 |  3.444 | 2.222 | 4.444 | 0.492 | 0.067 | 0.134 | 0.556 | YES      |   -0.085 |   -0.307 |
| Controle     |      | Urbana |          | fss.media.debat |   9 | 3.674 |  3.556 | 2.889 | 5.000 | 0.751 | 0.250 | 0.577 | 1.222 | NO       |    0.505 |   -1.454 |
| Controle     |      |        |          | fss.media.debat |  25 | 3.406 |  3.556 | 2.222 | 4.333 | 0.482 | 0.096 | 0.199 | 0.556 | NO       |   -0.628 |    0.090 |
| Experimental |      | Rural  |          | fss.media.debat |  29 | 3.356 |  3.556 | 2.111 | 4.444 | 0.624 | 0.116 | 0.237 | 1.000 | YES      |   -0.187 |   -0.973 |
| Experimental |      |        |          | fss.media.debat |   6 | 3.312 |  3.222 | 2.000 | 4.556 | 0.913 | 0.373 | 0.958 | 1.010 | YES      |   -0.035 |   -1.646 |
| Controle     |      |        | Branca   | dfs.media.debat |   9 | 3.198 |  3.444 | 2.111 | 4.111 | 0.654 | 0.218 | 0.503 | 0.778 | YES      |   -0.419 |   -1.334 |
| Controle     |      |        | Parda    | dfs.media.debat |  46 | 3.453 |  3.333 | 2.222 | 4.667 | 0.514 | 0.076 | 0.153 | 0.639 | YES      |    0.359 |    0.205 |
| Controle     |      |        | Preta    | dfs.media.debat |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          | dfs.media.debat |  32 | 3.289 |  3.333 | 2.556 | 4.111 | 0.432 | 0.076 | 0.156 | 0.500 | YES      |    0.213 |   -0.787 |
| Experimental |      |        | Branca   | dfs.media.debat |   5 | 3.244 |  3.444 | 2.222 | 3.556 | 0.574 | 0.257 | 0.713 | 0.111 | few data |    0.000 |    0.000 |
| Experimental |      |        | Indígena | dfs.media.debat |   5 | 3.475 |  3.444 | 2.556 | 4.333 | 0.638 | 0.285 | 0.793 | 0.292 | YES      |   -0.107 |   -1.483 |
| Experimental |      |        | Parda    | dfs.media.debat |  11 | 3.404 |  3.222 | 2.444 | 4.556 | 0.652 | 0.197 | 0.438 | 0.556 | NO       |    0.510 |   -0.985 |
| Experimental |      |        |          | dfs.media.debat |  14 | 3.373 |  3.222 | 2.667 | 4.444 | 0.547 | 0.146 | 0.316 | 0.611 | NO       |    0.745 |   -0.832 |
| Controle     |      |        | Branca   | fss.media.debat |   9 | 3.210 |  3.222 | 2.222 | 3.889 | 0.557 | 0.186 | 0.428 | 0.444 | NO       |   -0.593 |   -1.174 |
| Controle     |      |        | Parda    | fss.media.debat |  46 | 3.481 |  3.472 | 2.667 | 5.000 | 0.512 | 0.076 | 0.152 | 0.556 | NO       |    0.661 |    0.205 |
| Controle     |      |        | Preta    | fss.media.debat |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          | fss.media.debat |  32 | 3.421 |  3.500 | 2.222 | 4.444 | 0.528 | 0.093 | 0.190 | 0.667 | YES      |   -0.306 |   -0.365 |
| Experimental |      |        | Branca   | fss.media.debat |   5 | 3.022 |  3.111 | 2.111 | 3.889 | 0.743 | 0.332 | 0.922 | 1.111 | YES      |   -0.071 |   -2.051 |
| Experimental |      |        | Indígena | fss.media.debat |   5 | 3.778 |  3.556 | 2.889 | 4.556 | 0.707 | 0.316 | 0.878 | 1.000 | YES      |    0.009 |   -2.038 |
| Experimental |      |        | Parda    | fss.media.debat |  11 | 3.253 |  3.111 | 2.556 | 3.889 | 0.456 | 0.137 | 0.306 | 0.722 | YES      |   -0.107 |   -1.657 |
| Experimental |      |        |          | fss.media.debat |  14 | 3.387 |  3.590 | 2.000 | 4.444 | 0.745 | 0.199 | 0.430 | 1.094 | YES      |   -0.399 |   -1.295 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "fss.media.debat", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.debat"]] <- c(pdat[["dfs.media.debat"]], pdat[["fss.media.debat"]])

aov = anova_test(pdat, fss.media.debat ~ dfs.media.debat + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, fss.media.debat ~ grupo, covariate = dfs.media.debat,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          flow.debat ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.debat", "grupo", covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.debat ~ dfs.media.debat + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.debat"]] <- c(wdat[["dfs.media.debat"]], wdat[["fss.media.debat"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.debat ~ dfs.media.debat + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##            Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.debat   1 120 19.387 2.33e-05     * 0.139
    ## 2           grupo   1 120  0.709 4.01e-01       0.006

| Effect          | DFn | DFd |      F |     p | p\<.05 |   ges |
|:----------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.debat |   1 | 120 | 19.387 | 0.000 | \*     | 0.139 |
| grupo           |   1 | 120 |  0.709 | 0.401 |        | 0.006 |

| term                   | .y.             | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-----------------------|:----------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
| dfs.media.debat\*grupo | fss.media.debat | Controle | Experimental | 120 |     0.842 | 0.401 | 0.401 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]], by=c("grupo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | term | .y.        | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.debat | pre    | pos    | 242 |    -0.811 | 0.418 | 0.418 | ns           |
| Experimental | time | flow.debat | pre    | pos    | 242 |     0.235 | 0.815 | 0.815 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.debat", "grupo", covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     |  88 |   3.365 |    0.053 |     3.431 |      0.055 |   3.433 |    0.056 |
| Experimental |  35 |   3.379 |    0.097 |     3.348 |      0.113 |   3.344 |    0.089 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.debat", "grupo", aov, list("grupo"=pwc), addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.debat", "grupo", aov, pwc, covar = "dfs.media.debat",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (debate)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.debat", "grupo", aov, pwc.long, pre.post = "time",
    theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (debate)")
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.debat", y = "fss.media.debat", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  )
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.debat ~ dfs.media.debat + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.995   0.962

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic      p
    ##   <int> <int>     <dbl>  <dbl>
    ## 1     1   121      3.42 0.0668

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),], "fss.media.debat", c("grupo","Sexo"))

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.debat"]] <- c(pdat[["dfs.media.debat"]], pdat[["fss.media.debat"]])

aov = anova_test(pdat, fss.media.debat ~ dfs.media.debat + grupo*Sexo)
laov[["grupo:Sexo"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.debat ~ Sexo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Sexo), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.debat", c("grupo","Sexo"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.debat ~ dfs.media.debat + grupo*Sexo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.debat"]] <- c(wdat[["dfs.media.debat"]], wdat[["fss.media.debat"]])


ldat[["grupo:Sexo"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.debat ~ dfs.media.debat + grupo*Sexo)
laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##            Effect DFn DFd      F        p p<.05   ges
    ## 1 dfs.media.debat   1 118 20.644 1.35e-05     * 0.149
    ## 2           grupo   1 118  0.527 4.69e-01       0.004
    ## 3            Sexo   1 118  0.605 4.38e-01       0.005
    ## 4      grupo:Sexo   1 118  1.177 2.80e-01       0.010

| Effect          | DFn | DFd |      F |     p | p\<.05 |   ges |
|:----------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.debat |   1 | 118 | 20.644 | 0.000 | \*     | 0.149 |
| grupo           |   1 | 118 |  0.527 | 0.469 |        | 0.004 |
| Sexo            |   1 | 118 |  0.605 | 0.438 |        | 0.005 |
| grupo:Sexo      |   1 | 118 |  1.177 | 0.280 |        | 0.010 |

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.debat ~ Sexo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Sexo), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

| grupo        | Sexo | term                   | .y.             | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----------------------|:----------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | F    | dfs.media.debat\*grupo | fss.media.debat | Controle | Experimental | 118 |    -0.451 | 0.653 | 0.653 | ns           |
|              | M    | dfs.media.debat\*grupo | fss.media.debat | Controle | Experimental | 118 |     1.233 | 0.220 | 0.220 | ns           |
| Controle     |      | dfs.media.debat\*Sexo  | fss.media.debat | F        | M            | 118 |     0.116 | 0.908 | 0.908 | ns           |
| Experimental |      | dfs.media.debat\*Sexo  | fss.media.debat | F        | M            | 118 |     1.328 | 0.187 | 0.187 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Sexo"]], by=c("grupo","Sexo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Sexo | term | .y.        | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:-----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | flow.debat | pre    | pos    | 238 |    -0.372 | 0.710 | 0.710 | ns           |
| Controle     | M    | time | flow.debat | pre    | pos    | 238 |    -0.764 | 0.446 | 0.446 | ns           |
| Experimental | F    | time | flow.debat | pre    | pos    | 238 |    -1.275 | 0.204 | 0.204 | ns           |
| Experimental | M    | time | flow.debat | pre    | pos    | 238 |     1.147 | 0.253 | 0.253 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.debat", c("grupo","Sexo"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]], by=c("grupo","Sexo"), suffixes = c("","'"))
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | F    |  41 |   3.415 |    0.075 |     3.459 |      0.083 |   3.440 |    0.082 |
| Controle     | M    |  47 |   3.321 |    0.076 |     3.407 |      0.075 |   3.427 |    0.077 |
| Experimental | F    |  11 |   3.121 |    0.145 |     3.417 |      0.179 |   3.522 |    0.160 |
| Experimental | M    |  24 |   3.497 |    0.119 |     3.317 |      0.144 |   3.263 |    0.108 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.debat", c("grupo","Sexo"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Sexo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (!is.null(plots[["Sexo"]]))
  plots[["Sexo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.debat", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.debat",
  theme = "classic", color = color[["grupo:Sexo"]],
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (debate)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.debat", c("grupo","Sexo"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (debate)")
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.debat", y = "fss.media.debat", size = 0.5,
          facet.by = c("grupo","Sexo"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.debat ~ dfs.media.debat + grupo*Sexo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.994   0.910

``` r
levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   119      1.72 0.166

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),], "fss.media.debat", c("grupo","Zona"))

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.debat"]] <- c(pdat[["dfs.media.debat"]], pdat[["fss.media.debat"]])

aov = anova_test(pdat, fss.media.debat ~ dfs.media.debat + grupo*Zona)
laov[["grupo:Zona"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.debat ~ Zona,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Zona), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.debat", c("grupo","Zona"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.debat ~ dfs.media.debat + grupo*Zona, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.debat"]] <- c(wdat[["dfs.media.debat"]], wdat[["fss.media.debat"]])


ldat[["grupo:Zona"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.debat ~ dfs.media.debat + grupo*Zona)
laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##            Effect DFn DFd      F     p p<.05   ges
    ## 1 dfs.media.debat   1  88 10.345 0.002     * 0.105
    ## 2           grupo   1  88  0.325 0.570       0.004
    ## 3            Zona   1  88  1.345 0.249       0.015
    ## 4      grupo:Zona   0  88     NA    NA  <NA>    NA

| Effect          | DFn | DFd |      F |     p | p\<.05 |   ges |
|:----------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.debat |   1 |  88 | 10.345 | 0.002 | \*     | 0.105 |
| grupo           |   1 |  88 |  0.325 | 0.570 |        | 0.004 |
| Zona            |   1 |  88 |  1.345 | 0.249 |        | 0.015 |
| grupo:Zona      |   0 |  88 |        |       |        |       |

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.debat ~ Zona,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Zona), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

| grupo        | Zona   | term                   | .y.             | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----------------------|:----------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | dfs.media.debat\*grupo | fss.media.debat | Controle | Experimental |  88 |      0.57 | 0.570 | 0.570 | ns           |
|              | Urbana | dfs.media.debat\*grupo | fss.media.debat | Controle | Experimental |     |           |       |       |              |
| Controle     |        | dfs.media.debat\*Zona  | fss.media.debat | Rural    | Urbana       |  88 |     -1.16 | 0.249 | 0.249 | ns           |
| Experimental |        | dfs.media.debat\*Zona  | fss.media.debat | Rural    | Urbana       |     |           |       |       |              |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Zona"]], by=c("grupo","Zona","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Zona   | term | .y.        | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:-----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | flow.debat | pre    | pos    | 178 |    -0.805 | 0.422 | 0.422 | ns           |
| Controle     | Urbana | time | flow.debat | pre    | pos    | 178 |    -0.814 | 0.417 | 0.417 | ns           |
| Experimental | Rural  | time | flow.debat | pre    | pos    | 178 |     0.222 | 0.824 | 0.824 | ns           |
| Experimental | Urbana | time | flow.debat | pre    | pos    |     |           |       |       |              |

``` r
ds <- get.descriptives(wdat, "fss.media.debat", c("grupo","Zona"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]], by=c("grupo","Zona"), suffixes = c("","'"))
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Rural  |  54 |   3.316 |    0.074 |     3.402 |      0.067 |   3.414 |    0.073 |
| Controle     | Urbana |   9 |   3.460 |    0.184 |     3.674 |      0.250 |   3.639 |    0.179 |
| Experimental | Rural  |  29 |   3.388 |    0.106 |     3.356 |      0.116 |   3.344 |    0.100 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.debat", c("grupo","Zona"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Zona"]])
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (!is.null(plots[["Zona"]]))
  plots[["Zona"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.debat", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.debat",
  theme = "classic", color = color[["grupo:Zona"]],
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (debate)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.debat", c("grupo","Zona"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (debate)")
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.debat", y = "fss.media.debat", size = 0.5,
          facet.by = c("grupo","Zona"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.debat ~ dfs.media.debat + grupo*Zona, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.990   0.750

``` r
levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     2    89      1.24 0.294

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),], "fss.media.debat", c("grupo","Cor.Raca"))
```

    ## Warning: There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning:
    ## ! There was 1 warning in `mutate()`.
    ## ℹ In argument: `ci = abs(stats::qt(alpha/2, .data$n - 1) * .data$se)`.
    ## Caused by warning in `stats::qt()`:
    ## ! NaNs produced

``` r
pdat.long <- rbind(pdat[,c("id","grupo","Cor.Raca")], pdat[,c("id","grupo","Cor.Raca")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.debat"]] <- c(pdat[["dfs.media.debat"]], pdat[["fss.media.debat"]])

aov = anova_test(pdat, fss.media.debat ~ dfs.media.debat + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.debat ~ Cor.Raca,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Cor.Raca), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.debat", c("grupo","Cor.Raca"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(fss.media.debat ~ dfs.media.debat + grupo*Cor.Raca, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["flow.debat"]] <- c(wdat[["dfs.media.debat"]], wdat[["fss.media.debat"]])


ldat[["grupo:Cor.Raca"]] = wdat

(non.normal)
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.debat ~ dfs.media.debat + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##            Effect DFn DFd         F     p p<.05      ges
    ## 1 dfs.media.debat   1  70 10.513000 0.002     * 1.31e-01
    ## 2           grupo   1  70  2.076000 0.154       2.90e-02
    ## 3        Cor.Raca   2  70  2.956000 0.059       7.80e-02
    ## 4  grupo:Cor.Raca   1  70  0.000547 0.981       7.81e-06

| Effect          | DFn | DFd |      F |     p | p\<.05 |   ges |
|:----------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.debat |   1 |  70 | 10.513 | 0.002 | \*     | 0.131 |
| grupo           |   1 |  70 |  2.076 | 0.154 |        | 0.029 |
| Cor.Raca        |   2 |  70 |  2.956 | 0.059 |        | 0.078 |
| grupo:Cor.Raca  |   1 |  70 |  0.001 | 0.981 |        | 0.000 |

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.debat ~ Cor.Raca,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Cor.Raca), fss.media.debat ~ grupo,
  covariate = dfs.media.debat, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

| grupo        | Cor.Raca | term                      | .y.             | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:--------------------------|:----------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Branca   | dfs.media.debat\*grupo    | fss.media.debat | Controle | Experimental |  70 |     0.723 | 0.472 | 0.472 | ns           |
|              | Indígena | dfs.media.debat\*grupo    | fss.media.debat | Controle | Experimental |     |           |       |       |              |
|              | Parda    | dfs.media.debat\*grupo    | fss.media.debat | Controle | Experimental |  70 |     1.246 | 0.217 | 0.217 | ns           |
| Controle     |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Branca   | Indígena     |     |           |       |       |              |
| Controle     |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Branca   | Parda        |  70 |    -0.982 | 0.330 | 0.330 | ns           |
| Controle     |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Indígena | Parda        |     |           |       |       |              |
| Experimental |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Branca   | Indígena     |  70 |    -2.108 | 0.039 | 0.116 | ns           |
| Experimental |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Branca   | Parda        |  70 |    -0.641 | 0.524 | 1.000 | ns           |
| Experimental |          | dfs.media.debat\*Cor.Raca | fss.media.debat | Indígena | Parda        |  70 |     1.836 | 0.071 | 0.212 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                         flow.debat ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Cor.Raca | term | .y.        | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:-----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Branca   | time | flow.debat | pre    | pos    | 142 |    -0.048 | 0.962 | 0.962 | ns           |
| Controle     | Indígena | time | flow.debat | pre    | pos    |     |           |       |       |              |
| Controle     | Parda    | time | flow.debat | pre    | pos    | 142 |    -0.245 | 0.807 | 0.807 | ns           |
| Experimental | Branca   | time | flow.debat | pre    | pos    | 142 |     0.638 | 0.525 | 0.525 | ns           |
| Experimental | Indígena | time | flow.debat | pre    | pos    | 142 |    -0.869 | 0.386 | 0.386 | ns           |
| Experimental | Parda    | time | flow.debat | pre    | pos    | 142 |     0.645 | 0.520 | 0.520 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.debat", c("grupo","Cor.Raca"), covar = "dfs.media.debat")
ds <- merge(ds[ds$variable != "dfs.media.debat",],
            ds[ds$variable == "dfs.media.debat", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.debat"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.debat","se.dfs.media.debat","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca"), suffixes = c("","'"))
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Branca   |   9 |   3.198 |    0.218 |     3.210 |      0.186 |   3.281 |    0.170 |
| Controle     | Parda    |  46 |   3.453 |    0.076 |     3.481 |      0.076 |   3.464 |    0.075 |
| Experimental | Branca   |   5 |   3.244 |    0.257 |     3.022 |      0.332 |   3.077 |    0.227 |
| Experimental | Indígena |   5 |   3.475 |    0.285 |     3.778 |      0.316 |   3.753 |    0.226 |
| Experimental | Parda    |  11 |   3.404 |    0.197 |     3.253 |      0.137 |   3.252 |    0.152 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.debat", c("grupo","Cor.Raca"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Cor.Raca"]])
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-90-1.png)<!-- -->

``` r
if (!is.null(plots[["Cor.Raca"]]))
  plots[["Cor.Raca"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

    ## Warning: Removed 2 rows containing non-finite values (`stat_bracket()`).

    ## Warning: Removed 1 rows containing missing values (`geom_point()`).

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.debat", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.debat",
  theme = "classic", color = color[["grupo:Cor.Raca"]],
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (debate)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-93-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.debat", c("grupo","Cor.Raca"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (debate)")
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.debat", y = "fss.media.debat", size = 0.5,
          facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](stari-flow.debat_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.debat ~ dfs.media.debat + grupo*Cor.Raca, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.985   0.518

``` r
levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     4    71     0.351 0.843

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

    ##           grupo Sexo   Zona Cor.Raca        variable   n  mean median   min   max    sd    se    ci   iqr
    ## 1      Controle <NA>   <NA>     <NA> dfs.media.debat  88 3.365  3.333 2.111 4.667 0.502 0.053 0.106 0.583
    ## 2  Experimental <NA>   <NA>     <NA> dfs.media.debat  35 3.379  3.222 2.222 4.556 0.575 0.097 0.197 0.500
    ## 3          <NA> <NA>   <NA>     <NA> dfs.media.debat 123 3.369  3.333 2.111 4.667 0.521 0.047 0.093 0.556
    ## 4      Controle <NA>   <NA>     <NA> fss.media.debat  88 3.431  3.444 2.222 5.000 0.520 0.055 0.110 0.556
    ## 5  Experimental <NA>   <NA>     <NA> fss.media.debat  35 3.348  3.556 2.000 4.556 0.666 0.113 0.229 1.000
    ## 6          <NA> <NA>   <NA>     <NA> fss.media.debat 123 3.408  3.444 2.000 5.000 0.564 0.051 0.101 0.611
    ## 7      Controle    F   <NA>     <NA> dfs.media.debat  41 3.415  3.333 2.333 4.667 0.480 0.075 0.151 0.556
    ## 8      Controle    M   <NA>     <NA> dfs.media.debat  47 3.321  3.333 2.111 4.667 0.521 0.076 0.153 0.667
    ## 9  Experimental    F   <NA>     <NA> dfs.media.debat  11 3.121  3.111 2.444 3.889 0.480 0.145 0.323 0.778
    ## 10 Experimental    M   <NA>     <NA> dfs.media.debat  24 3.497  3.354 2.222 4.556 0.585 0.119 0.247 0.778
    ## 11     Controle    F   <NA>     <NA> fss.media.debat  41 3.459  3.556 2.222 4.444 0.530 0.083 0.167 0.556
    ## 12     Controle    M   <NA>     <NA> fss.media.debat  47 3.407  3.444 2.222 5.000 0.516 0.075 0.151 0.611
    ## 13 Experimental    F   <NA>     <NA> fss.media.debat  11 3.417  3.556 2.444 4.444 0.594 0.179 0.399 0.778
    ## 14 Experimental    M   <NA>     <NA> fss.media.debat  24 3.317  3.500 2.000 4.556 0.706 0.144 0.298 1.066
    ## 15     Controle <NA>  Rural     <NA> dfs.media.debat  54 3.316  3.292 2.111 4.667 0.543 0.074 0.148 0.667
    ## 16     Controle <NA> Urbana     <NA> dfs.media.debat   9 3.460  3.222 2.889 4.667 0.552 0.184 0.424 0.413
    ## 17 Experimental <NA>  Rural     <NA> dfs.media.debat  29 3.388  3.333 2.222 4.556 0.570 0.106 0.217 0.444
    ## 18     Controle <NA>  Rural     <NA> fss.media.debat  54 3.402  3.444 2.222 4.444 0.492 0.067 0.134 0.556
    ## 19     Controle <NA> Urbana     <NA> fss.media.debat   9 3.674  3.556 2.889 5.000 0.751 0.250 0.577 1.222
    ## 20 Experimental <NA>  Rural     <NA> fss.media.debat  29 3.356  3.556 2.111 4.444 0.624 0.116 0.237 1.000
    ## 21     Controle <NA>   <NA>   Branca dfs.media.debat   9 3.198  3.444 2.111 4.111 0.654 0.218 0.503 0.778
    ## 22     Controle <NA>   <NA>    Parda dfs.media.debat  46 3.453  3.333 2.222 4.667 0.514 0.076 0.153 0.639
    ## 23 Experimental <NA>   <NA>   Branca dfs.media.debat   5 3.244  3.444 2.222 3.556 0.574 0.257 0.713 0.111
    ## 24 Experimental <NA>   <NA> Indígena dfs.media.debat   5 3.475  3.444 2.556 4.333 0.638 0.285 0.793 0.292
    ## 25 Experimental <NA>   <NA>    Parda dfs.media.debat  11 3.404  3.222 2.444 4.556 0.652 0.197 0.438 0.556
    ## 26     Controle <NA>   <NA>   Branca fss.media.debat   9 3.210  3.222 2.222 3.889 0.557 0.186 0.428 0.444
    ## 27     Controle <NA>   <NA>    Parda fss.media.debat  46 3.481  3.472 2.667 5.000 0.512 0.076 0.152 0.556
    ## 28 Experimental <NA>   <NA>   Branca fss.media.debat   5 3.022  3.111 2.111 3.889 0.743 0.332 0.922 1.111
    ## 29 Experimental <NA>   <NA> Indígena fss.media.debat   5 3.778  3.556 2.889 4.556 0.707 0.316 0.878 1.000
    ## 30 Experimental <NA>   <NA>    Parda fss.media.debat  11 3.253  3.111 2.556 3.889 0.456 0.137 0.306 0.722
    ##    symmetry     skewness    kurtosis
    ## 1       YES  0.163516310  0.25478463
    ## 2       YES  0.347775268 -0.39736687
    ## 3       YES  0.241636453  0.10384049
    ## 4       YES  0.121410027  0.25842656
    ## 5       YES -0.162890273 -0.88211671
    ## 6       YES -0.054727297 -0.06377314
    ## 7       YES  0.358596502  0.13866635
    ## 8       YES  0.066793859  0.11242862
    ## 9       YES  0.085520398 -1.54636862
    ## 10      YES  0.282289481 -0.52827652
    ## 11      YES -0.068396322 -0.23234460
    ## 12      YES  0.290316636  0.65564384
    ## 13      YES  0.106052775 -1.18456582
    ## 14      YES -0.186123196 -1.04821907
    ## 15      YES  0.111777823 -0.10497728
    ## 16       NO  1.074590681 -0.19079883
    ## 17      YES  0.308078959 -0.19420790
    ## 18      YES -0.085300808 -0.30746097
    ## 19       NO  0.504872058 -1.45389640
    ## 20      YES -0.186921846 -0.97295757
    ## 21      YES -0.419126827 -1.33379860
    ## 22      YES  0.358912900  0.20450195
    ## 23 few data  0.000000000  0.00000000
    ## 24      YES -0.106814109 -1.48337126
    ## 25       NO  0.509920509 -0.98514847
    ## 26       NO -0.593394923 -1.17387887
    ## 27       NO  0.661497771  0.20507264
    ## 28      YES -0.071151438 -2.05057970
    ## 29      YES  0.009311694 -2.03795153
    ## 30      YES -0.106534981 -1.65716207

| grupo        | Sexo | Zona   | Cor.Raca | variable        |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:----------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          | dfs.media.debat |  88 | 3.365 |  3.333 | 2.111 | 4.667 | 0.502 | 0.053 | 0.106 | 0.583 | YES      |    0.164 |    0.255 |
| Experimental |      |        |          | dfs.media.debat |  35 | 3.379 |  3.222 | 2.222 | 4.556 | 0.575 | 0.097 | 0.197 | 0.500 | YES      |    0.348 |   -0.397 |
|              |      |        |          | dfs.media.debat | 123 | 3.369 |  3.333 | 2.111 | 4.667 | 0.521 | 0.047 | 0.093 | 0.556 | YES      |    0.242 |    0.104 |
| Controle     |      |        |          | fss.media.debat |  88 | 3.431 |  3.444 | 2.222 | 5.000 | 0.520 | 0.055 | 0.110 | 0.556 | YES      |    0.121 |    0.258 |
| Experimental |      |        |          | fss.media.debat |  35 | 3.348 |  3.556 | 2.000 | 4.556 | 0.666 | 0.113 | 0.229 | 1.000 | YES      |   -0.163 |   -0.882 |
|              |      |        |          | fss.media.debat | 123 | 3.408 |  3.444 | 2.000 | 5.000 | 0.564 | 0.051 | 0.101 | 0.611 | YES      |   -0.055 |   -0.064 |
| Controle     | F    |        |          | dfs.media.debat |  41 | 3.415 |  3.333 | 2.333 | 4.667 | 0.480 | 0.075 | 0.151 | 0.556 | YES      |    0.359 |    0.139 |
| Controle     | M    |        |          | dfs.media.debat |  47 | 3.321 |  3.333 | 2.111 | 4.667 | 0.521 | 0.076 | 0.153 | 0.667 | YES      |    0.067 |    0.112 |
| Experimental | F    |        |          | dfs.media.debat |  11 | 3.121 |  3.111 | 2.444 | 3.889 | 0.480 | 0.145 | 0.323 | 0.778 | YES      |    0.086 |   -1.546 |
| Experimental | M    |        |          | dfs.media.debat |  24 | 3.497 |  3.354 | 2.222 | 4.556 | 0.585 | 0.119 | 0.247 | 0.778 | YES      |    0.282 |   -0.528 |
| Controle     | F    |        |          | fss.media.debat |  41 | 3.459 |  3.556 | 2.222 | 4.444 | 0.530 | 0.083 | 0.167 | 0.556 | YES      |   -0.068 |   -0.232 |
| Controle     | M    |        |          | fss.media.debat |  47 | 3.407 |  3.444 | 2.222 | 5.000 | 0.516 | 0.075 | 0.151 | 0.611 | YES      |    0.290 |    0.656 |
| Experimental | F    |        |          | fss.media.debat |  11 | 3.417 |  3.556 | 2.444 | 4.444 | 0.594 | 0.179 | 0.399 | 0.778 | YES      |    0.106 |   -1.185 |
| Experimental | M    |        |          | fss.media.debat |  24 | 3.317 |  3.500 | 2.000 | 4.556 | 0.706 | 0.144 | 0.298 | 1.066 | YES      |   -0.186 |   -1.048 |
| Controle     |      | Rural  |          | dfs.media.debat |  54 | 3.316 |  3.292 | 2.111 | 4.667 | 0.543 | 0.074 | 0.148 | 0.667 | YES      |    0.112 |   -0.105 |
| Controle     |      | Urbana |          | dfs.media.debat |   9 | 3.460 |  3.222 | 2.889 | 4.667 | 0.552 | 0.184 | 0.424 | 0.413 | NO       |    1.075 |   -0.191 |
| Experimental |      | Rural  |          | dfs.media.debat |  29 | 3.388 |  3.333 | 2.222 | 4.556 | 0.570 | 0.106 | 0.217 | 0.444 | YES      |    0.308 |   -0.194 |
| Controle     |      | Rural  |          | fss.media.debat |  54 | 3.402 |  3.444 | 2.222 | 4.444 | 0.492 | 0.067 | 0.134 | 0.556 | YES      |   -0.085 |   -0.307 |
| Controle     |      | Urbana |          | fss.media.debat |   9 | 3.674 |  3.556 | 2.889 | 5.000 | 0.751 | 0.250 | 0.577 | 1.222 | NO       |    0.505 |   -1.454 |
| Experimental |      | Rural  |          | fss.media.debat |  29 | 3.356 |  3.556 | 2.111 | 4.444 | 0.624 | 0.116 | 0.237 | 1.000 | YES      |   -0.187 |   -0.973 |
| Controle     |      |        | Branca   | dfs.media.debat |   9 | 3.198 |  3.444 | 2.111 | 4.111 | 0.654 | 0.218 | 0.503 | 0.778 | YES      |   -0.419 |   -1.334 |
| Controle     |      |        | Parda    | dfs.media.debat |  46 | 3.453 |  3.333 | 2.222 | 4.667 | 0.514 | 0.076 | 0.153 | 0.639 | YES      |    0.359 |    0.205 |
| Experimental |      |        | Branca   | dfs.media.debat |   5 | 3.244 |  3.444 | 2.222 | 3.556 | 0.574 | 0.257 | 0.713 | 0.111 | few data |    0.000 |    0.000 |
| Experimental |      |        | Indígena | dfs.media.debat |   5 | 3.475 |  3.444 | 2.556 | 4.333 | 0.638 | 0.285 | 0.793 | 0.292 | YES      |   -0.107 |   -1.483 |
| Experimental |      |        | Parda    | dfs.media.debat |  11 | 3.404 |  3.222 | 2.444 | 4.556 | 0.652 | 0.197 | 0.438 | 0.556 | NO       |    0.510 |   -0.985 |
| Controle     |      |        | Branca   | fss.media.debat |   9 | 3.210 |  3.222 | 2.222 | 3.889 | 0.557 | 0.186 | 0.428 | 0.444 | NO       |   -0.593 |   -1.174 |
| Controle     |      |        | Parda    | fss.media.debat |  46 | 3.481 |  3.472 | 2.667 | 5.000 | 0.512 | 0.076 | 0.152 | 0.556 | NO       |    0.661 |    0.205 |
| Experimental |      |        | Branca   | fss.media.debat |   5 | 3.022 |  3.111 | 2.111 | 3.889 | 0.743 | 0.332 | 0.922 | 1.111 | YES      |   -0.071 |   -2.051 |
| Experimental |      |        | Indígena | fss.media.debat |   5 | 3.778 |  3.556 | 2.889 | 4.556 | 0.707 | 0.316 | 0.878 | 1.000 | YES      |    0.009 |   -2.038 |
| Experimental |      |        | Parda    | fss.media.debat |  11 | 3.253 |  3.111 | 2.556 | 3.889 | 0.456 | 0.137 | 0.306 | 0.722 | YES      |   -0.107 |   -1.657 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
(df <- df[!duplicated(df$Effect),])
```

    ##             Effect DFn DFd         F        p p<.05      ges DFn' DFd'        F'       p' p<.05'     ges'
    ## 1  dfs.media.debat   1 120 19.387000 2.33e-05     * 1.39e-01    1  120 19.387000 2.33e-05      * 1.39e-01
    ## 2            grupo   1 120  0.709000 4.01e-01       6.00e-03    1  120  0.709000 4.01e-01        6.00e-03
    ## 5       grupo:Sexo   1 118  1.177000 2.80e-01       1.00e-02    1  118  1.177000 2.80e-01        1.00e-02
    ## 6             Sexo   1 118  0.605000 4.38e-01       5.00e-03    1  118  0.605000 4.38e-01        5.00e-03
    ## 9       grupo:Zona   0  88        NA       NA  <NA>       NA    0   88        NA       NA   <NA>       NA
    ## 10            Zona   1  88  1.345000 2.49e-01       1.50e-02    1   88  1.345000 2.49e-01        1.50e-02
    ## 11        Cor.Raca   2  70  2.956000 5.90e-02       7.80e-02    2   70  2.956000 5.90e-02        7.80e-02
    ## 14  grupo:Cor.Raca   1  70  0.000547 9.81e-01       7.81e-06    1   70  0.000547 9.81e-01        7.81e-06

|     | Effect          | DFn | DFd |      F |     p | p\<.05 |   ges | DFn’ | DFd’ |     F’ |    p’ | p\<.05’ |  ges’ |
|:----|:----------------|----:|----:|-------:|------:|:-------|------:|-----:|-----:|-------:|------:|:--------|------:|
| 1   | dfs.media.debat |   1 | 120 | 19.387 | 0.000 | \*     | 0.139 |    1 |  120 | 19.387 | 0.000 | \*      | 0.139 |
| 2   | grupo           |   1 | 120 |  0.709 | 0.401 |        | 0.006 |    1 |  120 |  0.709 | 0.401 |         | 0.006 |
| 5   | grupo:Sexo      |   1 | 118 |  1.177 | 0.280 |        | 0.010 |    1 |  118 |  1.177 | 0.280 |         | 0.010 |
| 6   | Sexo            |   1 | 118 |  0.605 | 0.438 |        | 0.005 |    1 |  118 |  0.605 | 0.438 |         | 0.005 |
| 9   | grupo:Zona      |   0 |  88 |        |       |        |       |    0 |   88 |        |       |         |       |
| 10  | Zona            |   1 |  88 |  1.345 | 0.249 |        | 0.015 |    1 |   88 |  1.345 | 0.249 |         | 0.015 |
| 11  | Cor.Raca        |   2 |  70 |  2.956 | 0.059 |        | 0.078 |    2 |   70 |  2.956 | 0.059 |         | 0.078 |
| 14  | grupo:Cor.Raca  |   1 |  70 |  0.001 | 0.981 |        | 0.000 |    1 |   70 |  0.001 | 0.981 |         | 0.000 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores), names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif | df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:---------|:-------------|----:|----------:|------:|------:|:-------------|----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          | pre      | pos          | 242 |    -0.811 | 0.418 | 0.418 | ns           | 242 |     -0.811 | 0.418 |  0.418 | ns            |
| Experimental |      |        |          | pre      | pos          | 242 |     0.235 | 0.815 | 0.815 | ns           | 242 |      0.235 | 0.815 |  0.815 | ns            |
|              |      |        |          | Controle | Experimental | 120 |     0.842 | 0.401 | 0.401 | ns           | 120 |      0.842 | 0.401 |  0.401 | ns            |
| Controle     | F    |        |          | pre      | pos          | 238 |    -0.372 | 0.710 | 0.710 | ns           | 238 |     -0.372 | 0.710 |  0.710 | ns            |
| Controle     | M    |        |          | pre      | pos          | 238 |    -0.764 | 0.446 | 0.446 | ns           | 238 |     -0.764 | 0.446 |  0.446 | ns            |
| Controle     |      |        |          | F        | M            | 118 |     0.116 | 0.908 | 0.908 | ns           | 118 |      0.116 | 0.908 |  0.908 | ns            |
| Experimental | F    |        |          | pre      | pos          | 238 |    -1.275 | 0.204 | 0.204 | ns           | 238 |     -1.275 | 0.204 |  0.204 | ns            |
| Experimental | M    |        |          | pre      | pos          | 238 |     1.147 | 0.253 | 0.253 | ns           | 238 |      1.147 | 0.253 |  0.253 | ns            |
| Experimental |      |        |          | F        | M            | 118 |     1.328 | 0.187 | 0.187 | ns           | 118 |      1.328 | 0.187 |  0.187 | ns            |
|              | F    |        |          | Controle | Experimental | 118 |    -0.451 | 0.653 | 0.653 | ns           | 118 |     -0.451 | 0.653 |  0.653 | ns            |
|              | M    |        |          | Controle | Experimental | 118 |     1.233 | 0.220 | 0.220 | ns           | 118 |      1.233 | 0.220 |  0.220 | ns            |
| Controle     |      |        |          | Rural    | Urbana       |  88 |    -1.160 | 0.249 | 0.249 | ns           |  88 |     -1.160 | 0.249 |  0.249 | ns            |
| Controle     |      | Rural  |          | pre      | pos          | 178 |    -0.805 | 0.422 | 0.422 | ns           | 178 |     -0.805 | 0.422 |  0.422 | ns            |
| Controle     |      | Urbana |          | pre      | pos          | 178 |    -0.814 | 0.417 | 0.417 | ns           | 178 |     -0.814 | 0.417 |  0.417 | ns            |
| Experimental |      |        |          | Rural    | Urbana       |     |           |       |       |              |     |            |       |        |               |
| Experimental |      | Rural  |          | pre      | pos          | 178 |     0.222 | 0.824 | 0.824 | ns           | 178 |      0.222 | 0.824 |  0.824 | ns            |
| Experimental |      | Urbana |          | pre      | pos          |     |           |       |       |              |     |            |       |        |               |
|              |      | Rural  |          | Controle | Experimental |  88 |     0.570 | 0.570 | 0.570 | ns           |  88 |      0.570 | 0.570 |  0.570 | ns            |
|              |      | Urbana |          | Controle | Experimental |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        | Branca   | pre      | pos          | 142 |    -0.048 | 0.962 | 0.962 | ns           | 142 |     -0.048 | 0.962 |  0.962 | ns            |
| Controle     |      |        | Indígena | pre      | pos          |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          | Branca   | Indígena     |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          | Branca   | Parda        |  70 |    -0.982 | 0.330 | 0.330 | ns           |  70 |     -0.982 | 0.330 |  0.330 | ns            |
| Controle     |      |        |          | Indígena | Parda        |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        | Parda    | pre      | pos          | 142 |    -0.245 | 0.807 | 0.807 | ns           | 142 |     -0.245 | 0.807 |  0.807 | ns            |
| Experimental |      |        | Branca   | pre      | pos          | 142 |     0.638 | 0.525 | 0.525 | ns           | 142 |      0.638 | 0.525 |  0.525 | ns            |
| Experimental |      |        | Indígena | pre      | pos          | 142 |    -0.869 | 0.386 | 0.386 | ns           | 142 |     -0.869 | 0.386 |  0.386 | ns            |
| Experimental |      |        |          | Branca   | Indígena     |  70 |    -2.108 | 0.039 | 0.116 | ns           |  70 |     -2.108 | 0.039 |  0.116 | ns            |
| Experimental |      |        |          | Branca   | Parda        |  70 |    -0.641 | 0.524 | 1.000 | ns           |  70 |     -0.641 | 0.524 |  1.000 | ns            |
| Experimental |      |        |          | Indígena | Parda        |  70 |     1.836 | 0.071 | 0.212 | ns           |  70 |      1.836 | 0.071 |  0.212 | ns            |
| Experimental |      |        | Parda    | pre      | pos          | 142 |     0.645 | 0.520 | 0.520 | ns           | 142 |      0.645 | 0.520 |  0.520 | ns            |
|              |      |        | Branca   | Controle | Experimental |  70 |     0.723 | 0.472 | 0.472 | ns           |  70 |      0.723 | 0.472 |  0.472 | ns            |
|              |      |        | Indígena | Controle | Experimental |     |           |       |       |              |     |            |       |        |               |
|              |      |        | Parda    | Controle | Experimental |  70 |     1.246 | 0.217 | 0.217 | ns           |  70 |      1.246 | 0.217 |  0.217 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores), names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | N-N’ |
|:-------------|:-----|:-------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|-----:|
| Controle     |      |        |          |  88 |   3.365 |    0.053 |     3.431 |      0.055 |   3.433 |    0.056 |  88 |    3.365 |     0.053 |      3.431 |       0.055 |    3.433 |     0.056 |    0 |
| Experimental |      |        |          |  35 |   3.379 |    0.097 |     3.348 |      0.113 |   3.344 |    0.089 |  35 |    3.379 |     0.097 |      3.348 |       0.113 |    3.344 |     0.089 |    0 |
| Controle     | F    |        |          |  41 |   3.415 |    0.075 |     3.459 |      0.083 |   3.440 |    0.082 |  41 |    3.415 |     0.075 |      3.459 |       0.083 |    3.440 |     0.082 |    0 |
| Controle     | M    |        |          |  47 |   3.321 |    0.076 |     3.407 |      0.075 |   3.427 |    0.077 |  47 |    3.321 |     0.076 |      3.407 |       0.075 |    3.427 |     0.077 |    0 |
| Experimental | F    |        |          |  11 |   3.121 |    0.145 |     3.417 |      0.179 |   3.522 |    0.160 |  11 |    3.121 |     0.145 |      3.417 |       0.179 |    3.522 |     0.160 |    0 |
| Experimental | M    |        |          |  24 |   3.497 |    0.119 |     3.317 |      0.144 |   3.263 |    0.108 |  24 |    3.497 |     0.119 |      3.317 |       0.144 |    3.263 |     0.108 |    0 |
| Controle     |      | Rural  |          |  54 |   3.316 |    0.074 |     3.402 |      0.067 |   3.414 |    0.073 |  54 |    3.316 |     0.074 |      3.402 |       0.067 |    3.414 |     0.073 |    0 |
| Controle     |      | Urbana |          |   9 |   3.460 |    0.184 |     3.674 |      0.250 |   3.639 |    0.179 |   9 |    3.460 |     0.184 |      3.674 |       0.250 |    3.639 |     0.179 |    0 |
| Experimental |      | Rural  |          |  29 |   3.388 |    0.106 |     3.356 |      0.116 |   3.344 |    0.100 |  29 |    3.388 |     0.106 |      3.356 |       0.116 |    3.344 |     0.100 |    0 |
| Controle     |      |        | Branca   |   9 |   3.198 |    0.218 |     3.210 |      0.186 |   3.281 |    0.170 |   9 |    3.198 |     0.218 |      3.210 |       0.186 |    3.281 |     0.170 |    0 |
| Controle     |      |        | Parda    |  46 |   3.453 |    0.076 |     3.481 |      0.076 |   3.464 |    0.075 |  46 |    3.453 |     0.076 |      3.481 |       0.076 |    3.464 |     0.075 |    0 |
| Experimental |      |        | Branca   |   5 |   3.244 |    0.257 |     3.022 |      0.332 |   3.077 |    0.227 |   5 |    3.244 |     0.257 |      3.022 |       0.332 |    3.077 |     0.227 |    0 |
| Experimental |      |        | Indígena |   5 |   3.475 |    0.285 |     3.778 |      0.316 |   3.753 |    0.226 |   5 |    3.475 |     0.285 |      3.778 |       0.316 |    3.753 |     0.226 |    0 |
| Experimental |      |        | Parda    |  11 |   3.404 |    0.197 |     3.253 |      0.137 |   3.252 |    0.152 |  11 |    3.404 |     0.197 |      3.253 |       0.137 |    3.252 |     0.152 |    0 |
