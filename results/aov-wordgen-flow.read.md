ANCOVA in flow (ativ. leitura) (flow (ativ. leitura))
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
  flow (ativ. leitura) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (ativ. leitura) (measured using pre- and post-tests).

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

    ##           grupo Sexo   Zona Cor.Raca Serie       variable    n  mean median   min   max    sd    se    ci   iqr
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.read  505 3.479  3.444 1.667 4.778 0.540 0.024 0.047 0.778
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.read  711 3.483  3.444 1.889 5.000 0.477 0.018 0.035 0.556
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.read 1216 3.482  3.444 1.667 5.000 0.504 0.014 0.028 0.667
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.read  505 3.451  3.444 1.500 4.889 0.575 0.026 0.050 0.889
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.read  711 3.458  3.444 1.000 5.000 0.523 0.020 0.039 0.667
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.read 1216 3.455  3.444 1.000 5.000 0.545 0.016 0.031 0.667
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.read  248 3.555  3.556 1.667 4.778 0.507 0.032 0.063 0.667
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.read  257 3.406  3.444 2.000 4.778 0.561 0.035 0.069 0.778
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.read  365 3.518  3.556 1.889 4.667 0.444 0.023 0.046 0.653
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.read  346 3.447  3.444 1.889 5.000 0.508 0.027 0.054 0.667
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.read  248 3.511  3.556 1.667 4.889 0.551 0.035 0.069 0.778
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.read  257 3.392  3.333 1.500 4.889 0.592 0.037 0.073 0.778
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.read  365 3.452  3.444 1.556 5.000 0.515 0.027 0.053 0.667
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.read  346 3.464  3.444 1.000 5.000 0.533 0.029 0.056 0.667
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.read  236 3.531  3.556 2.111 4.778 0.544 0.035 0.070 0.778
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.read  136 3.467  3.528 2.000 4.778 0.561 0.048 0.095 0.778
    ## 17     Controle <NA>   <NA>     <NA>  <NA> dfs.media.read  133 3.399  3.444 1.667 4.778 0.504 0.044 0.086 0.556
    ## 18 Experimental <NA>  Rural     <NA>  <NA> dfs.media.read  269 3.456  3.444 1.889 4.625 0.478 0.029 0.057 0.667
    ## 19 Experimental <NA> Urbana     <NA>  <NA> dfs.media.read  199 3.554  3.556 2.222 5.000 0.459 0.033 0.064 0.667
    ## 20 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.read  243 3.456  3.444 1.889 4.556 0.487 0.031 0.062 0.667
    ## 21     Controle <NA>  Rural     <NA>  <NA> fss.media.read  236 3.491  3.556 1.500 4.889 0.568 0.037 0.073 0.778
    ## 22     Controle <NA> Urbana     <NA>  <NA> fss.media.read  136 3.432  3.444 1.778 4.889 0.567 0.049 0.096 0.778
    ## 23     Controle <NA>   <NA>     <NA>  <NA> fss.media.read  133 3.399  3.444 1.556 4.667 0.594 0.051 0.102 0.778
    ## 24 Experimental <NA>  Rural     <NA>  <NA> fss.media.read  269 3.456  3.444 1.556 5.000 0.505 0.031 0.061 0.667
    ## 25 Experimental <NA> Urbana     <NA>  <NA> fss.media.read  199 3.440  3.444 2.000 5.000 0.549 0.039 0.077 0.778
    ## 26 Experimental <NA>   <NA>     <NA>  <NA> fss.media.read  243 3.476  3.444 1.000 5.000 0.523 0.034 0.066 0.708
    ## 27     Controle <NA>   <NA>   Branca  <NA> dfs.media.read   49 3.602  3.556 2.444 4.778 0.606 0.087 0.174 0.911
    ## 28     Controle <NA>   <NA> Indígena  <NA> dfs.media.read   10 3.489  3.667 2.556 4.333 0.540 0.171 0.386 0.722
    ## 29     Controle <NA>   <NA>    Parda  <NA> dfs.media.read  167 3.445  3.444 2.222 4.778 0.533 0.041 0.081 0.778
    ## 30     Controle <NA>   <NA>    Preta  <NA> dfs.media.read    1 3.667  3.667 3.667 3.667    NA    NA   NaN 0.000
    ## 31     Controle <NA>   <NA>     <NA>  <NA> dfs.media.read  278 3.477  3.472 1.667 4.778 0.533 0.032 0.063 0.667
    ## 32 Experimental <NA>   <NA>  Amarela  <NA> dfs.media.read    2 2.889  2.889 2.444 3.333 0.629 0.444 5.647 0.444
    ## 33 Experimental <NA>   <NA>   Branca  <NA> dfs.media.read   59 3.519  3.556 2.556 4.333 0.420 0.055 0.109 0.556
    ## 34 Experimental <NA>   <NA> Indígena  <NA> dfs.media.read   14 3.411  3.333 2.667 3.889 0.410 0.109 0.236 0.628
    ## 35 Experimental <NA>   <NA>    Parda  <NA> dfs.media.read  183 3.455  3.444 2.222 4.556 0.455 0.034 0.066 0.604
    ## 36 Experimental <NA>   <NA>    Preta  <NA> dfs.media.read    1 3.222  3.222 3.222 3.222    NA    NA   NaN 0.000
    ## 37 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.read  452 3.496  3.556 1.889 5.000 0.494 0.023 0.046 0.656
    ## 38     Controle <NA>   <NA>   Branca  <NA> fss.media.read   49 3.630  3.667 2.222 4.889 0.585 0.084 0.168 0.778
    ## 39     Controle <NA>   <NA> Indígena  <NA> fss.media.read   10 3.833  3.833 3.222 4.444 0.368 0.116 0.263 0.389
    ## 40     Controle <NA>   <NA>    Parda  <NA> fss.media.read  167 3.392  3.444 1.778 4.556 0.528 0.041 0.081 0.778
    ## 41     Controle <NA>   <NA>    Preta  <NA> fss.media.read    1 3.667  3.667 3.667 3.667    NA    NA   NaN 0.000
    ## 42     Controle <NA>   <NA>     <NA>  <NA> fss.media.read  278 3.439  3.444 1.500 4.889 0.598 0.036 0.071 0.851
    ## 43 Experimental <NA>   <NA>  Amarela  <NA> fss.media.read    2 3.278  3.278 3.222 3.333 0.079 0.056 0.706 0.056
    ## 44 Experimental <NA>   <NA>   Branca  <NA> fss.media.read   59 3.473  3.444 2.000 4.444 0.469 0.061 0.122 0.660
    ## 45 Experimental <NA>   <NA> Indígena  <NA> fss.media.read   14 3.254  3.222 2.667 4.556 0.464 0.124 0.268 0.306
    ## 46 Experimental <NA>   <NA>    Parda  <NA> fss.media.read  183 3.438  3.444 2.375 5.000 0.477 0.035 0.070 0.778
    ## 47 Experimental <NA>   <NA>    Preta  <NA> fss.media.read    1 3.222  3.222 3.222 3.222    NA    NA   NaN 0.000
    ## 48 Experimental <NA>   <NA>     <NA>  <NA> fss.media.read  452 3.472  3.444 1.000 5.000 0.550 0.026 0.051 0.667
    ## 49     Controle <NA>   <NA>     <NA> 6 ano dfs.media.read  159 3.493  3.444 1.667 4.778 0.632 0.050 0.099 0.778
    ## 50     Controle <NA>   <NA>     <NA> 7 ano dfs.media.read  136 3.431  3.410 2.111 4.556 0.538 0.046 0.091 0.694
    ## 51     Controle <NA>   <NA>     <NA> 8 ano dfs.media.read   88 3.462  3.444 2.556 4.556 0.449 0.048 0.095 0.694
    ## 52     Controle <NA>   <NA>     <NA> 9 ano dfs.media.read  122 3.527  3.556 2.333 4.778 0.470 0.043 0.084 0.444
    ## 53 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.read  179 3.412  3.444 1.889 4.778 0.513 0.038 0.076 0.667
    ## 54 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.read  207 3.505  3.444 2.222 4.625 0.445 0.031 0.061 0.556
    ## 55 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.read  176 3.445  3.444 1.889 4.667 0.491 0.037 0.073 0.667
    ##    symmetry      skewness    kurtosis
    ## 1       YES -0.0863948018 -0.15773571
    ## 2       YES -0.1712728972  0.15958145
    ## 3       YES -0.1306059329  0.03964366
    ## 4       YES -0.2564260394  0.13696071
    ## 5       YES -0.0694584882  0.74210956
    ## 6       YES -0.1628004351  0.47375727
    ## 7       YES -0.1912771775  0.13909963
    ## 8       YES  0.0566610613 -0.31775168
    ## 9       YES -0.1513268587 -0.09378080
    ## 10      YES -0.1342120818  0.20113356
    ## 11      YES -0.2961601537  0.11229109
    ## 12      YES -0.1915426748  0.13149985
    ## 13      YES -0.0278280040  0.15629043
    ## 14      YES -0.1110975418  1.25687061
    ## 15      YES  0.0392869639 -0.46698268
    ## 16      YES -0.2083835880 -0.25614578
    ## 17      YES -0.2676036300  0.31068984
    ## 18      YES -0.2541963462  0.13360024
    ## 19      YES  0.0305958123  0.57432354
    ## 20      YES -0.1967222321 -0.25022239
    ## 21      YES -0.2367707595  0.04150699
    ## 22      YES -0.0596261840  0.14587659
    ## 23      YES -0.4422131218  0.11249023
    ## 24      YES -0.0323937189  0.33004483
    ## 25      YES  0.2277638635  0.10057120
    ## 26      YES -0.3782973771  1.74027040
    ## 27      YES  0.0008455276 -0.98501691
    ## 28      YES -0.3554519681 -1.17475725
    ## 29      YES  0.0538859808 -0.49210650
    ## 30 few data  0.0000000000  0.00000000
    ## 31      YES -0.2138795007  0.19776882
    ## 32 few data  0.0000000000  0.00000000
    ## 33      YES -0.0602729968 -0.59903859
    ## 34      YES -0.2984519134 -1.27772734
    ## 35      YES -0.1091478612 -0.09879800
    ## 36 few data  0.0000000000  0.00000000
    ## 37      YES -0.2041349042  0.24461322
    ## 38      YES -0.1467855661 -0.51528721
    ## 39      YES  0.1657145603 -1.05592904
    ## 40      YES -0.1934761117 -0.41691892
    ## 41 few data  0.0000000000  0.00000000
    ## 42      YES -0.3056183034  0.33718800
    ## 43 few data  0.0000000000  0.00000000
    ## 44      YES -0.4929651571  0.24367397
    ## 45       NO  1.2769607195  1.84305041
    ## 46      YES  0.1220390191 -0.12764885
    ## 47 few data  0.0000000000  0.00000000
    ## 48      YES -0.1350350252  0.89375198
    ## 49      YES -0.0520467725 -0.33204118
    ## 50      YES -0.0875413353 -0.60451670
    ## 51      YES -0.0472254332 -0.77774007
    ## 52      YES -0.1947131262  0.11260395
    ## 53      YES -0.3330685685  0.01884062
    ## 54      YES  0.0998076973 -0.17228233
    ## 55      YES -0.1341516422  0.01122915
    ##  [ reached 'max' / getOption("max.print") -- omitted 9 rows ]

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |    n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|-----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.read |  505 | 3.479 |  3.444 | 1.667 | 4.778 | 0.540 | 0.024 | 0.047 | 0.778 | YES      |   -0.086 |   -0.158 |
| Experimental |      |        |          |       | dfs.media.read |  711 | 3.483 |  3.444 | 1.889 | 5.000 | 0.477 | 0.018 | 0.035 | 0.556 | YES      |   -0.171 |    0.160 |
|              |      |        |          |       | dfs.media.read | 1216 | 3.482 |  3.444 | 1.667 | 5.000 | 0.504 | 0.014 | 0.028 | 0.667 | YES      |   -0.131 |    0.040 |
| Controle     |      |        |          |       | fss.media.read |  505 | 3.451 |  3.444 | 1.500 | 4.889 | 0.575 | 0.026 | 0.050 | 0.889 | YES      |   -0.256 |    0.137 |
| Experimental |      |        |          |       | fss.media.read |  711 | 3.458 |  3.444 | 1.000 | 5.000 | 0.523 | 0.020 | 0.039 | 0.667 | YES      |   -0.069 |    0.742 |
|              |      |        |          |       | fss.media.read | 1216 | 3.455 |  3.444 | 1.000 | 5.000 | 0.545 | 0.016 | 0.031 | 0.667 | YES      |   -0.163 |    0.474 |
| Controle     | F    |        |          |       | dfs.media.read |  248 | 3.555 |  3.556 | 1.667 | 4.778 | 0.507 | 0.032 | 0.063 | 0.667 | YES      |   -0.191 |    0.139 |
| Controle     | M    |        |          |       | dfs.media.read |  257 | 3.406 |  3.444 | 2.000 | 4.778 | 0.561 | 0.035 | 0.069 | 0.778 | YES      |    0.057 |   -0.318 |
| Experimental | F    |        |          |       | dfs.media.read |  365 | 3.518 |  3.556 | 1.889 | 4.667 | 0.444 | 0.023 | 0.046 | 0.653 | YES      |   -0.151 |   -0.094 |
| Experimental | M    |        |          |       | dfs.media.read |  346 | 3.447 |  3.444 | 1.889 | 5.000 | 0.508 | 0.027 | 0.054 | 0.667 | YES      |   -0.134 |    0.201 |
| Controle     | F    |        |          |       | fss.media.read |  248 | 3.511 |  3.556 | 1.667 | 4.889 | 0.551 | 0.035 | 0.069 | 0.778 | YES      |   -0.296 |    0.112 |
| Controle     | M    |        |          |       | fss.media.read |  257 | 3.392 |  3.333 | 1.500 | 4.889 | 0.592 | 0.037 | 0.073 | 0.778 | YES      |   -0.192 |    0.131 |
| Experimental | F    |        |          |       | fss.media.read |  365 | 3.452 |  3.444 | 1.556 | 5.000 | 0.515 | 0.027 | 0.053 | 0.667 | YES      |   -0.028 |    0.156 |
| Experimental | M    |        |          |       | fss.media.read |  346 | 3.464 |  3.444 | 1.000 | 5.000 | 0.533 | 0.029 | 0.056 | 0.667 | YES      |   -0.111 |    1.257 |
| Controle     |      | Rural  |          |       | dfs.media.read |  236 | 3.531 |  3.556 | 2.111 | 4.778 | 0.544 | 0.035 | 0.070 | 0.778 | YES      |    0.039 |   -0.467 |
| Controle     |      | Urbana |          |       | dfs.media.read |  136 | 3.467 |  3.528 | 2.000 | 4.778 | 0.561 | 0.048 | 0.095 | 0.778 | YES      |   -0.208 |   -0.256 |
| Controle     |      |        |          |       | dfs.media.read |  133 | 3.399 |  3.444 | 1.667 | 4.778 | 0.504 | 0.044 | 0.086 | 0.556 | YES      |   -0.268 |    0.311 |
| Experimental |      | Rural  |          |       | dfs.media.read |  269 | 3.456 |  3.444 | 1.889 | 4.625 | 0.478 | 0.029 | 0.057 | 0.667 | YES      |   -0.254 |    0.134 |
| Experimental |      | Urbana |          |       | dfs.media.read |  199 | 3.554 |  3.556 | 2.222 | 5.000 | 0.459 | 0.033 | 0.064 | 0.667 | YES      |    0.031 |    0.574 |
| Experimental |      |        |          |       | dfs.media.read |  243 | 3.456 |  3.444 | 1.889 | 4.556 | 0.487 | 0.031 | 0.062 | 0.667 | YES      |   -0.197 |   -0.250 |
| Controle     |      | Rural  |          |       | fss.media.read |  236 | 3.491 |  3.556 | 1.500 | 4.889 | 0.568 | 0.037 | 0.073 | 0.778 | YES      |   -0.237 |    0.042 |
| Controle     |      | Urbana |          |       | fss.media.read |  136 | 3.432 |  3.444 | 1.778 | 4.889 | 0.567 | 0.049 | 0.096 | 0.778 | YES      |   -0.060 |    0.146 |
| Controle     |      |        |          |       | fss.media.read |  133 | 3.399 |  3.444 | 1.556 | 4.667 | 0.594 | 0.051 | 0.102 | 0.778 | YES      |   -0.442 |    0.112 |
| Experimental |      | Rural  |          |       | fss.media.read |  269 | 3.456 |  3.444 | 1.556 | 5.000 | 0.505 | 0.031 | 0.061 | 0.667 | YES      |   -0.032 |    0.330 |
| Experimental |      | Urbana |          |       | fss.media.read |  199 | 3.440 |  3.444 | 2.000 | 5.000 | 0.549 | 0.039 | 0.077 | 0.778 | YES      |    0.228 |    0.101 |
| Experimental |      |        |          |       | fss.media.read |  243 | 3.476 |  3.444 | 1.000 | 5.000 | 0.523 | 0.034 | 0.066 | 0.708 | YES      |   -0.378 |    1.740 |
| Controle     |      |        | Branca   |       | dfs.media.read |   49 | 3.602 |  3.556 | 2.444 | 4.778 | 0.606 | 0.087 | 0.174 | 0.911 | YES      |    0.001 |   -0.985 |
| Controle     |      |        | Indígena |       | dfs.media.read |   10 | 3.489 |  3.667 | 2.556 | 4.333 | 0.540 | 0.171 | 0.386 | 0.722 | YES      |   -0.355 |   -1.175 |
| Controle     |      |        | Parda    |       | dfs.media.read |  167 | 3.445 |  3.444 | 2.222 | 4.778 | 0.533 | 0.041 | 0.081 | 0.778 | YES      |    0.054 |   -0.492 |
| Controle     |      |        | Preta    |       | dfs.media.read |    1 | 3.667 |  3.667 | 3.667 | 3.667 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | dfs.media.read |  278 | 3.477 |  3.472 | 1.667 | 4.778 | 0.533 | 0.032 | 0.063 | 0.667 | YES      |   -0.214 |    0.198 |
| Experimental |      |        | Amarela  |       | dfs.media.read |    2 | 2.889 |  2.889 | 2.444 | 3.333 | 0.629 | 0.444 | 5.647 | 0.444 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       | dfs.media.read |   59 | 3.519 |  3.556 | 2.556 | 4.333 | 0.420 | 0.055 | 0.109 | 0.556 | YES      |   -0.060 |   -0.599 |
| Experimental |      |        | Indígena |       | dfs.media.read |   14 | 3.411 |  3.333 | 2.667 | 3.889 | 0.410 | 0.109 | 0.236 | 0.628 | YES      |   -0.298 |   -1.278 |
| Experimental |      |        | Parda    |       | dfs.media.read |  183 | 3.455 |  3.444 | 2.222 | 4.556 | 0.455 | 0.034 | 0.066 | 0.604 | YES      |   -0.109 |   -0.099 |
| Experimental |      |        | Preta    |       | dfs.media.read |    1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | dfs.media.read |  452 | 3.496 |  3.556 | 1.889 | 5.000 | 0.494 | 0.023 | 0.046 | 0.656 | YES      |   -0.204 |    0.245 |
| Controle     |      |        | Branca   |       | fss.media.read |   49 | 3.630 |  3.667 | 2.222 | 4.889 | 0.585 | 0.084 | 0.168 | 0.778 | YES      |   -0.147 |   -0.515 |
| Controle     |      |        | Indígena |       | fss.media.read |   10 | 3.833 |  3.833 | 3.222 | 4.444 | 0.368 | 0.116 | 0.263 | 0.389 | YES      |    0.166 |   -1.056 |
| Controle     |      |        | Parda    |       | fss.media.read |  167 | 3.392 |  3.444 | 1.778 | 4.556 | 0.528 | 0.041 | 0.081 | 0.778 | YES      |   -0.193 |   -0.417 |
| Controle     |      |        | Preta    |       | fss.media.read |    1 | 3.667 |  3.667 | 3.667 | 3.667 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | fss.media.read |  278 | 3.439 |  3.444 | 1.500 | 4.889 | 0.598 | 0.036 | 0.071 | 0.851 | YES      |   -0.306 |    0.337 |
| Experimental |      |        | Amarela  |       | fss.media.read |    2 | 3.278 |  3.278 | 3.222 | 3.333 | 0.079 | 0.056 | 0.706 | 0.056 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       | fss.media.read |   59 | 3.473 |  3.444 | 2.000 | 4.444 | 0.469 | 0.061 | 0.122 | 0.660 | YES      |   -0.493 |    0.244 |
| Experimental |      |        | Indígena |       | fss.media.read |   14 | 3.254 |  3.222 | 2.667 | 4.556 | 0.464 | 0.124 | 0.268 | 0.306 | NO       |    1.277 |    1.843 |
| Experimental |      |        | Parda    |       | fss.media.read |  183 | 3.438 |  3.444 | 2.375 | 5.000 | 0.477 | 0.035 | 0.070 | 0.778 | YES      |    0.122 |   -0.128 |
| Experimental |      |        | Preta    |       | fss.media.read |    1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | fss.media.read |  452 | 3.472 |  3.444 | 1.000 | 5.000 | 0.550 | 0.026 | 0.051 | 0.667 | YES      |   -0.135 |    0.894 |
| Controle     |      |        |          | 6 ano | dfs.media.read |  159 | 3.493 |  3.444 | 1.667 | 4.778 | 0.632 | 0.050 | 0.099 | 0.778 | YES      |   -0.052 |   -0.332 |
| Controle     |      |        |          | 7 ano | dfs.media.read |  136 | 3.431 |  3.410 | 2.111 | 4.556 | 0.538 | 0.046 | 0.091 | 0.694 | YES      |   -0.088 |   -0.605 |
| Controle     |      |        |          | 8 ano | dfs.media.read |   88 | 3.462 |  3.444 | 2.556 | 4.556 | 0.449 | 0.048 | 0.095 | 0.694 | YES      |   -0.047 |   -0.778 |
| Controle     |      |        |          | 9 ano | dfs.media.read |  122 | 3.527 |  3.556 | 2.333 | 4.778 | 0.470 | 0.043 | 0.084 | 0.444 | YES      |   -0.195 |    0.113 |
| Experimental |      |        |          | 6 ano | dfs.media.read |  179 | 3.412 |  3.444 | 1.889 | 4.778 | 0.513 | 0.038 | 0.076 | 0.667 | YES      |   -0.333 |    0.019 |
| Experimental |      |        |          | 7 ano | dfs.media.read |  207 | 3.505 |  3.444 | 2.222 | 4.625 | 0.445 | 0.031 | 0.061 | 0.556 | YES      |    0.100 |   -0.172 |
| Experimental |      |        |          | 8 ano | dfs.media.read |  176 | 3.445 |  3.444 | 1.889 | 4.667 | 0.491 | 0.037 | 0.073 | 0.667 | YES      |   -0.134 |    0.011 |
| Experimental |      |        |          | 9 ano | dfs.media.read |  149 | 3.583 |  3.556 | 2.222 | 5.000 | 0.445 | 0.036 | 0.072 | 0.667 | YES      |   -0.077 |    0.331 |
| Controle     |      |        |          | 6 ano | fss.media.read |  159 | 3.481 |  3.556 | 1.500 | 4.889 | 0.598 | 0.047 | 0.094 | 0.889 | YES      |   -0.273 |   -0.171 |
| Controle     |      |        |          | 7 ano | fss.media.read |  136 | 3.345 |  3.333 | 1.778 | 4.889 | 0.546 | 0.047 | 0.093 | 0.688 | YES      |   -0.106 |    0.093 |
| Controle     |      |        |          | 8 ano | fss.media.read |   88 | 3.415 |  3.444 | 2.000 | 4.778 | 0.549 | 0.058 | 0.116 | 0.778 | YES      |    0.068 |   -0.036 |
| Controle     |      |        |          | 9 ano | fss.media.read |  122 | 3.554 |  3.667 | 1.556 | 4.889 | 0.580 | 0.052 | 0.104 | 0.778 | NO       |   -0.683 |    1.054 |
| Experimental |      |        |          | 6 ano | fss.media.read |  179 | 3.416 |  3.444 | 2.222 | 4.556 | 0.485 | 0.036 | 0.072 | 0.667 | YES      |   -0.130 |   -0.233 |
| Experimental |      |        |          | 7 ano | fss.media.read |  207 | 3.482 |  3.444 | 1.556 | 5.000 | 0.563 | 0.039 | 0.077 | 0.715 | YES      |    0.037 |    0.662 |
| Experimental |      |        |          | 8 ano | fss.media.read |  176 | 3.406 |  3.444 | 1.000 | 4.667 | 0.542 | 0.041 | 0.081 | 0.778 | YES      |   -0.244 |    1.274 |
| Experimental |      |        |          | 9 ano | fss.media.read |  149 | 3.537 |  3.556 | 2.333 | 5.000 | 0.478 | 0.039 | 0.077 | 0.667 | YES      |    0.098 |    0.270 |

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
ds <- ds[,c("grupo","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

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

    ## [1] "P2052" "P2300"

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05      ges
    ## 1 dfs.media.read   1 1211 219.974 7.48e-46     * 1.54e-01
    ## 2          grupo   1 1211   0.030 8.62e-01       2.51e-05

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.read |   1 | 1211 | 219.974 | 0.000 | \*     | 0.154 |
| grupo          |   1 | 1211 |   0.030 | 0.862 |        | 0.000 |

| term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
| dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1211 |    -0.174 | 0.862 | 0.862 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]], by=c("grupo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.read | pre    | pos    | 2424 |     0.735 | 0.463 | 0.463 | ns           |
| Experimental | time | flow.read | pre    | pos    | 2424 |     0.813 | 0.417 | 0.417 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", "grupo", covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 504 |   3.478 |    0.024 |     3.454 |      0.025 |   3.455 |    0.022 |
| Experimental | 710 |   3.484 |    0.018 |     3.462 |      0.019 |   3.461 |    0.019 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.read", "grupo", aov, list("grupo"=pwc), addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.read", "grupo", aov, pwc, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (ativ. leitura)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.read", "grupo", aov, pwc.long, pre.post = "time",
    theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (ativ. leitura)")
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  )
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

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
    ## 1 res$.resid     0.998  0.0770

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1  1212      1.43 0.232

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),], "fss.media.read", c("grupo","Sexo"))

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Sexo)
laov[["grupo:Sexo"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.read ~ Sexo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Sexo), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Sexo"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## [1] "P2052" "P2300"

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Sexo)
laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05      ges
    ## 1 dfs.media.read   1 1209 215.656 4.76e-45     * 1.51e-01
    ## 2          grupo   1 1209   0.031 8.61e-01       2.55e-05
    ## 3           Sexo   1 1209   0.003 9.58e-01       2.28e-06
    ## 4     grupo:Sexo   1 1209   3.826 5.10e-02       3.00e-03

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.read |   1 | 1209 | 215.656 | 0.000 | \*     | 0.151 |
| grupo          |   1 | 1209 |   0.031 | 0.861 |        | 0.000 |
| Sexo           |   1 | 1209 |   0.003 | 0.958 |        | 0.000 |
| grupo:Sexo     |   1 | 1209 |   3.826 | 0.051 |        | 0.003 |

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.read ~ Sexo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Sexo), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

| grupo        | Sexo | term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
|              | F    | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1209 |     1.259 | 0.208 | 0.208 | ns           |
|              | M    | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1209 |    -1.508 | 0.132 | 0.132 | ns           |
| Controle     |      | dfs.media.read\*Sexo  | fss.media.read | F        | M            | 1209 |     1.461 | 0.144 | 0.144 | ns           |
| Experimental |      | dfs.media.read\*Sexo  | fss.media.read | F        | M            | 1209 |    -1.294 | 0.196 | 0.196 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Sexo"]], by=c("grupo","Sexo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Sexo | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | flow.read | pre    | pos    | 2420 |     0.751 | 0.453 | 0.453 | ns           |
| Controle     | M    | time | flow.read | pre    | pos    | 2420 |     0.296 | 0.767 | 0.767 | ns           |
| Experimental | F    | time | flow.read | pre    | pos    | 2420 |     1.703 | 0.089 | 0.089 | ns           |
| Experimental | M    | time | flow.read | pre    | pos    | 2420 |    -0.582 | 0.561 | 0.561 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Sexo"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]], by=c("grupo","Sexo"), suffixes = c("","'"))
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | F    | 247 |   3.554 |    0.032 |     3.519 |      0.034 |   3.489 |    0.032 |
| Controle     | M    | 257 |   3.406 |    0.035 |     3.392 |      0.037 |   3.424 |    0.031 |
| Experimental | F    | 365 |   3.518 |    0.023 |     3.452 |      0.027 |   3.437 |    0.026 |
| Experimental | M    | 345 |   3.448 |    0.027 |     3.471 |      0.028 |   3.485 |    0.027 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.read", c("grupo","Sexo"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Sexo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (!is.null(plots[["Sexo"]]))
  plots[["Sexo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.read", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo:Sexo"]],
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (ativ. leitura)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.read", c("grupo","Sexo"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (ativ. leitura)")
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          facet.by = c("grupo","Sexo"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Sexo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.998  0.0812

``` r
levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3  1210     0.565 0.638

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),], "fss.media.read", c("grupo","Zona"))

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Zona)
laov[["grupo:Zona"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.read ~ Zona,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Zona), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Zona"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Zona)
laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd       F        p p<.05      ges
    ## 1 dfs.media.read   1 835 172.026 7.19e-36     * 0.171000
    ## 2          grupo   1 835   0.137 7.11e-01       0.000164
    ## 3           Zona   1 835   1.828 1.77e-01       0.002000
    ## 4     grupo:Zona   1 835   0.173 6.77e-01       0.000207

| Effect         | DFn | DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|----:|--------:|------:|:-------|------:|
| dfs.media.read |   1 | 835 | 172.026 | 0.000 | \*     | 0.171 |
| grupo          |   1 | 835 |   0.137 | 0.711 |        | 0.000 |
| Zona           |   1 | 835 |   1.828 | 0.177 |        | 0.002 |
| grupo:Zona     |   1 | 835 |   0.173 | 0.677 |        | 0.000 |

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.read ~ Zona,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Zona), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

| grupo        | Zona   | term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 835 |     0.028 | 0.978 | 0.978 | ns           |
|              | Urbana | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 835 |     0.557 | 0.578 | 0.578 | ns           |
| Controle     |        | dfs.media.read\*Zona  | fss.media.read | Rural    | Urbana       | 835 |     0.572 | 0.568 | 0.568 | ns           |
| Experimental |        | dfs.media.read\*Zona  | fss.media.read | Rural    | Urbana       | 835 |     1.292 | 0.197 | 0.197 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Zona"]], by=c("grupo","Zona","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Zona   | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | flow.read | pre    | pos    | 1672 |     0.840 | 0.401 | 0.401 | ns           |
| Controle     | Urbana | time | flow.read | pre    | pos    | 1672 |     0.553 | 0.581 | 0.581 | ns           |
| Experimental | Rural  | time | flow.read | pre    | pos    | 1672 |    -0.006 | 0.995 | 0.995 | ns           |
| Experimental | Urbana | time | flow.read | pre    | pos    | 1672 |     2.174 | 0.030 | 0.030 | \*           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Zona"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]], by=c("grupo","Zona"), suffixes = c("","'"))
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Rural  | 236 |   3.531 |    0.035 |     3.491 |      0.037 |   3.478 |    0.032 |
| Controle     | Urbana | 136 |   3.467 |    0.048 |     3.432 |      0.049 |   3.447 |    0.042 |
| Experimental | Rural  | 269 |   3.456 |    0.029 |     3.456 |      0.031 |   3.476 |    0.030 |
| Experimental | Urbana | 199 |   3.554 |    0.033 |     3.440 |      0.039 |   3.416 |    0.035 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.read", c("grupo","Zona"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Zona"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (!is.null(plots[["Zona"]]))
  plots[["Zona"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.read", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo:Zona"]],
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (ativ. leitura)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.read", c("grupo","Zona"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (ativ. leitura)")
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          facet.by = c("grupo","Zona"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Zona, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.998   0.555

``` r
levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   836     0.512 0.674

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),], "fss.media.read", c("grupo","Cor.Raca"))
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
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.read ~ Cor.Raca,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Cor.Raca), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Cor.Raca"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd       F        p p<.05     ges
    ## 1 dfs.media.read   1 475 107.395 7.98e-23     * 0.18400
    ## 2          grupo   1 475   0.318 5.73e-01       0.00067
    ## 3       Cor.Raca   2 475   1.535 2.17e-01       0.00600
    ## 4 grupo:Cor.Raca   2 475   5.310 5.00e-03     * 0.02200

| Effect         | DFn | DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|----:|--------:|------:|:-------|------:|
| dfs.media.read |   1 | 475 | 107.395 | 0.000 | \*     | 0.184 |
| grupo          |   1 | 475 |   0.318 | 0.573 |        | 0.001 |
| Cor.Raca       |   2 | 475 |   1.535 | 0.217 |        | 0.006 |
| grupo:Cor.Raca |   2 | 475 |   5.310 | 0.005 | \*     | 0.022 |

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.read ~ Cor.Raca,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Cor.Raca), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

| grupo        | Cor.Raca | term                     | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-------------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Branca   | dfs.media.read\*grupo    | fss.media.read | Controle | Experimental | 475 |     1.374 | 0.170 | 0.170 | ns           |
|              | Indígena | dfs.media.read\*grupo    | fss.media.read | Controle | Experimental | 475 |     2.889 | 0.004 | 0.004 | \*\*         |
|              | Parda    | dfs.media.read\*grupo    | fss.media.read | Controle | Experimental | 475 |    -0.845 | 0.399 | 0.399 | ns           |
| Controle     |          | dfs.media.read\*Cor.Raca | fss.media.read | Branca   | Indígena     | 475 |    -1.596 | 0.111 | 0.333 | ns           |
| Controle     |          | dfs.media.read\*Cor.Raca | fss.media.read | Branca   | Parda        | 475 |     2.274 | 0.023 | 0.070 | ns           |
| Controle     |          | dfs.media.read\*Cor.Raca | fss.media.read | Indígena | Parda        | 475 |     2.842 | 0.005 | 0.014 | \*           |
| Experimental |          | dfs.media.read\*Cor.Raca | fss.media.read | Branca   | Indígena     | 475 |     1.265 | 0.207 | 0.620 | ns           |
| Experimental |          | dfs.media.read\*Cor.Raca | fss.media.read | Branca   | Parda        | 475 |     0.099 | 0.921 | 1.000 | ns           |
| Experimental |          | dfs.media.read\*Cor.Raca | fss.media.read | Indígena | Parda        | 475 |    -1.303 | 0.193 | 0.579 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Cor.Raca | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Branca   | time | flow.read | pre    | pos    | 952 |    -0.279 | 0.780 | 0.780 | ns           |
| Controle     | Indígena | time | flow.read | pre    | pos    | 952 |    -1.539 | 0.124 | 0.124 | ns           |
| Controle     | Parda    | time | flow.read | pre    | pos    | 952 |     0.955 | 0.340 | 0.340 | ns           |
| Experimental | Branca   | time | flow.read | pre    | pos    | 952 |     0.505 | 0.614 | 0.614 | ns           |
| Experimental | Indígena | time | flow.read | pre    | pos    | 952 |     0.829 | 0.408 | 0.408 | ns           |
| Experimental | Parda    | time | flow.read | pre    | pos    | 952 |     0.323 | 0.746 | 0.746 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Cor.Raca"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca"), suffixes = c("","'"))
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Branca   |  49 |   3.602 |    0.087 |     3.630 |      0.084 |   3.574 |    0.065 |
| Controle     | Indígena |  10 |   3.489 |    0.171 |     3.833 |      0.116 |   3.827 |    0.144 |
| Controle     | Parda    | 167 |   3.445 |    0.041 |     3.392 |      0.041 |   3.405 |    0.035 |
| Experimental | Branca   |  59 |   3.519 |    0.055 |     3.473 |      0.061 |   3.453 |    0.059 |
| Experimental | Indígena |  14 |   3.411 |    0.109 |     3.254 |      0.124 |   3.281 |    0.122 |
| Experimental | Parda    | 183 |   3.455 |    0.034 |     3.438 |      0.035 |   3.446 |    0.034 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.read", c("grupo","Cor.Raca"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Cor.Raca"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-90-1.png)<!-- -->

``` r
if (!is.null(plots[["Cor.Raca"]]))
  plots[["Cor.Raca"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.read", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo:Cor.Raca"]],
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (ativ. leitura)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-93-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.read", c("grupo","Cor.Raca"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (ativ. leitura)")
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Cor.Raca, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.997   0.578

``` r
levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     5   476     0.418 0.836

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),], "fss.media.read", c("grupo","Serie"))

pdat.long <- rbind(pdat[,c("id","grupo","Serie")], pdat[,c("id","grupo","Serie")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.read"]] <- c(pdat[["dfs.media.read"]], pdat[["fss.media.read"]])

aov = anova_test(pdat, fss.media.read ~ dfs.media.read + grupo*Serie)
laov[["grupo:Serie"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.read ~ Serie,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Serie), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.read", c("grupo","Serie"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## [1] "P2300" "P2052" "P2314"

``` r
aov = anova_test(wdat, fss.media.read ~ dfs.media.read + grupo*Serie)
laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05      ges
    ## 1 dfs.media.read   1 1204 211.800 2.55e-44     * 1.50e-01
    ## 2          grupo   1 1204   0.047 8.28e-01       3.91e-05
    ## 3          Serie   3 1204   2.426 6.40e-02       6.00e-03
    ## 4    grupo:Serie   3 1204   1.882 1.31e-01       5.00e-03

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.read |   1 | 1204 | 211.800 | 0.000 | \*     | 0.150 |
| grupo          |   1 | 1204 |   0.047 | 0.828 |        | 0.000 |
| Serie          |   3 | 1204 |   2.426 | 0.064 |        | 0.006 |
| grupo:Serie    |   3 | 1204 |   1.882 | 0.131 |        | 0.005 |

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.read ~ Serie,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Serie), fss.media.read ~ grupo,
  covariate = dfs.media.read, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

| grupo        | Serie | term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
|              | 6 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1204 |     0.607 | 0.544 | 0.544 | ns           |
|              | 7 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1204 |    -1.962 | 0.050 | 0.050 | ns           |
|              | 8 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1204 |    -0.171 | 0.864 | 0.864 | ns           |
|              | 9 ano | dfs.media.read\*grupo | fss.media.read | Controle | Experimental | 1204 |     1.202 | 0.229 | 0.229 | ns           |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 7 ano        | 1204 |     1.923 | 0.055 | 0.328 | ns           |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 8 ano        | 1204 |     0.826 | 0.409 | 1.000 | ns           |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 9 ano        | 1204 |    -1.532 | 0.126 | 0.755 | ns           |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 7 ano    | 8 ano        | 1204 |    -0.840 | 0.401 | 1.000 | ns           |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 7 ano    | 9 ano        | 1204 |    -3.270 | 0.001 | 0.007 | \*\*         |
| Controle     |       | dfs.media.read\*Serie | fss.media.read | 8 ano    | 9 ano        | 1204 |    -2.101 | 0.036 | 0.215 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 7 ano        | 1204 |    -0.570 | 0.569 | 1.000 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 8 ano        | 1204 |     0.200 | 0.842 | 1.000 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 6 ano    | 9 ano        | 1204 |    -0.934 | 0.351 | 1.000 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 7 ano    | 8 ano        | 1204 |     0.773 | 0.440 | 1.000 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 7 ano    | 9 ano        | 1204 |    -0.425 | 0.671 | 1.000 | ns           |
| Experimental |       | dfs.media.read\*Serie | fss.media.read | 8 ano    | 9 ano        | 1204 |    -1.120 | 0.263 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                         flow.read ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Serie"]], by=c("grupo","Serie","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Serie | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | 6 ano | time | flow.read | pre    | pos    | 2410 |     0.201 | 0.841 | 0.841 | ns           |
| Controle     | 7 ano | time | flow.read | pre    | pos    | 2410 |     1.364 | 0.173 | 0.173 | ns           |
| Controle     | 8 ano | time | flow.read | pre    | pos    | 2410 |     0.608 | 0.543 | 0.543 | ns           |
| Controle     | 9 ano | time | flow.read | pre    | pos    | 2410 |    -0.896 | 0.370 | 0.370 | ns           |
| Experimental | 6 ano | time | flow.read | pre    | pos    | 2410 |    -0.059 | 0.953 | 0.953 | ns           |
| Experimental | 7 ano | time | flow.read | pre    | pos    | 2410 |     0.452 | 0.651 | 0.651 | ns           |
| Experimental | 8 ano | time | flow.read | pre    | pos    | 2410 |     0.506 | 0.613 | 0.613 | ns           |
| Experimental | 9 ano | time | flow.read | pre    | pos    | 2410 |     0.769 | 0.442 | 0.442 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.read", c("grupo","Serie"), covar = "dfs.media.read")
ds <- merge(ds[ds$variable != "dfs.media.read",],
            ds[ds$variable == "dfs.media.read", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.read"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.read","se.dfs.media.read","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]], by=c("grupo","Serie"), suffixes = c("","'"))
```

| grupo        | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 6 ano | 159 |   3.493 |    0.050 |     3.481 |      0.047 |   3.477 |    0.039 |
| Controle     | 7 ano | 136 |   3.431 |    0.046 |     3.345 |      0.047 |   3.366 |    0.042 |
| Controle     | 8 ano |  88 |   3.462 |    0.048 |     3.415 |      0.058 |   3.423 |    0.052 |
| Controle     | 9 ano | 120 |   3.526 |    0.043 |     3.586 |      0.048 |   3.568 |    0.045 |
| Experimental | 6 ano | 179 |   3.412 |    0.038 |     3.416 |      0.036 |   3.444 |    0.037 |
| Experimental | 7 ano | 207 |   3.505 |    0.031 |     3.482 |      0.039 |   3.473 |    0.034 |
| Experimental | 8 ano | 175 |   3.448 |    0.037 |     3.420 |      0.039 |   3.434 |    0.037 |
| Experimental | 9 ano | 149 |   3.583 |    0.036 |     3.537 |      0.039 |   3.495 |    0.040 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.read", c("grupo","Serie"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Serie"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-114-1.png)<!-- -->

``` r
if (!is.null(plots[["Serie"]]))
  plots[["Serie"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-115-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.read", c("grupo","Serie"), aov, pwcs, covar = "dfs.media.read",
  theme = "classic", color = color[["grupo:Serie"]],
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (ativ. leitura)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.read", c("grupo","Serie"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (ativ. leitura)")
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-119-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.read", y = "fss.media.read", size = 0.5,
          facet.by = c("grupo","Serie"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.read_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.read ~ dfs.media.read + grupo*Serie, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.998   0.138

``` r
levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7  1205     0.773 0.610

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

    ##           grupo Sexo   Zona Cor.Raca Serie       variable    n  mean median   min   max    sd    se    ci   iqr
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.read  504 3.478  3.444 1.667 4.778 0.540 0.024 0.047 0.778
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.read  710 3.484  3.444 1.889 5.000 0.477 0.018 0.035 0.556
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.read 1214 3.482  3.444 1.667 5.000 0.504 0.014 0.028 0.667
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.read  504 3.454  3.444 1.500 4.889 0.570 0.025 0.050 0.806
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.read  710 3.462  3.444 1.556 5.000 0.515 0.019 0.038 0.667
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.read 1214 3.458  3.444 1.500 5.000 0.538 0.015 0.030 0.667
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.read  247 3.554  3.556 1.667 4.778 0.508 0.032 0.064 0.667
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.read  257 3.406  3.444 2.000 4.778 0.561 0.035 0.069 0.778
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.read  365 3.518  3.556 1.889 4.667 0.444 0.023 0.046 0.653
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.read  345 3.448  3.444 1.889 5.000 0.509 0.027 0.054 0.667
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.read  247 3.519  3.556 2.111 4.889 0.540 0.034 0.068 0.778
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.read  257 3.392  3.333 1.500 4.889 0.592 0.037 0.073 0.778
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.read  365 3.452  3.444 1.556 5.000 0.515 0.027 0.053 0.667
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.read  345 3.471  3.444 2.000 5.000 0.517 0.028 0.055 0.667
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.read  236 3.531  3.556 2.111 4.778 0.544 0.035 0.070 0.778
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.read  136 3.467  3.528 2.000 4.778 0.561 0.048 0.095 0.778
    ## 17 Experimental <NA>  Rural     <NA>  <NA> dfs.media.read  269 3.456  3.444 1.889 4.625 0.478 0.029 0.057 0.667
    ## 18 Experimental <NA> Urbana     <NA>  <NA> dfs.media.read  199 3.554  3.556 2.222 5.000 0.459 0.033 0.064 0.667
    ## 19     Controle <NA>  Rural     <NA>  <NA> fss.media.read  236 3.491  3.556 1.500 4.889 0.568 0.037 0.073 0.778
    ## 20     Controle <NA> Urbana     <NA>  <NA> fss.media.read  136 3.432  3.444 1.778 4.889 0.567 0.049 0.096 0.778
    ## 21 Experimental <NA>  Rural     <NA>  <NA> fss.media.read  269 3.456  3.444 1.556 5.000 0.505 0.031 0.061 0.667
    ## 22 Experimental <NA> Urbana     <NA>  <NA> fss.media.read  199 3.440  3.444 2.000 5.000 0.549 0.039 0.077 0.778
    ## 23     Controle <NA>   <NA>   Branca  <NA> dfs.media.read   49 3.602  3.556 2.444 4.778 0.606 0.087 0.174 0.911
    ## 24     Controle <NA>   <NA> Indígena  <NA> dfs.media.read   10 3.489  3.667 2.556 4.333 0.540 0.171 0.386 0.722
    ## 25     Controle <NA>   <NA>    Parda  <NA> dfs.media.read  167 3.445  3.444 2.222 4.778 0.533 0.041 0.081 0.778
    ## 26 Experimental <NA>   <NA>   Branca  <NA> dfs.media.read   59 3.519  3.556 2.556 4.333 0.420 0.055 0.109 0.556
    ## 27 Experimental <NA>   <NA> Indígena  <NA> dfs.media.read   14 3.411  3.333 2.667 3.889 0.410 0.109 0.236 0.628
    ## 28 Experimental <NA>   <NA>    Parda  <NA> dfs.media.read  183 3.455  3.444 2.222 4.556 0.455 0.034 0.066 0.604
    ## 29     Controle <NA>   <NA>   Branca  <NA> fss.media.read   49 3.630  3.667 2.222 4.889 0.585 0.084 0.168 0.778
    ## 30     Controle <NA>   <NA> Indígena  <NA> fss.media.read   10 3.833  3.833 3.222 4.444 0.368 0.116 0.263 0.389
    ## 31     Controle <NA>   <NA>    Parda  <NA> fss.media.read  167 3.392  3.444 1.778 4.556 0.528 0.041 0.081 0.778
    ## 32 Experimental <NA>   <NA>   Branca  <NA> fss.media.read   59 3.473  3.444 2.000 4.444 0.469 0.061 0.122 0.660
    ## 33 Experimental <NA>   <NA> Indígena  <NA> fss.media.read   14 3.254  3.222 2.667 4.556 0.464 0.124 0.268 0.306
    ## 34 Experimental <NA>   <NA>    Parda  <NA> fss.media.read  183 3.438  3.444 2.375 5.000 0.477 0.035 0.070 0.778
    ## 35     Controle <NA>   <NA>     <NA> 6 ano dfs.media.read  159 3.493  3.444 1.667 4.778 0.632 0.050 0.099 0.778
    ## 36     Controle <NA>   <NA>     <NA> 7 ano dfs.media.read  136 3.431  3.410 2.111 4.556 0.538 0.046 0.091 0.694
    ## 37     Controle <NA>   <NA>     <NA> 8 ano dfs.media.read   88 3.462  3.444 2.556 4.556 0.449 0.048 0.095 0.694
    ## 38     Controle <NA>   <NA>     <NA> 9 ano dfs.media.read  120 3.526  3.556 2.333 4.778 0.471 0.043 0.085 0.444
    ## 39 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.read  179 3.412  3.444 1.889 4.778 0.513 0.038 0.076 0.667
    ## 40 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.read  207 3.505  3.444 2.222 4.625 0.445 0.031 0.061 0.556
    ## 41 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.read  175 3.448  3.444 1.889 4.667 0.491 0.037 0.073 0.667
    ## 42 Experimental <NA>   <NA>     <NA> 9 ano dfs.media.read  149 3.583  3.556 2.222 5.000 0.445 0.036 0.072 0.667
    ## 43     Controle <NA>   <NA>     <NA> 6 ano fss.media.read  159 3.481  3.556 1.500 4.889 0.598 0.047 0.094 0.889
    ## 44     Controle <NA>   <NA>     <NA> 7 ano fss.media.read  136 3.345  3.333 1.778 4.889 0.546 0.047 0.093 0.688
    ## 45     Controle <NA>   <NA>     <NA> 8 ano fss.media.read   88 3.415  3.444 2.000 4.778 0.549 0.058 0.116 0.778
    ## 46     Controle <NA>   <NA>     <NA> 9 ano fss.media.read  120 3.586  3.667 2.111 4.889 0.527 0.048 0.095 0.778
    ## 47 Experimental <NA>   <NA>     <NA> 6 ano fss.media.read  179 3.416  3.444 2.222 4.556 0.485 0.036 0.072 0.667
    ## 48 Experimental <NA>   <NA>     <NA> 7 ano fss.media.read  207 3.482  3.444 1.556 5.000 0.563 0.039 0.077 0.715
    ## 49 Experimental <NA>   <NA>     <NA> 8 ano fss.media.read  175 3.420  3.444 2.333 4.667 0.512 0.039 0.076 0.778
    ## 50 Experimental <NA>   <NA>     <NA> 9 ano fss.media.read  149 3.537  3.556 2.333 5.000 0.478 0.039 0.077 0.667
    ##    symmetry      skewness     kurtosis
    ## 1       YES -0.0825992253 -0.155241818
    ## 2       YES -0.1743340989  0.163773196
    ## 3       YES -0.1308134775  0.042861681
    ## 4       YES -0.2214559804  0.068939720
    ## 5       YES  0.0599181262  0.250033163
    ## 6       YES -0.0803410751  0.198374759
    ## 7       YES -0.1839088812  0.140884402
    ## 8       YES  0.0566610613 -0.317751678
    ## 9       YES -0.1513268587 -0.093780801
    ## 10      YES -0.1401224556  0.205885278
    ## 11      YES -0.1966863243 -0.140310931
    ## 12      YES -0.1915426748  0.131499852
    ## 13      YES -0.0278280040  0.156290429
    ## 14      YES  0.1511780303  0.315611247
    ## 15      YES  0.0392869639 -0.466982681
    ## 16      YES -0.2083835880 -0.256145777
    ## 17      YES -0.2541963462  0.133600244
    ## 18      YES  0.0305958123  0.574323542
    ## 19      YES -0.2367707595  0.041506988
    ## 20      YES -0.0596261840  0.145876587
    ## 21      YES -0.0323937189  0.330044831
    ## 22      YES  0.2277638635  0.100571197
    ## 23      YES  0.0008455276 -0.985016909
    ## 24      YES -0.3554519681 -1.174757254
    ## 25      YES  0.0538859808 -0.492106503
    ## 26      YES -0.0602729968 -0.599038588
    ## 27      YES -0.2984519134 -1.277727340
    ## 28      YES -0.1091478612 -0.098797999
    ## 29      YES -0.1467855661 -0.515287210
    ## 30      YES  0.1657145603 -1.055929037
    ## 31      YES -0.1934761117 -0.416918925
    ## 32      YES -0.4929651571  0.243673974
    ## 33       NO  1.2769607195  1.843050407
    ## 34      YES  0.1220390191 -0.127648848
    ## 35      YES -0.0520467725 -0.332041184
    ## 36      YES -0.0875413353 -0.604516696
    ## 37      YES -0.0472254332 -0.777740072
    ## 38      YES -0.1939018246  0.122408370
    ## 39      YES -0.3330685685  0.018840617
    ## 40      YES  0.0998076973 -0.172282333
    ## 41      YES -0.1459145490  0.021458738
    ## 42      YES -0.0767324359  0.330832452
    ## 43      YES -0.2725838051 -0.171487583
    ## 44      YES -0.1058709321  0.092570013
    ## 45      YES  0.0684371970 -0.035999715
    ## 46      YES -0.2723554988  0.001751782
    ## 47      YES -0.1295291758 -0.232813361
    ## 48      YES  0.0367777705  0.662022664
    ## 49      YES  0.2228220415 -0.418697339
    ## 50      YES  0.0983690786  0.269987017

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |    n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|-----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.read |  504 | 3.478 |  3.444 | 1.667 | 4.778 | 0.540 | 0.024 | 0.047 | 0.778 | YES      |   -0.083 |   -0.155 |
| Experimental |      |        |          |       | dfs.media.read |  710 | 3.484 |  3.444 | 1.889 | 5.000 | 0.477 | 0.018 | 0.035 | 0.556 | YES      |   -0.174 |    0.164 |
|              |      |        |          |       | dfs.media.read | 1214 | 3.482 |  3.444 | 1.667 | 5.000 | 0.504 | 0.014 | 0.028 | 0.667 | YES      |   -0.131 |    0.043 |
| Controle     |      |        |          |       | fss.media.read |  504 | 3.454 |  3.444 | 1.500 | 4.889 | 0.570 | 0.025 | 0.050 | 0.806 | YES      |   -0.221 |    0.069 |
| Experimental |      |        |          |       | fss.media.read |  710 | 3.462 |  3.444 | 1.556 | 5.000 | 0.515 | 0.019 | 0.038 | 0.667 | YES      |    0.060 |    0.250 |
|              |      |        |          |       | fss.media.read | 1214 | 3.458 |  3.444 | 1.500 | 5.000 | 0.538 | 0.015 | 0.030 | 0.667 | YES      |   -0.080 |    0.198 |
| Controle     | F    |        |          |       | dfs.media.read |  247 | 3.554 |  3.556 | 1.667 | 4.778 | 0.508 | 0.032 | 0.064 | 0.667 | YES      |   -0.184 |    0.141 |
| Controle     | M    |        |          |       | dfs.media.read |  257 | 3.406 |  3.444 | 2.000 | 4.778 | 0.561 | 0.035 | 0.069 | 0.778 | YES      |    0.057 |   -0.318 |
| Experimental | F    |        |          |       | dfs.media.read |  365 | 3.518 |  3.556 | 1.889 | 4.667 | 0.444 | 0.023 | 0.046 | 0.653 | YES      |   -0.151 |   -0.094 |
| Experimental | M    |        |          |       | dfs.media.read |  345 | 3.448 |  3.444 | 1.889 | 5.000 | 0.509 | 0.027 | 0.054 | 0.667 | YES      |   -0.140 |    0.206 |
| Controle     | F    |        |          |       | fss.media.read |  247 | 3.519 |  3.556 | 2.111 | 4.889 | 0.540 | 0.034 | 0.068 | 0.778 | YES      |   -0.197 |   -0.140 |
| Controle     | M    |        |          |       | fss.media.read |  257 | 3.392 |  3.333 | 1.500 | 4.889 | 0.592 | 0.037 | 0.073 | 0.778 | YES      |   -0.192 |    0.131 |
| Experimental | F    |        |          |       | fss.media.read |  365 | 3.452 |  3.444 | 1.556 | 5.000 | 0.515 | 0.027 | 0.053 | 0.667 | YES      |   -0.028 |    0.156 |
| Experimental | M    |        |          |       | fss.media.read |  345 | 3.471 |  3.444 | 2.000 | 5.000 | 0.517 | 0.028 | 0.055 | 0.667 | YES      |    0.151 |    0.316 |
| Controle     |      | Rural  |          |       | dfs.media.read |  236 | 3.531 |  3.556 | 2.111 | 4.778 | 0.544 | 0.035 | 0.070 | 0.778 | YES      |    0.039 |   -0.467 |
| Controle     |      | Urbana |          |       | dfs.media.read |  136 | 3.467 |  3.528 | 2.000 | 4.778 | 0.561 | 0.048 | 0.095 | 0.778 | YES      |   -0.208 |   -0.256 |
| Experimental |      | Rural  |          |       | dfs.media.read |  269 | 3.456 |  3.444 | 1.889 | 4.625 | 0.478 | 0.029 | 0.057 | 0.667 | YES      |   -0.254 |    0.134 |
| Experimental |      | Urbana |          |       | dfs.media.read |  199 | 3.554 |  3.556 | 2.222 | 5.000 | 0.459 | 0.033 | 0.064 | 0.667 | YES      |    0.031 |    0.574 |
| Controle     |      | Rural  |          |       | fss.media.read |  236 | 3.491 |  3.556 | 1.500 | 4.889 | 0.568 | 0.037 | 0.073 | 0.778 | YES      |   -0.237 |    0.042 |
| Controle     |      | Urbana |          |       | fss.media.read |  136 | 3.432 |  3.444 | 1.778 | 4.889 | 0.567 | 0.049 | 0.096 | 0.778 | YES      |   -0.060 |    0.146 |
| Experimental |      | Rural  |          |       | fss.media.read |  269 | 3.456 |  3.444 | 1.556 | 5.000 | 0.505 | 0.031 | 0.061 | 0.667 | YES      |   -0.032 |    0.330 |
| Experimental |      | Urbana |          |       | fss.media.read |  199 | 3.440 |  3.444 | 2.000 | 5.000 | 0.549 | 0.039 | 0.077 | 0.778 | YES      |    0.228 |    0.101 |
| Controle     |      |        | Branca   |       | dfs.media.read |   49 | 3.602 |  3.556 | 2.444 | 4.778 | 0.606 | 0.087 | 0.174 | 0.911 | YES      |    0.001 |   -0.985 |
| Controle     |      |        | Indígena |       | dfs.media.read |   10 | 3.489 |  3.667 | 2.556 | 4.333 | 0.540 | 0.171 | 0.386 | 0.722 | YES      |   -0.355 |   -1.175 |
| Controle     |      |        | Parda    |       | dfs.media.read |  167 | 3.445 |  3.444 | 2.222 | 4.778 | 0.533 | 0.041 | 0.081 | 0.778 | YES      |    0.054 |   -0.492 |
| Experimental |      |        | Branca   |       | dfs.media.read |   59 | 3.519 |  3.556 | 2.556 | 4.333 | 0.420 | 0.055 | 0.109 | 0.556 | YES      |   -0.060 |   -0.599 |
| Experimental |      |        | Indígena |       | dfs.media.read |   14 | 3.411 |  3.333 | 2.667 | 3.889 | 0.410 | 0.109 | 0.236 | 0.628 | YES      |   -0.298 |   -1.278 |
| Experimental |      |        | Parda    |       | dfs.media.read |  183 | 3.455 |  3.444 | 2.222 | 4.556 | 0.455 | 0.034 | 0.066 | 0.604 | YES      |   -0.109 |   -0.099 |
| Controle     |      |        | Branca   |       | fss.media.read |   49 | 3.630 |  3.667 | 2.222 | 4.889 | 0.585 | 0.084 | 0.168 | 0.778 | YES      |   -0.147 |   -0.515 |
| Controle     |      |        | Indígena |       | fss.media.read |   10 | 3.833 |  3.833 | 3.222 | 4.444 | 0.368 | 0.116 | 0.263 | 0.389 | YES      |    0.166 |   -1.056 |
| Controle     |      |        | Parda    |       | fss.media.read |  167 | 3.392 |  3.444 | 1.778 | 4.556 | 0.528 | 0.041 | 0.081 | 0.778 | YES      |   -0.193 |   -0.417 |
| Experimental |      |        | Branca   |       | fss.media.read |   59 | 3.473 |  3.444 | 2.000 | 4.444 | 0.469 | 0.061 | 0.122 | 0.660 | YES      |   -0.493 |    0.244 |
| Experimental |      |        | Indígena |       | fss.media.read |   14 | 3.254 |  3.222 | 2.667 | 4.556 | 0.464 | 0.124 | 0.268 | 0.306 | NO       |    1.277 |    1.843 |
| Experimental |      |        | Parda    |       | fss.media.read |  183 | 3.438 |  3.444 | 2.375 | 5.000 | 0.477 | 0.035 | 0.070 | 0.778 | YES      |    0.122 |   -0.128 |
| Controle     |      |        |          | 6 ano | dfs.media.read |  159 | 3.493 |  3.444 | 1.667 | 4.778 | 0.632 | 0.050 | 0.099 | 0.778 | YES      |   -0.052 |   -0.332 |
| Controle     |      |        |          | 7 ano | dfs.media.read |  136 | 3.431 |  3.410 | 2.111 | 4.556 | 0.538 | 0.046 | 0.091 | 0.694 | YES      |   -0.088 |   -0.605 |
| Controle     |      |        |          | 8 ano | dfs.media.read |   88 | 3.462 |  3.444 | 2.556 | 4.556 | 0.449 | 0.048 | 0.095 | 0.694 | YES      |   -0.047 |   -0.778 |
| Controle     |      |        |          | 9 ano | dfs.media.read |  120 | 3.526 |  3.556 | 2.333 | 4.778 | 0.471 | 0.043 | 0.085 | 0.444 | YES      |   -0.194 |    0.122 |
| Experimental |      |        |          | 6 ano | dfs.media.read |  179 | 3.412 |  3.444 | 1.889 | 4.778 | 0.513 | 0.038 | 0.076 | 0.667 | YES      |   -0.333 |    0.019 |
| Experimental |      |        |          | 7 ano | dfs.media.read |  207 | 3.505 |  3.444 | 2.222 | 4.625 | 0.445 | 0.031 | 0.061 | 0.556 | YES      |    0.100 |   -0.172 |
| Experimental |      |        |          | 8 ano | dfs.media.read |  175 | 3.448 |  3.444 | 1.889 | 4.667 | 0.491 | 0.037 | 0.073 | 0.667 | YES      |   -0.146 |    0.021 |
| Experimental |      |        |          | 9 ano | dfs.media.read |  149 | 3.583 |  3.556 | 2.222 | 5.000 | 0.445 | 0.036 | 0.072 | 0.667 | YES      |   -0.077 |    0.331 |
| Controle     |      |        |          | 6 ano | fss.media.read |  159 | 3.481 |  3.556 | 1.500 | 4.889 | 0.598 | 0.047 | 0.094 | 0.889 | YES      |   -0.273 |   -0.171 |
| Controle     |      |        |          | 7 ano | fss.media.read |  136 | 3.345 |  3.333 | 1.778 | 4.889 | 0.546 | 0.047 | 0.093 | 0.688 | YES      |   -0.106 |    0.093 |
| Controle     |      |        |          | 8 ano | fss.media.read |   88 | 3.415 |  3.444 | 2.000 | 4.778 | 0.549 | 0.058 | 0.116 | 0.778 | YES      |    0.068 |   -0.036 |
| Controle     |      |        |          | 9 ano | fss.media.read |  120 | 3.586 |  3.667 | 2.111 | 4.889 | 0.527 | 0.048 | 0.095 | 0.778 | YES      |   -0.272 |    0.002 |
| Experimental |      |        |          | 6 ano | fss.media.read |  179 | 3.416 |  3.444 | 2.222 | 4.556 | 0.485 | 0.036 | 0.072 | 0.667 | YES      |   -0.130 |   -0.233 |
| Experimental |      |        |          | 7 ano | fss.media.read |  207 | 3.482 |  3.444 | 1.556 | 5.000 | 0.563 | 0.039 | 0.077 | 0.715 | YES      |    0.037 |    0.662 |
| Experimental |      |        |          | 8 ano | fss.media.read |  175 | 3.420 |  3.444 | 2.333 | 4.667 | 0.512 | 0.039 | 0.076 | 0.778 | YES      |    0.223 |   -0.419 |
| Experimental |      |        |          | 9 ano | fss.media.read |  149 | 3.537 |  3.556 | 2.333 | 5.000 | 0.478 | 0.039 | 0.077 | 0.667 | YES      |    0.098 |    0.270 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
(df <- df[!duplicated(df$Effect),])
```

    ##            Effect DFn  DFd       F        p p<.05      ges DFn' DFd'      F'       p' p<.05'     ges'
    ## 1  dfs.media.read   1 1211 219.974 7.48e-46     * 1.54e-01    1 1213 214.300 8.28e-45      * 1.50e-01
    ## 2           grupo   1 1211   0.030 8.62e-01       2.51e-05    1 1213   0.040 8.42e-01        3.27e-05
    ## 5      grupo:Sexo   1 1209   3.826 5.10e-02       3.00e-03    1 1211   2.808 9.40e-02        2.00e-03
    ## 6            Sexo   1 1209   0.003 9.58e-01       2.28e-06    1 1211   0.001 9.71e-01        1.09e-06
    ## 9      grupo:Zona   1  835   0.173 6.77e-01       2.07e-04    1  835   0.173 6.77e-01        2.07e-04
    ## 10           Zona   1  835   1.828 1.77e-01       2.00e-03    1  835   1.828 1.77e-01        2.00e-03
    ## 11       Cor.Raca   2  475   1.535 2.17e-01       6.00e-03    2  475   1.535 2.17e-01        6.00e-03
    ## 14 grupo:Cor.Raca   2  475   5.310 5.00e-03     * 2.20e-02    2  475   5.310 5.00e-03      * 2.20e-02
    ## 17    grupo:Serie   3 1204   1.882 1.31e-01       5.00e-03    3 1207   1.437 2.30e-01        4.00e-03
    ## 18          Serie   3 1204   2.426 6.40e-02       6.00e-03    3 1207   1.889 1.30e-01        5.00e-03

|     | Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges | DFn’ | DFd’ |      F’ |    p’ | p\<.05’ |  ges’ |
|:----|:---------------|----:|-----:|--------:|------:|:-------|------:|-----:|-----:|--------:|------:|:--------|------:|
| 1   | dfs.media.read |   1 | 1211 | 219.974 | 0.000 | \*     | 0.154 |    1 | 1213 | 214.300 | 0.000 | \*      | 0.150 |
| 2   | grupo          |   1 | 1211 |   0.030 | 0.862 |        | 0.000 |    1 | 1213 |   0.040 | 0.842 |         | 0.000 |
| 5   | grupo:Sexo     |   1 | 1209 |   3.826 | 0.051 |        | 0.003 |    1 | 1211 |   2.808 | 0.094 |         | 0.002 |
| 6   | Sexo           |   1 | 1209 |   0.003 | 0.958 |        | 0.000 |    1 | 1211 |   0.001 | 0.971 |         | 0.000 |
| 9   | grupo:Zona     |   1 |  835 |   0.173 | 0.677 |        | 0.000 |    1 |  835 |   0.173 | 0.677 |         | 0.000 |
| 10  | Zona           |   1 |  835 |   1.828 | 0.177 |        | 0.002 |    1 |  835 |   1.828 | 0.177 |         | 0.002 |
| 11  | Cor.Raca       |   2 |  475 |   1.535 | 0.217 |        | 0.006 |    2 |  475 |   1.535 | 0.217 |         | 0.006 |
| 14  | grupo:Cor.Raca |   2 |  475 |   5.310 | 0.005 | \*     | 0.022 |    2 |  475 |   5.310 | 0.005 | \*      | 0.022 |
| 17  | grupo:Serie    |   3 | 1204 |   1.882 | 0.131 |        | 0.005 |    3 | 1207 |   1.437 | 0.230 |         | 0.004 |
| 18  | Serie          |   3 | 1204 |   2.426 | 0.064 |        | 0.006 |    3 | 1207 |   1.889 | 0.130 |         | 0.005 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores), names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |  df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|-----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          |       | pre      | pos          | 2424 |     0.735 | 0.463 | 0.463 | ns           | 2428 |      0.869 | 0.385 |  0.385 | ns            |
| Experimental |      |        |          |       | pre      | pos          | 2424 |     0.813 | 0.417 | 0.417 | ns           | 2428 |      0.908 | 0.364 |  0.364 | ns            |
|              |      |        |          |       | Controle | Experimental | 1211 |    -0.174 | 0.862 | 0.862 | ns           | 1213 |     -0.199 | 0.842 |  0.842 | ns            |
| Controle     | F    |        |          |       | pre      | pos          | 2420 |     0.751 | 0.453 | 0.453 | ns           | 2424 |      0.944 | 0.345 |  0.345 | ns            |
| Controle     | M    |        |          |       | pre      | pos          | 2420 |     0.296 | 0.767 | 0.767 | ns           | 2424 |      0.294 | 0.768 |  0.768 | ns            |
| Controle     |      |        |          |       | F        | M            | 1209 |     1.461 | 0.144 | 0.144 | ns           | 1211 |      1.257 | 0.209 |  0.209 | ns            |
| Experimental | F    |        |          |       | pre      | pos          | 2420 |     1.703 | 0.089 | 0.089 | ns           | 2424 |      1.691 | 0.091 |  0.091 | ns            |
| Experimental | M    |        |          |       | pre      | pos          | 2420 |    -0.582 | 0.561 | 0.561 | ns           | 2424 |     -0.432 | 0.666 |  0.666 | ns            |
| Experimental |      |        |          |       | F        | M            | 1209 |    -1.294 | 0.196 | 0.196 | ns           | 1211 |     -1.102 | 0.271 |  0.271 | ns            |
|              | F    |        |          |       | Controle | Experimental | 1209 |     1.259 | 0.208 | 0.208 | ns           | 1211 |      1.043 | 0.297 |  0.297 | ns            |
|              | M    |        |          |       | Controle | Experimental | 1209 |    -1.508 | 0.132 | 0.132 | ns           | 1211 |     -1.327 | 0.185 |  0.185 | ns            |
| Controle     |      |        |          |       | Rural    | Urbana       |  835 |     0.572 | 0.568 | 0.568 | ns           |  835 |      0.572 | 0.568 |  0.568 | ns            |
| Controle     |      | Rural  |          |       | pre      | pos          | 1672 |     0.840 | 0.401 | 0.401 | ns           | 1672 |      0.840 | 0.401 |  0.401 | ns            |
| Controle     |      | Urbana |          |       | pre      | pos          | 1672 |     0.553 | 0.581 | 0.581 | ns           | 1672 |      0.553 | 0.581 |  0.581 | ns            |
| Experimental |      |        |          |       | Rural    | Urbana       |  835 |     1.292 | 0.197 | 0.197 | ns           |  835 |      1.292 | 0.197 |  0.197 | ns            |
| Experimental |      | Rural  |          |       | pre      | pos          | 1672 |    -0.006 | 0.995 | 0.995 | ns           | 1672 |     -0.006 | 0.995 |  0.995 | ns            |
| Experimental |      | Urbana |          |       | pre      | pos          | 1672 |     2.174 | 0.030 | 0.030 | \*           | 1672 |      2.174 | 0.030 |  0.030 | \*            |
|              |      | Rural  |          |       | Controle | Experimental |  835 |     0.028 | 0.978 | 0.978 | ns           |  835 |      0.028 | 0.978 |  0.978 | ns            |
|              |      | Urbana |          |       | Controle | Experimental |  835 |     0.557 | 0.578 | 0.578 | ns           |  835 |      0.557 | 0.578 |  0.578 | ns            |
| Controle     |      |        | Branca   |       | pre      | pos          |  952 |    -0.279 | 0.780 | 0.780 | ns           |  952 |     -0.279 | 0.780 |  0.780 | ns            |
| Controle     |      |        | Indígena |       | pre      | pos          |  952 |    -1.539 | 0.124 | 0.124 | ns           |  952 |     -1.539 | 0.124 |  0.124 | ns            |
| Controle     |      |        |          |       | Branca   | Indígena     |  475 |    -1.596 | 0.111 | 0.333 | ns           |  475 |     -1.596 | 0.111 |  0.333 | ns            |
| Controle     |      |        |          |       | Branca   | Parda        |  475 |     2.274 | 0.023 | 0.070 | ns           |  475 |      2.274 | 0.023 |  0.070 | ns            |
| Controle     |      |        |          |       | Indígena | Parda        |  475 |     2.842 | 0.005 | 0.014 | \*           |  475 |      2.842 | 0.005 |  0.014 | \*            |
| Controle     |      |        | Parda    |       | pre      | pos          |  952 |     0.955 | 0.340 | 0.340 | ns           |  952 |      0.955 | 0.340 |  0.340 | ns            |
| Experimental |      |        | Branca   |       | pre      | pos          |  952 |     0.505 | 0.614 | 0.614 | ns           |  952 |      0.505 | 0.614 |  0.614 | ns            |
| Experimental |      |        | Indígena |       | pre      | pos          |  952 |     0.829 | 0.408 | 0.408 | ns           |  952 |      0.829 | 0.408 |  0.408 | ns            |
| Experimental |      |        |          |       | Branca   | Indígena     |  475 |     1.265 | 0.207 | 0.620 | ns           |  475 |      1.265 | 0.207 |  0.620 | ns            |
| Experimental |      |        |          |       | Branca   | Parda        |  475 |     0.099 | 0.921 | 1.000 | ns           |  475 |      0.099 | 0.921 |  1.000 | ns            |
| Experimental |      |        |          |       | Indígena | Parda        |  475 |    -1.303 | 0.193 | 0.579 | ns           |  475 |     -1.303 | 0.193 |  0.579 | ns            |
| Experimental |      |        | Parda    |       | pre      | pos          |  952 |     0.323 | 0.746 | 0.746 | ns           |  952 |      0.323 | 0.746 |  0.746 | ns            |
|              |      |        | Branca   |       | Controle | Experimental |  475 |     1.374 | 0.170 | 0.170 | ns           |  475 |      1.374 | 0.170 |  0.170 | ns            |
|              |      |        | Indígena |       | Controle | Experimental |  475 |     2.889 | 0.004 | 0.004 | \*\*         |  475 |      2.889 | 0.004 |  0.004 | \*\*          |
|              |      |        | Parda    |       | Controle | Experimental |  475 |    -0.845 | 0.399 | 0.399 | ns           |  475 |     -0.845 | 0.399 |  0.399 | ns            |
| Controle     |      |        |          | 6 ano | pre      | pos          | 2410 |     0.201 | 0.841 | 0.841 | ns           | 2416 |      0.199 | 0.842 |  0.842 | ns            |
| Controle     |      |        |          | 7 ano | pre      | pos          | 2410 |     1.364 | 0.173 | 0.173 | ns           | 2416 |      1.351 | 0.177 |  0.177 | ns            |
| Controle     |      |        |          | 8 ano | pre      | pos          | 2410 |     0.608 | 0.543 | 0.543 | ns           | 2416 |      0.602 | 0.547 |  0.547 | ns            |
| Controle     |      |        |          | 9 ano | pre      | pos          | 2410 |    -0.896 | 0.370 | 0.370 | ns           | 2416 |     -0.391 | 0.696 |  0.696 | ns            |
| Controle     |      |        |          |       | 6 ano    | 7 ano        | 1204 |     1.923 | 0.055 | 0.328 | ns           | 1207 |      1.882 | 0.060 |  0.361 | ns            |
| Controle     |      |        |          |       | 6 ano    | 8 ano        | 1204 |     0.826 | 0.409 | 1.000 | ns           | 1207 |      0.809 | 0.419 |  1.000 | ns            |
| Controle     |      |        |          |       | 6 ano    | 9 ano        | 1204 |    -1.532 | 0.126 | 0.755 | ns           | 1207 |     -0.961 | 0.337 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 8 ano        | 1204 |    -0.840 | 0.401 | 1.000 | ns           | 1207 |     -0.822 | 0.411 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 9 ano        | 1204 |    -3.270 | 0.001 | 0.007 | \*\*         | 1207 |     -2.689 | 0.007 |  0.044 | \*            |
| Controle     |      |        |          |       | 8 ano    | 9 ano        | 1204 |    -2.101 | 0.036 | 0.215 | ns           | 1207 |     -1.595 | 0.111 |  0.666 | ns            |
| Experimental |      |        |          | 6 ano | pre      | pos          | 2410 |    -0.059 | 0.953 | 0.953 | ns           | 2416 |     -0.059 | 0.953 |  0.953 | ns            |
| Experimental |      |        |          | 7 ano | pre      | pos          | 2410 |     0.452 | 0.651 | 0.651 | ns           | 2416 |      0.448 | 0.654 |  0.654 | ns            |
| Experimental |      |        |          | 8 ano | pre      | pos          | 2410 |     0.506 | 0.613 | 0.613 | ns           | 2416 |      0.704 | 0.482 |  0.482 | ns            |
| Experimental |      |        |          | 9 ano | pre      | pos          | 2410 |     0.769 | 0.442 | 0.442 | ns           | 2416 |      0.762 | 0.446 |  0.446 | ns            |
| Experimental |      |        |          |       | 6 ano    | 7 ano        | 1204 |    -0.570 | 0.569 | 1.000 | ns           | 1207 |     -0.555 | 0.579 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 8 ano        | 1204 |     0.200 | 0.842 | 1.000 | ns           | 1207 |      0.435 | 0.663 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 9 ano        | 1204 |    -0.934 | 0.351 | 1.000 | ns           | 1207 |     -0.909 | 0.364 |  1.000 | ns            |
| Experimental |      |        |          |       | 7 ano    | 8 ano        | 1204 |     0.773 | 0.440 | 1.000 | ns           | 1207 |      1.003 | 0.316 |  1.000 | ns            |
| Experimental |      |        |          |       | 7 ano    | 9 ano        | 1204 |    -0.425 | 0.671 | 1.000 | ns           | 1207 |     -0.414 | 0.679 |  1.000 | ns            |
| Experimental |      |        |          |       | 8 ano    | 9 ano        | 1204 |    -1.120 | 0.263 | 1.000 | ns           | 1207 |     -1.321 | 0.187 |  1.000 | ns            |
|              |      |        |          | 6 ano | Controle | Experimental | 1204 |     0.607 | 0.544 | 0.544 | ns           | 1207 |      0.592 | 0.554 |  0.554 | ns            |
|              |      |        |          | 7 ano | Controle | Experimental | 1204 |    -1.962 | 0.050 | 0.050 | ns           | 1207 |     -1.919 | 0.055 |  0.055 | ns            |
|              |      |        |          | 8 ano | Controle | Experimental | 1204 |    -0.171 | 0.864 | 0.864 | ns           | 1207 |      0.026 | 0.979 |  0.979 | ns            |
|              |      |        |          | 9 ano | Controle | Experimental | 1204 |     1.202 | 0.229 | 0.229 | ns           | 1207 |      0.648 | 0.517 |  0.517 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores), names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | N-N’ |
|:-------------|:-----|:-------|:---------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|-----:|
| Controle     |      |        |          |       | 504 |   3.478 |    0.024 |     3.454 |      0.025 |   3.455 |    0.022 | 505 |    3.479 |     0.024 |      3.451 |       0.026 |    3.452 |     0.022 |   -1 |
| Experimental |      |        |          |       | 710 |   3.484 |    0.018 |     3.462 |      0.019 |   3.461 |    0.019 | 711 |    3.483 |     0.018 |      3.458 |       0.020 |    3.457 |     0.019 |   -1 |
| Controle     | F    |        |          |       | 247 |   3.554 |    0.032 |     3.519 |      0.034 |   3.489 |    0.032 | 248 |    3.555 |     0.032 |      3.511 |       0.035 |    3.480 |     0.032 |   -1 |
| Controle     | M    |        |          |       | 257 |   3.406 |    0.035 |     3.392 |      0.037 |   3.424 |    0.031 | 257 |    3.406 |     0.035 |      3.392 |       0.037 |    3.424 |     0.031 |    0 |
| Experimental | F    |        |          |       | 365 |   3.518 |    0.023 |     3.452 |      0.027 |   3.437 |    0.026 | 365 |    3.518 |     0.023 |      3.452 |       0.027 |    3.437 |     0.026 |    0 |
| Experimental | M    |        |          |       | 345 |   3.448 |    0.027 |     3.471 |      0.028 |   3.485 |    0.027 | 346 |    3.447 |     0.027 |      3.464 |       0.029 |    3.479 |     0.027 |   -1 |
| Controle     |      | Rural  |          |       | 236 |   3.531 |    0.035 |     3.491 |      0.037 |   3.478 |    0.032 | 236 |    3.531 |     0.035 |      3.491 |       0.037 |    3.478 |     0.032 |    0 |
| Controle     |      | Urbana |          |       | 136 |   3.467 |    0.048 |     3.432 |      0.049 |   3.447 |    0.042 | 136 |    3.467 |     0.048 |      3.432 |       0.049 |    3.447 |     0.042 |    0 |
| Experimental |      | Rural  |          |       | 269 |   3.456 |    0.029 |     3.456 |      0.031 |   3.476 |    0.030 | 269 |    3.456 |     0.029 |      3.456 |       0.031 |    3.476 |     0.030 |    0 |
| Experimental |      | Urbana |          |       | 199 |   3.554 |    0.033 |     3.440 |      0.039 |   3.416 |    0.035 | 199 |    3.554 |     0.033 |      3.440 |       0.039 |    3.416 |     0.035 |    0 |
| Controle     |      |        | Branca   |       |  49 |   3.602 |    0.087 |     3.630 |      0.084 |   3.574 |    0.065 |  49 |    3.602 |     0.087 |      3.630 |       0.084 |    3.574 |     0.065 |    0 |
| Controle     |      |        | Indígena |       |  10 |   3.489 |    0.171 |     3.833 |      0.116 |   3.827 |    0.144 |  10 |    3.489 |     0.171 |      3.833 |       0.116 |    3.827 |     0.144 |    0 |
| Controle     |      |        | Parda    |       | 167 |   3.445 |    0.041 |     3.392 |      0.041 |   3.405 |    0.035 | 167 |    3.445 |     0.041 |      3.392 |       0.041 |    3.405 |     0.035 |    0 |
| Experimental |      |        | Branca   |       |  59 |   3.519 |    0.055 |     3.473 |      0.061 |   3.453 |    0.059 |  59 |    3.519 |     0.055 |      3.473 |       0.061 |    3.453 |     0.059 |    0 |
| Experimental |      |        | Indígena |       |  14 |   3.411 |    0.109 |     3.254 |      0.124 |   3.281 |    0.122 |  14 |    3.411 |     0.109 |      3.254 |       0.124 |    3.281 |     0.122 |    0 |
| Experimental |      |        | Parda    |       | 183 |   3.455 |    0.034 |     3.438 |      0.035 |   3.446 |    0.034 | 183 |    3.455 |     0.034 |      3.438 |       0.035 |    3.446 |     0.034 |    0 |
| Controle     |      |        |          | 6 ano | 159 |   3.493 |    0.050 |     3.481 |      0.047 |   3.477 |    0.039 | 159 |    3.493 |     0.050 |      3.481 |       0.047 |    3.477 |     0.040 |    0 |
| Controle     |      |        |          | 7 ano | 136 |   3.431 |    0.046 |     3.345 |      0.047 |   3.366 |    0.042 | 136 |    3.431 |     0.046 |      3.345 |       0.047 |    3.366 |     0.043 |    0 |
| Controle     |      |        |          | 8 ano |  88 |   3.462 |    0.048 |     3.415 |      0.058 |   3.423 |    0.052 |  88 |    3.462 |     0.048 |      3.415 |       0.058 |    3.423 |     0.054 |    0 |
| Controle     |      |        |          | 9 ano | 120 |   3.526 |    0.043 |     3.586 |      0.048 |   3.568 |    0.045 | 122 |    3.527 |     0.043 |      3.554 |       0.052 |    3.535 |     0.045 |   -2 |
| Experimental |      |        |          | 6 ano | 179 |   3.412 |    0.038 |     3.416 |      0.036 |   3.444 |    0.037 | 179 |    3.412 |     0.038 |      3.416 |       0.036 |    3.444 |     0.038 |    0 |
| Experimental |      |        |          | 7 ano | 207 |   3.505 |    0.031 |     3.482 |      0.039 |   3.473 |    0.034 | 207 |    3.505 |     0.031 |      3.482 |       0.039 |    3.473 |     0.035 |    0 |
| Experimental |      |        |          | 8 ano | 175 |   3.448 |    0.037 |     3.420 |      0.039 |   3.434 |    0.037 | 176 |    3.445 |     0.037 |      3.406 |       0.041 |    3.421 |     0.038 |   -1 |
| Experimental |      |        |          | 9 ano | 149 |   3.583 |    0.036 |     3.537 |      0.039 |   3.495 |    0.040 | 149 |    3.583 |     0.036 |      3.537 |       0.039 |    3.495 |     0.041 |    0 |
