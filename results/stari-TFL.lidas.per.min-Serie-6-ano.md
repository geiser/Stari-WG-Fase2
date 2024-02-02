ANCOVA in Palavras Lidas (1 Min) (Palavras Lidas (1 Min))
================
Geiser C. Challco <geiser@alumni.usp.br>

- [Descriptive Statistics of Initial
  Data](#descriptive-statistics-of-initial-data)
- [Checking of Assumptions](#checking-of-assumptions)
  - [Assumption: Normality distribution of
    data](#assumption-normality-distribution-of-data)
  - [Assumption: Homogeneity of data
    distribution](#assumption-homogeneity-of-data-distribution)
- [Computation of ANCOVA test and Pairwise
  Comparison](#computation-of-ancova-test-and-pairwise-comparison)
  - [ANCOVA tests for one factor](#ancova-tests-for-one-factor)
  - [ANCOVA tests for two factors](#ancova-tests-for-two-factors)
  - [Pairwise comparisons for one factor:
    **grupo**](#pairwise-comparisons-for-one-factor-grupo)
  - [Pairwise comparisons for two
    factors](#pairwise-comparisons-for-two-factors)
    - [factores: **grupo:Sexo**](#factores-gruposexo)
    - [factores: **grupo:Zona**](#factores-grupozona)
    - [factores: **grupo:Cor.Raca**](#factores-grupocorraca)
    - [factores:
      **grupo:TFL.lidas.per.min.quintile**](#factores-grupotfllidasperminquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Palavras Lidas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Lidas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | TFL.lidas.per.min.quintile | variable              |   n |    mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------------------|:----------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |                            | TFL.lidas.per.min.pre |  16 |  95.188 |   98.5 |  40 | 139 | 23.766 |  5.942 |  12.664 | 13.75 |
| Controle     | M    |        |          |                            | TFL.lidas.per.min.pre |  15 |  83.133 |   86.0 |  27 | 141 | 26.822 |  6.925 |  14.853 | 29.00 |
| Experimental | F    |        |          |                            | TFL.lidas.per.min.pre |  11 |  92.000 |   95.0 |  60 | 117 | 18.374 |  5.540 |  12.344 | 20.00 |
| Experimental | M    |        |          |                            | TFL.lidas.per.min.pre |   8 |  85.750 |   85.0 |  59 | 114 | 17.572 |  6.213 |  14.691 | 19.75 |
| Controle     | F    |        |          |                            | TFL.lidas.per.min.pos |  16 | 115.812 |  117.0 |  88 | 158 | 23.025 |  5.756 |  12.269 | 39.75 |
| Controle     | M    |        |          |                            | TFL.lidas.per.min.pos |  15 |  89.333 |   87.0 |  43 | 117 | 21.222 |  5.480 |  11.752 | 29.50 |
| Experimental | F    |        |          |                            | TFL.lidas.per.min.pos |  11 | 126.364 |  117.0 |  82 | 195 | 32.971 |  9.941 |  22.150 | 48.50 |
| Experimental | M    |        |          |                            | TFL.lidas.per.min.pos |   8 | 103.750 |   95.0 |  70 | 184 | 34.599 | 12.232 |  28.925 | 14.00 |
| Controle     |      | Rural  |          |                            | TFL.lidas.per.min.pre |  25 |  88.200 |   93.0 |  27 | 141 | 25.221 |  5.044 |  10.411 | 25.00 |
| Controle     |      | Urbana |          |                            | TFL.lidas.per.min.pre |   3 |  78.333 |   88.0 |  48 |  99 | 26.839 | 15.496 |  66.672 | 25.50 |
| Controle     |      |        |          |                            | TFL.lidas.per.min.pre |   3 | 110.000 |   99.0 |  92 | 139 | 25.357 | 14.640 |  62.991 | 23.50 |
| Experimental |      | Rural  |          |                            | TFL.lidas.per.min.pre |  14 |  87.929 |   89.0 |  59 | 117 | 19.629 |  5.246 |  11.334 | 27.25 |
| Experimental |      | Urbana |          |                            | TFL.lidas.per.min.pre |   4 |  97.750 |   95.5 |  90 | 110 |  8.578 |  4.289 |  13.650 |  5.75 |
| Experimental |      |        |          |                            | TFL.lidas.per.min.pre |   1 |  76.000 |   76.0 |  76 |  76 |        |        |         |  0.00 |
| Controle     |      | Rural  |          |                            | TFL.lidas.per.min.pos |  25 |  98.200 |   93.0 |  43 | 135 | 22.761 |  4.552 |   9.395 | 30.00 |
| Controle     |      | Urbana |          |                            | TFL.lidas.per.min.pos |   3 | 124.667 |  135.0 |  88 | 151 | 32.747 | 18.906 |  81.347 | 31.50 |
| Controle     |      |        |          |                            | TFL.lidas.per.min.pos |   3 | 121.333 |  110.0 |  96 | 158 | 32.517 | 18.774 |  80.776 | 31.00 |
| Experimental |      | Rural  |          |                            | TFL.lidas.per.min.pos |  14 | 112.714 |  102.0 |  70 | 184 | 31.094 |  8.310 |  17.953 | 38.50 |
| Experimental |      | Urbana |          |                            | TFL.lidas.per.min.pos |   4 | 140.000 |  133.0 |  99 | 195 | 42.630 | 21.315 |  67.834 | 51.00 |
| Experimental |      |        |          |                            | TFL.lidas.per.min.pos |   1 |  82.000 |   82.0 |  82 |  82 |        |        |         |  0.00 |
| Controle     |      |        | Branca   |                            | TFL.lidas.per.min.pre |   5 | 103.600 |   93.0 |  90 | 141 | 21.408 |  9.574 |  26.581 | 10.00 |
| Controle     |      |        | Parda    |                            | TFL.lidas.per.min.pre |  17 |  88.765 |   95.0 |  27 | 117 | 23.631 |  5.731 |  12.150 | 26.00 |
| Controle     |      |        |          |                            | TFL.lidas.per.min.pre |   9 |  82.556 |   88.0 |  40 | 139 | 30.546 | 10.182 |  23.479 | 41.00 |
| Experimental |      |        | Amarela  |                            | TFL.lidas.per.min.pre |   1 |  76.000 |   76.0 |  76 |  76 |        |        |         |  0.00 |
| Experimental |      |        | Branca   |                            | TFL.lidas.per.min.pre |   1 |  96.000 |   96.0 |  96 |  96 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |                            | TFL.lidas.per.min.pre |   1 | 115.000 |  115.0 | 115 | 115 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |                            | TFL.lidas.per.min.pre |   7 |  93.143 |   90.0 |  80 | 117 | 12.549 |  4.743 |  11.606 | 12.50 |
| Experimental |      |        |          |                            | TFL.lidas.per.min.pre |   9 |  84.333 |   90.0 |  59 | 114 | 21.113 |  7.038 |  16.229 | 27.00 |
| Controle     |      |        | Branca   |                            | TFL.lidas.per.min.pos |   5 | 109.600 |  114.0 |  87 | 135 | 18.716 |  8.370 |  23.239 | 20.00 |
| Controle     |      |        | Parda    |                            | TFL.lidas.per.min.pos |  17 |  96.118 |   91.0 |  43 | 151 | 25.896 |  6.281 |  13.315 | 32.00 |
| Controle     |      |        |          |                            | TFL.lidas.per.min.pos |   9 | 112.333 |  110.0 |  76 | 158 | 26.805 |  8.935 |  20.604 | 47.00 |
| Experimental |      |        | Amarela  |                            | TFL.lidas.per.min.pos |   1 |  82.000 |   82.0 |  82 |  82 |        |        |         |  0.00 |
| Experimental |      |        | Branca   |                            | TFL.lidas.per.min.pos |   1 | 151.000 |  151.0 | 151 | 151 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |                            | TFL.lidas.per.min.pos |   1 | 139.000 |  139.0 | 139 | 139 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |                            | TFL.lidas.per.min.pos |   7 |  98.143 |   99.0 |  70 | 117 | 14.588 |  5.514 |  13.492 | 10.50 |
| Experimental |      |        |          |                            | TFL.lidas.per.min.pos |   9 | 129.000 |  115.0 |  80 | 195 | 41.370 | 13.790 |  31.800 | 52.00 |
| Controle     |      |        |          | 1st quintile               | TFL.lidas.per.min.pre |   6 |  49.000 |   51.0 |  27 |  67 | 14.114 |  5.762 |  14.812 | 15.00 |
| Controle     |      |        |          | 2nd quintile               | TFL.lidas.per.min.pre |   4 |  78.250 |   79.5 |  68 |  86 |  7.762 |  3.881 |  12.351 |  8.25 |
| Controle     |      |        |          | 3rd quintile               | TFL.lidas.per.min.pre |   8 |  91.500 |   92.0 |  88 |  95 |  2.619 |  0.926 |   2.189 |  3.75 |
| Controle     |      |        |          | 4th quintile               | TFL.lidas.per.min.pre |   9 | 102.333 |  101.0 |  98 | 110 |  4.637 |  1.546 |   3.564 |  4.00 |
| Controle     |      |        |          | 5th quintile               | TFL.lidas.per.min.pre |   4 | 127.500 |  128.0 | 113 | 141 | 14.549 |  7.274 |  23.150 | 23.50 |
| Experimental |      |        |          | 1st quintile               | TFL.lidas.per.min.pre |   2 |  59.500 |   59.5 |  59 |  60 |  0.707 |  0.500 |   6.353 |  0.50 |
| Experimental |      |        |          | 2nd quintile               | TFL.lidas.per.min.pre |   5 |  74.800 |   76.0 |  68 |  82 |  6.573 |  2.939 |   8.161 | 12.00 |
| Experimental |      |        |          | 3rd quintile               | TFL.lidas.per.min.pre |   5 |  91.600 |   90.0 |  88 |  95 |  3.209 |  1.435 |   3.985 |  5.00 |
| Experimental |      |        |          | 4th quintile               | TFL.lidas.per.min.pre |   4 | 100.250 |   97.5 |  96 | 110 |  6.652 |  3.326 |  10.585 |  5.75 |
| Experimental |      |        |          | 5th quintile               | TFL.lidas.per.min.pre |   3 | 115.333 |  115.0 | 114 | 117 |  1.528 |  0.882 |   3.795 |  1.50 |
| Controle     |      |        |          | 1st quintile               | TFL.lidas.per.min.pos |   6 |  74.167 |   72.0 |  43 | 105 | 21.160 |  8.639 |  22.207 | 19.25 |
| Controle     |      |        |          | 2nd quintile               | TFL.lidas.per.min.pos |   4 |  87.750 |   88.5 |  83 |  91 |  3.594 |  1.797 |   5.719 |  4.25 |
| Controle     |      |        |          | 3rd quintile               | TFL.lidas.per.min.pos |   8 | 104.500 |   96.0 |  85 | 135 | 20.887 |  7.385 |  17.462 | 31.50 |
| Controle     |      |        |          | 4th quintile               | TFL.lidas.per.min.pos |   9 | 119.667 |  117.0 |  93 | 151 | 16.830 |  5.610 |  12.937 | 19.00 |
| Controle     |      |        |          | 5th quintile               | TFL.lidas.per.min.pos |   4 | 121.000 |  118.0 |  90 | 158 | 28.024 | 14.012 |  44.592 | 20.00 |
| Experimental |      |        |          | 1st quintile               | TFL.lidas.per.min.pos |   2 | 122.500 |  122.5 |  95 | 150 | 38.891 | 27.500 | 349.421 | 27.50 |
| Experimental |      |        |          | 2nd quintile               | TFL.lidas.per.min.pos |   5 |  94.400 |   82.0 |  70 | 145 | 29.653 | 13.261 |  36.819 | 15.00 |
| Experimental |      |        |          | 3rd quintile               | TFL.lidas.per.min.pos |   5 | 106.800 |  105.0 |  98 | 117 |  8.843 |  3.955 |  10.980 | 16.00 |
| Experimental |      |        |          | 4th quintile               | TFL.lidas.per.min.pos |   4 | 136.750 |  128.5 |  95 | 195 | 45.770 | 22.885 |  72.831 | 58.75 |
| Experimental |      |        |          | 5th quintile               | TFL.lidas.per.min.pos |   3 | 140.667 |  139.0 |  99 | 184 | 42.525 | 24.552 | 105.637 | 42.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                   |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.lidas.per.min.pos |  50 | 0.5992557 |  0.3687810 | NO       | 0.9661723 | Shapiro-Wilk | 0.1610443 | ns       | YES       |
| TFL.lidas.per.min.pos |  46 | 0.7417899 | -0.0809856 | NO       | 0.9378335 | Shapiro-Wilk | 0.0162616 | \*       | NO        |
| TFL.lidas.per.min.pos |  32 | 0.9022302 |  1.0337517 | NO       | 0.9449256 | Shapiro-Wilk | 0.1033582 | ns       | YES       |
| TFL.lidas.per.min.pos |  50 | 0.5386579 | -0.1665219 | NO       | 0.9597209 | Shapiro-Wilk | 0.0865312 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                   | method         | formula                                      |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------------|:---------------|:---------------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`                       |  50 |       3 |      46 | 3.7509965 | 0.0171513 | \*       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`                       |  50 |       3 |      42 | 1.6770000 | 0.1870000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`                       |  46 |       3 |      42 | 2.1397307 | 0.1095324 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`                       |  46 |       3 |      38 | 2.4740000 | 0.0760000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`                   |  32 |       5 |      26 | 0.5843045 | 0.7117551 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`                   |  32 |       2 |      23 | 0.8580000 | 0.4370000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`TFL.lidas.per.min.quintile` |  50 |       9 |      40 | 1.6378492 | 0.1374680 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`TFL.lidas.per.min.quintile` |  50 |       9 |      30 | 3.0590000 | 0.0100000 | \*\*     |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                     | DFn | DFd |       SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------------------|----:|----:|----------:|----------:|-------:|:--------|------:|:-------|
| 1   | TFL.lidas.per.min.pre      |   1 |  47 | 11390.385 | 29914.141 | 17.896 | \<0.001 | 0.276 | \*     |
| 2   | grupo                      |   1 |  47 |  2254.128 | 29914.141 |  3.542 | 0.066   | 0.070 |        |
| 4   | Sexo                       |   1 |  47 |  4790.305 | 27377.963 |  8.224 | 0.006   | 0.149 | \*     |
| 6   | Zona                       |   1 |  43 |  5057.564 | 26272.257 |  8.278 | 0.006   | 0.161 | \*     |
| 8   | Cor.Raca                   |   3 |  27 |  1052.431 |  9202.773 |  1.029 | 0.395   | 0.103 |        |
| 10  | TFL.lidas.per.min.quintile |   4 |  44 |  2180.383 | 29987.885 |  0.800 | 0.532   | 0.068 |        |

## ANCOVA tests for two factors

|     | Effect                           | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------------------------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| 1   | TFL.lidas.per.min.pre            |   1 |  45 | 7999.346 | 25508.470 | 14.112 | \<0.001 | 0.239 | \*     |
| 4   | grupo:Sexo                       |   1 |  45 |    0.781 | 25508.470 |  0.001 | 0.971   | 0.000 |        |
| 8   | grupo:Zona                       |   1 |  41 |  178.522 | 24318.392 |  0.301 | 0.586   | 0.007 |        |
| 12  | grupo:Cor.Raca                   |   1 |  25 | 1627.499 |  7375.875 |  5.516 | 0.027   | 0.181 | \*     |
| 16  | grupo:TFL.lidas.per.min.quintile |   4 |  39 | 2064.316 | 24979.819 |  0.806 | 0.529   | 0.076 |        |

## Pairwise comparisons for one factor: **grupo**

| var                   | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     |  31 |  89.355 |    4.599 |   103.000 |      4.601 | 103.003 |    4.531 |
| TFL.lidas.per.min.pos | Experimental |  19 |  89.368 |    4.089 |   116.842 |      7.951 | 116.836 |    5.788 |

| .y.                   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min.pos | Controle | Experimental |  -13.833 |  -28.620 |     0.954 | 7.350 |    -1.882 | 0.066 | 0.066 | ns           |
| TFL.lidas.per.min.pre | Controle | Experimental |   -0.014 |  -13.486 |    13.459 | 6.701 |    -0.002 | 0.998 | 0.998 | ns           |

| .y.               | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min | Controle     | pre    | pos    |  -13.645 |  -26.934 |    -0.356 | 6.695 |    -2.038 | 0.044 | 0.044 | \*           |
| TFL.lidas.per.min | Experimental | pre    | pos    |  -27.474 |  -44.448 |   -10.499 | 8.551 |    -3.213 | 0.002 | 0.002 | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                   | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | F    |  16 |  95.188 |    5.942 |   115.812 |      5.756 | 112.454 |    6.019 |
| TFL.lidas.per.min.pos | Controle     | M    |  15 |  83.133 |    6.925 |    89.333 |      5.480 |  92.922 |    6.221 |
| TFL.lidas.per.min.pos | Experimental | F    |  11 |  92.000 |    5.540 |   126.364 |      9.941 | 124.842 |    7.190 |
| TFL.lidas.per.min.pos | Experimental | M    |   8 |  85.750 |    6.213 |   103.750 |     12.232 | 105.831 |    8.436 |

| .y.                   | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min.pos |              | F    | Controle | Experimental |  -12.388 |  -31.196 |     6.420 |  9.338 |    -1.327 | 0.191 | 0.191 | ns           |
| TFL.lidas.per.min.pos |              | M    | Controle | Experimental |  -12.909 |  -33.918 |     8.101 | 10.431 |    -1.238 | 0.222 | 0.222 | ns           |
| TFL.lidas.per.min.pre |              | F    | Controle | Experimental |    3.188 |  -14.851 |    21.226 |  8.962 |     0.356 | 0.724 | 0.724 | ns           |
| TFL.lidas.per.min.pre |              | M    | Controle | Experimental |   -2.617 |  -22.780 |    17.547 | 10.017 |    -0.261 | 0.795 | 0.795 | ns           |
| TFL.lidas.per.min.pos | Controle     |      | F        | M            |   19.532 |    1.900 |    37.164 |  8.754 |     2.231 | 0.031 | 0.031 | \*           |
| TFL.lidas.per.min.pos | Experimental |      | F        | M            |   19.011 |   -3.354 |    41.377 | 11.104 |     1.712 | 0.094 | 0.094 | ns           |
| TFL.lidas.per.min.pre | Controle     |      | F        | M            |   12.054 |   -4.498 |    28.607 |  8.223 |     1.466 | 0.149 | 0.149 | ns           |
| TFL.lidas.per.min.pre | Experimental |      | F        | M            |    6.250 |  -15.150 |    27.650 | 10.632 |     0.588 | 0.559 | 0.559 | ns           |

| .y.               | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min | Controle     | F    | pre    | pos    |  -20.625 |  -38.193 |    -3.057 |  8.846 |    -2.332 | 0.022 | 0.022 | \*           |
| TFL.lidas.per.min | Controle     | M    | pre    | pos    |   -6.200 |  -24.345 |    11.945 |  9.136 |    -0.679 | 0.499 | 0.499 | ns           |
| TFL.lidas.per.min | Experimental | F    | pre    | pos    |  -34.364 |  -55.552 |   -13.175 | 10.668 |    -3.221 | 0.002 | 0.002 | \*\*         |
| TFL.lidas.per.min | Experimental | M    | pre    | pos    |  -18.000 |  -42.845 |     6.845 | 12.510 |    -1.439 | 0.154 | 0.154 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

| var                   | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | Branca   |   5 | 103.600 |    9.574 |   109.600 |      8.370 | 101.548 |    7.885 |
| TFL.lidas.per.min.pos | Controle     | Parda    |  17 |  88.765 |    5.731 |    96.118 |      6.281 |  98.712 |    4.205 |
| TFL.lidas.per.min.pos | Experimental | Parda    |   7 |  93.143 |    4.743 |    98.143 |      5.514 |  97.595 |    6.493 |

|     | .y.                   | grupo    | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------------|:---------|:---------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 2   | TFL.lidas.per.min.pos |          | Parda    | Controle | Experimental |    1.117 |  -14.835 |    17.068 |  7.745 |     0.144 | 0.887 | 0.887 | ns           |
| 4   | TFL.lidas.per.min.pre |          | Parda    | Controle | Experimental |   -4.378 |  -23.971 |    15.215 |  9.532 |    -0.459 | 0.650 | 0.650 | ns           |
| 5   | TFL.lidas.per.min.pos | Controle |          | Branca   | Parda        |    2.836 |  -15.803 |    21.475 |  9.050 |     0.313 | 0.757 | 0.757 | ns           |
| 7   | TFL.lidas.per.min.pre | Controle |          | Branca   | Parda        |   14.835 |   -7.361 |    37.031 | 10.798 |     1.374 | 0.181 | 0.181 | ns           |

| .y.               | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:------------------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min | Controle     | Branca   | pre    | pos    |   -6.000 |  -33.894 |    21.894 | 13.901 |    -0.432 | 0.668 | 0.668 | ns           |
| TFL.lidas.per.min | Controle     | Parda    | pre    | pos    |   -7.353 |  -22.481 |     7.775 |  7.539 |    -0.975 | 0.334 | 0.334 | ns           |
| TFL.lidas.per.min | Experimental | Parda    | pre    | pos    |   -5.000 |  -28.575 |    18.575 | 11.748 |    -0.426 | 0.672 | 0.672 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:TFL.lidas.per.min.quintile**

| var                   | grupo        | TFL.lidas.per.min.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:---------------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | 1st quintile               |   6 |  49.000 |    5.762 |    74.167 |      8.639 |  58.481 |   20.620 |
| TFL.lidas.per.min.pos | Controle     | 3rd quintile               |   8 |  91.500 |    0.926 |   104.500 |      7.385 | 107.746 |    8.166 |
| TFL.lidas.per.min.pos | Controle     | 4th quintile               |   9 | 102.333 |    1.546 |   119.667 |      5.610 | 127.739 |   11.838 |
| TFL.lidas.per.min.pos | Experimental | 2nd quintile               |   5 |  74.800 |    2.939 |    94.400 |     13.261 |  90.207 |   10.380 |
| TFL.lidas.per.min.pos | Experimental | 3rd quintile               |   5 |  91.600 |    1.435 |   106.800 |      3.955 | 110.091 |    9.897 |

|     | .y.                   | grupo        | TFL.lidas.per.min.quintile | group1       | group2       | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:----|:----------------------|:-------------|:---------------------------|:-------------|:-------------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| 3   | TFL.lidas.per.min.pos |              | 3rd quintile               | Controle     | Experimental |   -2.345 |  -26.067 |    21.378 | 11.562 |    -0.203 | 0.841   | 0.841   | ns           |
| 7   | TFL.lidas.per.min.pre |              | 3rd quintile               | Controle     | Experimental |   -0.100 |   -8.445 |     8.245 |  4.074 |    -0.025 | 0.981   | 0.981   | ns           |
| 10  | TFL.lidas.per.min.pos | Controle     |                            | 1st quintile | 3rd quintile |  -49.265 | -101.152 |     2.621 | 25.288 |    -1.948 | 0.062   | 0.186   | ns           |
| 11  | TFL.lidas.per.min.pos | Controle     |                            | 1st quintile | 4th quintile |  -69.258 | -131.910 |    -6.605 | 30.535 |    -2.268 | 0.032   | 0.095   | ns           |
| 14  | TFL.lidas.per.min.pos | Controle     |                            | 3rd quintile | 4th quintile |  -19.992 |  -43.465 |     3.480 | 11.440 |    -1.748 | 0.092   | 0.276   | ns           |
| 18  | TFL.lidas.per.min.pos | Experimental |                            | 2nd quintile | 3rd quintile |  -19.884 |  -52.046 |    12.278 | 15.675 |    -1.269 | 0.215   | 0.215   | ns           |
| 22  | TFL.lidas.per.min.pre | Controle     |                            | 1st quintile | 3rd quintile |  -42.500 |  -50.406 |   -34.594 |  3.860 |   -11.012 | \<0.001 | \<0.001 | \*\*\*\*     |
| 23  | TFL.lidas.per.min.pre | Controle     |                            | 1st quintile | 4th quintile |  -53.333 |  -61.049 |   -45.618 |  3.766 |   -14.160 | \<0.001 | \<0.001 | \*\*\*\*     |
| 26  | TFL.lidas.per.min.pre | Controle     |                            | 3rd quintile | 4th quintile |  -10.833 |  -17.947 |    -3.720 |  3.473 |    -3.120 | 0.004   | 0.013   | \*           |
| 30  | TFL.lidas.per.min.pre | Experimental |                            | 2nd quintile | 3rd quintile |  -16.800 |  -26.058 |    -7.542 |  4.520 |    -3.717 | \<0.001 | \<0.001 | \*\*\*       |

| .y.               | grupo        | TFL.lidas.per.min.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------|:-------------|:---------------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min | Controle     | 1st quintile               | pre    | pos    |  -25.167 |  -42.665 |    -7.668 | 8.735 |    -2.881 | 0.006 | 0.006 | \*\*         |
| TFL.lidas.per.min | Controle     | 3rd quintile               | pre    | pos    |  -13.000 |  -28.154 |     2.154 | 7.565 |    -1.718 | 0.091 | 0.091 | ns           |
| TFL.lidas.per.min | Controle     | 4th quintile               | pre    | pos    |  -17.333 |  -31.621 |    -3.046 | 7.132 |    -2.430 | 0.018 | 0.018 | \*           |
| TFL.lidas.per.min | Experimental | 2nd quintile               | pre    | pos    |  -19.600 |  -38.769 |    -0.431 | 9.569 |    -2.048 | 0.045 | 0.045 | \*           |
| TFL.lidas.per.min | Experimental | 3rd quintile               | pre    | pos    |  -15.200 |  -34.369 |     3.969 | 9.569 |    -1.588 | 0.118 | 0.118 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-Serie-6-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
