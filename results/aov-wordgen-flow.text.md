ANCOVA in flow (prod. textual) (flow (prod. textual))
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
  flow (prod. textual) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prod. textual) (measured using pre- and post-tests).

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
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.text  457 3.488  3.444 1.111 5.000 0.595 0.028 0.055 0.778
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.text  649 3.471  3.444 1.000 5.000 0.564 0.022 0.043 0.667
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.text 1106 3.478  3.444 1.000 5.000 0.577 0.017 0.034 0.778
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.text  457 3.468  3.444 1.000 5.000 0.595 0.028 0.055 0.778
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.text  649 3.484  3.444 1.667 5.000 0.568 0.022 0.044 0.764
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.text 1106 3.477  3.444 1.000 5.000 0.579 0.017 0.034 0.778
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.text  227 3.559  3.556 1.889 4.778 0.551 0.037 0.072 0.667
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.text  230 3.418  3.444 1.111 5.000 0.629 0.041 0.082 0.778
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.text  335 3.505  3.444 2.222 5.000 0.520 0.028 0.056 0.771
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.text  314 3.434  3.444 1.000 5.000 0.606 0.034 0.067 0.667
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.text  227 3.521  3.556 2.111 5.000 0.579 0.038 0.076 0.778
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.text  230 3.415  3.444 1.000 5.000 0.607 0.040 0.079 0.889
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.text  335 3.488  3.444 1.778 5.000 0.575 0.031 0.062 0.726
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.text  314 3.481  3.472 1.667 5.000 0.562 0.032 0.062 0.740
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.text  219 3.552  3.556 2.111 4.889 0.569 0.038 0.076 0.778
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.text  116 3.376  3.444 1.111 5.000 0.660 0.061 0.121 0.757
    ## 17     Controle <NA>   <NA>     <NA>  <NA> dfs.media.text  122 3.479  3.444 1.889 5.000 0.564 0.051 0.101 0.750
    ## 18 Experimental <NA>  Rural     <NA>  <NA> dfs.media.text  255 3.464  3.444 1.778 5.000 0.571 0.036 0.070 0.778
    ## 19 Experimental <NA> Urbana     <NA>  <NA> dfs.media.text  174 3.464  3.500 1.000 4.889 0.585 0.044 0.088 0.639
    ## 20 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.text  220 3.483  3.444 2.222 5.000 0.542 0.037 0.072 0.694
    ## 21     Controle <NA>  Rural     <NA>  <NA> fss.media.text  219 3.495  3.444 1.000 4.889 0.580 0.039 0.077 0.778
    ## 22     Controle <NA> Urbana     <NA>  <NA> fss.media.text  116 3.452  3.500 2.111 5.000 0.573 0.053 0.105 0.889
    ## 23     Controle <NA>   <NA>     <NA>  <NA> fss.media.text  122 3.433  3.444 1.333 5.000 0.641 0.058 0.115 0.667
    ## 24 Experimental <NA>  Rural     <NA>  <NA> fss.media.text  255 3.481  3.556 2.000 5.000 0.515 0.032 0.063 0.667
    ## 25 Experimental <NA> Urbana     <NA>  <NA> fss.media.text  174 3.451  3.444 2.222 5.000 0.600 0.045 0.090 0.750
    ## 26 Experimental <NA>   <NA>     <NA>  <NA> fss.media.text  220 3.515  3.556 1.667 5.000 0.602 0.041 0.080 0.778
    ## 27     Controle <NA>   <NA>   Branca  <NA> dfs.media.text   46 3.630  3.667 2.111 4.556 0.619 0.091 0.184 1.000
    ## 28     Controle <NA>   <NA> Indígena  <NA> dfs.media.text    9 3.654  3.667 2.667 4.333 0.557 0.186 0.428 1.000
    ## 29     Controle <NA>   <NA>    Parda  <NA> dfs.media.text  152 3.465  3.444 1.111 5.000 0.590 0.048 0.095 0.667
    ## 30     Controle <NA>   <NA>    Preta  <NA> dfs.media.text    1 3.333  3.333 3.333 3.333    NA    NA   NaN 0.000
    ## 31     Controle <NA>   <NA>     <NA>  <NA> dfs.media.text  249 3.470  3.444 1.444 5.000 0.595 0.038 0.074 0.778
    ## 32 Experimental <NA>   <NA>   Branca  <NA> dfs.media.text   57 3.471  3.444 1.000 4.667 0.643 0.085 0.171 0.778
    ## 33 Experimental <NA>   <NA> Indígena  <NA> dfs.media.text   15 3.306  3.333 2.667 4.222 0.438 0.113 0.242 0.611
    ## 34 Experimental <NA>   <NA>    Parda  <NA> dfs.media.text  176 3.417  3.389 1.778 5.000 0.585 0.044 0.087 0.778
    ## 35 Experimental <NA>   <NA>    Preta  <NA> dfs.media.text    1 3.333  3.333 3.333 3.333    NA    NA   NaN 0.000
    ## 36 Experimental <NA>   <NA>     <NA>  <NA> dfs.media.text  400 3.501  3.556 1.889 5.000 0.547 0.027 0.054 0.694
    ## 37     Controle <NA>   <NA>   Branca  <NA> fss.media.text   46 3.539  3.444 2.667 4.778 0.501 0.074 0.149 0.667
    ## 38     Controle <NA>   <NA> Indígena  <NA> fss.media.text    9 3.728  3.778 2.889 4.444 0.575 0.192 0.442 0.889
    ## 39     Controle <NA>   <NA>    Parda  <NA> fss.media.text  152 3.488  3.444 2.111 5.000 0.586 0.048 0.094 0.778
    ## 40     Controle <NA>   <NA>    Preta  <NA> fss.media.text    1 3.000  3.000 3.000 3.000    NA    NA   NaN 0.000
    ## 41     Controle <NA>   <NA>     <NA>  <NA> fss.media.text  249 3.434  3.444 1.000 5.000 0.616 0.039 0.077 0.889
    ## 42 Experimental <NA>   <NA>   Branca  <NA> fss.media.text   57 3.491  3.444 2.222 4.667 0.568 0.075 0.151 0.556
    ## 43 Experimental <NA>   <NA> Indígena  <NA> fss.media.text   15 3.444  3.444 2.778 4.667 0.549 0.142 0.304 0.840
    ## 44 Experimental <NA>   <NA>    Parda  <NA> fss.media.text  176 3.475  3.444 2.333 5.000 0.512 0.039 0.076 0.667
    ## 45 Experimental <NA>   <NA>    Preta  <NA> fss.media.text    1 4.333  4.333 4.333 4.333    NA    NA   NaN 0.000
    ## 46 Experimental <NA>   <NA>     <NA>  <NA> fss.media.text  400 3.487  3.556 1.667 5.000 0.593 0.030 0.058 0.778
    ## 47     Controle <NA>   <NA>     <NA> 6 ano dfs.media.text  151 3.486  3.444 1.444 5.000 0.632 0.051 0.102 0.778
    ## 48     Controle <NA>   <NA>     <NA> 7 ano dfs.media.text  130 3.424  3.444 2.111 4.889 0.609 0.053 0.106 0.778
    ## 49     Controle <NA>   <NA>     <NA> 8 ano dfs.media.text   76 3.523  3.500 2.556 5.000 0.521 0.060 0.119 0.667
    ## 50     Controle <NA>   <NA>     <NA> 9 ano dfs.media.text  100 3.547  3.556 1.111 4.556 0.573 0.057 0.114 0.667
    ## 51 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.text  171 3.404  3.444 2.222 5.000 0.574 0.044 0.087 0.778
    ## 52 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.text  175 3.491  3.444 1.000 5.000 0.603 0.046 0.090 0.778
    ## 53 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.text  157 3.460  3.444 1.889 4.667 0.516 0.041 0.081 0.667
    ## 54 Experimental <NA>   <NA>     <NA> 9 ano dfs.media.text  146 3.536  3.556 1.889 5.000 0.551 0.046 0.090 0.667
    ## 55     Controle <NA>   <NA>     <NA> 6 ano fss.media.text  151 3.453  3.333 1.000 5.000 0.610 0.050 0.098 0.778
    ##    symmetry    skewness    kurtosis
    ## 1       YES -0.13214544  0.31364430
    ## 2       YES -0.11274022  0.39345468
    ## 3       YES -0.11946088  0.37065500
    ## 4       YES -0.19926216  0.48544151
    ## 5       YES  0.02451374  0.11590034
    ## 6       YES -0.07747209  0.30442731
    ## 7       YES -0.09844875 -0.24988130
    ## 8       YES -0.07944965  0.53815367
    ## 9       YES  0.10525226 -0.29624616
    ## 10      YES -0.21013620  0.58968225
    ## 11      YES -0.14046247 -0.39026264
    ## 12      YES -0.22941391  1.13807187
    ## 13      YES -0.06982059  0.20344973
    ## 14      YES  0.13143526 -0.00576803
    ## 15      YES  0.07098291 -0.55972313
    ## 16      YES -0.45098916  0.92554567
    ## 17      YES  0.16933174 -0.17415927
    ## 18      YES  0.02535718 -0.13882094
    ## 19       NO -0.55569349  1.51061444
    ## 20      YES  0.15325841 -0.20785864
    ## 21      YES -0.35320157  0.70008975
    ## 22      YES -0.01778917 -0.36993906
    ## 23      YES -0.08637887  0.63411289
    ## 24      YES  0.01354951 -0.16654459
    ## 25      YES  0.33741575 -0.07767391
    ## 26      YES -0.21973306  0.34133863
    ## 27      YES -0.48009021 -0.51481197
    ## 28      YES -0.28611241 -1.33270101
    ## 29      YES -0.07100814  0.88276409
    ## 30 few data  0.00000000  0.00000000
    ## 31      YES -0.10136127  0.20159857
    ## 32       NO -1.16548513  2.48910844
    ## 33      YES  0.20040965 -0.84874808
    ## 34      YES  0.01802923 -0.07348330
    ## 35 few data  0.00000000  0.00000000
    ## 36      YES  0.06031097 -0.03783117
    ## 37       NO  0.67277339 -0.26163472
    ## 38      YES -0.36049804 -1.57153771
    ## 39      YES -0.08456114 -0.40084182
    ## 40 few data  0.00000000  0.00000000
    ## 41      YES -0.31312598  0.86203853
    ## 42      YES -0.18116359 -0.27580932
    ## 43      YES  0.44144729 -0.63720303
    ## 44      YES  0.36640060  0.04999045
    ## 45 few data  0.00000000  0.00000000
    ## 46      YES -0.06222286  0.12487041
    ## 47      YES -0.10074522  0.25381194
    ## 48      YES  0.11421214 -0.52253475
    ## 49      YES  0.29317879 -0.32826819
    ## 50       NO -0.73349456  2.02661287
    ## 51      YES  0.09233113 -0.34962264
    ## 52      YES -0.25076453  1.10365582
    ## 53      YES -0.08959117  0.05581287
    ## 54      YES -0.18351184  0.34076788
    ## 55      YES -0.19532082  0.79781946
    ##  [ reached 'max' / getOption("max.print") -- omitted 7 rows ]

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |    n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|-----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.text |  457 | 3.488 |  3.444 | 1.111 | 5.000 | 0.595 | 0.028 | 0.055 | 0.778 | YES      |   -0.132 |    0.314 |
| Experimental |      |        |          |       | dfs.media.text |  649 | 3.471 |  3.444 | 1.000 | 5.000 | 0.564 | 0.022 | 0.043 | 0.667 | YES      |   -0.113 |    0.393 |
|              |      |        |          |       | dfs.media.text | 1106 | 3.478 |  3.444 | 1.000 | 5.000 | 0.577 | 0.017 | 0.034 | 0.778 | YES      |   -0.119 |    0.371 |
| Controle     |      |        |          |       | fss.media.text |  457 | 3.468 |  3.444 | 1.000 | 5.000 | 0.595 | 0.028 | 0.055 | 0.778 | YES      |   -0.199 |    0.485 |
| Experimental |      |        |          |       | fss.media.text |  649 | 3.484 |  3.444 | 1.667 | 5.000 | 0.568 | 0.022 | 0.044 | 0.764 | YES      |    0.025 |    0.116 |
|              |      |        |          |       | fss.media.text | 1106 | 3.477 |  3.444 | 1.000 | 5.000 | 0.579 | 0.017 | 0.034 | 0.778 | YES      |   -0.077 |    0.304 |
| Controle     | F    |        |          |       | dfs.media.text |  227 | 3.559 |  3.556 | 1.889 | 4.778 | 0.551 | 0.037 | 0.072 | 0.667 | YES      |   -0.098 |   -0.250 |
| Controle     | M    |        |          |       | dfs.media.text |  230 | 3.418 |  3.444 | 1.111 | 5.000 | 0.629 | 0.041 | 0.082 | 0.778 | YES      |   -0.079 |    0.538 |
| Experimental | F    |        |          |       | dfs.media.text |  335 | 3.505 |  3.444 | 2.222 | 5.000 | 0.520 | 0.028 | 0.056 | 0.771 | YES      |    0.105 |   -0.296 |
| Experimental | M    |        |          |       | dfs.media.text |  314 | 3.434 |  3.444 | 1.000 | 5.000 | 0.606 | 0.034 | 0.067 | 0.667 | YES      |   -0.210 |    0.590 |
| Controle     | F    |        |          |       | fss.media.text |  227 | 3.521 |  3.556 | 2.111 | 5.000 | 0.579 | 0.038 | 0.076 | 0.778 | YES      |   -0.140 |   -0.390 |
| Controle     | M    |        |          |       | fss.media.text |  230 | 3.415 |  3.444 | 1.000 | 5.000 | 0.607 | 0.040 | 0.079 | 0.889 | YES      |   -0.229 |    1.138 |
| Experimental | F    |        |          |       | fss.media.text |  335 | 3.488 |  3.444 | 1.778 | 5.000 | 0.575 | 0.031 | 0.062 | 0.726 | YES      |   -0.070 |    0.203 |
| Experimental | M    |        |          |       | fss.media.text |  314 | 3.481 |  3.472 | 1.667 | 5.000 | 0.562 | 0.032 | 0.062 | 0.740 | YES      |    0.131 |   -0.006 |
| Controle     |      | Rural  |          |       | dfs.media.text |  219 | 3.552 |  3.556 | 2.111 | 4.889 | 0.569 | 0.038 | 0.076 | 0.778 | YES      |    0.071 |   -0.560 |
| Controle     |      | Urbana |          |       | dfs.media.text |  116 | 3.376 |  3.444 | 1.111 | 5.000 | 0.660 | 0.061 | 0.121 | 0.757 | YES      |   -0.451 |    0.926 |
| Controle     |      |        |          |       | dfs.media.text |  122 | 3.479 |  3.444 | 1.889 | 5.000 | 0.564 | 0.051 | 0.101 | 0.750 | YES      |    0.169 |   -0.174 |
| Experimental |      | Rural  |          |       | dfs.media.text |  255 | 3.464 |  3.444 | 1.778 | 5.000 | 0.571 | 0.036 | 0.070 | 0.778 | YES      |    0.025 |   -0.139 |
| Experimental |      | Urbana |          |       | dfs.media.text |  174 | 3.464 |  3.500 | 1.000 | 4.889 | 0.585 | 0.044 | 0.088 | 0.639 | NO       |   -0.556 |    1.511 |
| Experimental |      |        |          |       | dfs.media.text |  220 | 3.483 |  3.444 | 2.222 | 5.000 | 0.542 | 0.037 | 0.072 | 0.694 | YES      |    0.153 |   -0.208 |
| Controle     |      | Rural  |          |       | fss.media.text |  219 | 3.495 |  3.444 | 1.000 | 4.889 | 0.580 | 0.039 | 0.077 | 0.778 | YES      |   -0.353 |    0.700 |
| Controle     |      | Urbana |          |       | fss.media.text |  116 | 3.452 |  3.500 | 2.111 | 5.000 | 0.573 | 0.053 | 0.105 | 0.889 | YES      |   -0.018 |   -0.370 |
| Controle     |      |        |          |       | fss.media.text |  122 | 3.433 |  3.444 | 1.333 | 5.000 | 0.641 | 0.058 | 0.115 | 0.667 | YES      |   -0.086 |    0.634 |
| Experimental |      | Rural  |          |       | fss.media.text |  255 | 3.481 |  3.556 | 2.000 | 5.000 | 0.515 | 0.032 | 0.063 | 0.667 | YES      |    0.014 |   -0.167 |
| Experimental |      | Urbana |          |       | fss.media.text |  174 | 3.451 |  3.444 | 2.222 | 5.000 | 0.600 | 0.045 | 0.090 | 0.750 | YES      |    0.337 |   -0.078 |
| Experimental |      |        |          |       | fss.media.text |  220 | 3.515 |  3.556 | 1.667 | 5.000 | 0.602 | 0.041 | 0.080 | 0.778 | YES      |   -0.220 |    0.341 |
| Controle     |      |        | Branca   |       | dfs.media.text |   46 | 3.630 |  3.667 | 2.111 | 4.556 | 0.619 | 0.091 | 0.184 | 1.000 | YES      |   -0.480 |   -0.515 |
| Controle     |      |        | Indígena |       | dfs.media.text |    9 | 3.654 |  3.667 | 2.667 | 4.333 | 0.557 | 0.186 | 0.428 | 1.000 | YES      |   -0.286 |   -1.333 |
| Controle     |      |        | Parda    |       | dfs.media.text |  152 | 3.465 |  3.444 | 1.111 | 5.000 | 0.590 | 0.048 | 0.095 | 0.667 | YES      |   -0.071 |    0.883 |
| Controle     |      |        | Preta    |       | dfs.media.text |    1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | dfs.media.text |  249 | 3.470 |  3.444 | 1.444 | 5.000 | 0.595 | 0.038 | 0.074 | 0.778 | YES      |   -0.101 |    0.202 |
| Experimental |      |        | Branca   |       | dfs.media.text |   57 | 3.471 |  3.444 | 1.000 | 4.667 | 0.643 | 0.085 | 0.171 | 0.778 | NO       |   -1.165 |    2.489 |
| Experimental |      |        | Indígena |       | dfs.media.text |   15 | 3.306 |  3.333 | 2.667 | 4.222 | 0.438 | 0.113 | 0.242 | 0.611 | YES      |    0.200 |   -0.849 |
| Experimental |      |        | Parda    |       | dfs.media.text |  176 | 3.417 |  3.389 | 1.778 | 5.000 | 0.585 | 0.044 | 0.087 | 0.778 | YES      |    0.018 |   -0.073 |
| Experimental |      |        | Preta    |       | dfs.media.text |    1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | dfs.media.text |  400 | 3.501 |  3.556 | 1.889 | 5.000 | 0.547 | 0.027 | 0.054 | 0.694 | YES      |    0.060 |   -0.038 |
| Controle     |      |        | Branca   |       | fss.media.text |   46 | 3.539 |  3.444 | 2.667 | 4.778 | 0.501 | 0.074 | 0.149 | 0.667 | NO       |    0.673 |   -0.262 |
| Controle     |      |        | Indígena |       | fss.media.text |    9 | 3.728 |  3.778 | 2.889 | 4.444 | 0.575 | 0.192 | 0.442 | 0.889 | YES      |   -0.360 |   -1.572 |
| Controle     |      |        | Parda    |       | fss.media.text |  152 | 3.488 |  3.444 | 2.111 | 5.000 | 0.586 | 0.048 | 0.094 | 0.778 | YES      |   -0.085 |   -0.401 |
| Controle     |      |        | Preta    |       | fss.media.text |    1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | fss.media.text |  249 | 3.434 |  3.444 | 1.000 | 5.000 | 0.616 | 0.039 | 0.077 | 0.889 | YES      |   -0.313 |    0.862 |
| Experimental |      |        | Branca   |       | fss.media.text |   57 | 3.491 |  3.444 | 2.222 | 4.667 | 0.568 | 0.075 | 0.151 | 0.556 | YES      |   -0.181 |   -0.276 |
| Experimental |      |        | Indígena |       | fss.media.text |   15 | 3.444 |  3.444 | 2.778 | 4.667 | 0.549 | 0.142 | 0.304 | 0.840 | YES      |    0.441 |   -0.637 |
| Experimental |      |        | Parda    |       | fss.media.text |  176 | 3.475 |  3.444 | 2.333 | 5.000 | 0.512 | 0.039 | 0.076 | 0.667 | YES      |    0.366 |    0.050 |
| Experimental |      |        | Preta    |       | fss.media.text |    1 | 4.333 |  4.333 | 4.333 | 4.333 |       |       |       | 0.000 | few data |    0.000 |    0.000 |
| Experimental |      |        |          |       | fss.media.text |  400 | 3.487 |  3.556 | 1.667 | 5.000 | 0.593 | 0.030 | 0.058 | 0.778 | YES      |   -0.062 |    0.125 |
| Controle     |      |        |          | 6 ano | dfs.media.text |  151 | 3.486 |  3.444 | 1.444 | 5.000 | 0.632 | 0.051 | 0.102 | 0.778 | YES      |   -0.101 |    0.254 |
| Controle     |      |        |          | 7 ano | dfs.media.text |  130 | 3.424 |  3.444 | 2.111 | 4.889 | 0.609 | 0.053 | 0.106 | 0.778 | YES      |    0.114 |   -0.523 |
| Controle     |      |        |          | 8 ano | dfs.media.text |   76 | 3.523 |  3.500 | 2.556 | 5.000 | 0.521 | 0.060 | 0.119 | 0.667 | YES      |    0.293 |   -0.328 |
| Controle     |      |        |          | 9 ano | dfs.media.text |  100 | 3.547 |  3.556 | 1.111 | 4.556 | 0.573 | 0.057 | 0.114 | 0.667 | NO       |   -0.733 |    2.027 |
| Experimental |      |        |          | 6 ano | dfs.media.text |  171 | 3.404 |  3.444 | 2.222 | 5.000 | 0.574 | 0.044 | 0.087 | 0.778 | YES      |    0.092 |   -0.350 |
| Experimental |      |        |          | 7 ano | dfs.media.text |  175 | 3.491 |  3.444 | 1.000 | 5.000 | 0.603 | 0.046 | 0.090 | 0.778 | YES      |   -0.251 |    1.104 |
| Experimental |      |        |          | 8 ano | dfs.media.text |  157 | 3.460 |  3.444 | 1.889 | 4.667 | 0.516 | 0.041 | 0.081 | 0.667 | YES      |   -0.090 |    0.056 |
| Experimental |      |        |          | 9 ano | dfs.media.text |  146 | 3.536 |  3.556 | 1.889 | 5.000 | 0.551 | 0.046 | 0.090 | 0.667 | YES      |   -0.184 |    0.341 |
| Controle     |      |        |          | 6 ano | fss.media.text |  151 | 3.453 |  3.333 | 1.000 | 5.000 | 0.610 | 0.050 | 0.098 | 0.778 | YES      |   -0.195 |    0.798 |
| Controle     |      |        |          | 7 ano | fss.media.text |  130 | 3.408 |  3.444 | 1.667 | 4.889 | 0.533 | 0.047 | 0.092 | 0.778 | YES      |   -0.077 |    0.066 |
| Controle     |      |        |          | 8 ano | fss.media.text |   76 | 3.511 |  3.528 | 2.111 | 5.000 | 0.609 | 0.070 | 0.139 | 0.917 | YES      |    0.004 |   -0.275 |
| Controle     |      |        |          | 9 ano | fss.media.text |  100 | 3.534 |  3.667 | 1.333 | 4.889 | 0.636 | 0.064 | 0.126 | 0.802 | NO       |   -0.531 |    0.674 |
| Experimental |      |        |          | 6 ano | fss.media.text |  171 | 3.448 |  3.444 | 1.889 | 5.000 | 0.570 | 0.044 | 0.086 | 0.778 | YES      |    0.090 |   -0.256 |
| Experimental |      |        |          | 7 ano | fss.media.text |  175 | 3.513 |  3.556 | 2.000 | 5.000 | 0.582 | 0.044 | 0.087 | 0.778 | YES      |   -0.012 |    0.204 |
| Experimental |      |        |          | 8 ano | fss.media.text |  157 | 3.428 |  3.333 | 1.667 | 5.000 | 0.599 | 0.048 | 0.094 | 0.778 | YES      |    0.068 |    0.252 |
| Experimental |      |        |          | 9 ano | fss.media.text |  146 | 3.553 |  3.590 | 2.333 | 5.000 | 0.510 | 0.042 | 0.083 | 0.663 | YES      |    0.042 |   -0.010 |

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
ds <- ds[,c("grupo","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

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

    ## [1] "P2896"

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05     ges
    ## 1 dfs.media.text   1 1102 196.012 4.12e-41     * 0.15100
    ## 2          grupo   1 1102   0.309 5.79e-01       0.00028

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.text |   1 | 1102 | 196.012 | 0.000 | \*     | 0.151 |
| grupo          |   1 | 1102 |   0.309 | 0.579 |        | 0.000 |

| term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
| dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1102 |    -0.556 | 0.579 | 0.579 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]], by=c("grupo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | time | flow.text | pre    | pos    | 2206 |     0.387 | 0.699 | 0.699 | ns           |
| Experimental | time | flow.text | pre    | pos    | 2206 |    -0.428 | 0.669 | 0.669 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", "grupo", covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 456 |   3.488 |    0.028 |     3.473 |      0.027 |   3.469 |    0.025 |
| Experimental | 649 |   3.471 |    0.022 |     3.484 |      0.022 |   3.487 |    0.021 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "fss.media.text", "grupo", aov, list("grupo"=pwc), addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "fss.media.text", "grupo", aov, pwc, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (prod. textual)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "flow.text", "grupo", aov, pwc.long, pre.post = "time",
    theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("flow (prod. textual)")
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  )
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

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
    ## 1 res$.resid     0.997  0.0850

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1  1103  0.000309 0.986

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),], "fss.media.text", c("grupo","Sexo"))

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Sexo)
laov[["grupo:Sexo"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.text ~ Sexo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Sexo), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Sexo"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## [1] "P2896"

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Sexo)
laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05      ges
    ## 1 dfs.media.text   1 1100 192.997 1.51e-40     * 1.49e-01
    ## 2          grupo   1 1100   0.305 5.81e-01       2.77e-04
    ## 3           Sexo   1 1100   0.023 8.79e-01       2.12e-05
    ## 4     grupo:Sexo   1 1100   0.896 3.44e-01       8.14e-04

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.text |   1 | 1100 | 192.997 | 0.000 | \*     | 0.149 |
| grupo          |   1 | 1100 |   0.305 | 0.581 |        | 0.000 |
| Sexo           |   1 | 1100 |   0.023 | 0.879 |        | 0.000 |
| grupo:Sexo     |   1 | 1100 |   0.896 | 0.344 |        | 0.001 |

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.text ~ Sexo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Sexo), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

| grupo        | Sexo | term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
|              | F    | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1100 |     0.274 | 0.785 | 0.785 | ns           |
|              | M    | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1100 |    -1.061 | 0.289 | 0.289 | ns           |
| Controle     |      | dfs.media.text\*Sexo  | fss.media.text | F        | M            | 1100 |     0.823 | 0.411 | 0.411 | ns           |
| Experimental |      | dfs.media.text\*Sexo  | fss.media.text | F        | M            | 1100 |    -0.489 | 0.625 | 0.625 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Sexo"]], by=c("grupo","Sexo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Sexo | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | flow.text | pre    | pos    | 2202 |     0.702 | 0.483 | 0.483 | ns           |
| Controle     | M    | time | flow.text | pre    | pos    | 2202 |    -0.152 | 0.879 | 0.879 | ns           |
| Experimental | F    | time | flow.text | pre    | pos    | 2202 |     0.394 | 0.693 | 0.693 | ns           |
| Experimental | M    | time | flow.text | pre    | pos    | 2202 |    -1.023 | 0.306 | 0.306 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Sexo"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]], by=c("grupo","Sexo"), suffixes = c("","'"))
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | F    | 227 |   3.559 |    0.037 |     3.521 |      0.038 |   3.490 |    0.035 |
| Controle     | M    | 229 |   3.417 |    0.042 |     3.425 |      0.039 |   3.449 |    0.035 |
| Experimental | F    | 335 |   3.505 |    0.028 |     3.488 |      0.031 |   3.477 |    0.029 |
| Experimental | M    | 314 |   3.434 |    0.034 |     3.481 |      0.032 |   3.498 |    0.030 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.text", c("grupo","Sexo"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Sexo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (!is.null(plots[["Sexo"]]))
  plots[["Sexo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.text", c("grupo","Sexo"), aov, pwcs, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo:Sexo"]],
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (prod. textual)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.text", c("grupo","Sexo"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("flow (prod. textual)")
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          facet.by = c("grupo","Sexo"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Sexo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.998   0.101

``` r
levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3  1101     0.348 0.790

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),], "fss.media.text", c("grupo","Zona"))

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Zona)
laov[["grupo:Zona"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.text ~ Zona,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Zona), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Zona"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## [1] "P2896"

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Zona)
laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd       F        p p<.05      ges
    ## 1 dfs.media.text   1 758 168.934 5.15e-35     * 1.82e-01
    ## 2          grupo   1 758   0.044 8.34e-01       5.81e-05
    ## 3           Zona   1 758   0.076 7.83e-01       1.00e-04
    ## 4     grupo:Zona   1 758   0.359 5.49e-01       4.74e-04

| Effect         | DFn | DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|----:|--------:|------:|:-------|------:|
| dfs.media.text |   1 | 758 | 168.934 | 0.000 | \*     | 0.182 |
| grupo          |   1 | 758 |   0.044 | 0.834 |        | 0.000 |
| Zona           |   1 | 758 |   0.076 | 0.783 |        | 0.000 |
| grupo:Zona     |   1 | 758 |   0.359 | 0.549 |        | 0.000 |

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.text ~ Zona,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Zona), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

| grupo        | Zona   | term                  | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:----------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 758 |    -0.200 | 0.841 | 0.841 | ns           |
|              | Urbana | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 758 |     0.603 | 0.547 | 0.547 | ns           |
| Controle     |        | dfs.media.text\*Zona  | fss.media.text | Rural    | Urbana       | 758 |    -0.277 | 0.781 | 0.781 | ns           |
| Experimental |        | dfs.media.text\*Zona  | fss.media.text | Rural    | Urbana       | 758 |     0.599 | 0.550 | 0.550 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Zona"]], by=c("grupo","Zona","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Zona   | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | flow.text | pre    | pos    | 1518 |     0.826 | 0.409 | 0.409 | ns           |
| Controle     | Urbana | time | flow.text | pre    | pos    | 1518 |    -1.007 | 0.314 | 0.314 | ns           |
| Experimental | Rural  | time | flow.text | pre    | pos    | 1518 |    -0.320 | 0.749 | 0.749 | ns           |
| Experimental | Urbana | time | flow.text | pre    | pos    | 1518 |     0.213 | 0.831 | 0.831 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Zona"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]], by=c("grupo","Zona"), suffixes = c("","'"))
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Rural  | 218 |   3.552 |    0.039 |     3.507 |      0.038 |   3.476 |    0.034 |
| Controle     | Urbana | 116 |   3.376 |    0.061 |     3.452 |      0.053 |   3.492 |    0.047 |
| Experimental | Rural  | 255 |   3.464 |    0.036 |     3.481 |      0.032 |   3.485 |    0.031 |
| Experimental | Urbana | 174 |   3.464 |    0.044 |     3.451 |      0.045 |   3.456 |    0.038 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.text", c("grupo","Zona"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Zona"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (!is.null(plots[["Zona"]]))
  plots[["Zona"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.text", c("grupo","Zona"), aov, pwcs, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo:Zona"]],
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (prod. textual)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.text", c("grupo","Zona"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("flow (prod. textual)")
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          facet.by = c("grupo","Zona"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Zona, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.999   0.859

``` r
levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3   759     0.975 0.404

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),], "fss.media.text", c("grupo","Cor.Raca"))
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
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.text ~ Cor.Raca,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Cor.Raca), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Cor.Raca"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## NULL

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn DFd          F        p p<.05      ges
    ## 1 dfs.media.text   1 448 9.7995e+01 5.02e-21     * 1.79e-01
    ## 2          grupo   1 448 6.9100e-06 9.98e-01       1.54e-08
    ## 3       Cor.Raca   2 448 2.5400e-01 7.76e-01       1.00e-03
    ## 4 grupo:Cor.Raca   2 448 2.7000e-01 7.63e-01       1.00e-03

| Effect         | DFn | DFd |      F |     p | p\<.05 |   ges |
|:---------------|----:|----:|-------:|------:|:-------|------:|
| dfs.media.text |   1 | 448 | 97.995 | 0.000 | \*     | 0.179 |
| grupo          |   1 | 448 |  0.000 | 0.998 |        | 0.000 |
| Cor.Raca       |   2 | 448 |  0.254 | 0.776 |        | 0.001 |
| grupo:Cor.Raca |   2 | 448 |  0.270 | 0.763 |        | 0.001 |

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.text ~ Cor.Raca,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Cor.Raca), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

| grupo        | Cor.Raca | term                     | .y.            | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-------------------------|:---------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Branca   | dfs.media.text\*grupo    | fss.media.text | Controle | Experimental | 448 |    -0.144 | 0.886 | 0.886 | ns           |
|              | Indígena | dfs.media.text\*grupo    | fss.media.text | Controle | Experimental | 448 |     0.713 | 0.476 | 0.476 | ns           |
|              | Parda    | dfs.media.text\*grupo    | fss.media.text | Controle | Experimental | 448 |    -0.101 | 0.920 | 0.920 | ns           |
| Controle     |          | dfs.media.text\*Cor.Raca | fss.media.text | Branca   | Indígena     | 448 |    -0.996 | 0.320 | 0.959 | ns           |
| Controle     |          | dfs.media.text\*Cor.Raca | fss.media.text | Branca   | Parda        | 448 |    -0.160 | 0.873 | 1.000 | ns           |
| Controle     |          | dfs.media.text\*Cor.Raca | fss.media.text | Indígena | Parda        | 448 |     0.978 | 0.328 | 0.985 | ns           |
| Experimental |          | dfs.media.text\*Cor.Raca | fss.media.text | Branca   | Indígena     | 448 |    -0.114 | 0.909 | 1.000 | ns           |
| Experimental |          | dfs.media.text\*Cor.Raca | fss.media.text | Branca   | Parda        | 448 |    -0.064 | 0.949 | 1.000 | ns           |
| Experimental |          | dfs.media.text\*Cor.Raca | fss.media.text | Indígena | Parda        | 448 |     0.087 | 0.930 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Cor.Raca | term | .y.       | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:----------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Branca   | time | flow.text | pre    | pos    | 898 |     0.767 | 0.443 | 0.443 | ns           |
| Controle     | Indígena | time | flow.text | pre    | pos    | 898 |    -0.275 | 0.783 | 0.783 | ns           |
| Controle     | Parda    | time | flow.text | pre    | pos    | 898 |    -0.357 | 0.721 | 0.721 | ns           |
| Experimental | Branca   | time | flow.text | pre    | pos    | 898 |    -0.189 | 0.850 | 0.850 | ns           |
| Experimental | Indígena | time | flow.text | pre    | pos    | 898 |    -0.658 | 0.511 | 0.511 | ns           |
| Experimental | Parda    | time | flow.text | pre    | pos    | 898 |    -0.956 | 0.339 | 0.339 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Cor.Raca"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca"), suffixes = c("","'"))
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Branca   |  46 |   3.630 |    0.091 |     3.539 |      0.074 |   3.474 |    0.073 |
| Controle     | Indígena |   9 |   3.654 |    0.186 |     3.728 |      0.192 |   3.653 |    0.165 |
| Controle     | Parda    | 152 |   3.465 |    0.048 |     3.488 |      0.048 |   3.487 |    0.040 |
| Experimental | Branca   |  57 |   3.471 |    0.085 |     3.491 |      0.075 |   3.488 |    0.066 |
| Experimental | Indígena |  15 |   3.306 |    0.113 |     3.444 |      0.142 |   3.504 |    0.128 |
| Experimental | Parda    | 176 |   3.417 |    0.044 |     3.475 |      0.039 |   3.493 |    0.037 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.text", c("grupo","Cor.Raca"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Cor.Raca"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-90-1.png)<!-- -->

``` r
if (!is.null(plots[["Cor.Raca"]]))
  plots[["Cor.Raca"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.text", c("grupo","Cor.Raca"), aov, pwcs, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo:Cor.Raca"]],
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (prod. textual)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-93-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.text", c("grupo","Cor.Raca"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("flow (prod. textual)")
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Cor.Raca, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.997   0.444

``` r
levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     5   449     0.741 0.593

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),], "fss.media.text", c("grupo","Serie"))

pdat.long <- rbind(pdat[,c("id","grupo","Serie")], pdat[,c("id","grupo","Serie")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["flow.text"]] <- c(pdat[["dfs.media.text"]], pdat[["fss.media.text"]])

aov = anova_test(pdat, fss.media.text ~ dfs.media.text + grupo*Serie)
laov[["grupo:Serie"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(pdat, grupo), fss.media.text ~ Serie,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Serie), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "fss.media.text", c("grupo","Serie"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
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
```

    ## [1] "P2896"

``` r
aov = anova_test(wdat, fss.media.text ~ dfs.media.text + grupo*Serie)
laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##           Effect DFn  DFd       F        p p<.05      ges
    ## 1 dfs.media.text   1 1096 190.788 3.99e-40     * 0.148000
    ## 2          grupo   1 1096   0.350 5.54e-01       0.000319
    ## 3          Serie   3 1096   0.725 5.37e-01       0.002000
    ## 4    grupo:Serie   3 1096   0.698 5.54e-01       0.002000

| Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges |
|:---------------|----:|-----:|--------:|------:|:-------|------:|
| dfs.media.text |   1 | 1096 | 190.788 | 0.000 | \*     | 0.148 |
| grupo          |   1 | 1096 |   0.350 | 0.554 |        | 0.000 |
| Serie          |   3 | 1096 |   0.725 | 0.537 |        | 0.002 |
| grupo:Serie    |   3 | 1096 |   0.698 | 0.554 |        | 0.002 |

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(wdat, grupo), fss.media.text ~ Serie,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Serie), fss.media.text ~ grupo,
  covariate = dfs.media.text, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

| grupo        | Serie | term                  | .y.            | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:----------------------|:---------------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|
|              | 6 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1096 |    -0.165 | 0.869 | 0.869 | ns           |
|              | 7 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1096 |    -1.291 | 0.197 | 0.197 | ns           |
|              | 8 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1096 |     0.793 | 0.428 | 0.428 | ns           |
|              | 9 ano | dfs.media.text\*grupo | fss.media.text | Controle | Experimental | 1096 |    -0.345 | 0.730 | 0.730 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 7 ano        | 1096 |     0.605 | 0.545 | 1.000 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 8 ano        | 1096 |    -0.360 | 0.719 | 1.000 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 9 ano        | 1096 |    -0.587 | 0.557 | 1.000 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 7 ano    | 8 ano        | 1096 |    -0.853 | 0.394 | 1.000 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 7 ano    | 9 ano        | 1096 |    -1.114 | 0.266 | 1.000 | ns           |
| Controle     |       | dfs.media.text\*Serie | fss.media.text | 8 ano    | 9 ano        | 1096 |    -0.165 | 0.869 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 7 ano        | 1096 |    -0.544 | 0.587 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 8 ano        | 1096 |     0.711 | 0.477 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 6 ano    | 9 ano        | 1096 |    -0.904 | 0.366 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 7 ano    | 8 ano        | 1096 |     1.248 | 0.212 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 7 ano    | 9 ano        | 1096 |    -0.388 | 0.698 | 1.000 | ns           |
| Experimental |       | dfs.media.text\*Serie | fss.media.text | 8 ano    | 9 ano        | 1096 |    -1.571 | 0.116 | 0.699 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                         flow.text ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Serie"]], by=c("grupo","Serie","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Serie | term | .y.       | group1 | group2 |   df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:-----|:----------|:-------|:-------|-----:|----------:|------:|------:|:-------------|
| Controle     | 6 ano | time | flow.text | pre    | pos    | 2194 |     0.235 | 0.815 | 0.815 | ns           |
| Controle     | 7 ano | time | flow.text | pre    | pos    | 2194 |     0.229 | 0.819 | 0.819 | ns           |
| Controle     | 8 ano | time | flow.text | pre    | pos    | 2194 |     0.127 | 0.899 | 0.899 | ns           |
| Controle     | 9 ano | time | flow.text | pre    | pos    | 2194 |     0.167 | 0.867 | 0.867 | ns           |
| Experimental | 6 ano | time | flow.text | pre    | pos    | 2194 |    -0.716 | 0.474 | 0.474 | ns           |
| Experimental | 7 ano | time | flow.text | pre    | pos    | 2194 |    -0.355 | 0.723 | 0.723 | ns           |
| Experimental | 8 ano | time | flow.text | pre    | pos    | 2194 |     0.493 | 0.622 | 0.622 | ns           |
| Experimental | 9 ano | time | flow.text | pre    | pos    | 2194 |    -0.250 | 0.803 | 0.803 | ns           |

``` r
ds <- get.descriptives(wdat, "fss.media.text", c("grupo","Serie"), covar = "dfs.media.text")
ds <- merge(ds[ds$variable != "dfs.media.text",],
            ds[ds$variable == "dfs.media.text", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".dfs.media.text"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.dfs.media.text","se.dfs.media.text","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]], by=c("grupo","Serie"), suffixes = c("","'"))
```

| grupo        | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 6 ano | 150 |   3.485 |    0.052 |     3.470 |      0.047 |   3.467 |    0.043 |
| Controle     | 7 ano | 130 |   3.424 |    0.053 |     3.408 |      0.047 |   3.428 |    0.047 |
| Controle     | 8 ano |  76 |   3.523 |    0.060 |     3.511 |      0.070 |   3.494 |    0.061 |
| Controle     | 9 ano | 100 |   3.547 |    0.057 |     3.534 |      0.064 |   3.507 |    0.053 |
| Experimental | 6 ano | 171 |   3.404 |    0.044 |     3.448 |      0.044 |   3.477 |    0.041 |
| Experimental | 7 ano | 175 |   3.491 |    0.046 |     3.513 |      0.044 |   3.508 |    0.040 |
| Experimental | 8 ano | 157 |   3.460 |    0.041 |     3.428 |      0.048 |   3.435 |    0.042 |
| Experimental | 9 ano | 146 |   3.536 |    0.046 |     3.553 |      0.042 |   3.531 |    0.044 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "fss.media.text", c("grupo","Serie"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Serie"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-114-1.png)<!-- -->

``` r
if (!is.null(plots[["Serie"]]))
  plots[["Serie"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-115-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "fss.media.text", c("grupo","Serie"), aov, pwcs, covar = "dfs.media.text",
  theme = "classic", color = color[["grupo:Serie"]],
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (prod. textual)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "flow.text", c("grupo","Serie"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("flow (prod. textual)")
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-119-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "dfs.media.text", y = "fss.media.text", size = 0.5,
          facet.by = c("grupo","Serie"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-wordgen-flow.text_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(fss.media.text ~ dfs.media.text + grupo*Serie, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.997  0.0871

``` r
levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     7  1097      1.14 0.334

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
    ## 1      Controle <NA>   <NA>     <NA>  <NA> dfs.media.text  456 3.488  3.444 1.111 5.000 0.596 0.028 0.055 0.778
    ## 2  Experimental <NA>   <NA>     <NA>  <NA> dfs.media.text  649 3.471  3.444 1.000 5.000 0.564 0.022 0.043 0.667
    ## 3          <NA> <NA>   <NA>     <NA>  <NA> dfs.media.text 1105 3.478  3.444 1.000 5.000 0.577 0.017 0.034 0.778
    ## 4      Controle <NA>   <NA>     <NA>  <NA> fss.media.text  456 3.473  3.444 1.333 5.000 0.584 0.027 0.054 0.778
    ## 5  Experimental <NA>   <NA>     <NA>  <NA> fss.media.text  649 3.484  3.444 1.667 5.000 0.568 0.022 0.044 0.764
    ## 6          <NA> <NA>   <NA>     <NA>  <NA> fss.media.text 1105 3.480  3.444 1.333 5.000 0.575 0.017 0.034 0.778
    ## 7      Controle    F   <NA>     <NA>  <NA> dfs.media.text  227 3.559  3.556 1.889 4.778 0.551 0.037 0.072 0.667
    ## 8      Controle    M   <NA>     <NA>  <NA> dfs.media.text  229 3.417  3.444 1.111 5.000 0.630 0.042 0.082 0.778
    ## 9  Experimental    F   <NA>     <NA>  <NA> dfs.media.text  335 3.505  3.444 2.222 5.000 0.520 0.028 0.056 0.771
    ## 10 Experimental    M   <NA>     <NA>  <NA> dfs.media.text  314 3.434  3.444 1.000 5.000 0.606 0.034 0.067 0.667
    ## 11     Controle    F   <NA>     <NA>  <NA> fss.media.text  227 3.521  3.556 2.111 5.000 0.579 0.038 0.076 0.778
    ## 12     Controle    M   <NA>     <NA>  <NA> fss.media.text  229 3.425  3.444 1.333 5.000 0.586 0.039 0.076 0.889
    ## 13 Experimental    F   <NA>     <NA>  <NA> fss.media.text  335 3.488  3.444 1.778 5.000 0.575 0.031 0.062 0.726
    ## 14 Experimental    M   <NA>     <NA>  <NA> fss.media.text  314 3.481  3.472 1.667 5.000 0.562 0.032 0.062 0.740
    ## 15     Controle <NA>  Rural     <NA>  <NA> dfs.media.text  218 3.552  3.556 2.111 4.889 0.571 0.039 0.076 0.778
    ## 16     Controle <NA> Urbana     <NA>  <NA> dfs.media.text  116 3.376  3.444 1.111 5.000 0.660 0.061 0.121 0.757
    ## 17 Experimental <NA>  Rural     <NA>  <NA> dfs.media.text  255 3.464  3.444 1.778 5.000 0.571 0.036 0.070 0.778
    ## 18 Experimental <NA> Urbana     <NA>  <NA> dfs.media.text  174 3.464  3.500 1.000 4.889 0.585 0.044 0.088 0.639
    ## 19     Controle <NA>  Rural     <NA>  <NA> fss.media.text  218 3.507  3.444 2.000 4.889 0.556 0.038 0.074 0.778
    ## 20     Controle <NA> Urbana     <NA>  <NA> fss.media.text  116 3.452  3.500 2.111 5.000 0.573 0.053 0.105 0.889
    ## 21 Experimental <NA>  Rural     <NA>  <NA> fss.media.text  255 3.481  3.556 2.000 5.000 0.515 0.032 0.063 0.667
    ## 22 Experimental <NA> Urbana     <NA>  <NA> fss.media.text  174 3.451  3.444 2.222 5.000 0.600 0.045 0.090 0.750
    ## 23     Controle <NA>   <NA>   Branca  <NA> dfs.media.text   46 3.630  3.667 2.111 4.556 0.619 0.091 0.184 1.000
    ## 24     Controle <NA>   <NA> Indígena  <NA> dfs.media.text    9 3.654  3.667 2.667 4.333 0.557 0.186 0.428 1.000
    ## 25     Controle <NA>   <NA>    Parda  <NA> dfs.media.text  152 3.465  3.444 1.111 5.000 0.590 0.048 0.095 0.667
    ## 26 Experimental <NA>   <NA>   Branca  <NA> dfs.media.text   57 3.471  3.444 1.000 4.667 0.643 0.085 0.171 0.778
    ## 27 Experimental <NA>   <NA> Indígena  <NA> dfs.media.text   15 3.306  3.333 2.667 4.222 0.438 0.113 0.242 0.611
    ## 28 Experimental <NA>   <NA>    Parda  <NA> dfs.media.text  176 3.417  3.389 1.778 5.000 0.585 0.044 0.087 0.778
    ## 29     Controle <NA>   <NA>   Branca  <NA> fss.media.text   46 3.539  3.444 2.667 4.778 0.501 0.074 0.149 0.667
    ## 30     Controle <NA>   <NA> Indígena  <NA> fss.media.text    9 3.728  3.778 2.889 4.444 0.575 0.192 0.442 0.889
    ## 31     Controle <NA>   <NA>    Parda  <NA> fss.media.text  152 3.488  3.444 2.111 5.000 0.586 0.048 0.094 0.778
    ## 32 Experimental <NA>   <NA>   Branca  <NA> fss.media.text   57 3.491  3.444 2.222 4.667 0.568 0.075 0.151 0.556
    ## 33 Experimental <NA>   <NA> Indígena  <NA> fss.media.text   15 3.444  3.444 2.778 4.667 0.549 0.142 0.304 0.840
    ## 34 Experimental <NA>   <NA>    Parda  <NA> fss.media.text  176 3.475  3.444 2.333 5.000 0.512 0.039 0.076 0.667
    ## 35     Controle <NA>   <NA>     <NA> 6 ano dfs.media.text  150 3.485  3.444 1.444 5.000 0.634 0.052 0.102 0.778
    ## 36     Controle <NA>   <NA>     <NA> 7 ano dfs.media.text  130 3.424  3.444 2.111 4.889 0.609 0.053 0.106 0.778
    ## 37     Controle <NA>   <NA>     <NA> 8 ano dfs.media.text   76 3.523  3.500 2.556 5.000 0.521 0.060 0.119 0.667
    ## 38     Controle <NA>   <NA>     <NA> 9 ano dfs.media.text  100 3.547  3.556 1.111 4.556 0.573 0.057 0.114 0.667
    ## 39 Experimental <NA>   <NA>     <NA> 6 ano dfs.media.text  171 3.404  3.444 2.222 5.000 0.574 0.044 0.087 0.778
    ## 40 Experimental <NA>   <NA>     <NA> 7 ano dfs.media.text  175 3.491  3.444 1.000 5.000 0.603 0.046 0.090 0.778
    ## 41 Experimental <NA>   <NA>     <NA> 8 ano dfs.media.text  157 3.460  3.444 1.889 4.667 0.516 0.041 0.081 0.667
    ## 42 Experimental <NA>   <NA>     <NA> 9 ano dfs.media.text  146 3.536  3.556 1.889 5.000 0.551 0.046 0.090 0.667
    ## 43     Controle <NA>   <NA>     <NA> 6 ano fss.media.text  150 3.470  3.333 2.000 5.000 0.578 0.047 0.093 0.778
    ## 44     Controle <NA>   <NA>     <NA> 7 ano fss.media.text  130 3.408  3.444 1.667 4.889 0.533 0.047 0.092 0.778
    ## 45     Controle <NA>   <NA>     <NA> 8 ano fss.media.text   76 3.511  3.528 2.111 5.000 0.609 0.070 0.139 0.917
    ## 46     Controle <NA>   <NA>     <NA> 9 ano fss.media.text  100 3.534  3.667 1.333 4.889 0.636 0.064 0.126 0.802
    ## 47 Experimental <NA>   <NA>     <NA> 6 ano fss.media.text  171 3.448  3.444 1.889 5.000 0.570 0.044 0.086 0.778
    ## 48 Experimental <NA>   <NA>     <NA> 7 ano fss.media.text  175 3.513  3.556 2.000 5.000 0.582 0.044 0.087 0.778
    ## 49 Experimental <NA>   <NA>     <NA> 8 ano fss.media.text  157 3.428  3.333 1.667 5.000 0.599 0.048 0.094 0.778
    ## 50 Experimental <NA>   <NA>     <NA> 9 ano fss.media.text  146 3.553  3.590 2.333 5.000 0.510 0.042 0.083 0.663
    ##    symmetry     skewness    kurtosis
    ## 1       YES -0.131262624  0.30641817
    ## 2       YES -0.112740217  0.39345468
    ## 3       YES -0.119046325  0.36765431
    ## 4       YES -0.073263422  0.06017465
    ## 5       YES  0.024513742  0.11590034
    ## 6       YES -0.018589672  0.10124891
    ## 7       YES -0.098448745 -0.24988130
    ## 8       YES -0.076494199  0.52381144
    ## 9       YES  0.105252261 -0.29624616
    ## 10      YES -0.210136199  0.58968225
    ## 11      YES -0.140462468 -0.39026264
    ## 12      YES -0.003942829  0.50166962
    ## 13      YES -0.069820587  0.20344973
    ## 14      YES  0.131435259 -0.00576803
    ## 15      YES  0.070905450 -0.57095901
    ## 16      YES -0.450989163  0.92554567
    ## 17      YES  0.025357177 -0.13882094
    ## 18       NO -0.555693493  1.51061444
    ## 19      YES -0.050273378 -0.45390689
    ## 20      YES -0.017789174 -0.36993906
    ## 21      YES  0.013549509 -0.16654459
    ## 22      YES  0.337415753 -0.07767391
    ## 23      YES -0.480090209 -0.51481197
    ## 24      YES -0.286112414 -1.33270101
    ## 25      YES -0.071008144  0.88276409
    ## 26       NO -1.165485130  2.48910844
    ## 27      YES  0.200409651 -0.84874808
    ## 28      YES  0.018029231 -0.07348330
    ## 29       NO  0.672773393 -0.26163472
    ## 30      YES -0.360498044 -1.57153771
    ## 31      YES -0.084561142 -0.40084182
    ## 32      YES -0.181163586 -0.27580932
    ## 33      YES  0.441447288 -0.63720303
    ## 34      YES  0.366400597  0.04999045
    ## 35      YES -0.098236968  0.23221348
    ## 36      YES  0.114212142 -0.52253475
    ## 37      YES  0.293178787 -0.32826819
    ## 38       NO -0.733494556  2.02661287
    ## 39      YES  0.092331133 -0.34962264
    ## 40      YES -0.250764531  1.10365582
    ## 41      YES -0.089591175  0.05581287
    ## 42      YES -0.183511840  0.34076788
    ## 43      YES  0.194526159 -0.44572169
    ## 44      YES -0.077424591  0.06641033
    ## 45      YES  0.004375640 -0.27528944
    ## 46       NO -0.530847714  0.67426249
    ## 47      YES  0.089738110 -0.25579166
    ## 48      YES -0.012141666  0.20436761
    ## 49      YES  0.068352048  0.25167613
    ## 50      YES  0.042144882 -0.01015478

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable       |    n |  mean | median |   min |   max |    sd |    se |    ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:---------------|-----:|------:|-------:|------:|------:|------:|------:|------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       | dfs.media.text |  456 | 3.488 |  3.444 | 1.111 | 5.000 | 0.596 | 0.028 | 0.055 | 0.778 | YES      |   -0.131 |    0.306 |
| Experimental |      |        |          |       | dfs.media.text |  649 | 3.471 |  3.444 | 1.000 | 5.000 | 0.564 | 0.022 | 0.043 | 0.667 | YES      |   -0.113 |    0.393 |
|              |      |        |          |       | dfs.media.text | 1105 | 3.478 |  3.444 | 1.000 | 5.000 | 0.577 | 0.017 | 0.034 | 0.778 | YES      |   -0.119 |    0.368 |
| Controle     |      |        |          |       | fss.media.text |  456 | 3.473 |  3.444 | 1.333 | 5.000 | 0.584 | 0.027 | 0.054 | 0.778 | YES      |   -0.073 |    0.060 |
| Experimental |      |        |          |       | fss.media.text |  649 | 3.484 |  3.444 | 1.667 | 5.000 | 0.568 | 0.022 | 0.044 | 0.764 | YES      |    0.025 |    0.116 |
|              |      |        |          |       | fss.media.text | 1105 | 3.480 |  3.444 | 1.333 | 5.000 | 0.575 | 0.017 | 0.034 | 0.778 | YES      |   -0.019 |    0.101 |
| Controle     | F    |        |          |       | dfs.media.text |  227 | 3.559 |  3.556 | 1.889 | 4.778 | 0.551 | 0.037 | 0.072 | 0.667 | YES      |   -0.098 |   -0.250 |
| Controle     | M    |        |          |       | dfs.media.text |  229 | 3.417 |  3.444 | 1.111 | 5.000 | 0.630 | 0.042 | 0.082 | 0.778 | YES      |   -0.076 |    0.524 |
| Experimental | F    |        |          |       | dfs.media.text |  335 | 3.505 |  3.444 | 2.222 | 5.000 | 0.520 | 0.028 | 0.056 | 0.771 | YES      |    0.105 |   -0.296 |
| Experimental | M    |        |          |       | dfs.media.text |  314 | 3.434 |  3.444 | 1.000 | 5.000 | 0.606 | 0.034 | 0.067 | 0.667 | YES      |   -0.210 |    0.590 |
| Controle     | F    |        |          |       | fss.media.text |  227 | 3.521 |  3.556 | 2.111 | 5.000 | 0.579 | 0.038 | 0.076 | 0.778 | YES      |   -0.140 |   -0.390 |
| Controle     | M    |        |          |       | fss.media.text |  229 | 3.425 |  3.444 | 1.333 | 5.000 | 0.586 | 0.039 | 0.076 | 0.889 | YES      |   -0.004 |    0.502 |
| Experimental | F    |        |          |       | fss.media.text |  335 | 3.488 |  3.444 | 1.778 | 5.000 | 0.575 | 0.031 | 0.062 | 0.726 | YES      |   -0.070 |    0.203 |
| Experimental | M    |        |          |       | fss.media.text |  314 | 3.481 |  3.472 | 1.667 | 5.000 | 0.562 | 0.032 | 0.062 | 0.740 | YES      |    0.131 |   -0.006 |
| Controle     |      | Rural  |          |       | dfs.media.text |  218 | 3.552 |  3.556 | 2.111 | 4.889 | 0.571 | 0.039 | 0.076 | 0.778 | YES      |    0.071 |   -0.571 |
| Controle     |      | Urbana |          |       | dfs.media.text |  116 | 3.376 |  3.444 | 1.111 | 5.000 | 0.660 | 0.061 | 0.121 | 0.757 | YES      |   -0.451 |    0.926 |
| Experimental |      | Rural  |          |       | dfs.media.text |  255 | 3.464 |  3.444 | 1.778 | 5.000 | 0.571 | 0.036 | 0.070 | 0.778 | YES      |    0.025 |   -0.139 |
| Experimental |      | Urbana |          |       | dfs.media.text |  174 | 3.464 |  3.500 | 1.000 | 4.889 | 0.585 | 0.044 | 0.088 | 0.639 | NO       |   -0.556 |    1.511 |
| Controle     |      | Rural  |          |       | fss.media.text |  218 | 3.507 |  3.444 | 2.000 | 4.889 | 0.556 | 0.038 | 0.074 | 0.778 | YES      |   -0.050 |   -0.454 |
| Controle     |      | Urbana |          |       | fss.media.text |  116 | 3.452 |  3.500 | 2.111 | 5.000 | 0.573 | 0.053 | 0.105 | 0.889 | YES      |   -0.018 |   -0.370 |
| Experimental |      | Rural  |          |       | fss.media.text |  255 | 3.481 |  3.556 | 2.000 | 5.000 | 0.515 | 0.032 | 0.063 | 0.667 | YES      |    0.014 |   -0.167 |
| Experimental |      | Urbana |          |       | fss.media.text |  174 | 3.451 |  3.444 | 2.222 | 5.000 | 0.600 | 0.045 | 0.090 | 0.750 | YES      |    0.337 |   -0.078 |
| Controle     |      |        | Branca   |       | dfs.media.text |   46 | 3.630 |  3.667 | 2.111 | 4.556 | 0.619 | 0.091 | 0.184 | 1.000 | YES      |   -0.480 |   -0.515 |
| Controle     |      |        | Indígena |       | dfs.media.text |    9 | 3.654 |  3.667 | 2.667 | 4.333 | 0.557 | 0.186 | 0.428 | 1.000 | YES      |   -0.286 |   -1.333 |
| Controle     |      |        | Parda    |       | dfs.media.text |  152 | 3.465 |  3.444 | 1.111 | 5.000 | 0.590 | 0.048 | 0.095 | 0.667 | YES      |   -0.071 |    0.883 |
| Experimental |      |        | Branca   |       | dfs.media.text |   57 | 3.471 |  3.444 | 1.000 | 4.667 | 0.643 | 0.085 | 0.171 | 0.778 | NO       |   -1.165 |    2.489 |
| Experimental |      |        | Indígena |       | dfs.media.text |   15 | 3.306 |  3.333 | 2.667 | 4.222 | 0.438 | 0.113 | 0.242 | 0.611 | YES      |    0.200 |   -0.849 |
| Experimental |      |        | Parda    |       | dfs.media.text |  176 | 3.417 |  3.389 | 1.778 | 5.000 | 0.585 | 0.044 | 0.087 | 0.778 | YES      |    0.018 |   -0.073 |
| Controle     |      |        | Branca   |       | fss.media.text |   46 | 3.539 |  3.444 | 2.667 | 4.778 | 0.501 | 0.074 | 0.149 | 0.667 | NO       |    0.673 |   -0.262 |
| Controle     |      |        | Indígena |       | fss.media.text |    9 | 3.728 |  3.778 | 2.889 | 4.444 | 0.575 | 0.192 | 0.442 | 0.889 | YES      |   -0.360 |   -1.572 |
| Controle     |      |        | Parda    |       | fss.media.text |  152 | 3.488 |  3.444 | 2.111 | 5.000 | 0.586 | 0.048 | 0.094 | 0.778 | YES      |   -0.085 |   -0.401 |
| Experimental |      |        | Branca   |       | fss.media.text |   57 | 3.491 |  3.444 | 2.222 | 4.667 | 0.568 | 0.075 | 0.151 | 0.556 | YES      |   -0.181 |   -0.276 |
| Experimental |      |        | Indígena |       | fss.media.text |   15 | 3.444 |  3.444 | 2.778 | 4.667 | 0.549 | 0.142 | 0.304 | 0.840 | YES      |    0.441 |   -0.637 |
| Experimental |      |        | Parda    |       | fss.media.text |  176 | 3.475 |  3.444 | 2.333 | 5.000 | 0.512 | 0.039 | 0.076 | 0.667 | YES      |    0.366 |    0.050 |
| Controle     |      |        |          | 6 ano | dfs.media.text |  150 | 3.485 |  3.444 | 1.444 | 5.000 | 0.634 | 0.052 | 0.102 | 0.778 | YES      |   -0.098 |    0.232 |
| Controle     |      |        |          | 7 ano | dfs.media.text |  130 | 3.424 |  3.444 | 2.111 | 4.889 | 0.609 | 0.053 | 0.106 | 0.778 | YES      |    0.114 |   -0.523 |
| Controle     |      |        |          | 8 ano | dfs.media.text |   76 | 3.523 |  3.500 | 2.556 | 5.000 | 0.521 | 0.060 | 0.119 | 0.667 | YES      |    0.293 |   -0.328 |
| Controle     |      |        |          | 9 ano | dfs.media.text |  100 | 3.547 |  3.556 | 1.111 | 4.556 | 0.573 | 0.057 | 0.114 | 0.667 | NO       |   -0.733 |    2.027 |
| Experimental |      |        |          | 6 ano | dfs.media.text |  171 | 3.404 |  3.444 | 2.222 | 5.000 | 0.574 | 0.044 | 0.087 | 0.778 | YES      |    0.092 |   -0.350 |
| Experimental |      |        |          | 7 ano | dfs.media.text |  175 | 3.491 |  3.444 | 1.000 | 5.000 | 0.603 | 0.046 | 0.090 | 0.778 | YES      |   -0.251 |    1.104 |
| Experimental |      |        |          | 8 ano | dfs.media.text |  157 | 3.460 |  3.444 | 1.889 | 4.667 | 0.516 | 0.041 | 0.081 | 0.667 | YES      |   -0.090 |    0.056 |
| Experimental |      |        |          | 9 ano | dfs.media.text |  146 | 3.536 |  3.556 | 1.889 | 5.000 | 0.551 | 0.046 | 0.090 | 0.667 | YES      |   -0.184 |    0.341 |
| Controle     |      |        |          | 6 ano | fss.media.text |  150 | 3.470 |  3.333 | 2.000 | 5.000 | 0.578 | 0.047 | 0.093 | 0.778 | YES      |    0.195 |   -0.446 |
| Controle     |      |        |          | 7 ano | fss.media.text |  130 | 3.408 |  3.444 | 1.667 | 4.889 | 0.533 | 0.047 | 0.092 | 0.778 | YES      |   -0.077 |    0.066 |
| Controle     |      |        |          | 8 ano | fss.media.text |   76 | 3.511 |  3.528 | 2.111 | 5.000 | 0.609 | 0.070 | 0.139 | 0.917 | YES      |    0.004 |   -0.275 |
| Controle     |      |        |          | 9 ano | fss.media.text |  100 | 3.534 |  3.667 | 1.333 | 4.889 | 0.636 | 0.064 | 0.126 | 0.802 | NO       |   -0.531 |    0.674 |
| Experimental |      |        |          | 6 ano | fss.media.text |  171 | 3.448 |  3.444 | 1.889 | 5.000 | 0.570 | 0.044 | 0.086 | 0.778 | YES      |    0.090 |   -0.256 |
| Experimental |      |        |          | 7 ano | fss.media.text |  175 | 3.513 |  3.556 | 2.000 | 5.000 | 0.582 | 0.044 | 0.087 | 0.778 | YES      |   -0.012 |    0.204 |
| Experimental |      |        |          | 8 ano | fss.media.text |  157 | 3.428 |  3.333 | 1.667 | 5.000 | 0.599 | 0.048 | 0.094 | 0.778 | YES      |    0.068 |    0.252 |
| Experimental |      |        |          | 9 ano | fss.media.text |  146 | 3.553 |  3.590 | 2.333 | 5.000 | 0.510 | 0.042 | 0.083 | 0.663 | YES      |    0.042 |   -0.010 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
(df <- df[!duplicated(df$Effect),])
```

    ##            Effect DFn  DFd       F        p p<.05      ges DFn' DFd'      F'       p' p<.05'     ges'
    ## 1  dfs.media.text   1 1102 196.012 4.12e-41     * 1.51e-01    1 1103 191.862 2.41e-40      * 1.48e-01
    ## 2           grupo   1 1102   0.309 5.79e-01       2.80e-04    1 1103   0.515 4.73e-01        4.67e-04
    ## 5      grupo:Sexo   1 1100   0.896 3.44e-01       8.14e-04    1 1101   1.219 2.70e-01        1.00e-03
    ## 6            Sexo   1 1100   0.023 8.79e-01       2.12e-05    1 1101   0.086 7.70e-01        7.78e-05
    ## 9      grupo:Zona   1  758   0.359 5.49e-01       4.74e-04    1  759   0.545 4.61e-01        7.18e-04
    ## 10           Zona   1  758   0.076 7.83e-01       1.00e-04    1  759   0.021 8.85e-01        2.78e-05
    ## 11       Cor.Raca   2  448   0.254 7.76e-01       1.00e-03    2  448   0.254 7.76e-01        1.00e-03
    ## 14 grupo:Cor.Raca   2  448   0.270 7.63e-01       1.00e-03    2  448   0.270 7.63e-01        1.00e-03
    ## 17    grupo:Serie   3 1096   0.698 5.54e-01       2.00e-03    3 1097   0.674 5.68e-01        2.00e-03
    ## 18          Serie   3 1096   0.725 5.37e-01       2.00e-03    3 1097   0.769 5.11e-01        2.00e-03

|     | Effect         | DFn |  DFd |       F |     p | p\<.05 |   ges | DFn’ | DFd’ |      F’ |    p’ | p\<.05’ |  ges’ |
|:----|:---------------|----:|-----:|--------:|------:|:-------|------:|-----:|-----:|--------:|------:|:--------|------:|
| 1   | dfs.media.text |   1 | 1102 | 196.012 | 0.000 | \*     | 0.151 |    1 | 1103 | 191.862 | 0.000 | \*      | 0.148 |
| 2   | grupo          |   1 | 1102 |   0.309 | 0.579 |        | 0.000 |    1 | 1103 |   0.515 | 0.473 |         | 0.000 |
| 5   | grupo:Sexo     |   1 | 1100 |   0.896 | 0.344 |        | 0.001 |    1 | 1101 |   1.219 | 0.270 |         | 0.001 |
| 6   | Sexo           |   1 | 1100 |   0.023 | 0.879 |        | 0.000 |    1 | 1101 |   0.086 | 0.770 |         | 0.000 |
| 9   | grupo:Zona     |   1 |  758 |   0.359 | 0.549 |        | 0.000 |    1 |  759 |   0.545 | 0.461 |         | 0.001 |
| 10  | Zona           |   1 |  758 |   0.076 | 0.783 |        | 0.000 |    1 |  759 |   0.021 | 0.885 |         | 0.000 |
| 11  | Cor.Raca       |   2 |  448 |   0.254 | 0.776 |        | 0.001 |    2 |  448 |   0.254 | 0.776 |         | 0.001 |
| 14  | grupo:Cor.Raca |   2 |  448 |   0.270 | 0.763 |        | 0.001 |    2 |  448 |   0.270 | 0.763 |         | 0.001 |
| 17  | grupo:Serie    |   3 | 1096 |   0.698 | 0.554 |        | 0.002 |    3 | 1097 |   0.674 | 0.568 |         | 0.002 |
| 18  | Serie          |   3 | 1096 |   0.725 | 0.537 |        | 0.002 |    3 | 1097 |   0.769 | 0.511 |         | 0.002 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores), names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | group1   | group2       |   df | statistic |     p | p.adj | p.adj.signif |  df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:------|:---------|:-------------|-----:|----------:|------:|------:|:-------------|-----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          |       | pre      | pos          | 2206 |     0.387 | 0.699 | 0.699 | ns           | 2208 |      0.531 | 0.595 |  0.595 | ns            |
| Experimental |      |        |          |       | pre      | pos          | 2206 |    -0.428 | 0.669 | 0.669 | ns           | 2208 |     -0.426 | 0.670 |  0.670 | ns            |
|              |      |        |          |       | Controle | Experimental | 1102 |    -0.556 | 0.579 | 0.579 | ns           | 1103 |     -0.718 | 0.473 |  0.473 | ns            |
| Controle     | F    |        |          |       | pre      | pos          | 2202 |     0.702 | 0.483 | 0.483 | ns           | 2204 |      0.699 | 0.484 |  0.484 | ns            |
| Controle     | M    |        |          |       | pre      | pos          | 2202 |    -0.152 | 0.879 | 0.879 | ns           | 2204 |      0.055 | 0.956 |  0.956 | ns            |
| Controle     |      |        |          |       | F        | M            | 1100 |     0.823 | 0.411 | 0.411 | ns           | 1101 |      1.034 | 0.302 |  0.302 | ns            |
| Experimental | F    |        |          |       | pre      | pos          | 2202 |     0.394 | 0.693 | 0.693 | ns           | 2204 |      0.393 | 0.694 |  0.694 | ns            |
| Experimental | M    |        |          |       | pre      | pos          | 2202 |    -1.023 | 0.306 | 0.306 | ns           | 2204 |     -1.019 | 0.308 |  0.308 | ns            |
| Experimental |      |        |          |       | F        | M            | 1100 |    -0.489 | 0.625 | 0.625 | ns           | 1101 |     -0.483 | 0.630 |  0.630 | ns            |
|              | F    |        |          |       | Controle | Experimental | 1100 |     0.274 | 0.785 | 0.785 | ns           | 1101 |      0.272 | 0.786 |  0.786 | ns            |
|              | M    |        |          |       | Controle | Experimental | 1100 |    -1.061 | 0.289 | 0.289 | ns           | 1101 |     -1.285 | 0.199 |  0.199 | ns            |
| Controle     |      |        |          |       | Rural    | Urbana       |  758 |    -0.277 | 0.781 | 0.781 | ns           |  759 |     -0.468 | 0.640 |  0.640 | ns            |
| Controle     |      | Rural  |          |       | pre      | pos          | 1518 |     0.826 | 0.409 | 0.409 | ns           | 1520 |      1.032 | 0.302 |  0.302 | ns            |
| Controle     |      | Urbana |          |       | pre      | pos          | 1518 |    -1.007 | 0.314 | 0.314 | ns           | 1520 |     -1.001 | 0.317 |  0.317 | ns            |
| Experimental |      |        |          |       | Rural    | Urbana       |  758 |     0.599 | 0.550 | 0.550 | ns           |  759 |      0.589 | 0.556 |  0.556 | ns            |
| Experimental |      | Rural  |          |       | pre      | pos          | 1518 |    -0.320 | 0.749 | 0.749 | ns           | 1520 |     -0.318 | 0.750 |  0.750 | ns            |
| Experimental |      | Urbana |          |       | pre      | pos          | 1518 |     0.213 | 0.831 | 0.831 | ns           | 1520 |      0.212 | 0.832 |  0.832 | ns            |
|              |      | Rural  |          |       | Controle | Experimental |  758 |    -0.200 | 0.841 | 0.841 | ns           |  759 |     -0.441 | 0.660 |  0.660 | ns            |
|              |      | Urbana |          |       | Controle | Experimental |  758 |     0.603 | 0.547 | 0.547 | ns           |  759 |      0.594 | 0.553 |  0.553 | ns            |
| Controle     |      |        | Branca   |       | pre      | pos          |  898 |     0.767 | 0.443 | 0.443 | ns           |  898 |      0.767 | 0.443 |  0.443 | ns            |
| Controle     |      |        | Indígena |       | pre      | pos          |  898 |    -0.275 | 0.783 | 0.783 | ns           |  898 |     -0.275 | 0.783 |  0.783 | ns            |
| Controle     |      |        |          |       | Branca   | Indígena     |  448 |    -0.996 | 0.320 | 0.959 | ns           |  448 |     -0.996 | 0.320 |  0.959 | ns            |
| Controle     |      |        |          |       | Branca   | Parda        |  448 |    -0.160 | 0.873 | 1.000 | ns           |  448 |     -0.160 | 0.873 |  1.000 | ns            |
| Controle     |      |        |          |       | Indígena | Parda        |  448 |     0.978 | 0.328 | 0.985 | ns           |  448 |      0.978 | 0.328 |  0.985 | ns            |
| Controle     |      |        | Parda    |       | pre      | pos          |  898 |    -0.357 | 0.721 | 0.721 | ns           |  898 |     -0.357 | 0.721 |  0.721 | ns            |
| Experimental |      |        | Branca   |       | pre      | pos          |  898 |    -0.189 | 0.850 | 0.850 | ns           |  898 |     -0.189 | 0.850 |  0.850 | ns            |
| Experimental |      |        | Indígena |       | pre      | pos          |  898 |    -0.658 | 0.511 | 0.511 | ns           |  898 |     -0.658 | 0.511 |  0.511 | ns            |
| Experimental |      |        |          |       | Branca   | Indígena     |  448 |    -0.114 | 0.909 | 1.000 | ns           |  448 |     -0.114 | 0.909 |  1.000 | ns            |
| Experimental |      |        |          |       | Branca   | Parda        |  448 |    -0.064 | 0.949 | 1.000 | ns           |  448 |     -0.064 | 0.949 |  1.000 | ns            |
| Experimental |      |        |          |       | Indígena | Parda        |  448 |     0.087 | 0.930 | 1.000 | ns           |  448 |      0.087 | 0.930 |  1.000 | ns            |
| Experimental |      |        | Parda    |       | pre      | pos          |  898 |    -0.956 | 0.339 | 0.339 | ns           |  898 |     -0.956 | 0.339 |  0.339 | ns            |
|              |      |        | Branca   |       | Controle | Experimental |  448 |    -0.144 | 0.886 | 0.886 | ns           |  448 |     -0.144 | 0.886 |  0.886 | ns            |
|              |      |        | Indígena |       | Controle | Experimental |  448 |     0.713 | 0.476 | 0.476 | ns           |  448 |      0.713 | 0.476 |  0.476 | ns            |
|              |      |        | Parda    |       | Controle | Experimental |  448 |    -0.101 | 0.920 | 0.920 | ns           |  448 |     -0.101 | 0.920 |  0.920 | ns            |
| Controle     |      |        |          | 6 ano | pre      | pos          | 2194 |     0.235 | 0.815 | 0.815 | ns           | 2196 |      0.487 | 0.626 |  0.626 | ns            |
| Controle     |      |        |          | 7 ano | pre      | pos          | 2194 |     0.229 | 0.819 | 0.819 | ns           | 2196 |      0.228 | 0.819 |  0.819 | ns            |
| Controle     |      |        |          | 8 ano | pre      | pos          | 2194 |     0.127 | 0.899 | 0.899 | ns           | 2196 |      0.127 | 0.899 |  0.899 | ns            |
| Controle     |      |        |          | 9 ano | pre      | pos          | 2194 |     0.167 | 0.867 | 0.867 | ns           | 2196 |      0.167 | 0.868 |  0.868 | ns            |
| Controle     |      |        |          |       | 6 ano    | 7 ano        | 1096 |     0.605 | 0.545 | 1.000 | ns           | 1097 |      0.343 | 0.732 |  1.000 | ns            |
| Controle     |      |        |          |       | 6 ano    | 8 ano        | 1096 |    -0.360 | 0.719 | 1.000 | ns           | 1097 |     -0.577 | 0.564 |  1.000 | ns            |
| Controle     |      |        |          |       | 6 ano    | 9 ano        | 1096 |    -0.587 | 0.557 | 1.000 | ns           | 1097 |     -0.822 | 0.411 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 8 ano        | 1096 |    -0.853 | 0.394 | 1.000 | ns           | 1097 |     -0.846 | 0.398 |  1.000 | ns            |
| Controle     |      |        |          |       | 7 ano    | 9 ano        | 1096 |    -1.114 | 0.266 | 1.000 | ns           | 1097 |     -1.104 | 0.270 |  1.000 | ns            |
| Controle     |      |        |          |       | 8 ano    | 9 ano        | 1096 |    -0.165 | 0.869 | 1.000 | ns           | 1097 |     -0.163 | 0.870 |  1.000 | ns            |
| Experimental |      |        |          | 6 ano | pre      | pos          | 2194 |    -0.716 | 0.474 | 0.474 | ns           | 2196 |     -0.713 | 0.476 |  0.476 | ns            |
| Experimental |      |        |          | 7 ano | pre      | pos          | 2194 |    -0.355 | 0.723 | 0.723 | ns           | 2196 |     -0.354 | 0.724 |  0.724 | ns            |
| Experimental |      |        |          | 8 ano | pre      | pos          | 2194 |     0.493 | 0.622 | 0.622 | ns           | 2196 |      0.491 | 0.623 |  0.623 | ns            |
| Experimental |      |        |          | 9 ano | pre      | pos          | 2194 |    -0.250 | 0.803 | 0.803 | ns           | 2196 |     -0.249 | 0.803 |  0.803 | ns            |
| Experimental |      |        |          |       | 6 ano    | 7 ano        | 1096 |    -0.544 | 0.587 | 1.000 | ns           | 1097 |     -0.540 | 0.590 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 8 ano        | 1096 |     0.711 | 0.477 | 1.000 | ns           | 1097 |      0.704 | 0.481 |  1.000 | ns            |
| Experimental |      |        |          |       | 6 ano    | 9 ano        | 1096 |    -0.904 | 0.366 | 1.000 | ns           | 1097 |     -0.897 | 0.370 |  1.000 | ns            |
| Experimental |      |        |          |       | 7 ano    | 8 ano        | 1096 |     1.248 | 0.212 | 1.000 | ns           | 1097 |      1.237 | 0.217 |  1.000 | ns            |
| Experimental |      |        |          |       | 7 ano    | 9 ano        | 1096 |    -0.388 | 0.698 | 1.000 | ns           | 1097 |     -0.385 | 0.700 |  1.000 | ns            |
| Experimental |      |        |          |       | 8 ano    | 9 ano        | 1096 |    -1.571 | 0.116 | 0.699 | ns           | 1097 |     -1.557 | 0.120 |  0.719 | ns            |
|              |      |        |          | 6 ano | Controle | Experimental | 1096 |    -0.165 | 0.869 | 0.869 | ns           | 1097 |     -0.440 | 0.660 |  0.660 | ns            |
|              |      |        |          | 7 ano | Controle | Experimental | 1096 |    -1.291 | 0.197 | 0.197 | ns           | 1097 |     -1.280 | 0.201 |  0.201 | ns            |
|              |      |        |          | 8 ano | Controle | Experimental | 1096 |     0.793 | 0.428 | 0.428 | ns           | 1097 |      0.786 | 0.432 |  0.432 | ns            |
|              |      |        |          | 9 ano | Controle | Experimental | 1096 |    -0.345 | 0.730 | 0.730 | ns           | 1097 |     -0.341 | 0.733 |  0.733 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores), names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | N-N’ |
|:-------------|:-----|:-------|:---------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|-----:|
| Controle     |      |        |          |       | 456 |   3.488 |    0.028 |     3.473 |      0.027 |   3.469 |    0.025 | 457 |    3.488 |     0.028 |      3.468 |       0.028 |    3.464 |     0.025 |   -1 |
| Experimental |      |        |          |       | 649 |   3.471 |    0.022 |     3.484 |      0.022 |   3.487 |    0.021 | 649 |    3.471 |     0.022 |      3.484 |       0.022 |    3.487 |     0.021 |    0 |
| Controle     | F    |        |          |       | 227 |   3.559 |    0.037 |     3.521 |      0.038 |   3.490 |    0.035 | 227 |    3.559 |     0.037 |      3.521 |       0.038 |    3.490 |     0.036 |    0 |
| Controle     | M    |        |          |       | 229 |   3.417 |    0.042 |     3.425 |      0.039 |   3.449 |    0.035 | 230 |    3.418 |     0.041 |      3.415 |       0.040 |    3.438 |     0.035 |   -1 |
| Experimental | F    |        |          |       | 335 |   3.505 |    0.028 |     3.488 |      0.031 |   3.477 |    0.029 | 335 |    3.505 |     0.028 |      3.488 |       0.031 |    3.477 |     0.029 |    0 |
| Experimental | M    |        |          |       | 314 |   3.434 |    0.034 |     3.481 |      0.032 |   3.498 |    0.030 | 314 |    3.434 |     0.034 |      3.481 |       0.032 |    3.498 |     0.030 |    0 |
| Controle     |      | Rural  |          |       | 218 |   3.552 |    0.039 |     3.507 |      0.038 |   3.476 |    0.034 | 219 |    3.552 |     0.038 |      3.495 |       0.039 |    3.465 |     0.035 |   -1 |
| Controle     |      | Urbana |          |       | 116 |   3.376 |    0.061 |     3.452 |      0.053 |   3.492 |    0.047 | 116 |    3.376 |     0.061 |      3.452 |       0.053 |    3.492 |     0.048 |    0 |
| Experimental |      | Rural  |          |       | 255 |   3.464 |    0.036 |     3.481 |      0.032 |   3.485 |    0.031 | 255 |    3.464 |     0.036 |      3.481 |       0.032 |    3.485 |     0.032 |    0 |
| Experimental |      | Urbana |          |       | 174 |   3.464 |    0.044 |     3.451 |      0.045 |   3.456 |    0.038 | 174 |    3.464 |     0.044 |      3.451 |       0.045 |    3.456 |     0.039 |    0 |
| Controle     |      |        | Branca   |       |  46 |   3.630 |    0.091 |     3.539 |      0.074 |   3.474 |    0.073 |  46 |    3.630 |     0.091 |      3.539 |       0.074 |    3.474 |     0.073 |    0 |
| Controle     |      |        | Indígena |       |   9 |   3.654 |    0.186 |     3.728 |      0.192 |   3.653 |    0.165 |   9 |    3.654 |     0.186 |      3.728 |       0.192 |    3.653 |     0.165 |    0 |
| Controle     |      |        | Parda    |       | 152 |   3.465 |    0.048 |     3.488 |      0.048 |   3.487 |    0.040 | 152 |    3.465 |     0.048 |      3.488 |       0.048 |    3.487 |     0.040 |    0 |
| Experimental |      |        | Branca   |       |  57 |   3.471 |    0.085 |     3.491 |      0.075 |   3.488 |    0.066 |  57 |    3.471 |     0.085 |      3.491 |       0.075 |    3.488 |     0.066 |    0 |
| Experimental |      |        | Indígena |       |  15 |   3.306 |    0.113 |     3.444 |      0.142 |   3.504 |    0.128 |  15 |    3.306 |     0.113 |      3.444 |       0.142 |    3.504 |     0.128 |    0 |
| Experimental |      |        | Parda    |       | 176 |   3.417 |    0.044 |     3.475 |      0.039 |   3.493 |    0.037 | 176 |    3.417 |     0.044 |      3.475 |       0.039 |    3.493 |     0.037 |    0 |
| Controle     |      |        |          | 6 ano | 150 |   3.485 |    0.052 |     3.470 |      0.047 |   3.467 |    0.043 | 151 |    3.486 |     0.051 |      3.453 |       0.050 |    3.450 |     0.044 |   -1 |
| Controle     |      |        |          | 7 ano | 130 |   3.424 |    0.053 |     3.408 |      0.047 |   3.428 |    0.047 | 130 |    3.424 |     0.053 |      3.408 |       0.047 |    3.428 |     0.047 |    0 |
| Controle     |      |        |          | 8 ano |  76 |   3.523 |    0.060 |     3.511 |      0.070 |   3.494 |    0.061 |  76 |    3.523 |     0.060 |      3.511 |       0.070 |    3.494 |     0.061 |    0 |
| Controle     |      |        |          | 9 ano | 100 |   3.547 |    0.057 |     3.534 |      0.064 |   3.507 |    0.053 | 100 |    3.547 |     0.057 |      3.534 |       0.064 |    3.507 |     0.054 |    0 |
| Experimental |      |        |          | 6 ano | 171 |   3.404 |    0.044 |     3.448 |      0.044 |   3.477 |    0.041 | 171 |    3.404 |     0.044 |      3.448 |       0.044 |    3.477 |     0.041 |    0 |
| Experimental |      |        |          | 7 ano | 175 |   3.491 |    0.046 |     3.513 |      0.044 |   3.508 |    0.040 | 175 |    3.491 |     0.046 |      3.513 |       0.044 |    3.508 |     0.040 |    0 |
| Experimental |      |        |          | 8 ano | 157 |   3.460 |    0.041 |     3.428 |      0.048 |   3.435 |    0.042 | 157 |    3.460 |     0.041 |      3.428 |       0.048 |    3.435 |     0.043 |    0 |
| Experimental |      |        |          | 9 ano | 146 |   3.536 |    0.046 |     3.553 |      0.042 |   3.531 |    0.044 | 146 |    3.536 |     0.046 |      3.553 |       0.042 |    3.531 |     0.044 |    0 |
