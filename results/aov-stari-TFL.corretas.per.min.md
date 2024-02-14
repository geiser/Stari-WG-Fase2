ANCOVA in Palavras Corretas (1 Min) (Palavras Corretas (1 Min))
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
- [ANCOVA and Pairwise for two factors
  **grupo:TFL.corretas.per.min.quintile**](#ancova-and-pairwise-for-two-factors-grupotflcorretasperminquintile)
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
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

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

    ##           grupo Sexo   Zona Cor.Raca Serie TFL.corretas.per.min.quintile                 variable   n
    ## 1      Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  90
    ## 2  Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  53
    ## 3          <NA> <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 143
    ## 4      Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  90
    ## 5  Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  53
    ## 6          <NA> <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 143
    ## 7      Controle    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  36
    ## 8      Controle    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  54
    ## 9  Experimental    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  22
    ## 10 Experimental    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  31
    ## 11     Controle    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  36
    ## 12     Controle    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  54
    ## 13 Experimental    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  22
    ## 14 Experimental    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  31
    ## 15     Controle <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  58
    ## 16     Controle <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre   7
    ## 17     Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  25
    ## 18 Experimental <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  35
    ## 19 Experimental <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre   6
    ## 20 Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  12
    ## 21     Controle <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  58
    ## 22     Controle <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos   7
    ## 23     Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  25
    ## 24 Experimental <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  35
    ## 25 Experimental <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos   6
    ## 26 Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  12
    ## 27     Controle <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pre  12
    ## 28     Controle <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pre   3
    ## 29     Controle <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pre  41
    ## 30     Controle <NA>   <NA>    Preta  <NA>                          <NA> TFL.corretas.per.min.pre   1
    ## 31     Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  33
    ## 32 Experimental <NA>   <NA>  Amarela  <NA>                          <NA> TFL.corretas.per.min.pre   1
    ## 33 Experimental <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pre   5
    ## 34 Experimental <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pre   8
    ## 35 Experimental <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pre  16
    ## 36 Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  23
    ## 37     Controle <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pos  12
    ## 38     Controle <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pos   3
    ## 39     Controle <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pos  41
    ## 40     Controle <NA>   <NA>    Preta  <NA>                          <NA> TFL.corretas.per.min.pos   1
    ## 41     Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  33
    ## 42 Experimental <NA>   <NA>  Amarela  <NA>                          <NA> TFL.corretas.per.min.pos   1
    ## 43 Experimental <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pos   5
    ## 44 Experimental <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pos   8
    ## 45 Experimental <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pos  16
    ## 46 Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  23
    ## 47     Controle <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pre  31
    ## 48     Controle <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pre  19
    ## 49     Controle <NA>   <NA>     <NA> 8 ano                          <NA> TFL.corretas.per.min.pre  15
    ## 50     Controle <NA>   <NA>     <NA> 9 ano                          <NA> TFL.corretas.per.min.pre  25
    ## 51 Experimental <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pre  19
    ## 52 Experimental <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pre  11
    ##       mean median min max     sd     se     ci   iqr symmetry    skewness    kurtosis
    ## 1   90.222   92.0  23 154 24.662  2.600  5.165 29.50      YES -0.21086891 -0.11932638
    ## 2   92.170   92.0  50 134 19.589  2.691  5.399 30.00      YES -0.08277061 -0.48940046
    ## 3   90.944   92.0  23 154 22.861  1.912  3.779 29.00      YES -0.21155070 -0.01693925
    ## 4  113.022  113.0  42 184 28.684  3.024  6.008 45.00      YES  0.23934494 -0.38996535
    ## 5  113.660  111.0  66 190 27.439  3.769  7.563 40.00       NO  0.65841487  0.10455825
    ## 6  113.259  112.0  42 190 28.134  2.353  4.651 44.00      YES  0.38455720 -0.17545093
    ## 7   92.333   95.5  39 154 24.576  4.096  8.315 26.50      YES -0.11138567  0.05687454
    ## 8   88.815   89.0  23 137 24.848  3.381  6.782 30.00      YES -0.26682038 -0.37376299
    ## 9   97.682   95.0  60 132 17.269  3.682  7.657 22.25      YES -0.18612109 -0.43329267
    ## 10  88.258   90.0  50 134 20.452  3.673  7.502 19.50      YES  0.11304439 -0.56923706
    ## 11 120.056  118.0  85 184 26.635  4.439  9.012 39.50       NO  0.53397524 -0.62258319
    ## 12 108.333  109.0  42 176 29.277  3.984  7.991 43.00      YES  0.18694174 -0.55506354
    ## 13 123.955  115.5  81 190 25.712  5.482 11.400 37.75      YES  0.48197584 -0.17304125
    ## 14 106.355   99.0  66 184 26.635  4.784  9.770 26.50       NO  0.96710143  0.79758141
    ## 15  90.276   92.0  23 154 26.761  3.514  7.037 34.50      YES -0.23070477 -0.30166813
    ## 16  92.286   98.0  47 123 24.067  9.097 22.259 19.00       NO -0.61387521 -0.79087872
    ## 17  89.520   87.0  52 137 20.199  4.040  8.338 24.00      YES  0.11734560 -0.36917240
    ## 18  89.114   90.0  51 134 19.123  3.232  6.569 19.50      YES  0.11835641 -0.50948135
    ## 19 102.000   95.0  90 132 16.444  6.713 17.257 15.50       NO  0.87441223 -1.03746076
    ## 20  96.167   97.5  50 119 21.468  6.197 13.640 31.00       NO -0.65210760 -0.75576886
    ## 21 104.914  105.0  42 184 25.393  3.334  6.677 32.50      YES  0.30442141  0.42953175
    ## 22 142.429  149.0  87 176 28.553 10.792 26.407 22.50       NO -0.75068748 -0.64889754
    ## 23 123.600  130.0  74 176 28.076  5.615 11.589 41.00      YES  0.04904165 -1.09321572
    ## 24 108.371  104.0  70 184 23.394  3.954  8.036 21.50       NO  1.01323530  1.29430650
    ## 25 132.000  122.0  94 190 33.923 13.849 35.600 30.50       NO  0.57762604 -1.27647742
    ## 26 119.917  132.0  66 166 32.084  9.262 20.385 50.25      YES -0.34578474 -1.46223212
    ## 27 103.667  102.5  83 137 15.956  4.606 10.138 24.25       NO  0.54142604 -0.86842588
    ## 28 114.000   99.0  89 154 35.000 20.207 86.945 32.50 few data  0.00000000  0.00000000
    ## 29  90.756   93.0  23 134 24.414  3.813  7.706 33.00       NO -0.55006168 -0.07698709
    ## 30  99.000   99.0  99  99     NA     NA    NaN  0.00 few data  0.00000000  0.00000000
    ## 31  82.242   84.0  39 137 24.357  4.240  8.637 42.00      YES  0.09910441 -0.84318065
    ## 32  76.000   76.0  76  76     NA     NA    NaN  0.00 few data  0.00000000  0.00000000
    ## 33 103.400   96.0  92 117 12.502  5.591 15.523 22.00      YES  0.26114210 -2.23627868
    ## 34  92.750   96.0  50 113 20.534  7.260 17.167 18.25       NO -0.94857819 -0.42157496
    ## 35  87.062   83.0  51 134 20.693  5.173 11.026 17.50       NO  0.52900343 -0.23470639
    ## 36  93.783   92.0  57 132 19.751  4.118  8.541 25.00      YES -0.08437725 -0.82600346
    ## 37 114.000  114.5  83 150 19.088  5.510 12.128 18.25      YES  0.08562079 -0.90794515
    ## 38 116.667  115.0  88 147 29.535 17.052 73.370 29.50 few data  0.00000000  0.00000000
    ## 39  99.951   93.0  42 184 26.189  4.090  8.266 30.00       NO  0.67024672  1.12415454
    ## 40 118.000  118.0 118 118     NA     NA    NaN  0.00 few data  0.00000000  0.00000000
    ## 41 128.424  135.0  74 176 28.025  4.878  9.937 43.00      YES -0.19591331 -0.93652095
    ## 42  81.000   81.0  81  81     NA     NA    NaN  0.00 few data  0.00000000  0.00000000
    ## 43 125.400  121.0 108 150 18.582  8.310 23.073 30.00      YES  0.23808302 -2.05259274
    ## 44 105.875  111.5  66 137 21.189  7.492 17.715 16.75      YES -0.48426089 -0.77481411
    ## 45  99.500   96.5  70 144 19.190  4.798 10.226 12.00       NO  0.73502165  0.10257716
    ## 46 125.087  129.0  79 190 30.639  6.389 13.249 45.50      YES  0.39330848 -0.71586986
    ## 47  87.645   92.0  23 137 25.952  4.661  9.519 21.50      YES -0.47174604  0.05347111
    ## 48  93.895   97.0  52 154 24.705  5.668 11.907 28.50      YES  0.29899373 -0.13267884
    ## 49  88.467   86.0  48 134 25.267  6.524 13.992 23.50      YES  0.06436091 -0.97874882
    ## 50  91.680   92.0  45 130 23.666  4.733  9.769 36.00      YES -0.32362818 -1.07096084
    ## 51  88.368   90.0  57 116 17.620  4.042  8.493 19.50      YES -0.12182748 -1.09245441
    ## 52  92.545   90.0  66 117 18.052  5.443 12.127 29.00      YES  0.22030554 -1.50701016
    ##  [ reached 'max' / getOption("max.print") -- omitted 30 rows ]

| grupo        | Sexo | Zona   | Cor.Raca | Serie | TFL.corretas.per.min.quintile | variable                 |   n |    mean | median | min | max |     sd |     se |     ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:------------------------------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|-------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pre |  90 |  90.222 |   92.0 |  23 | 154 | 24.662 |  2.600 |  5.165 | 29.50 | YES      |   -0.211 |   -0.119 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pre |  53 |  92.170 |   92.0 |  50 | 134 | 19.589 |  2.691 |  5.399 | 30.00 | YES      |   -0.083 |   -0.489 |
|              |      |        |          |       |                               | TFL.corretas.per.min.pre | 143 |  90.944 |   92.0 |  23 | 154 | 22.861 |  1.912 |  3.779 | 29.00 | YES      |   -0.212 |   -0.017 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pos |  90 | 113.022 |  113.0 |  42 | 184 | 28.684 |  3.024 |  6.008 | 45.00 | YES      |    0.239 |   -0.390 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pos |  53 | 113.660 |  111.0 |  66 | 190 | 27.439 |  3.769 |  7.563 | 40.00 | NO       |    0.658 |    0.105 |
|              |      |        |          |       |                               | TFL.corretas.per.min.pos | 143 | 113.259 |  112.0 |  42 | 190 | 28.134 |  2.353 |  4.651 | 44.00 | YES      |    0.385 |   -0.175 |
| Controle     | F    |        |          |       |                               | TFL.corretas.per.min.pre |  36 |  92.333 |   95.5 |  39 | 154 | 24.576 |  4.096 |  8.315 | 26.50 | YES      |   -0.111 |    0.057 |
| Controle     | M    |        |          |       |                               | TFL.corretas.per.min.pre |  54 |  88.815 |   89.0 |  23 | 137 | 24.848 |  3.381 |  6.782 | 30.00 | YES      |   -0.267 |   -0.374 |
| Experimental | F    |        |          |       |                               | TFL.corretas.per.min.pre |  22 |  97.682 |   95.0 |  60 | 132 | 17.269 |  3.682 |  7.657 | 22.25 | YES      |   -0.186 |   -0.433 |
| Experimental | M    |        |          |       |                               | TFL.corretas.per.min.pre |  31 |  88.258 |   90.0 |  50 | 134 | 20.452 |  3.673 |  7.502 | 19.50 | YES      |    0.113 |   -0.569 |
| Controle     | F    |        |          |       |                               | TFL.corretas.per.min.pos |  36 | 120.056 |  118.0 |  85 | 184 | 26.635 |  4.439 |  9.012 | 39.50 | NO       |    0.534 |   -0.623 |
| Controle     | M    |        |          |       |                               | TFL.corretas.per.min.pos |  54 | 108.333 |  109.0 |  42 | 176 | 29.277 |  3.984 |  7.991 | 43.00 | YES      |    0.187 |   -0.555 |
| Experimental | F    |        |          |       |                               | TFL.corretas.per.min.pos |  22 | 123.955 |  115.5 |  81 | 190 | 25.712 |  5.482 | 11.400 | 37.75 | YES      |    0.482 |   -0.173 |
| Experimental | M    |        |          |       |                               | TFL.corretas.per.min.pos |  31 | 106.355 |   99.0 |  66 | 184 | 26.635 |  4.784 |  9.770 | 26.50 | NO       |    0.967 |    0.798 |
| Controle     |      | Rural  |          |       |                               | TFL.corretas.per.min.pre |  58 |  90.276 |   92.0 |  23 | 154 | 26.761 |  3.514 |  7.037 | 34.50 | YES      |   -0.231 |   -0.302 |
| Controle     |      | Urbana |          |       |                               | TFL.corretas.per.min.pre |   7 |  92.286 |   98.0 |  47 | 123 | 24.067 |  9.097 | 22.259 | 19.00 | NO       |   -0.614 |   -0.791 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pre |  25 |  89.520 |   87.0 |  52 | 137 | 20.199 |  4.040 |  8.338 | 24.00 | YES      |    0.117 |   -0.369 |
| Experimental |      | Rural  |          |       |                               | TFL.corretas.per.min.pre |  35 |  89.114 |   90.0 |  51 | 134 | 19.123 |  3.232 |  6.569 | 19.50 | YES      |    0.118 |   -0.509 |
| Experimental |      | Urbana |          |       |                               | TFL.corretas.per.min.pre |   6 | 102.000 |   95.0 |  90 | 132 | 16.444 |  6.713 | 17.257 | 15.50 | NO       |    0.874 |   -1.037 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pre |  12 |  96.167 |   97.5 |  50 | 119 | 21.468 |  6.197 | 13.640 | 31.00 | NO       |   -0.652 |   -0.756 |
| Controle     |      | Rural  |          |       |                               | TFL.corretas.per.min.pos |  58 | 104.914 |  105.0 |  42 | 184 | 25.393 |  3.334 |  6.677 | 32.50 | YES      |    0.304 |    0.430 |
| Controle     |      | Urbana |          |       |                               | TFL.corretas.per.min.pos |   7 | 142.429 |  149.0 |  87 | 176 | 28.553 | 10.792 | 26.407 | 22.50 | NO       |   -0.751 |   -0.649 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pos |  25 | 123.600 |  130.0 |  74 | 176 | 28.076 |  5.615 | 11.589 | 41.00 | YES      |    0.049 |   -1.093 |
| Experimental |      | Rural  |          |       |                               | TFL.corretas.per.min.pos |  35 | 108.371 |  104.0 |  70 | 184 | 23.394 |  3.954 |  8.036 | 21.50 | NO       |    1.013 |    1.294 |
| Experimental |      | Urbana |          |       |                               | TFL.corretas.per.min.pos |   6 | 132.000 |  122.0 |  94 | 190 | 33.923 | 13.849 | 35.600 | 30.50 | NO       |    0.578 |   -1.276 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pos |  12 | 119.917 |  132.0 |  66 | 166 | 32.084 |  9.262 | 20.385 | 50.25 | YES      |   -0.346 |   -1.462 |
| Controle     |      |        | Branca   |       |                               | TFL.corretas.per.min.pre |  12 | 103.667 |  102.5 |  83 | 137 | 15.956 |  4.606 | 10.138 | 24.25 | NO       |    0.541 |   -0.868 |
| Controle     |      |        | Indígena |       |                               | TFL.corretas.per.min.pre |   3 | 114.000 |   99.0 |  89 | 154 | 35.000 | 20.207 | 86.945 | 32.50 | few data |    0.000 |    0.000 |
| Controle     |      |        | Parda    |       |                               | TFL.corretas.per.min.pre |  41 |  90.756 |   93.0 |  23 | 134 | 24.414 |  3.813 |  7.706 | 33.00 | NO       |   -0.550 |   -0.077 |
| Controle     |      |        | Preta    |       |                               | TFL.corretas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pre |  33 |  82.242 |   84.0 |  39 | 137 | 24.357 |  4.240 |  8.637 | 42.00 | YES      |    0.099 |   -0.843 |
| Experimental |      |        | Amarela  |       |                               | TFL.corretas.per.min.pre |   1 |  76.000 |   76.0 |  76 |  76 |        |        |        |  0.00 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       |                               | TFL.corretas.per.min.pre |   5 | 103.400 |   96.0 |  92 | 117 | 12.502 |  5.591 | 15.523 | 22.00 | YES      |    0.261 |   -2.236 |
| Experimental |      |        | Indígena |       |                               | TFL.corretas.per.min.pre |   8 |  92.750 |   96.0 |  50 | 113 | 20.534 |  7.260 | 17.167 | 18.25 | NO       |   -0.949 |   -0.422 |
| Experimental |      |        | Parda    |       |                               | TFL.corretas.per.min.pre |  16 |  87.062 |   83.0 |  51 | 134 | 20.693 |  5.173 | 11.026 | 17.50 | NO       |    0.529 |   -0.235 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pre |  23 |  93.783 |   92.0 |  57 | 132 | 19.751 |  4.118 |  8.541 | 25.00 | YES      |   -0.084 |   -0.826 |
| Controle     |      |        | Branca   |       |                               | TFL.corretas.per.min.pos |  12 | 114.000 |  114.5 |  83 | 150 | 19.088 |  5.510 | 12.128 | 18.25 | YES      |    0.086 |   -0.908 |
| Controle     |      |        | Indígena |       |                               | TFL.corretas.per.min.pos |   3 | 116.667 |  115.0 |  88 | 147 | 29.535 | 17.052 | 73.370 | 29.50 | few data |    0.000 |    0.000 |
| Controle     |      |        | Parda    |       |                               | TFL.corretas.per.min.pos |  41 |  99.951 |   93.0 |  42 | 184 | 26.189 |  4.090 |  8.266 | 30.00 | NO       |    0.670 |    1.124 |
| Controle     |      |        | Preta    |       |                               | TFL.corretas.per.min.pos |   1 | 118.000 |  118.0 | 118 | 118 |        |        |        |  0.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pos |  33 | 128.424 |  135.0 |  74 | 176 | 28.025 |  4.878 |  9.937 | 43.00 | YES      |   -0.196 |   -0.937 |
| Experimental |      |        | Amarela  |       |                               | TFL.corretas.per.min.pos |   1 |  81.000 |   81.0 |  81 |  81 |        |        |        |  0.00 | few data |    0.000 |    0.000 |
| Experimental |      |        | Branca   |       |                               | TFL.corretas.per.min.pos |   5 | 125.400 |  121.0 | 108 | 150 | 18.582 |  8.310 | 23.073 | 30.00 | YES      |    0.238 |   -2.053 |
| Experimental |      |        | Indígena |       |                               | TFL.corretas.per.min.pos |   8 | 105.875 |  111.5 |  66 | 137 | 21.189 |  7.492 | 17.715 | 16.75 | YES      |   -0.484 |   -0.775 |
| Experimental |      |        | Parda    |       |                               | TFL.corretas.per.min.pos |  16 |  99.500 |   96.5 |  70 | 144 | 19.190 |  4.798 | 10.226 | 12.00 | NO       |    0.735 |    0.103 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pos |  23 | 125.087 |  129.0 |  79 | 190 | 30.639 |  6.389 | 13.249 | 45.50 | YES      |    0.393 |   -0.716 |
| Controle     |      |        |          | 6 ano |                               | TFL.corretas.per.min.pre |  31 |  87.645 |   92.0 |  23 | 137 | 25.952 |  4.661 |  9.519 | 21.50 | YES      |   -0.472 |    0.053 |
| Controle     |      |        |          | 7 ano |                               | TFL.corretas.per.min.pre |  19 |  93.895 |   97.0 |  52 | 154 | 24.705 |  5.668 | 11.907 | 28.50 | YES      |    0.299 |   -0.133 |
| Controle     |      |        |          | 8 ano |                               | TFL.corretas.per.min.pre |  15 |  88.467 |   86.0 |  48 | 134 | 25.267 |  6.524 | 13.992 | 23.50 | YES      |    0.064 |   -0.979 |
| Controle     |      |        |          | 9 ano |                               | TFL.corretas.per.min.pre |  25 |  91.680 |   92.0 |  45 | 130 | 23.666 |  4.733 |  9.769 | 36.00 | YES      |   -0.324 |   -1.071 |
| Experimental |      |        |          | 6 ano |                               | TFL.corretas.per.min.pre |  19 |  88.368 |   90.0 |  57 | 116 | 17.620 |  4.042 |  8.493 | 19.50 | YES      |   -0.122 |   -1.092 |
| Experimental |      |        |          | 7 ano |                               | TFL.corretas.per.min.pre |  11 |  92.545 |   90.0 |  66 | 117 | 18.052 |  5.443 | 12.127 | 29.00 | YES      |    0.220 |   -1.507 |
| Experimental |      |        |          | 8 ano |                               | TFL.corretas.per.min.pre |  13 |  91.000 |   92.0 |  50 | 132 | 24.121 |  6.690 | 14.576 | 31.00 | YES      |   -0.164 |   -0.911 |
| Experimental |      |        |          | 9 ano |                               | TFL.corretas.per.min.pre |  10 | 100.500 |   98.0 |  65 | 134 | 18.668 |  5.903 | 13.354 | 14.50 | YES      |   -0.048 |   -0.522 |
| Controle     |      |        |          | 6 ano |                               | TFL.corretas.per.min.pos |  31 | 101.645 |   94.0 |  42 | 156 | 26.028 |  4.675 |  9.547 | 30.50 | YES      |    0.101 |   -0.420 |
| Controle     |      |        |          | 7 ano |                               | TFL.corretas.per.min.pos |  19 | 112.053 |   99.0 |  85 | 184 | 27.104 |  6.218 | 13.064 | 36.00 | NO       |    0.990 |    0.215 |
| Controle     |      |        |          | 8 ano |                               | TFL.corretas.per.min.pos |  15 | 123.067 |  133.0 |  68 | 176 | 32.270 |  8.332 | 17.871 | 43.00 | YES      |   -0.131 |   -1.173 |
| Controle     |      |        |          | 9 ano |                               | TFL.corretas.per.min.pos |  25 | 121.840 |  117.0 |  65 | 176 | 27.092 |  5.418 | 11.183 | 33.00 | YES      |   -0.031 |   -0.544 |
| Experimental |      |        |          | 6 ano |                               | TFL.corretas.per.min.pos |  19 | 115.632 |  104.0 |  70 | 190 | 34.300 |  7.869 | 16.532 | 46.50 | NO       |    0.789 |   -0.537 |
| Experimental |      |        |          | 7 ano |                               | TFL.corretas.per.min.pos |  11 | 106.636 |  102.0 |  81 | 139 | 18.468 |  5.568 | 12.407 | 26.50 | YES      |    0.275 |   -1.397 |
| Experimental |      |        |          | 8 ano |                               | TFL.corretas.per.min.pos |  13 | 111.769 |  114.0 |  66 | 166 | 29.167 |  8.089 | 17.625 | 36.00 | YES      |    0.088 |   -1.115 |
| Experimental |      |        |          | 9 ano |                               | TFL.corretas.per.min.pos |  10 | 120.100 |  113.5 |  93 | 150 | 19.087 |  6.036 | 13.654 | 28.25 | YES      |    0.156 |   -1.601 |
| Controle     |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pre |  17 |  52.118 |   53.0 |  23 |  67 | 10.398 |  2.522 |  5.346 |  9.00 | NO       |   -1.055 |    1.256 |
| Controle     |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pre |  15 |  77.800 |   80.0 |  68 |  84 |  5.401 |  1.395 |  2.991 |  6.00 | NO       |   -0.690 |   -1.051 |
| Controle     |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pre |  18 |  89.333 |   89.0 |  85 |  94 |  2.849 |  0.672 |  1.417 |  5.00 | YES      |   -0.016 |   -1.485 |
| Controle     |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pre |  22 | 102.182 |  101.5 |  97 | 110 |  4.447 |  0.948 |  1.972 |  6.50 | YES      |    0.477 |   -1.275 |
| Controle     |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pre |  18 | 122.833 |  119.0 | 112 | 154 | 11.216 |  2.644 |  5.577 | 13.00 | NO       |    1.293 |    0.810 |
| Experimental |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pre |   6 |  58.167 |   58.5 |  50 |  66 |  6.795 |  2.774 |  7.131 | 11.25 | YES      |   -0.058 |   -1.980 |
| Experimental |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pre |  11 |  76.727 |   78.0 |  68 |  84 |  5.002 |  1.508 |  3.360 |  4.00 | NO       |   -0.590 |   -0.834 |
| Experimental |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pre |  15 |  90.867 |   92.0 |  85 |  94 |  2.748 |  0.710 |  1.522 |  3.50 | NO       |   -0.564 |   -0.867 |
| Experimental |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pre |   9 | 101.000 |   98.0 |  95 | 110 |  6.083 |  2.028 |  4.676 | 11.00 | YES      |    0.418 |   -1.756 |
| Experimental |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pre |  12 | 118.333 |  116.5 | 112 | 134 |  7.190 |  2.076 |  4.568 |  3.00 | NO       |    1.271 |    0.098 |
| Controle     |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pos |  17 |  96.647 |   91.0 |  42 | 148 | 29.392 |  7.129 | 15.112 | 41.00 | YES      |    0.146 |   -1.007 |
| Controle     |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pos |  15 |  99.267 |   89.0 |  65 | 139 | 22.967 |  5.930 | 12.719 | 28.00 | NO       |    0.593 |   -1.131 |
| Controle     |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pos |  18 | 107.222 |  100.5 |  68 | 150 | 24.821 |  5.850 | 12.343 | 45.75 | YES      |    0.257 |   -1.469 |
| Controle     |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pos |  22 | 126.364 |  120.0 |  90 | 171 | 22.671 |  4.833 | 10.052 | 28.75 | YES      |    0.370 |   -0.846 |
| Controle     |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pos |  18 | 129.444 |  124.0 |  87 | 184 | 28.679 |  6.760 | 14.262 | 31.75 | YES      |    0.476 |   -0.893 |
| Experimental |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pos |   6 |  95.500 |   92.5 |  66 | 150 | 29.602 | 12.085 | 31.066 | 20.25 | NO       |    0.802 |   -0.865 |
| Experimental |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pos |  11 |  91.636 |   88.0 |  70 | 144 | 19.392 |  5.847 | 13.028 | 13.50 | NO       |    1.606 |    2.013 |
| Experimental |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pos |  15 | 111.867 |  114.0 |  93 | 139 | 14.579 |  3.764 |  8.074 | 15.00 | YES      |    0.334 |   -1.015 |
| Experimental |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pos |   9 | 124.111 |  112.0 |  94 | 190 | 30.444 | 10.148 | 23.402 | 33.00 | NO       |    1.011 |   -0.336 |
| Experimental |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pos |  12 | 137.333 |  135.5 |  99 | 184 | 22.459 |  6.483 | 14.270 | 18.50 | YES      |    0.411 |   -0.415 |

# ANCOVA and Pairwise for one factor: **grupo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]),], "TFL.corretas.per.min.pos", "grupo")

pdat.long <- rbind(pdat[,c("id","grupo")], pdat[,c("id","grupo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo)
laov[["grupo"]] <- get_anova_table(aov)
```

``` r
pwc <- emmeans_test(pdat, TFL.corretas.per.min.pos ~ grupo, covariate = TFL.corretas.per.min.pre,
                    p.adjust.method = "bonferroni")
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, "grupo"),
                          TFL.corretas.per.min ~ time,
                          p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", "grupo", covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo")], wdat[,c("id","grupo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])

ldat[["grupo"]] = wdat

(non.normal)
```

    ##  [1] "P1010" "P463"  "P956"  "P3498" "P3721" "P3609" "P3516" "P445"  "P3521" "P808"  "P3504" "P446" 
    ## [13] "P1109" "P3492" "P3729" "P465"  "P3581" "P942"  "P628"  "P621"  "P820"  "P133"  "P3501" "P184" 
    ## [25] "P3566" "P947"  "P1017" "P3627" "P128"  "P816"  "P3615" "P3512" "P1097" "P3495" "P1716" "P950" 
    ## [37] "P448"  "P3524" "P3502" "P1089" "P3505" "P3565" "P3518" "P812"  "P521"  "P3606" "P3558" "P3624"
    ## [49] "P1004" "P616"  "P618"  "P994"  "P1000" "P829"  "P614"  "P241"  "P451"  "P460"  "P457"  "P515" 
    ## [61] "P615"  "P813"  "P997"  "P936"  "P625"  "P613"  "P513"  "P516"  "P958"  "P3734" "P1084" "P512" 
    ## [73] "P3598" "P3509" "P464"  "P612"  "P626"  "P620"  "P1107" "P3560" "P3519" "P948"  "P523"  "P3508"
    ## [85] "P943"  "P176"  "P2210" "P1729" "P238"  "P3577" "P522"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo)
laov[["grupo"]] <- merge(get_anova_table(aov), laov[["grupo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                     Effect DFn DFd      F        p p<.05   ges
    ## 1 TFL.corretas.per.min.pre   1  49 36.320 2.13e-07     * 0.426
    ## 2                    grupo   1  49  1.106 2.98e-01       0.022

| Effect                   | DFn | DFd |      F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|-------:|------:|:-------|------:|
| TFL.corretas.per.min.pre |   1 |  49 | 36.320 | 0.000 | \*     | 0.426 |
| grupo                    |   1 |  49 |  1.106 | 0.298 |        | 0.022 |

| term                            | .y.                      | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:--------------------------------|:-------------------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  49 |     1.051 | 0.298 | 0.298 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, "grupo"),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo"]], by=c("grupo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | term | .y.                  | group1 | group2 |  df | statistic |   p | p.adj | p.adj.signif |
|:-------------|:-----|:---------------------|:-------|:-------|----:|----------:|----:|------:|:-------------|
| Controle     | time | TFL.corretas.per.min | pre    | pos    | 100 |    -9.306 |   0 |     0 | \*\*\*\*     |
| Experimental | time | TFL.corretas.per.min | pre    | pos    | 100 |    -6.043 |   0 |     0 | \*\*\*\*     |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", "grupo", covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = "grupo", all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwc), ds, by = "grupo", suffixes = c(".emms", ""))
ds <- ds[,c("grupo","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo"]] <- merge(ds, lemms[["grupo"]], by=c("grupo"), suffixes = c("","'"))
```

| grupo        |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     |  33 |  88.061 |    4.258 |   139.909 |      3.605 | 141.353 |    2.989 |
| Experimental |  19 |  94.263 |    4.550 |   138.632 |      5.740 | 136.124 |    3.949 |

### Plots for ancova

``` r
plots <- oneWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", "grupo", aov, list("grupo"=pwc), addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (!is.null(nrow(plots[["grupo"]]$data)))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-19-1.png)<!-- -->

``` r
plots <- oneWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", "grupo", aov, pwc, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo"]],
  subtitle = which(aov$Effect == "grupo"))
```

``` r
if (length(unique(wdat[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-21-1.png)<!-- -->

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots <- oneWayAncovaBoxPlots(
    wdat.long, "TFL.corretas.per.min", "grupo", aov, pwc.long, pre.post = "time",
    theme = "classic", color = color$prepost)
```

``` r
if (length(unique(wdat.long[["grupo"]])) > 1)
  plots[["grupo"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-23-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          color = "grupo", add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"), color = grupo)
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.955  0.0453

``` r
levene_test(res, .resid ~ grupo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     1    50      1.40 0.242

# ANCOVA and Pairwise for two factors **grupo:Sexo**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Sexo"]]),], "TFL.corretas.per.min.pos", c("grupo","Sexo"))

pdat.long <- rbind(pdat[,c("id","grupo","Sexo")], pdat[,c("id","grupo","Sexo")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Sexo)
laov[["grupo:Sexo"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(pdat, grupo), TFL.corretas.per.min.pos ~ Sexo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Sexo), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Sexo")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", c("grupo","Sexo"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Sexo, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Sexo")], wdat[,c("id","grupo","Sexo")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])


ldat[["grupo:Sexo"]] = wdat

(non.normal)
```

    ##  [1] "P463"  "P121"  "P1010" "P2250" "P945"  "P2378" "P808"  "P956"  "P2294" "P2220" "P1768" "P2380"
    ## [13] "P446"  "P3492" "P3721" "P510"  "P2385" "P3729" "P3498" "P133"  "P3516" "P1743" "P623"  "P2211"
    ## [25] "P3609" "P128"  "P445"  "P2377" "P2390" "P2408" "P3504" "P3512" "P2209" "P1698" "P2247" "P2404"
    ## [37] "P3521" "P1089" "P2240" "P2222" "P3505" "P2214" "P3524" "P1109" "P521"  "P465"  "P3558" "P3581"
    ## [49] "P942"  "P3501" "P621"  "P628"  "P1728" "P820"  "P994"  "P947"  "P184"  "P3566" "P3627" "P1713"
    ## [61] "P1017" "P816"  "P2383" "P2401" "P1762" "P2376" "P1097" "P3615" "P3630" "P3495" "P1699" "P2244"
    ## [73] "P448"  "P241"  "P1716" "P615"  "P3511" "P1091" "P950"  "P460"  "P1022" "P2402" "P1764" "P941"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Sexo)
laov[["grupo:Sexo"]] <- merge(get_anova_table(aov), laov[["grupo:Sexo"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                     Effect DFn DFd       F        p p<.05      ges
    ## 1 TFL.corretas.per.min.pre   1  54 216.425 1.55e-20     * 0.800000
    ## 2                    grupo   1  54   0.018 8.93e-01       0.000335
    ## 3                     Sexo   1  54  26.602 3.66e-06     * 0.330000
    ## 4               grupo:Sexo   1  54   3.690 6.00e-02       0.064000

| Effect                   | DFn | DFd |       F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|--------:|------:|:-------|------:|
| TFL.corretas.per.min.pre |   1 |  54 | 216.425 | 0.000 | \*     | 0.800 |
| grupo                    |   1 |  54 |   0.018 | 0.893 |        | 0.000 |
| Sexo                     |   1 |  54 |  26.602 | 0.000 | \*     | 0.330 |
| grupo:Sexo               |   1 |  54 |   3.690 | 0.060 |        | 0.064 |

``` r
pwcs <- list()
pwcs[["Sexo"]] <- emmeans_test(
  group_by(wdat, grupo), TFL.corretas.per.min.pos ~ Sexo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Sexo), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Sexo"]])
pwc <- pwc[,c("grupo","Sexo", colnames(pwc)[!colnames(pwc) %in% c("grupo","Sexo")])]
```

| grupo        | Sexo | term                            | .y.                      | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:--------------------------------|:-------------------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | F    | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  54 |    -1.620 | 0.111 | 0.111 | ns           |
|              | M    | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  54 |     1.078 | 0.286 | 0.286 | ns           |
| Controle     |      | TFL.corretas.per.min.pre\*Sexo  | TFL.corretas.per.min.pos | F        | M            |  54 |     2.633 | 0.011 | 0.011 | \*           |
| Experimental |      | TFL.corretas.per.min.pre\*Sexo  | TFL.corretas.per.min.pos | F        | M            |  54 |     4.769 | 0.000 | 0.000 | \*\*\*\*     |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Sexo")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Sexo"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Sexo"]], by=c("grupo","Sexo","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Sexo | term | .y.                  | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-----|:-----|:---------------------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | F    | time | TFL.corretas.per.min | pre    | pos    | 110 |    -3.380 | 0.001 | 0.001 | \*\*         |
| Controle     | M    | time | TFL.corretas.per.min | pre    | pos    | 110 |    -1.983 | 0.050 | 0.050 | \*           |
| Experimental | F    | time | TFL.corretas.per.min | pre    | pos    | 110 |    -2.442 | 0.016 | 0.016 | \*           |
| Experimental | M    | time | TFL.corretas.per.min | pre    | pos    | 110 |    -2.231 | 0.028 | 0.028 | \*           |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", c("grupo","Sexo"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Sexo"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Sexo"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Sexo","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Sexo", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Sexo"]] <- merge(ds, lemms[["grupo:Sexo"]], by=c("grupo","Sexo"), suffixes = c("","'"))
```

| grupo        | Sexo |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | F    |  15 |  86.600 |    7.768 |   112.000 |      4.136 | 115.427 |    1.877 |
| Controle     | M    |  17 |  97.706 |    5.989 |   111.706 |      4.312 | 108.597 |    1.762 |
| Experimental | F    |   8 |  99.875 |    4.879 |   125.000 |      5.155 | 120.615 |    2.568 |
| Experimental | M    |  19 |  89.158 |    5.059 |   104.053 |      3.391 | 105.975 |    1.660 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Sexo"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Sexo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-42-1.png)<!-- -->

``` r
if (!is.null(plots[["Sexo"]]))
  plots[["Sexo"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-43-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Sexo"), aov, pwcs, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo:Sexo"]],
  subtitle = which(aov$Effect == "grupo:Sexo"))
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "TFL.corretas.per.min", c("grupo","Sexo"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Sexo"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          facet.by = c("grupo","Sexo"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Sexo, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.951  0.0190

``` r
levene_test(res, .resid ~ grupo*Sexo)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     3    55     0.316 0.814

# ANCOVA and Pairwise for two factors **grupo:Zona**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Zona"]]),], "TFL.corretas.per.min.pos", c("grupo","Zona"))

pdat.long <- rbind(pdat[,c("id","grupo","Zona")], pdat[,c("id","grupo","Zona")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Zona)
laov[["grupo:Zona"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(pdat, grupo), TFL.corretas.per.min.pos ~ Zona,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Zona), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Zona")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", c("grupo","Zona"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Zona, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Zona")], wdat[,c("id","grupo","Zona")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])


ldat[["grupo:Zona"]] = wdat

(non.normal)
```

    ## [1] "P510"  "P1768" "P1743" "P2378" "P945"  "P1698" "P2220"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Zona)
laov[["grupo:Zona"]] <- merge(get_anova_table(aov), laov[["grupo:Zona"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                     Effect DFn DFd      F        p p<.05      ges
    ## 1 TFL.corretas.per.min.pre   1  94 76.601 8.25e-14     * 0.449000
    ## 2                    grupo   1  94  0.011 9.18e-01       0.000114
    ## 3                     Zona   1  94 42.906 3.03e-09     * 0.313000
    ## 4               grupo:Zona   1  94  3.994 4.90e-02     * 0.041000

| Effect                   | DFn | DFd |      F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|-------:|------:|:-------|------:|
| TFL.corretas.per.min.pre |   1 |  94 | 76.601 | 0.000 | \*     | 0.449 |
| grupo                    |   1 |  94 |  0.011 | 0.918 |        | 0.000 |
| Zona                     |   1 |  94 | 42.906 | 0.000 | \*     | 0.313 |
| grupo:Zona               |   1 |  94 |  3.994 | 0.049 | \*     | 0.041 |

``` r
pwcs <- list()
pwcs[["Zona"]] <- emmeans_test(
  group_by(wdat, grupo), TFL.corretas.per.min.pos ~ Zona,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Zona), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Zona"]])
pwc <- pwc[,c("grupo","Zona", colnames(pwc)[!colnames(pwc) %in% c("grupo","Zona")])]
```

| grupo        | Zona   | term                            | .y.                      | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:--------------------------------|:-------------------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Rural  | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  94 |    -0.841 | 0.403 | 0.403 | ns           |
|              | Urbana | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  94 |     1.817 | 0.072 | 0.072 | ns           |
| Controle     |        | TFL.corretas.per.min.pre\*Zona  | TFL.corretas.per.min.pos | Rural    | Urbana       |  94 |    -6.213 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental |        | TFL.corretas.per.min.pre\*Zona  | TFL.corretas.per.min.pos | Rural    | Urbana       |  94 |    -2.890 | 0.005 | 0.005 | \*\*         |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Zona")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Zona"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Zona"]], by=c("grupo","Zona","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Zona   | term | .y.                  | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:-------|:-----|:---------------------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Rural  | time | TFL.corretas.per.min | pre    | pos    | 190 |    -2.328 | 0.021 | 0.021 | \*           |
| Controle     | Urbana | time | TFL.corretas.per.min | pre    | pos    | 190 |    -4.142 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental | Rural  | time | TFL.corretas.per.min | pre    | pos    | 190 |    -2.406 | 0.017 | 0.017 | \*           |
| Experimental | Urbana | time | TFL.corretas.per.min | pre    | pos    | 190 |    -2.294 | 0.023 | 0.023 | \*           |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", c("grupo","Zona"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Zona"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Zona"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Zona","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Zona", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Zona"]] <- merge(ds, lemms[["grupo:Zona"]], by=c("grupo","Zona"), suffixes = c("","'"))
```

| grupo        | Zona   |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Rural  |  54 |  91.111 |    3.608 |   101.259 |      2.955 | 101.490 |    2.205 |
| Controle     | Urbana |   7 |  92.286 |    9.097 |   142.429 |     10.792 | 141.934 |    6.124 |
| Experimental | Rural  |  32 |  89.969 |    3.268 |   103.594 |      3.038 | 104.530 |    2.866 |
| Experimental | Urbana |   6 | 102.000 |    6.713 |   132.000 |     13.849 | 125.503 |    6.656 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Zona"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Zona"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

``` r
if (!is.null(plots[["Zona"]]))
  plots[["Zona"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-67-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Zona"), aov, pwcs, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo:Zona"]],
  subtitle = which(aov$Effect == "grupo:Zona"))
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-69-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "TFL.corretas.per.min", c("grupo","Zona"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Zona"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          facet.by = c("grupo","Zona"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Zona, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.980   0.133

``` r
levene_test(res, .resid ~ grupo*Zona)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic      p
    ##   <int> <int>     <dbl>  <dbl>
    ## 1     3    95      3.55 0.0173

# ANCOVA and Pairwise for two factors **grupo:Cor.Raca**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Cor.Raca"]]),], "TFL.corretas.per.min.pos", c("grupo","Cor.Raca"))
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
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(pdat, grupo), TFL.corretas.per.min.pos ~ Cor.Raca,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Cor.Raca), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Cor.Raca")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", c("grupo","Cor.Raca"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Cor.Raca, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Cor.Raca")], wdat[,c("id","grupo","Cor.Raca")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])


ldat[["grupo:Cor.Raca"]] = wdat

(non.normal)
```

    ## [1] "P510"  "P1728" "P623"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Cor.Raca)
laov[["grupo:Cor.Raca"]] <- merge(get_anova_table(aov), laov[["grupo:Cor.Raca"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                     Effect DFn DFd      F        p p<.05   ges
    ## 1 TFL.corretas.per.min.pre   1  73 72.878 1.38e-12     * 0.500
    ## 2                    grupo   1  73  3.851 5.40e-02       0.050
    ## 3                 Cor.Raca   2  73  3.425 3.80e-02     * 0.086
    ## 4           grupo:Cor.Raca   1  73  0.372 5.44e-01       0.005

| Effect                   | DFn | DFd |      F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|-------:|------:|:-------|------:|
| TFL.corretas.per.min.pre |   1 |  73 | 72.878 | 0.000 | \*     | 0.500 |
| grupo                    |   1 |  73 |  3.851 | 0.054 |        | 0.050 |
| Cor.Raca                 |   2 |  73 |  3.425 | 0.038 | \*     | 0.086 |
| grupo:Cor.Raca           |   1 |  73 |  0.372 | 0.544 |        | 0.005 |

``` r
pwcs <- list()
pwcs[["Cor.Raca"]] <- emmeans_test(
  group_by(wdat, grupo), TFL.corretas.per.min.pos ~ Cor.Raca,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Cor.Raca), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Cor.Raca"]])
pwc <- pwc[,c("grupo","Cor.Raca", colnames(pwc)[!colnames(pwc) %in% c("grupo","Cor.Raca")])]
```

| grupo        | Cor.Raca | term                               | .y.                      | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----------------------------------|:-------------------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | Branca   | TFL.corretas.per.min.pre\*grupo    | TFL.corretas.per.min.pos | Controle | Experimental |  73 |    -1.492 | 0.140 | 0.140 | ns           |
|              | Indígena | TFL.corretas.per.min.pre\*grupo    | TFL.corretas.per.min.pos | Controle | Experimental |     |           |       |       |              |
|              | Parda    | TFL.corretas.per.min.pre\*grupo    | TFL.corretas.per.min.pos | Controle | Experimental |  73 |    -1.413 | 0.162 | 0.162 | ns           |
| Controle     |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Branca   | Indígena     |     |           |       |       |              |
| Controle     |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Branca   | Parda        |  73 |     1.903 | 0.061 | 0.061 | ns           |
| Controle     |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Indígena | Parda        |     |           |       |       |              |
| Experimental |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Branca   | Indígena     |  73 |     1.472 | 0.145 | 0.436 | ns           |
| Experimental |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Branca   | Parda        |  73 |     1.954 | 0.055 | 0.164 | ns           |
| Experimental |          | TFL.corretas.per.min.pre\*Cor.Raca | TFL.corretas.per.min.pos | Indígena | Parda        |  73 |     0.397 | 0.692 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Cor.Raca")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Cor.Raca"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Cor.Raca | term | .y.                  | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:---------|:-----|:---------------------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | Branca   | time | TFL.corretas.per.min | pre    | pos    | 148 |    -1.211 | 0.228 | 0.228 | ns           |
| Controle     | Indígena | time | TFL.corretas.per.min | pre    | pos    |     |           |       |       |              |
| Controle     | Parda    | time | TFL.corretas.per.min | pre    | pos    | 148 |    -1.048 | 0.296 | 0.296 | ns           |
| Experimental | Branca   | time | TFL.corretas.per.min | pre    | pos    | 148 |    -1.665 | 0.098 | 0.098 | ns           |
| Experimental | Indígena | time | TFL.corretas.per.min | pre    | pos    | 148 |    -1.256 | 0.211 | 0.211 | ns           |
| Experimental | Parda    | time | TFL.corretas.per.min | pre    | pos    | 148 |    -1.684 | 0.094 | 0.094 | ns           |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", c("grupo","Cor.Raca"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Cor.Raca"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Cor.Raca"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Cor.Raca","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Cor.Raca", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Cor.Raca"]] <- merge(ds, lemms[["grupo:Cor.Raca"]], by=c("grupo","Cor.Raca"), suffixes = c("","'"))
```

| grupo        | Cor.Raca |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | Branca   |  12 | 103.667 |    4.606 |   114.000 |      5.510 | 106.812 |    4.292 |
| Controle     | Parda    |  38 |  90.974 |    3.848 |    96.000 |      3.471 |  97.427 |    2.371 |
| Experimental | Branca   |   5 | 103.400 |    5.591 |   125.400 |      8.310 | 118.393 |    6.571 |
| Experimental | Indígena |   8 |  92.750 |    7.260 |   105.875 |      7.492 | 106.096 |    5.154 |
| Experimental | Parda    |  16 |  87.062 |    5.173 |    99.500 |      4.798 | 103.581 |    3.676 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Cor.Raca"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Cor.Raca"]])
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-90-1.png)<!-- -->

``` r
if (!is.null(plots[["Cor.Raca"]]))
  plots[["Cor.Raca"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

    ## Warning: Removed 2 rows containing non-finite values (`stat_bracket()`).

    ## Warning: Removed 1 rows containing missing values (`geom_point()`).

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-91-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Cor.Raca"), aov, pwcs, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo:Cor.Raca"]],
  subtitle = which(aov$Effect == "grupo:Cor.Raca"))
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-93-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "TFL.corretas.per.min", c("grupo","Cor.Raca"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Cor.Raca"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-95-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          facet.by = c("grupo","Cor.Raca"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-96-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Cor.Raca, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.981   0.281

``` r
levene_test(res, .resid ~ grupo*Cor.Raca)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     4    74     0.828 0.512

# ANCOVA and Pairwise for two factors **grupo:Serie**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["Serie"]]),], "TFL.corretas.per.min.pos", c("grupo","Serie"))

pdat.long <- rbind(pdat[,c("id","grupo","Serie")], pdat[,c("id","grupo","Serie")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Serie)
laov[["grupo:Serie"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(pdat, grupo), TFL.corretas.per.min.pos ~ Serie,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, Serie), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","Serie")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", c("grupo","Serie"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Serie, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","Serie")], wdat[,c("id","grupo","Serie")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])


ldat[["grupo:Serie"]] = wdat

(non.normal)
```

    ##   [1] "P1010" "P3609" "P956"  "P3721" "P3498" "P1109" "P808"  "P3729" "P1017" "P628"  "P621"  "P1097"
    ##  [13] "P463"  "P820"  "P133"  "P128"  "P1716" "P994"  "P3516" "P3505" "P445"  "P3581" "P942"  "P3521"
    ##  [25] "P616"  "P3627" "P3615" "P3504" "P997"  "P446"  "P614"  "P1089" "P3566" "P947"  "P3492" "P829" 
    ##  [37] "P465"  "P184"  "P625"  "P3734" "P451"  "P3606" "P618"  "P3501" "P3624" "P950"  "P612"  "P2210"
    ##  [49] "P1004" "P620"  "P3558" "P1107" "P1000" "P816"  "P3512" "P3495" "P3509" "P3565" "P448"  "P615" 
    ##  [61] "P241"  "P3524" "P521"  "P3502" "P613"  "P1084" "P3518" "P812"  "P2239" "P626"  "P3598" "P936" 
    ##  [73] "P513"  "P516"  "P1742" "P143"  "P1091" "P459"  "P515"  "P3560" "P958"  "P512"  "P948"  "P622" 
    ##  [85] "P460"  "P457"  "P523"  "P813"  "P943"  "P238"  "P522"  "P464"  "P449"  "P2378" "P1743" "P1768"
    ##  [97] "P3569" "P510"  "P121"  "P176"  "P3519" "P1728" "P3508" "P945"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Serie)
laov[["grupo:Serie"]] <- merge(get_anova_table(aov), laov[["grupo:Serie"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                     Effect DFn DFd       F        p p<.05   ges
    ## 1 TFL.corretas.per.min.pre   1  30 109.483 1.58e-11     * 0.785
    ## 2                    grupo   1  30   1.303 2.63e-01       0.042
    ## 3                    Serie   3  30  11.753 2.92e-05     * 0.540
    ## 4              grupo:Serie   3  30   7.184 8.97e-04     * 0.418

| Effect                   | DFn | DFd |       F |     p | p\<.05 |   ges |
|:-------------------------|----:|----:|--------:|------:|:-------|------:|
| TFL.corretas.per.min.pre |   1 |  30 | 109.483 | 0.000 | \*     | 0.785 |
| grupo                    |   1 |  30 |   1.303 | 0.263 |        | 0.042 |
| Serie                    |   3 |  30 |  11.753 | 0.000 | \*     | 0.540 |
| grupo:Serie              |   3 |  30 |   7.184 | 0.001 | \*     | 0.418 |

``` r
pwcs <- list()
pwcs[["Serie"]] <- emmeans_test(
  group_by(wdat, grupo), TFL.corretas.per.min.pos ~ Serie,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, Serie), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["Serie"]])
pwc <- pwc[,c("grupo","Serie", colnames(pwc)[!colnames(pwc) %in% c("grupo","Serie")])]
```

| grupo        | Serie | term                            | .y.                      | group1   | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:--------------------------------|:-------------------------|:---------|:-------------|----:|----------:|------:|------:|:-------------|
|              | 6 ano | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  30 |    -3.450 | 0.002 | 0.002 | \*\*         |
|              | 7 ano | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  30 |     0.449 | 0.657 | 0.657 | ns           |
|              | 8 ano | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  30 |     2.418 | 0.022 | 0.022 | \*           |
|              | 9 ano | TFL.corretas.per.min.pre\*grupo | TFL.corretas.per.min.pos | Controle | Experimental |  30 |     2.386 | 0.024 | 0.024 | \*           |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 7 ano        |  30 |     1.244 | 0.223 | 1.000 | ns           |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 8 ano        |  30 |    -4.332 | 0.000 | 0.001 | \*\*\*       |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 9 ano        |  30 |    -4.191 | 0.000 | 0.001 | \*\*         |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 7 ano    | 8 ano        |  30 |    -4.090 | 0.000 | 0.002 | \*\*         |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 7 ano    | 9 ano        |  30 |    -3.938 | 0.000 | 0.003 | \*\*         |
| Controle     |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 8 ano    | 9 ano        |  30 |     0.369 | 0.714 | 1.000 | ns           |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 7 ano        |  30 |     4.539 | 0.000 | 0.001 | \*\*\*       |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 8 ano        |  30 |     2.319 | 0.027 | 0.164 | ns           |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 6 ano    | 9 ano        |  30 |     2.477 | 0.019 | 0.115 | ns           |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 7 ano    | 8 ano        |  30 |    -2.805 | 0.009 | 0.052 | ns           |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 7 ano    | 9 ano        |  30 |    -2.306 | 0.028 | 0.169 | ns           |
| Experimental |       | TFL.corretas.per.min.pre\*Serie | TFL.corretas.per.min.pos | 8 ano    | 9 ano        |  30 |     0.339 | 0.737 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","Serie")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:Serie"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:Serie"]], by=c("grupo","Serie","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | Serie | term | .y.                  | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------|:-----|:---------------------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | 6 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -3.569 | 0.001 | 0.001 | \*\*\*       |
| Controle     | 7 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -1.634 | 0.107 | 0.107 | ns           |
| Controle     | 8 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -5.635 | 0.000 | 0.000 | \*\*\*\*     |
| Controle     | 9 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -6.046 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental | 6 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -3.078 | 0.003 | 0.003 | \*\*         |
| Experimental | 7 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -1.373 | 0.175 | 0.175 | ns           |
| Experimental | 8 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -2.729 | 0.008 | 0.008 | \*\*         |
| Experimental | 9 ano | time | TFL.corretas.per.min | pre    | pos    |  62 |    -2.204 | 0.031 | 0.031 | \*           |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", c("grupo","Serie"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","Serie"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","Serie"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","Serie","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","Serie", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:Serie"]] <- merge(ds, lemms[["grupo:Serie"]], by=c("grupo","Serie"), suffixes = c("","'"))
```

| grupo        | Serie |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 6 ano |   7 |  85.429 |   12.656 |   125.714 |      8.662 | 128.623 |    3.234 |
| Controle     | 7 ano |   2 |  77.000 |   20.000 |   111.500 |     13.500 | 120.090 |    6.084 |
| Controle     | 8 ano |   8 |  85.125 |    8.649 |   144.625 |      6.732 | 147.738 |    3.029 |
| Controle     | 9 ano |  10 |  87.900 |    6.747 |   145.000 |      5.615 | 146.243 |    2.698 |
| Experimental | 6 ano |   2 |  82.000 |   14.000 |   147.000 |      3.000 | 152.220 |    6.049 |
| Experimental | 7 ano |   3 |  99.333 |    8.950 |   123.000 |      8.021 | 116.536 |    4.961 |
| Experimental | 8 ano |   4 | 103.000 |    6.403 |   143.750 |      7.962 | 134.814 |    4.347 |
| Experimental | 9 ano |   3 | 104.667 |    7.446 |   142.667 |      3.667 | 132.607 |    5.015 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Serie"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["Serie"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-114-1.png)<!-- -->

``` r
if (!is.null(plots[["Serie"]]))
  plots[["Serie"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

    ## Warning: `position_dodge()` requires non-overlapping x intervals

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-115-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","Serie"), aov, pwcs, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo:Serie"]],
  subtitle = which(aov$Effect == "grupo:Serie"))
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-117-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "TFL.corretas.per.min", c("grupo","Serie"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:Serie"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-119-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          facet.by = c("grupo","Serie"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-120-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*Serie, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.967   0.309

``` r
levene_test(res, .resid ~ grupo*Serie)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic      p
    ##   <int> <int>     <dbl>  <dbl>
    ## 1     7    31      2.34 0.0489

# ANCOVA and Pairwise for two factors **grupo:TFL.corretas.per.min.quintile**

## Without remove non-normal data

``` r
pdat = remove_group_data(dat[!is.na(dat[["grupo"]]) & !is.na(dat[["TFL.corretas.per.min.quintile"]]),], "TFL.corretas.per.min.pos", c("grupo","TFL.corretas.per.min.quintile"))

pdat.long <- rbind(pdat[,c("id","grupo","TFL.corretas.per.min.quintile")], pdat[,c("id","grupo","TFL.corretas.per.min.quintile")])
pdat.long[["time"]] <- c(rep("pre", nrow(pdat)), rep("pos", nrow(pdat)))
pdat.long[["time"]] <- factor(pdat.long[["time"]], c("pre","pos"))
pdat.long[["TFL.corretas.per.min"]] <- c(pdat[["TFL.corretas.per.min.pre"]], pdat[["TFL.corretas.per.min.pos"]])

aov = anova_test(pdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*TFL.corretas.per.min.quintile)
laov[["grupo:TFL.corretas.per.min.quintile"]] <- get_anova_table(aov)
```

``` r
pwcs <- list()
pwcs[["TFL.corretas.per.min.quintile"]] <- emmeans_test(
  group_by(pdat, grupo), TFL.corretas.per.min.pos ~ TFL.corretas.per.min.quintile,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(pdat, TFL.corretas.per.min.quintile), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["TFL.corretas.per.min.quintile"]])
pwc <- pwc[,c("grupo","TFL.corretas.per.min.quintile", colnames(pwc)[!colnames(pwc) %in% c("grupo","TFL.corretas.per.min.quintile")])]
```

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(pdat.long, c("grupo","TFL.corretas.per.min.quintile")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:TFL.corretas.per.min.quintile"]] <- plyr::rbind.fill(pwc, pwc.long)
```

``` r
ds <- get.descriptives(pdat, "TFL.corretas.per.min.pos", c("grupo","TFL.corretas.per.min.quintile"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","TFL.corretas.per.min.quintile"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","TFL.corretas.per.min.quintile"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","TFL.corretas.per.min.quintile","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","TFL.corretas.per.min.quintile", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:TFL.corretas.per.min.quintile"]] <- ds
```

## Computing ANCOVA and PairWise After removing non-normal data (OK)

``` r
wdat = pdat 

res = residuals(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*TFL.corretas.per.min.quintile, data = wdat))
non.normal = getNonNormal(res, wdat$id, plimit = 0.05)

wdat = wdat[!wdat$id %in% non.normal,]

wdat.long <- rbind(wdat[,c("id","grupo","TFL.corretas.per.min.quintile")], wdat[,c("id","grupo","TFL.corretas.per.min.quintile")])
wdat.long[["time"]] <- c(rep("pre", nrow(wdat)), rep("pos", nrow(wdat)))
wdat.long[["time"]] <- factor(wdat.long[["time"]], c("pre","pos"))
wdat.long[["TFL.corretas.per.min"]] <- c(wdat[["TFL.corretas.per.min.pre"]], wdat[["TFL.corretas.per.min.pos"]])


ldat[["grupo:TFL.corretas.per.min.quintile"]] = wdat

(non.normal)
```

    ##  [1] "P3516" "P2378" "P1010" "P1768" "P2294" "P2250" "P510"  "P1698" "P808"  "P1743" "P121"  "P2408"
    ## [13] "P2404" "P2240" "P2380" "P2385" "P2211" "P2376" "P1699" "P2390" "P1762" "P2377" "P2214" "P2220"
    ## [25] "P2209" "P1713" "P2247" "P2244" "P945"  "P463"  "P623"  "P2222" "P2401" "P2383" "P2249"

``` r
aov = anova_test(wdat, TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*TFL.corretas.per.min.quintile)
laov[["grupo:TFL.corretas.per.min.quintile"]] <- merge(get_anova_table(aov), laov[["grupo:TFL.corretas.per.min.quintile"]], by="Effect", suffixes = c("","'"))

(df = get_anova_table(aov))
```

    ## ANOVA Table (type II tests)
    ## 
    ##                                Effect DFn DFd      F        p p<.05   ges
    ## 1            TFL.corretas.per.min.pre   1  97 18.514 4.03e-05     * 0.160
    ## 2                               grupo   1  97  3.717 5.70e-02       0.037
    ## 3       TFL.corretas.per.min.quintile   4  97  4.324 3.00e-03     * 0.151
    ## 4 grupo:TFL.corretas.per.min.quintile   4  97  3.059 2.00e-02     * 0.112

| Effect                              | DFn | DFd |      F |     p | p\<.05 |   ges |
|:------------------------------------|----:|----:|-------:|------:|:-------|------:|
| TFL.corretas.per.min.pre            |   1 |  97 | 18.514 | 0.000 | \*     | 0.160 |
| grupo                               |   1 |  97 |  3.717 | 0.057 |        | 0.037 |
| TFL.corretas.per.min.quintile       |   4 |  97 |  4.324 | 0.003 | \*     | 0.151 |
| grupo:TFL.corretas.per.min.quintile |   4 |  97 |  3.059 | 0.020 | \*     | 0.112 |

``` r
pwcs <- list()
pwcs[["TFL.corretas.per.min.quintile"]] <- emmeans_test(
  group_by(wdat, grupo), TFL.corretas.per.min.pos ~ TFL.corretas.per.min.quintile,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")
pwcs[["grupo"]] <- emmeans_test(
  group_by(wdat, TFL.corretas.per.min.quintile), TFL.corretas.per.min.pos ~ grupo,
  covariate = TFL.corretas.per.min.pre, p.adjust.method = "bonferroni")

pwc <- plyr::rbind.fill(pwcs[["grupo"]], pwcs[["TFL.corretas.per.min.quintile"]])
pwc <- pwc[,c("grupo","TFL.corretas.per.min.quintile", colnames(pwc)[!colnames(pwc) %in% c("grupo","TFL.corretas.per.min.quintile")])]
```

| grupo        | TFL.corretas.per.min.quintile | term                                                    | .y.                      | group1       | group2       |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------------------------------|:--------------------------------------------------------|:-------------------------|:-------------|:-------------|----:|----------:|------:|------:|:-------------|
|              | 1st quintile                  | TFL.corretas.per.min.pre\*grupo                         | TFL.corretas.per.min.pos | Controle     | Experimental |  97 |     0.582 | 0.562 | 0.562 | ns           |
|              | 2nd quintile                  | TFL.corretas.per.min.pre\*grupo                         | TFL.corretas.per.min.pos | Controle     | Experimental |  97 |     0.159 | 0.874 | 0.874 | ns           |
|              | 3rd quintile                  | TFL.corretas.per.min.pre\*grupo                         | TFL.corretas.per.min.pos | Controle     | Experimental |  97 |    -2.721 | 0.008 | 0.008 | \*\*         |
|              | 4th quintile                  | TFL.corretas.per.min.pre\*grupo                         | TFL.corretas.per.min.pos | Controle     | Experimental |  97 |     0.888 | 0.377 | 0.377 | ns           |
|              | 5th quintile                  | TFL.corretas.per.min.pre\*grupo                         | TFL.corretas.per.min.pos | Controle     | Experimental |  97 |    -2.732 | 0.007 | 0.007 | \*\*         |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 2nd quintile |  97 |     2.281 | 0.025 | 0.247 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 3rd quintile |  97 |     2.168 | 0.033 | 0.326 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 4th quintile |  97 |     0.469 | 0.640 | 1.000 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 5th quintile |  97 |     1.207 | 0.231 | 1.000 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 3rd quintile |  97 |     0.517 | 0.606 | 1.000 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 4th quintile |  97 |    -1.769 | 0.080 | 0.801 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 5th quintile |  97 |     0.057 | 0.954 | 1.000 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 3rd quintile | 4th quintile |  97 |    -2.781 | 0.007 | 0.065 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 3rd quintile | 5th quintile |  97 |    -0.318 | 0.751 | 1.000 | ns           |
| Controle     |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 4th quintile | 5th quintile |  97 |     2.000 | 0.048 | 0.483 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 2nd quintile |  97 |     1.709 | 0.091 | 0.907 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 3rd quintile |  97 |     0.152 | 0.879 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 4th quintile |  97 |     0.553 | 0.581 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 1st quintile | 5th quintile |  97 |    -0.153 | 0.879 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 3rd quintile |  97 |    -2.059 | 0.042 | 0.422 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 4th quintile |  97 |    -0.998 | 0.321 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 2nd quintile | 5th quintile |  97 |    -1.617 | 0.109 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 3rd quintile | 4th quintile |  97 |     0.729 | 0.468 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 3rd quintile | 5th quintile |  97 |    -0.443 | 0.659 | 1.000 | ns           |
| Experimental |                               | TFL.corretas.per.min.pre\*TFL.corretas.per.min.quintile | TFL.corretas.per.min.pos | 4th quintile | 5th quintile |  97 |    -1.086 | 0.280 | 1.000 | ns           |

``` r
pwc.long <- emmeans_test(dplyr::group_by_at(wdat.long, c("grupo","TFL.corretas.per.min.quintile")),
                         TFL.corretas.per.min ~ time,
                         p.adjust.method = "bonferroni")
lpwc[["grupo:TFL.corretas.per.min.quintile"]] <- merge(plyr::rbind.fill(pwc, pwc.long), lpwc[["grupo:TFL.corretas.per.min.quintile"]], by=c("grupo","TFL.corretas.per.min.quintile","term",".y.","group1","group2"), suffixes = c("","'"))
```

| grupo        | TFL.corretas.per.min.quintile | term | .y.                  | group1 | group2 |  df | statistic |     p | p.adj | p.adj.signif |
|:-------------|:------------------------------|:-----|:---------------------|:-------|:-------|----:|----------:|------:|------:|:-------------|
| Controle     | 1st quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -7.042 | 0.000 | 0.000 | \*\*\*\*     |
| Controle     | 2nd quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -2.113 | 0.036 | 0.036 | \*           |
| Controle     | 3rd quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -0.743 | 0.458 | 0.458 | ns           |
| Controle     | 4th quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -4.091 | 0.000 | 0.000 | \*\*\*\*     |
| Controle     | 5th quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |     0.555 | 0.580 | 0.580 | ns           |
| Experimental | 1st quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -3.888 | 0.000 | 0.000 | \*\*\*       |
| Experimental | 2nd quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -1.805 | 0.073 | 0.073 | ns           |
| Experimental | 3rd quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -4.084 | 0.000 | 0.000 | \*\*\*\*     |
| Experimental | 4th quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -1.815 | 0.071 | 0.071 | ns           |
| Experimental | 5th quintile                  | time | TFL.corretas.per.min | pre    | pos    | 196 |    -2.660 | 0.008 | 0.008 | \*\*         |

``` r
ds <- get.descriptives(wdat, "TFL.corretas.per.min.pos", c("grupo","TFL.corretas.per.min.quintile"), covar = "TFL.corretas.per.min.pre")
ds <- merge(ds[ds$variable != "TFL.corretas.per.min.pre",],
            ds[ds$variable == "TFL.corretas.per.min.pre", !colnames(ds) %in% c("variable")],
            by = c("grupo","TFL.corretas.per.min.quintile"), all.x = T, suffixes = c("", ".TFL.corretas.per.min.pre"))
ds <- merge(get_emmeans(pwcs[["grupo"]]), ds, by = c("grupo","TFL.corretas.per.min.quintile"), suffixes = c(".emms", ""))
ds <- ds[,c("grupo","TFL.corretas.per.min.quintile","n","mean.TFL.corretas.per.min.pre","se.TFL.corretas.per.min.pre","mean","se","emmean","se.emms")]

colnames(ds) <- c("grupo","TFL.corretas.per.min.quintile", "N", paste0(c("M","SE")," (pre)"),
                  paste0(c("M","SE"), " (unadj)"), paste0(c("M", "SE"), " (adj)"))

lemms[["grupo:TFL.corretas.per.min.quintile"]] <- merge(ds, lemms[["grupo:TFL.corretas.per.min.quintile"]], by=c("grupo","TFL.corretas.per.min.quintile"), suffixes = c("","'"))
```

| grupo        | TFL.corretas.per.min.quintile |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------|:------------------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| Controle     | 1st quintile                  |  11 |  50.000 |    3.382 |    82.727 |      5.360 | 114.071 |    8.208 |
| Controle     | 2nd quintile                  |  11 |  77.000 |    1.763 |    86.818 |      2.866 |  97.765 |    4.558 |
| Controle     | 3rd quintile                  |  11 |  90.636 |    0.704 |    94.091 |      3.288 |  94.736 |    3.785 |
| Controle     | 4th quintile                  |  17 | 101.588 |    1.064 |   116.882 |      3.662 | 109.254 |    3.521 |
| Controle     | 5th quintile                  |  14 | 124.214 |    3.285 |   121.929 |      4.734 |  97.208 |    6.652 |
| Experimental | 1st quintile                  |   5 |  57.800 |    3.367 |    84.600 |      6.392 | 110.052 |    8.152 |
| Experimental | 2nd quintile                  |  10 |  77.600 |    1.360 |    86.400 |      2.876 |  96.894 |    4.657 |
| Experimental | 3rd quintile                  |  13 |  90.538 |    0.773 |   108.000 |      3.111 | 108.719 |    3.483 |
| Experimental | 4th quintile                  |   7 | 100.429 |    2.114 |   111.000 |      5.345 | 104.248 |    4.994 |
| Experimental | 5th quintile                  |   9 | 119.556 |    2.646 |   133.222 |      3.589 | 112.021 |    6.463 |

### Plots for ancova

``` r
plots <- twoWayAncovaPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","TFL.corretas.per.min.quintile"), aov, pwcs, addParam = c("mean_se"),
  font.label.size=10, step.increase=0.05, p.label="p.adj",
  subtitle = which(aov$Effect == "grupo:TFL.corretas.per.min.quintile"))
```

``` r
if (!is.null(plots[["grupo"]]))
  plots[["grupo"]] + ggplot2::scale_color_manual(values = color[["TFL.corretas.per.min.quintile"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-138-1.png)<!-- -->

``` r
if (!is.null(plots[["TFL.corretas.per.min.quintile"]]))
  plots[["TFL.corretas.per.min.quintile"]] + ggplot2::scale_color_manual(values = color[["grupo"]])
```

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-139-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat, "TFL.corretas.per.min.pos", c("grupo","TFL.corretas.per.min.quintile"), aov, pwcs, covar = "TFL.corretas.per.min.pre",
  theme = "classic", color = color[["grupo:TFL.corretas.per.min.quintile"]],
  subtitle = which(aov$Effect == "grupo:TFL.corretas.per.min.quintile"))
```

``` r
plots[["grupo:TFL.corretas.per.min.quintile"]] + ggplot2::ylab("Palavras Corretas (1 Min)") + ggplot2::scale_x_discrete(labels=c('pre', 'pos'))
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-141-1.png)<!-- -->

``` r
plots <- twoWayAncovaBoxPlots(
  wdat.long, "TFL.corretas.per.min", c("grupo","TFL.corretas.per.min.quintile"), aov, pwc.long, pre.post = "time",
  theme = "classic", color = color$prepost)
```

``` r
plots[["grupo:TFL.corretas.per.min.quintile"]] + ggplot2::ylab("Palavras Corretas (1 Min)")
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-143-1.png)<!-- -->

### Checking linearity assumption

``` r
ggscatter(wdat, x = "TFL.corretas.per.min.pre", y = "TFL.corretas.per.min.pos", size = 0.5,
          facet.by = c("grupo","TFL.corretas.per.min.quintile"), add = "reg.line")+
  stat_regline_equation(
    aes(label =  paste(..eq.label.., ..rr.label.., sep = "~~~~"))
  )
```

![](aov-stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-144-1.png)<!-- -->

### Checking normality and homogeneity

``` r
res <- augment(lm(TFL.corretas.per.min.pos ~ TFL.corretas.per.min.pre + grupo*TFL.corretas.per.min.quintile, data = wdat))
```

``` r
shapiro_test(res$.resid)
```

    ## # A tibble: 1 × 3
    ##   variable   statistic p.value
    ##   <chr>          <dbl>   <dbl>
    ## 1 res$.resid     0.987   0.376

``` r
levene_test(res, .resid ~ grupo*TFL.corretas.per.min.quintile)
```

    ## # A tibble: 1 × 4
    ##     df1   df2 statistic     p
    ##   <int> <int>     <dbl> <dbl>
    ## 1     9    98     0.804 0.613

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

    ##           grupo Sexo   Zona Cor.Raca Serie TFL.corretas.per.min.quintile                 variable  n
    ## 1      Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 33
    ## 2  Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 19
    ## 3          <NA> <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 52
    ## 4      Controle <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 33
    ## 5  Experimental <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 19
    ## 6          <NA> <NA>   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 52
    ## 7      Controle    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 15
    ## 8      Controle    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 17
    ## 9  Experimental    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  8
    ## 10 Experimental    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 19
    ## 11     Controle    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 15
    ## 12     Controle    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 17
    ## 13 Experimental    F   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  8
    ## 14 Experimental    M   <NA>     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 19
    ## 15     Controle <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 54
    ## 16     Controle <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  7
    ## 17 Experimental <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre 32
    ## 18 Experimental <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pre  6
    ## 19     Controle <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 54
    ## 20     Controle <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  7
    ## 21 Experimental <NA>  Rural     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos 32
    ## 22 Experimental <NA> Urbana     <NA>  <NA>                          <NA> TFL.corretas.per.min.pos  6
    ## 23     Controle <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pre 12
    ## 24     Controle <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pre 38
    ## 25 Experimental <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pre  5
    ## 26 Experimental <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pre  8
    ## 27 Experimental <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pre 16
    ## 28     Controle <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pos 12
    ## 29     Controle <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pos 38
    ## 30 Experimental <NA>   <NA>   Branca  <NA>                          <NA> TFL.corretas.per.min.pos  5
    ## 31 Experimental <NA>   <NA> Indígena  <NA>                          <NA> TFL.corretas.per.min.pos  8
    ## 32 Experimental <NA>   <NA>    Parda  <NA>                          <NA> TFL.corretas.per.min.pos 16
    ## 33     Controle <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pre  7
    ## 34     Controle <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pre  2
    ## 35     Controle <NA>   <NA>     <NA> 8 ano                          <NA> TFL.corretas.per.min.pre  8
    ## 36     Controle <NA>   <NA>     <NA> 9 ano                          <NA> TFL.corretas.per.min.pre 10
    ## 37 Experimental <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pre  2
    ## 38 Experimental <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pre  3
    ## 39 Experimental <NA>   <NA>     <NA> 8 ano                          <NA> TFL.corretas.per.min.pre  4
    ## 40 Experimental <NA>   <NA>     <NA> 9 ano                          <NA> TFL.corretas.per.min.pre  3
    ## 41     Controle <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pos  7
    ## 42     Controle <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pos  2
    ## 43     Controle <NA>   <NA>     <NA> 8 ano                          <NA> TFL.corretas.per.min.pos  8
    ## 44     Controle <NA>   <NA>     <NA> 9 ano                          <NA> TFL.corretas.per.min.pos 10
    ## 45 Experimental <NA>   <NA>     <NA> 6 ano                          <NA> TFL.corretas.per.min.pos  2
    ## 46 Experimental <NA>   <NA>     <NA> 7 ano                          <NA> TFL.corretas.per.min.pos  3
    ## 47 Experimental <NA>   <NA>     <NA> 8 ano                          <NA> TFL.corretas.per.min.pos  4
    ## 48 Experimental <NA>   <NA>     <NA> 9 ano                          <NA> TFL.corretas.per.min.pos  3
    ## 49     Controle <NA>   <NA>     <NA>  <NA>                  1st quintile TFL.corretas.per.min.pre 11
    ## 50     Controle <NA>   <NA>     <NA>  <NA>                  2nd quintile TFL.corretas.per.min.pre 11
    ## 51     Controle <NA>   <NA>     <NA>  <NA>                  3rd quintile TFL.corretas.per.min.pre 11
    ## 52     Controle <NA>   <NA>     <NA>  <NA>                  4th quintile TFL.corretas.per.min.pre 17
    ##       mean median min max     sd     se      ci   iqr symmetry    skewness    kurtosis
    ## 1   88.061   88.0  39 137 24.458  4.258   8.672 28.00      YES -0.25559395 -0.78991048
    ## 2   94.263   94.0  57 119 19.835  4.550   9.560 23.50       NO -0.51611780 -1.03886535
    ## 3   90.327   92.0  39 137 22.875  3.172   6.369 30.75      YES -0.39467709 -0.68015176
    ## 4  139.909  136.0  98 184 20.711  3.605   7.344 20.00      YES  0.07472685 -0.17485046
    ## 5  138.632  139.0  94 190 25.020  5.740  12.059 27.50      YES  0.20483067 -0.41549649
    ## 6  139.442  137.5  94 190 22.147  3.071   6.166 20.50      YES  0.13220116 -0.09790246
    ## 7   86.600   92.0  39 154 30.085  7.768  16.661 37.50      YES  0.25915793 -0.45335358
    ## 8   97.706   99.0  48 134 24.695  5.989  12.697 25.00       NO -0.65107850 -0.74923589
    ## 9   99.875   91.5  88 119 13.799  4.879  11.536 24.25      YES  0.43134927 -1.94987228
    ## 10  89.158   85.0  51 134 22.054  5.059  10.630 23.50      YES  0.19455834 -0.84057522
    ## 11 112.000  115.0  87 147 16.018  4.136   8.870 20.50      YES  0.28654007 -0.64675589
    ## 12 111.706  116.0  74 136 17.779  4.312   9.141 20.00       NO -0.58544230 -0.82732559
    ## 13 125.000  115.5 114 150 14.580  5.155  12.189 22.75       NO  0.59312638 -1.60130032
    ## 14 104.053  104.0  73 134 14.782  3.391   7.125 17.50      YES  0.15699465 -0.39205428
    ## 15  91.111   92.5  23 154 26.515  3.608   7.237 32.25      YES -0.27856513 -0.12292064
    ## 16  92.286   98.0  47 123 24.067  9.097  22.259 19.00       NO -0.61387521 -0.79087872
    ## 17  89.969   91.0  51 134 18.485  3.268   6.665 19.00      YES  0.11824032 -0.23337932
    ## 18 102.000   95.0  90 132 16.444  6.713  17.257 15.50       NO  0.87441223 -1.03746076
    ## 19 101.259  101.0  42 147 21.712  2.955   5.926 30.00      YES -0.23134659 -0.39108899
    ## 20 142.429  149.0  87 176 28.553 10.792  26.407 22.50       NO -0.75068748 -0.64889754
    ## 21 103.594  100.5  70 139 17.186  3.038   6.196 20.25      YES  0.23915212 -0.43381902
    ## 22 132.000  122.0  94 190 33.923 13.849  35.600 30.50       NO  0.57762604 -1.27647742
    ## 23 103.667  102.5  83 137 15.956  4.606  10.138 24.25       NO  0.54142604 -0.86842588
    ## 24  90.974   92.5  23 134 23.723  3.848   7.798 32.00       NO -0.53523389  0.13131667
    ## 25 103.400   96.0  92 117 12.502  5.591  15.523 22.00      YES  0.26114210 -2.23627868
    ## 26  92.750   96.0  50 113 20.534  7.260  17.167 18.25       NO -0.94857819 -0.42157496
    ## 27  87.062   83.0  51 134 20.693  5.173  11.026 17.50       NO  0.52900343 -0.23470639
    ## 28 114.000  114.5  83 150 19.088  5.510  12.128 18.25      YES  0.08562079 -0.90794515
    ## 29  96.000   91.0  42 136 21.400  3.471   7.034 27.00      YES -0.08969486 -0.40647240
    ## 30 125.400  121.0 108 150 18.582  8.310  23.073 30.00      YES  0.23808302 -2.05259274
    ## 31 105.875  111.5  66 137 21.189  7.492  17.715 16.75      YES -0.48426089 -0.77481411
    ## 32  99.500   96.5  70 144 19.190  4.798  10.226 12.00       NO  0.73502165  0.10257716
    ## 33  85.429   88.0  39 137 33.486 12.656  30.969 33.00      YES -0.05089048 -1.40997419
    ## 34  77.000   77.0  57  97 28.284 20.000 254.124 20.00 few data  0.00000000  0.00000000
    ## 35  85.125   83.5  52 123 24.462  8.649  20.451 28.25      YES  0.03721464 -1.46780724
    ## 36  87.900   88.5  45 115 21.336  6.747  15.263 25.50       NO -0.55095359 -0.85595203
    ## 37  82.000   82.0  68  96 19.799 14.000 177.887 14.00 few data  0.00000000  0.00000000
    ## 38  99.333   93.0  88 117 15.503  8.950  38.511 14.50 few data  0.00000000  0.00000000
    ## 39 103.000  102.0  92 116 12.806  6.403  20.378 21.00 few data  0.00000000  0.00000000
    ## 40 104.667  101.0  94 119 12.897  7.446  32.038 12.50 few data  0.00000000  0.00000000
    ## 41 125.714  135.0  87 156 22.918  8.662  21.196 19.00      YES -0.45181172 -1.27440355
    ## 42 111.500  111.5  98 125 19.092 13.500 171.534 13.50 few data  0.00000000  0.00000000
    ## 43 144.625  135.0 126 176 19.041  6.732  15.919 20.75       NO  0.67091826 -1.43552897
    ## 44 145.000  139.0 115 176 17.758  5.615  12.703 21.75      YES  0.20958745 -1.01521417
    ## 45 147.000  147.0 144 150  4.243  3.000  38.119  3.00 few data  0.00000000  0.00000000
    ## 46 123.000  116.0 114 139 13.892  8.021  34.511 12.50 few data  0.00000000  0.00000000
    ## 47 143.750  139.5 130 166 15.924  7.962  25.339 15.75      YES  0.47952960 -1.88540733
    ## 48 142.667  139.0 139 150  6.351  3.667  15.776  5.50 few data  0.00000000  0.00000000
    ## 49  50.000   52.0  23  64 11.216  3.382   7.535  9.00       NO -1.07662089  0.43740227
    ## 50  77.000   80.0  68  83  5.848  1.763   3.929  9.00       NO -0.50453481 -1.58464609
    ## 51  90.636   91.0  87  94  2.335  0.704   1.569  3.00      YES -0.32803115 -1.36933884
    ## 52 101.588   99.0  97 110  4.388  1.064   2.256  5.00       NO  0.71612415 -0.93674081
    ##  [ reached 'max' / getOption("max.print") -- omitted 16 rows ]

| grupo        | Sexo | Zona   | Cor.Raca | Serie | TFL.corretas.per.min.quintile | variable                 |   n |    mean | median | min | max |     sd |     se |      ci |   iqr | symmetry | skewness | kurtosis |
|:-------------|:-----|:-------|:---------|:------|:------------------------------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|:---------|---------:|---------:|
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pre |  33 |  88.061 |   88.0 |  39 | 137 | 24.458 |  4.258 |   8.672 | 28.00 | YES      |   -0.256 |   -0.790 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pre |  19 |  94.263 |   94.0 |  57 | 119 | 19.835 |  4.550 |   9.560 | 23.50 | NO       |   -0.516 |   -1.039 |
|              |      |        |          |       |                               | TFL.corretas.per.min.pre |  52 |  90.327 |   92.0 |  39 | 137 | 22.875 |  3.172 |   6.369 | 30.75 | YES      |   -0.395 |   -0.680 |
| Controle     |      |        |          |       |                               | TFL.corretas.per.min.pos |  33 | 139.909 |  136.0 |  98 | 184 | 20.711 |  3.605 |   7.344 | 20.00 | YES      |    0.075 |   -0.175 |
| Experimental |      |        |          |       |                               | TFL.corretas.per.min.pos |  19 | 138.632 |  139.0 |  94 | 190 | 25.020 |  5.740 |  12.059 | 27.50 | YES      |    0.205 |   -0.415 |
|              |      |        |          |       |                               | TFL.corretas.per.min.pos |  52 | 139.442 |  137.5 |  94 | 190 | 22.147 |  3.071 |   6.166 | 20.50 | YES      |    0.132 |   -0.098 |
| Controle     | F    |        |          |       |                               | TFL.corretas.per.min.pre |  15 |  86.600 |   92.0 |  39 | 154 | 30.085 |  7.768 |  16.661 | 37.50 | YES      |    0.259 |   -0.453 |
| Controle     | M    |        |          |       |                               | TFL.corretas.per.min.pre |  17 |  97.706 |   99.0 |  48 | 134 | 24.695 |  5.989 |  12.697 | 25.00 | NO       |   -0.651 |   -0.749 |
| Experimental | F    |        |          |       |                               | TFL.corretas.per.min.pre |   8 |  99.875 |   91.5 |  88 | 119 | 13.799 |  4.879 |  11.536 | 24.25 | YES      |    0.431 |   -1.950 |
| Experimental | M    |        |          |       |                               | TFL.corretas.per.min.pre |  19 |  89.158 |   85.0 |  51 | 134 | 22.054 |  5.059 |  10.630 | 23.50 | YES      |    0.195 |   -0.841 |
| Controle     | F    |        |          |       |                               | TFL.corretas.per.min.pos |  15 | 112.000 |  115.0 |  87 | 147 | 16.018 |  4.136 |   8.870 | 20.50 | YES      |    0.287 |   -0.647 |
| Controle     | M    |        |          |       |                               | TFL.corretas.per.min.pos |  17 | 111.706 |  116.0 |  74 | 136 | 17.779 |  4.312 |   9.141 | 20.00 | NO       |   -0.585 |   -0.827 |
| Experimental | F    |        |          |       |                               | TFL.corretas.per.min.pos |   8 | 125.000 |  115.5 | 114 | 150 | 14.580 |  5.155 |  12.189 | 22.75 | NO       |    0.593 |   -1.601 |
| Experimental | M    |        |          |       |                               | TFL.corretas.per.min.pos |  19 | 104.053 |  104.0 |  73 | 134 | 14.782 |  3.391 |   7.125 | 17.50 | YES      |    0.157 |   -0.392 |
| Controle     |      | Rural  |          |       |                               | TFL.corretas.per.min.pre |  54 |  91.111 |   92.5 |  23 | 154 | 26.515 |  3.608 |   7.237 | 32.25 | YES      |   -0.279 |   -0.123 |
| Controle     |      | Urbana |          |       |                               | TFL.corretas.per.min.pre |   7 |  92.286 |   98.0 |  47 | 123 | 24.067 |  9.097 |  22.259 | 19.00 | NO       |   -0.614 |   -0.791 |
| Experimental |      | Rural  |          |       |                               | TFL.corretas.per.min.pre |  32 |  89.969 |   91.0 |  51 | 134 | 18.485 |  3.268 |   6.665 | 19.00 | YES      |    0.118 |   -0.233 |
| Experimental |      | Urbana |          |       |                               | TFL.corretas.per.min.pre |   6 | 102.000 |   95.0 |  90 | 132 | 16.444 |  6.713 |  17.257 | 15.50 | NO       |    0.874 |   -1.037 |
| Controle     |      | Rural  |          |       |                               | TFL.corretas.per.min.pos |  54 | 101.259 |  101.0 |  42 | 147 | 21.712 |  2.955 |   5.926 | 30.00 | YES      |   -0.231 |   -0.391 |
| Controle     |      | Urbana |          |       |                               | TFL.corretas.per.min.pos |   7 | 142.429 |  149.0 |  87 | 176 | 28.553 | 10.792 |  26.407 | 22.50 | NO       |   -0.751 |   -0.649 |
| Experimental |      | Rural  |          |       |                               | TFL.corretas.per.min.pos |  32 | 103.594 |  100.5 |  70 | 139 | 17.186 |  3.038 |   6.196 | 20.25 | YES      |    0.239 |   -0.434 |
| Experimental |      | Urbana |          |       |                               | TFL.corretas.per.min.pos |   6 | 132.000 |  122.0 |  94 | 190 | 33.923 | 13.849 |  35.600 | 30.50 | NO       |    0.578 |   -1.276 |
| Controle     |      |        | Branca   |       |                               | TFL.corretas.per.min.pre |  12 | 103.667 |  102.5 |  83 | 137 | 15.956 |  4.606 |  10.138 | 24.25 | NO       |    0.541 |   -0.868 |
| Controle     |      |        | Parda    |       |                               | TFL.corretas.per.min.pre |  38 |  90.974 |   92.5 |  23 | 134 | 23.723 |  3.848 |   7.798 | 32.00 | NO       |   -0.535 |    0.131 |
| Experimental |      |        | Branca   |       |                               | TFL.corretas.per.min.pre |   5 | 103.400 |   96.0 |  92 | 117 | 12.502 |  5.591 |  15.523 | 22.00 | YES      |    0.261 |   -2.236 |
| Experimental |      |        | Indígena |       |                               | TFL.corretas.per.min.pre |   8 |  92.750 |   96.0 |  50 | 113 | 20.534 |  7.260 |  17.167 | 18.25 | NO       |   -0.949 |   -0.422 |
| Experimental |      |        | Parda    |       |                               | TFL.corretas.per.min.pre |  16 |  87.062 |   83.0 |  51 | 134 | 20.693 |  5.173 |  11.026 | 17.50 | NO       |    0.529 |   -0.235 |
| Controle     |      |        | Branca   |       |                               | TFL.corretas.per.min.pos |  12 | 114.000 |  114.5 |  83 | 150 | 19.088 |  5.510 |  12.128 | 18.25 | YES      |    0.086 |   -0.908 |
| Controle     |      |        | Parda    |       |                               | TFL.corretas.per.min.pos |  38 |  96.000 |   91.0 |  42 | 136 | 21.400 |  3.471 |   7.034 | 27.00 | YES      |   -0.090 |   -0.406 |
| Experimental |      |        | Branca   |       |                               | TFL.corretas.per.min.pos |   5 | 125.400 |  121.0 | 108 | 150 | 18.582 |  8.310 |  23.073 | 30.00 | YES      |    0.238 |   -2.053 |
| Experimental |      |        | Indígena |       |                               | TFL.corretas.per.min.pos |   8 | 105.875 |  111.5 |  66 | 137 | 21.189 |  7.492 |  17.715 | 16.75 | YES      |   -0.484 |   -0.775 |
| Experimental |      |        | Parda    |       |                               | TFL.corretas.per.min.pos |  16 |  99.500 |   96.5 |  70 | 144 | 19.190 |  4.798 |  10.226 | 12.00 | NO       |    0.735 |    0.103 |
| Controle     |      |        |          | 6 ano |                               | TFL.corretas.per.min.pre |   7 |  85.429 |   88.0 |  39 | 137 | 33.486 | 12.656 |  30.969 | 33.00 | YES      |   -0.051 |   -1.410 |
| Controle     |      |        |          | 7 ano |                               | TFL.corretas.per.min.pre |   2 |  77.000 |   77.0 |  57 |  97 | 28.284 | 20.000 | 254.124 | 20.00 | few data |    0.000 |    0.000 |
| Controle     |      |        |          | 8 ano |                               | TFL.corretas.per.min.pre |   8 |  85.125 |   83.5 |  52 | 123 | 24.462 |  8.649 |  20.451 | 28.25 | YES      |    0.037 |   -1.468 |
| Controle     |      |        |          | 9 ano |                               | TFL.corretas.per.min.pre |  10 |  87.900 |   88.5 |  45 | 115 | 21.336 |  6.747 |  15.263 | 25.50 | NO       |   -0.551 |   -0.856 |
| Experimental |      |        |          | 6 ano |                               | TFL.corretas.per.min.pre |   2 |  82.000 |   82.0 |  68 |  96 | 19.799 | 14.000 | 177.887 | 14.00 | few data |    0.000 |    0.000 |
| Experimental |      |        |          | 7 ano |                               | TFL.corretas.per.min.pre |   3 |  99.333 |   93.0 |  88 | 117 | 15.503 |  8.950 |  38.511 | 14.50 | few data |    0.000 |    0.000 |
| Experimental |      |        |          | 8 ano |                               | TFL.corretas.per.min.pre |   4 | 103.000 |  102.0 |  92 | 116 | 12.806 |  6.403 |  20.378 | 21.00 | few data |    0.000 |    0.000 |
| Experimental |      |        |          | 9 ano |                               | TFL.corretas.per.min.pre |   3 | 104.667 |  101.0 |  94 | 119 | 12.897 |  7.446 |  32.038 | 12.50 | few data |    0.000 |    0.000 |
| Controle     |      |        |          | 6 ano |                               | TFL.corretas.per.min.pos |   7 | 125.714 |  135.0 |  87 | 156 | 22.918 |  8.662 |  21.196 | 19.00 | YES      |   -0.452 |   -1.274 |
| Controle     |      |        |          | 7 ano |                               | TFL.corretas.per.min.pos |   2 | 111.500 |  111.5 |  98 | 125 | 19.092 | 13.500 | 171.534 | 13.50 | few data |    0.000 |    0.000 |
| Controle     |      |        |          | 8 ano |                               | TFL.corretas.per.min.pos |   8 | 144.625 |  135.0 | 126 | 176 | 19.041 |  6.732 |  15.919 | 20.75 | NO       |    0.671 |   -1.436 |
| Controle     |      |        |          | 9 ano |                               | TFL.corretas.per.min.pos |  10 | 145.000 |  139.0 | 115 | 176 | 17.758 |  5.615 |  12.703 | 21.75 | YES      |    0.210 |   -1.015 |
| Experimental |      |        |          | 6 ano |                               | TFL.corretas.per.min.pos |   2 | 147.000 |  147.0 | 144 | 150 |  4.243 |  3.000 |  38.119 |  3.00 | few data |    0.000 |    0.000 |
| Experimental |      |        |          | 7 ano |                               | TFL.corretas.per.min.pos |   3 | 123.000 |  116.0 | 114 | 139 | 13.892 |  8.021 |  34.511 | 12.50 | few data |    0.000 |    0.000 |
| Experimental |      |        |          | 8 ano |                               | TFL.corretas.per.min.pos |   4 | 143.750 |  139.5 | 130 | 166 | 15.924 |  7.962 |  25.339 | 15.75 | YES      |    0.480 |   -1.885 |
| Experimental |      |        |          | 9 ano |                               | TFL.corretas.per.min.pos |   3 | 142.667 |  139.0 | 139 | 150 |  6.351 |  3.667 |  15.776 |  5.50 | few data |    0.000 |    0.000 |
| Controle     |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pre |  11 |  50.000 |   52.0 |  23 |  64 | 11.216 |  3.382 |   7.535 |  9.00 | NO       |   -1.077 |    0.437 |
| Controle     |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pre |  11 |  77.000 |   80.0 |  68 |  83 |  5.848 |  1.763 |   3.929 |  9.00 | NO       |   -0.505 |   -1.585 |
| Controle     |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pre |  11 |  90.636 |   91.0 |  87 |  94 |  2.335 |  0.704 |   1.569 |  3.00 | YES      |   -0.328 |   -1.369 |
| Controle     |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pre |  17 | 101.588 |   99.0 |  97 | 110 |  4.388 |  1.064 |   2.256 |  5.00 | NO       |    0.716 |   -0.937 |
| Controle     |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pre |  14 | 124.214 |  119.0 | 112 | 154 | 12.292 |  3.285 |   7.097 | 17.00 | NO       |    0.994 |   -0.153 |
| Experimental |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pre |   5 |  57.800 |   57.0 |  50 |  66 |  7.530 |  3.367 |   9.350 | 14.00 | YES      |    0.063 |   -2.188 |
| Experimental |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pre |  10 |  77.600 |   78.5 |  68 |  84 |  4.300 |  1.360 |   3.076 |  3.75 | NO       |   -0.742 |    0.044 |
| Experimental |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pre |  13 |  90.538 |   90.0 |  85 |  94 |  2.787 |  0.773 |   1.684 |  4.00 | YES      |   -0.411 |   -1.070 |
| Experimental |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pre |   7 | 100.429 |   98.0 |  95 | 109 |  5.593 |  2.114 |   5.173 |  7.50 | YES      |    0.461 |   -1.676 |
| Experimental |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pre |   9 | 119.556 |  117.0 | 112 | 134 |  7.939 |  2.646 |   6.102 |  4.00 | NO       |    0.907 |   -0.953 |
| Controle     |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pos |  11 |  82.727 |   87.0 |  42 | 104 | 17.777 |  5.360 |  11.943 | 20.50 | NO       |   -0.902 |   -0.121 |
| Controle     |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pos |  11 |  86.818 |   86.0 |  65 | 101 |  9.506 |  2.866 |   6.386 |  8.00 | NO       |   -0.695 |    0.129 |
| Controle     |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pos |  11 |  94.091 |   90.0 |  81 | 112 | 10.904 |  3.288 |   7.325 | 13.00 | NO       |    0.602 |   -1.343 |
| Controle     |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pos |  17 | 116.882 |  117.0 |  90 | 151 | 15.099 |  3.662 |   7.763 | 15.00 | YES      |    0.088 |   -0.086 |
| Controle     |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pos |  14 | 121.929 |  120.0 |  90 | 156 | 17.713 |  4.734 |  10.227 | 19.25 | YES      |    0.160 |   -0.744 |
| Experimental |      |        |          |       | 1st quintile                  | TFL.corretas.per.min.pos |   5 |  84.600 |   91.0 |  66 |  99 | 14.293 |  6.392 |  17.748 | 21.00 | YES      |   -0.268 |   -2.088 |
| Experimental |      |        |          |       | 2nd quintile                  | TFL.corretas.per.min.pos |  10 |  86.400 |   85.5 |  70 |  99 |  9.095 |  2.876 |   6.506 | 13.00 | YES      |   -0.220 |   -1.326 |
| Experimental |      |        |          |       | 3rd quintile                  | TFL.corretas.per.min.pos |  13 | 108.000 |  111.0 |  93 | 130 | 11.218 |  3.111 |   6.779 | 18.00 | YES      |    0.077 |   -1.055 |
| Experimental |      |        |          |       | 4th quintile                  | TFL.corretas.per.min.pos |   7 | 111.000 |  109.0 |  94 | 139 | 14.142 |  5.345 |  13.079 |  9.50 | NO       |    0.820 |   -0.480 |
| Experimental |      |        |          |       | 5th quintile                  | TFL.corretas.per.min.pos |   9 | 133.222 |  134.0 | 116 | 150 | 10.768 |  3.589 |   8.277 | 10.00 | YES      |   -0.077 |   -1.306 |

## ANCOVA Table Comparison

``` r
df <- do.call(plyr::rbind.fill, laov)
(df <- df[!duplicated(df$Effect),])
```

    ##                                 Effect DFn DFd      F        p p<.05   ges DFn' DFd'     F'       p'
    ## 1                                grupo   1  49  1.106 2.98e-01       0.022    1  140  0.020 8.88e-01
    ## 2             TFL.corretas.per.min.pre   1  49 36.320 2.13e-07     * 0.426    1  140 50.194 6.23e-11
    ## 4                           grupo:Sexo   1  54  3.690 6.00e-02       0.064    1  138  0.075 7.84e-01
    ## 5                                 Sexo   1  54 26.602 3.66e-06     * 0.330    1  138  6.483 1.20e-02
    ## 8                           grupo:Zona   1  94  3.994 4.90e-02     * 0.041    1  101  2.270 1.35e-01
    ## 10                                Zona   1  94 42.906 3.03e-09     * 0.313    1  101 17.714 5.57e-05
    ## 11                            Cor.Raca   2  73  3.425 3.80e-02     * 0.086    2   76  1.223 3.00e-01
    ## 13                      grupo:Cor.Raca   1  73  0.372 5.44e-01       0.005    1   76  0.759 3.86e-01
    ## 16                         grupo:Serie   3  30  7.184 8.97e-04     * 0.418    3  134  2.275 8.30e-02
    ## 17                               Serie   3  30 11.753 2.92e-05     * 0.540    3  134  2.212 9.00e-02
    ## 20 grupo:TFL.corretas.per.min.quintile   4  97  3.059 2.00e-02     * 0.112    4  132  0.603 6.61e-01
    ## 22       TFL.corretas.per.min.quintile   4  97  4.324 3.00e-03     * 0.151    4  132  1.851 1.23e-01
    ##    p<.05'     ges'
    ## 1         0.000142
    ## 2       * 0.264000
    ## 4         0.000545
    ## 5       * 0.045000
    ## 8         0.022000
    ## 10      * 0.149000
    ## 11        0.031000
    ## 13        0.010000
    ## 16        0.048000
    ## 17        0.047000
    ## 20        0.018000
    ## 22        0.053000

|     | Effect                              | DFn | DFd |      F |     p | p\<.05 |   ges | DFn’ | DFd’ |     F’ |    p’ | p\<.05’ |  ges’ |
|:----|:------------------------------------|----:|----:|-------:|------:|:-------|------:|-----:|-----:|-------:|------:|:--------|------:|
| 1   | grupo                               |   1 |  49 |  1.106 | 0.298 |        | 0.022 |    1 |  140 |  0.020 | 0.888 |         | 0.000 |
| 2   | TFL.corretas.per.min.pre            |   1 |  49 | 36.320 | 0.000 | \*     | 0.426 |    1 |  140 | 50.194 | 0.000 | \*      | 0.264 |
| 4   | grupo:Sexo                          |   1 |  54 |  3.690 | 0.060 |        | 0.064 |    1 |  138 |  0.075 | 0.784 |         | 0.001 |
| 5   | Sexo                                |   1 |  54 | 26.602 | 0.000 | \*     | 0.330 |    1 |  138 |  6.483 | 0.012 | \*      | 0.045 |
| 8   | grupo:Zona                          |   1 |  94 |  3.994 | 0.049 | \*     | 0.041 |    1 |  101 |  2.270 | 0.135 |         | 0.022 |
| 10  | Zona                                |   1 |  94 | 42.906 | 0.000 | \*     | 0.313 |    1 |  101 | 17.714 | 0.000 | \*      | 0.149 |
| 11  | Cor.Raca                            |   2 |  73 |  3.425 | 0.038 | \*     | 0.086 |    2 |   76 |  1.223 | 0.300 |         | 0.031 |
| 13  | grupo:Cor.Raca                      |   1 |  73 |  0.372 | 0.544 |        | 0.005 |    1 |   76 |  0.759 | 0.386 |         | 0.010 |
| 16  | grupo:Serie                         |   3 |  30 |  7.184 | 0.001 | \*     | 0.418 |    3 |  134 |  2.275 | 0.083 |         | 0.048 |
| 17  | Serie                               |   3 |  30 | 11.753 | 0.000 | \*     | 0.540 |    3 |  134 |  2.212 | 0.090 |         | 0.047 |
| 20  | grupo:TFL.corretas.per.min.quintile |   4 |  97 |  3.059 | 0.020 | \*     | 0.112 |    4 |  132 |  0.603 | 0.661 |         | 0.018 |
| 22  | TFL.corretas.per.min.quintile       |   4 |  97 |  4.324 | 0.003 | \*     | 0.151 |    4 |  132 |  1.851 | 0.123 |         | 0.053 |

## PairWise Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lpwc)
df <- df[,c(names(lfatores), names(df)[!names(df) %in% c(names(lfatores),"term",".y.")])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | TFL.corretas.per.min.quintile | group1       | group2       |  df | statistic |     p | p.adj | p.adj.signif | df’ | statistic’ |    p’ | p.adj’ | p.adj.signif’ |
|:-------------|:-----|:-------|:---------|:------|:------------------------------|:-------------|:-------------|----:|----------:|------:|------:|:-------------|----:|-----------:|------:|-------:|:--------------|
| Controle     |      |        |          |       |                               | pre          | pos          | 100 |    -9.306 | 0.000 | 0.000 | \*\*\*\*     | 282 |     -5.948 | 0.000 |  0.000 | \*\*\*\*      |
| Experimental |      |        |          |       |                               | pre          | pos          | 100 |    -6.043 | 0.000 | 0.000 | \*\*\*\*     | 282 |     -4.302 | 0.000 |  0.000 | \*\*\*\*      |
|              |      |        |          |       |                               | Controle     | Experimental |  49 |     1.051 | 0.298 | 0.298 | ns           | 140 |      0.141 | 0.888 |  0.888 | ns            |
| Controle     | F    |        |          |       |                               | pre          | pos          | 110 |    -3.380 | 0.001 | 0.001 | \*\*         | 278 |     -4.647 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     | M    |        |          |       |                               | pre          | pos          | 110 |    -1.983 | 0.050 | 0.050 | \*           | 278 |     -4.007 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     |      |        |          |       |                               | F            | M            |  54 |     2.633 | 0.011 | 0.011 | \*           | 138 |      1.862 | 0.065 |  0.065 | ns            |
| Experimental | F    |        |          |       |                               | pre          | pos          | 110 |    -2.442 | 0.016 | 0.016 | \*           | 278 |     -3.443 | 0.001 |  0.001 | \*\*\*        |
| Experimental | M    |        |          |       |                               | pre          | pos          | 110 |    -2.231 | 0.028 | 0.028 | \*           | 278 |     -2.815 | 0.005 |  0.005 | \*\*          |
| Experimental |      |        |          |       |                               | F            | M            |  54 |     4.769 | 0.000 | 0.000 | \*\*\*\*     | 138 |      1.773 | 0.078 |  0.078 | ns            |
|              | F    |        |          |       |                               | Controle     | Experimental |  54 |    -1.620 | 0.111 | 0.111 | ns           | 138 |     -0.104 | 0.918 |  0.918 | ns            |
|              | M    |        |          |       |                               | Controle     | Experimental |  54 |     1.078 | 0.286 | 0.286 | ns           | 138 |      0.305 | 0.761 |  0.761 | ns            |
| Controle     |      |        |          |       |                               | Rural        | Urbana       |  94 |    -6.213 | 0.000 | 0.000 | \*\*\*\*     | 101 |     -4.139 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     |      | Rural  |          |       |                               | pre          | pos          | 190 |    -2.328 | 0.021 | 0.021 | \*           | 204 |     -3.196 | 0.002 |  0.002 | \*\*          |
| Controle     |      | Urbana |          |       |                               | pre          | pos          | 190 |    -4.142 | 0.000 | 0.000 | \*\*\*\*     | 204 |     -3.804 | 0.000 |  0.000 | \*\*\*        |
| Experimental |      |        |          |       |                               | Rural        | Urbana       |  94 |    -2.890 | 0.005 | 0.005 | \*\*         | 101 |     -1.698 | 0.093 |  0.093 | ns            |
| Experimental |      | Rural  |          |       |                               | pre          | pos          | 190 |    -2.406 | 0.017 | 0.017 | \*           | 204 |     -3.266 | 0.001 |  0.001 | \*\*          |
| Experimental |      | Urbana |          |       |                               | pre          | pos          | 190 |    -2.294 | 0.023 | 0.023 | \*           | 204 |     -2.107 | 0.036 |  0.036 | \*            |
|              |      | Rural  |          |       |                               | Controle     | Experimental |  94 |    -0.841 | 0.403 | 0.403 | ns           | 101 |     -0.869 | 0.387 |  0.387 | ns            |
|              |      | Urbana |          |       |                               | Controle     | Experimental |  94 |     1.817 | 0.072 | 0.072 | ns           | 101 |      1.281 | 0.203 |  0.203 | ns            |
| Controle     |      |        | Branca   |       |                               | pre          | pos          | 148 |    -1.211 | 0.228 | 0.228 | ns           | 154 |     -1.124 | 0.263 |  0.263 | ns            |
| Controle     |      |        | Indígena |       |                               | pre          | pos          |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          |       |                               | Branca       | Indígena     |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        |          |       |                               | Branca       | Parda        |  73 |     1.903 | 0.061 | 0.061 | ns           |  76 |      0.873 | 0.385 |  0.385 | ns            |
| Controle     |      |        |          |       |                               | Indígena     | Parda        |     |           |       |       |              |     |            |       |        |               |
| Controle     |      |        | Parda    |       |                               | pre          | pos          | 148 |    -1.048 | 0.296 | 0.296 | ns           | 154 |     -1.848 | 0.066 |  0.066 | ns            |
| Experimental |      |        | Branca   |       |                               | pre          | pos          | 148 |    -1.665 | 0.098 | 0.098 | ns           | 154 |     -1.544 | 0.125 |  0.125 | ns            |
| Experimental |      |        | Indígena |       |                               | pre          | pos          | 148 |    -1.256 | 0.211 | 0.211 | ns           | 154 |     -1.165 | 0.246 |  0.246 | ns            |
| Experimental |      |        |          |       |                               | Branca       | Indígena     |  73 |     1.472 | 0.145 | 0.436 | ns           |  76 |      1.193 | 0.236 |  0.709 | ns            |
| Experimental |      |        |          |       |                               | Branca       | Parda        |  73 |     1.954 | 0.055 | 0.164 | ns           |  76 |      1.584 | 0.117 |  0.352 | ns            |
| Experimental |      |        |          |       |                               | Indígena     | Parda        |  73 |     0.397 | 0.692 | 1.000 | ns           |  76 |      0.321 | 0.749 |  1.000 | ns            |
| Experimental |      |        | Parda    |       |                               | pre          | pos          | 148 |    -1.684 | 0.094 | 0.094 | ns           | 154 |     -1.562 | 0.120 |  0.120 | ns            |
|              |      |        | Branca   |       |                               | Controle     | Experimental |  73 |    -1.492 | 0.140 | 0.140 | ns           |  76 |     -1.213 | 0.229 |  0.229 | ns            |
|              |      |        | Indígena |       |                               | Controle     | Experimental |     |           |       |       |              |     |            |       |        |               |
|              |      |        | Parda    |       |                               | Controle     | Experimental |  73 |    -1.413 | 0.162 | 0.162 | ns           |  76 |     -0.390 | 0.698 |  0.698 | ns            |
| Controle     |      |        |          | 6 ano |                               | pre          | pos          |  62 |    -3.569 | 0.001 | 0.001 | \*\*\*       | 270 |     -2.157 | 0.032 |  0.032 | \*            |
| Controle     |      |        |          | 7 ano |                               | pre          | pos          |  62 |    -1.634 | 0.107 | 0.107 | ns           | 270 |     -2.190 | 0.029 |  0.029 | \*            |
| Controle     |      |        |          | 8 ano |                               | pre          | pos          |  62 |    -5.635 | 0.000 | 0.000 | \*\*\*\*     | 270 |     -3.708 | 0.000 |  0.000 | \*\*\*        |
| Controle     |      |        |          | 9 ano |                               | pre          | pos          |  62 |    -6.046 | 0.000 | 0.000 | \*\*\*\*     | 270 |     -4.172 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     |      |        |          |       |                               | 6 ano        | 7 ano        |  30 |     1.244 | 0.223 | 1.000 | ns           | 134 |     -0.936 | 0.351 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 6 ano        | 8 ano        |  30 |    -4.332 | 0.000 | 0.001 | \*\*\*       | 134 |     -2.806 | 0.006 |  0.035 | \*            |
| Controle     |      |        |          |       |                               | 6 ano        | 9 ano        |  30 |    -4.191 | 0.000 | 0.001 | \*\*         | 134 |     -2.769 | 0.006 |  0.038 | \*            |
| Controle     |      |        |          |       |                               | 7 ano        | 8 ano        |  30 |    -4.090 | 0.000 | 0.002 | \*\*         | 134 |     -1.760 | 0.081 |  0.484 | ns            |
| Controle     |      |        |          |       |                               | 7 ano        | 9 ano        |  30 |    -3.938 | 0.000 | 0.003 | \*\*         | 134 |     -1.550 | 0.123 |  0.741 | ns            |
| Controle     |      |        |          |       |                               | 8 ano        | 9 ano        |  30 |     0.369 | 0.714 | 1.000 | ns           | 134 |      0.419 | 0.676 |  1.000 | ns            |
| Experimental |      |        |          | 6 ano |                               | pre          | pos          |  62 |    -3.078 | 0.003 | 0.003 | \*\*         | 270 |     -3.288 | 0.001 |  0.001 | \*\*          |
| Experimental |      |        |          | 7 ano |                               | pre          | pos          |  62 |    -1.373 | 0.175 | 0.175 | ns           | 270 |     -1.293 | 0.197 |  0.197 | ns            |
| Experimental |      |        |          | 8 ano |                               | pre          | pos          |  62 |    -2.729 | 0.008 | 0.008 | \*\*         | 270 |     -2.072 | 0.039 |  0.039 | \*            |
| Experimental |      |        |          | 9 ano |                               | pre          | pos          |  62 |    -2.204 | 0.031 | 0.031 | \*           | 270 |     -1.715 | 0.088 |  0.088 | ns            |
| Experimental |      |        |          |       |                               | 6 ano        | 7 ano        |  30 |     4.539 | 0.000 | 0.001 | \*\*\*       | 134 |      1.294 | 0.198 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 6 ano        | 8 ano        |  30 |     2.319 | 0.027 | 0.164 | ns           | 134 |      0.647 | 0.519 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 6 ano        | 9 ano        |  30 |     2.477 | 0.019 | 0.115 | ns           | 134 |      0.339 | 0.735 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 7 ano        | 8 ano        |  30 |    -2.805 | 0.009 | 0.052 | ns           | 134 |     -0.629 | 0.530 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 7 ano        | 9 ano        |  30 |    -2.306 | 0.028 | 0.169 | ns           | 134 |     -0.816 | 0.416 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 8 ano        | 9 ano        |  30 |     0.339 | 0.737 | 1.000 | ns           | 134 |     -0.236 | 0.814 |  1.000 | ns            |
|              |      |        |          | 6 ano |                               | Controle     | Experimental |  30 |    -3.450 | 0.002 | 0.002 | \*\*         | 134 |     -1.961 | 0.052 |  0.052 | ns            |
|              |      |        |          | 7 ano |                               | Controle     | Experimental |  30 |     0.449 | 0.657 | 0.657 | ns           | 134 |      0.509 | 0.612 |  0.612 | ns            |
|              |      |        |          | 8 ano |                               | Controle     | Experimental |  30 |     2.418 | 0.022 | 0.022 | \*           | 134 |      1.436 | 0.153 |  0.153 | ns            |
|              |      |        |          | 9 ano |                               | Controle     | Experimental |  30 |     2.386 | 0.024 | 0.024 | \*           | 134 |      0.819 | 0.414 |  0.414 | ns            |
| Controle     |      |        |          |       | 1st quintile                  | pre          | pos          | 196 |    -7.042 | 0.000 | 0.000 | \*\*\*\*     | 266 |     -7.186 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     |      |        |          |       | 2nd quintile                  | pre          | pos          | 196 |    -2.113 | 0.036 | 0.036 | \*           | 266 |     -3.254 | 0.001 |  0.001 | \*\*          |
| Controle     |      |        |          |       | 3rd quintile                  | pre          | pos          | 196 |    -0.743 | 0.458 | 0.458 | ns           | 266 |     -2.971 | 0.003 |  0.003 | \*\*          |
| Controle     |      |        |          |       | 4th quintile                  | pre          | pos          | 196 |    -4.091 | 0.000 | 0.000 | \*\*\*\*     | 266 |     -4.439 | 0.000 |  0.000 | \*\*\*\*      |
| Controle     |      |        |          |       | 5th quintile                  | pre          | pos          | 196 |     0.555 | 0.580 | 0.580 | ns           | 266 |     -1.098 | 0.273 |  0.273 | ns            |
| Controle     |      |        |          |       |                               | 1st quintile | 2nd quintile |  97 |     2.281 | 0.025 | 0.247 | ns           | 132 |      1.437 | 0.153 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 1st quintile | 3rd quintile |  97 |     2.168 | 0.033 | 0.326 | ns           | 132 |      1.243 | 0.216 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 1st quintile | 4th quintile |  97 |     0.469 | 0.640 | 1.000 | ns           | 132 |      0.460 | 0.646 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 1st quintile | 5th quintile |  97 |     1.207 | 0.231 | 1.000 | ns           | 132 |      0.881 | 0.380 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 2nd quintile | 3rd quintile |  97 |     0.517 | 0.606 | 1.000 | ns           | 132 |      0.077 | 0.939 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 2nd quintile | 4th quintile |  97 |    -1.769 | 0.080 | 0.801 | ns           | 132 |     -0.800 | 0.425 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 2nd quintile | 5th quintile |  97 |     0.057 | 0.954 | 1.000 | ns           | 132 |      0.226 | 0.822 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 3rd quintile | 4th quintile |  97 |    -2.781 | 0.007 | 0.065 | ns           | 132 |     -1.102 | 0.273 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 3rd quintile | 5th quintile |  97 |    -0.318 | 0.751 | 1.000 | ns           | 132 |      0.226 | 0.822 |  1.000 | ns            |
| Controle     |      |        |          |       |                               | 4th quintile | 5th quintile |  97 |     2.000 | 0.048 | 0.483 | ns           | 132 |      1.252 | 0.213 |  1.000 | ns            |
| Experimental |      |        |          |       | 1st quintile                  | pre          | pos          | 196 |    -3.888 | 0.000 | 0.000 | \*\*\*       | 266 |     -3.579 | 0.000 |  0.000 | \*\*\*        |
| Experimental |      |        |          |       | 2nd quintile                  | pre          | pos          | 196 |    -1.805 | 0.073 | 0.073 | ns           | 266 |     -1.935 | 0.054 |  0.054 | ns            |
| Experimental |      |        |          |       | 3rd quintile                  | pre          | pos          | 196 |    -4.084 | 0.000 | 0.000 | \*\*\*\*     | 266 |     -3.183 | 0.002 |  0.002 | \*\*          |
| Experimental |      |        |          |       | 4th quintile                  | pre          | pos          | 196 |    -1.815 | 0.071 | 0.071 | ns           | 266 |     -2.714 | 0.007 |  0.007 | \*\*          |
| Experimental |      |        |          |       | 5th quintile                  | pre          | pos          | 196 |    -2.660 | 0.008 | 0.008 | \*\*         | 266 |     -2.576 | 0.011 |  0.011 | \*            |
| Experimental |      |        |          |       |                               | 1st quintile | 2nd quintile |  97 |     1.709 | 0.091 | 0.907 | ns           | 132 |      1.319 | 0.190 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 1st quintile | 3rd quintile |  97 |     0.152 | 0.879 | 1.000 | ns           | 132 |      0.534 | 0.594 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 1st quintile | 4th quintile |  97 |     0.553 | 0.581 | 1.000 | ns           | 132 |      0.195 | 0.846 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 1st quintile | 5th quintile |  97 |    -0.153 | 0.879 | 1.000 | ns           | 132 |      0.152 | 0.879 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 2nd quintile | 3rd quintile |  97 |    -2.059 | 0.042 | 0.422 | ns           | 132 |     -0.915 | 0.362 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 2nd quintile | 4th quintile |  97 |    -0.998 | 0.321 | 1.000 | ns           | 132 |     -1.085 | 0.280 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 2nd quintile | 5th quintile |  97 |    -1.617 | 0.109 | 1.000 | ns           | 132 |     -0.892 | 0.374 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 3rd quintile | 4th quintile |  97 |     0.729 | 0.468 | 1.000 | ns           | 132 |     -0.436 | 0.664 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 3rd quintile | 5th quintile |  97 |    -0.443 | 0.659 | 1.000 | ns           | 132 |     -0.386 | 0.700 |  1.000 | ns            |
| Experimental |      |        |          |       |                               | 4th quintile | 5th quintile |  97 |    -1.086 | 0.280 | 1.000 | ns           | 132 |     -0.017 | 0.986 |  1.000 | ns            |
|              |      |        |          |       | 1st quintile                  | Controle     | Experimental |  97 |     0.582 | 0.562 | 0.562 | ns           | 132 |      0.490 | 0.625 |  0.625 | ns            |
|              |      |        |          |       | 2nd quintile                  | Controle     | Experimental |  97 |     0.159 | 0.874 | 0.874 | ns           | 132 |      0.711 | 0.478 |  0.478 | ns            |
|              |      |        |          |       | 3rd quintile                  | Controle     | Experimental |  97 |    -2.721 | 0.008 | 0.008 | \*\*         | 132 |     -0.413 | 0.680 |  0.680 | ns            |
|              |      |        |          |       | 4th quintile                  | Controle     | Experimental |  97 |     0.888 | 0.377 | 0.377 | ns           | 132 |      0.143 | 0.887 |  0.887 | ns            |
|              |      |        |          |       | 5th quintile                  | Controle     | Experimental |  97 |    -2.732 | 0.007 | 0.007 | \*\*         | 132 |     -1.238 | 0.218 |  0.218 | ns            |

## EMMS Table Comparison

``` r
df <- do.call(plyr::rbind.fill, lemms)
df[["N-N'"]] <- df[["N"]] - df[["N'"]]
df <- df[,c(names(lfatores), names(df)[!names(df) %in% names(lfatores)])]
```

| grupo        | Sexo | Zona   | Cor.Raca | Serie | TFL.corretas.per.min.quintile |   N | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |  N’ | M (pre)’ | SE (pre)’ | M (unadj)’ | SE (unadj)’ | M (adj)’ | SE (adj)’ | N-N’ |
|:-------------|:-----|:-------|:---------|:------|:------------------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|----:|---------:|----------:|-----------:|------------:|---------:|----------:|-----:|
| Controle     |      |        |          |       |                               |  33 |  88.061 |    4.258 |   139.909 |      3.605 | 141.353 |    2.989 |  90 |   90.222 |     2.600 |    113.022 |       3.024 |  113.479 |     2.563 |  -57 |
| Experimental |      |        |          |       |                               |  19 |  94.263 |    4.550 |   138.632 |      5.740 | 136.124 |    3.949 |  53 |   92.170 |     2.691 |    113.660 |       3.769 |  112.885 |     3.341 |  -34 |
| Controle     | F    |        |          |       |                               |  15 |  86.600 |    7.768 |   112.000 |      4.136 | 115.427 |    1.877 |  36 |   92.333 |     4.096 |    120.056 |       4.439 |  119.217 |     3.989 |  -21 |
| Controle     | M    |        |          |       |                               |  17 |  97.706 |    5.989 |   111.706 |      4.312 | 108.597 |    1.762 |  54 |   88.815 |     3.381 |    108.333 |       3.984 |  109.618 |     3.261 |  -37 |
| Experimental | F    |        |          |       |                               |   8 |  99.875 |    4.879 |   125.000 |      5.155 | 120.615 |    2.568 |  22 |   97.682 |     3.682 |    123.955 |       5.482 |  119.889 |     5.135 |  -14 |
| Experimental | M    |        |          |       |                               |  19 |  89.158 |    5.059 |   104.053 |      3.391 | 105.975 |    1.660 |  31 |   88.258 |     3.673 |    106.355 |       4.784 |  107.975 |     4.303 |  -12 |
| Controle     |      | Rural  |          |       |                               |  54 |  91.111 |    3.608 |   101.259 |      2.955 | 101.490 |    2.205 |  58 |   90.276 |     3.514 |    104.914 |       3.334 |  105.138 |     2.887 |   -4 |
| Controle     |      | Urbana |          |       |                               |   7 |  92.286 |    9.097 |   142.429 |     10.792 | 141.934 |    6.124 |   7 |   92.286 |     9.097 |    142.429 |      10.792 |  141.560 |     8.311 |    0 |
| Experimental |      | Rural  |          |       |                               |  32 |  89.969 |    3.268 |   103.594 |      3.038 | 104.530 |    2.866 |  35 |   89.114 |     3.232 |    108.371 |       3.954 |  109.228 |     3.719 |   -3 |
| Experimental |      | Urbana |          |       |                               |   6 | 102.000 |    6.713 |   132.000 |     13.849 | 125.503 |    6.656 |   6 |  102.000 |     6.713 |    132.000 |      13.849 |  125.846 |     9.034 |    0 |
| Controle     |      |        | Branca   |       |                               |  12 | 103.667 |    4.606 |   114.000 |      5.510 | 106.812 |    4.292 |  12 |  103.667 |     4.606 |    114.000 |       5.510 |  106.654 |     5.277 |    0 |
| Controle     |      |        | Parda    |       |                               |  38 |  90.974 |    3.848 |    96.000 |      3.471 |  97.427 |    2.371 |  41 |   90.756 |     3.813 |     99.951 |       4.090 |  101.406 |     2.809 |   -3 |
| Experimental |      |        | Branca   |       |                               |   5 | 103.400 |    5.591 |   125.400 |      8.310 | 118.393 |    6.571 |   5 |  103.400 |     5.591 |    125.400 |       8.310 |  118.236 |     8.084 |    0 |
| Experimental |      |        | Indígena |       |                               |   8 |  92.750 |    7.260 |   105.875 |      7.492 | 106.096 |    5.154 |   8 |   92.750 |     7.260 |    105.875 |       7.492 |  105.971 |     6.343 |    0 |
| Experimental |      |        | Parda    |       |                               |  16 |  87.062 |    5.173 |    99.500 |      4.798 | 103.581 |    3.676 |  16 |   87.062 |     5.173 |     99.500 |       4.798 |  103.472 |     4.519 |    0 |
| Controle     |      |        |          | 6 ano |                               |   7 |  85.429 |   12.656 |   125.714 |      8.662 | 128.623 |    3.234 |  31 |   87.645 |     4.661 |    101.645 |       4.675 |  103.718 |     4.264 |  -24 |
| Controle     |      |        |          | 7 ano |                               |   2 |  77.000 |   20.000 |   111.500 |     13.500 | 120.090 |    6.084 |  19 |   93.895 |     5.668 |    112.053 |       6.218 |  110.198 |     5.440 |  -17 |
| Controle     |      |        |          | 8 ano |                               |   8 |  85.125 |    8.649 |   144.625 |      6.732 | 147.738 |    3.029 |  15 |   88.467 |     6.524 |    123.067 |       8.332 |  124.624 |     6.119 |   -7 |
| Controle     |      |        |          | 9 ano |                               |  10 |  87.900 |    6.747 |   145.000 |      5.615 | 146.243 |    2.698 |  25 |   91.680 |     4.733 |    121.840 |       5.418 |  121.378 |     4.737 |  -15 |
| Experimental |      |        |          | 6 ano |                               |   2 |  82.000 |   14.000 |   147.000 |      3.000 | 152.220 |    6.049 |  19 |   88.368 |     4.042 |    115.632 |       7.869 |  117.250 |     5.438 |  -17 |
| Experimental |      |        |          | 7 ano |                               |   3 |  99.333 |    8.950 |   123.000 |      8.021 | 116.536 |    4.961 |  11 |   92.545 |     5.443 |    106.636 |       5.568 |  105.630 |     7.143 |   -8 |
| Experimental |      |        |          | 8 ano |                               |   4 | 103.000 |    6.403 |   143.750 |      7.962 | 134.814 |    4.347 |  13 |   91.000 |     6.690 |    111.769 |       8.089 |  111.734 |     6.569 |   -9 |
| Experimental |      |        |          | 9 ano |                               |   3 | 104.667 |    7.446 |   142.667 |      3.667 | 132.607 |    5.015 |  10 |  100.500 |     5.903 |    120.100 |       6.036 |  114.095 |     7.537 |   -7 |
| Controle     |      |        |          |       | 1st quintile                  |  11 |  50.000 |    3.382 |    82.727 |      5.360 | 114.071 |    8.208 |  17 |   52.118 |     2.522 |     96.647 |       7.129 |  125.803 |    13.202 |   -6 |
| Controle     |      |        |          |       | 2nd quintile                  |  11 |  77.000 |    1.763 |    86.818 |      2.866 |  97.765 |    4.558 |  15 |   77.800 |     1.395 |     99.267 |       5.930 |  109.137 |     7.411 |   -4 |
| Controle     |      |        |          |       | 3rd quintile                  |  11 |  90.636 |    0.704 |    94.091 |      3.288 |  94.736 |    3.785 |  18 |   89.333 |     0.672 |    107.222 |       5.850 |  108.432 |     5.714 |   -7 |
| Controle     |      |        |          |       | 4th quintile                  |  17 | 101.588 |    1.064 |   116.882 |      3.662 | 109.254 |    3.521 |  22 |  102.182 |     0.948 |    126.364 |       4.833 |  117.925 |     6.184 |   -5 |
| Controle     |      |        |          |       | 5th quintile                  |  14 | 124.214 |    3.285 |   121.929 |      4.734 |  97.208 |    6.652 |  18 |  122.833 |     2.644 |    129.444 |       6.760 |  105.498 |    11.262 |   -4 |
| Experimental |      |        |          |       | 1st quintile                  |   5 |  57.800 |    3.367 |    84.600 |      6.392 | 110.052 |    8.152 |   6 |   58.167 |     2.774 |     95.500 |      12.085 |  120.114 |    14.035 |   -1 |
| Experimental |      |        |          |       | 2nd quintile                  |  10 |  77.600 |    1.360 |    86.400 |      2.876 |  96.894 |    4.657 |  11 |   76.727 |     1.508 |     91.636 |       5.847 |  102.312 |     8.473 |   -1 |
| Experimental |      |        |          |       | 3rd quintile                  |  13 |  90.538 |    0.773 |   108.000 |      3.111 | 108.719 |    3.483 |  15 |   90.867 |     0.710 |    111.867 |       3.764 |  111.925 |     6.236 |   -2 |
| Experimental |      |        |          |       | 4th quintile                  |   7 | 100.429 |    2.114 |   111.000 |      5.345 | 104.248 |    4.994 |   9 |  101.000 |     2.028 |    124.111 |      10.148 |  116.560 |     8.614 |   -2 |
| Experimental |      |        |          |       | 5th quintile                  |   9 | 119.556 |    2.646 |   133.222 |      3.589 | 112.021 |    6.463 |  12 |  118.333 |     2.076 |    137.333 |       6.483 |  116.766 |    10.875 |   -3 |
