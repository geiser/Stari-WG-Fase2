ANCOVA in Palavras Corretas (1 Min) (Palavras Corretas (1 Min))
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
      **grupo:TFL.corretas.per.min.quintile**](#factores-grupotflcorretasperminquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | TFL.corretas.per.min.quintile | variable                 |   n |    mean | median | min | max |     sd |     se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------------------------------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|-------:|------:|
| Controle     | F    |        |          |                               | TFL.corretas.per.min.pre |  36 |  92.333 |   95.5 |  39 | 154 | 24.576 |  4.096 |  8.315 | 26.50 |
| Controle     | M    |        |          |                               | TFL.corretas.per.min.pre |  54 |  88.815 |   89.0 |  23 | 137 | 24.848 |  3.381 |  6.782 | 30.00 |
| Experimental | F    |        |          |                               | TFL.corretas.per.min.pre |  22 |  97.682 |   95.0 |  60 | 132 | 17.269 |  3.682 |  7.657 | 22.25 |
| Experimental | M    |        |          |                               | TFL.corretas.per.min.pre |  31 |  88.258 |   90.0 |  50 | 134 | 20.452 |  3.673 |  7.502 | 19.50 |
| Controle     | F    |        |          |                               | TFL.corretas.per.min.pos |  36 | 120.056 |  118.0 |  85 | 184 | 26.635 |  4.439 |  9.012 | 39.50 |
| Controle     | M    |        |          |                               | TFL.corretas.per.min.pos |  54 | 108.333 |  109.0 |  42 | 176 | 29.277 |  3.984 |  7.991 | 43.00 |
| Experimental | F    |        |          |                               | TFL.corretas.per.min.pos |  22 | 123.955 |  115.5 |  81 | 190 | 25.712 |  5.482 | 11.400 | 37.75 |
| Experimental | M    |        |          |                               | TFL.corretas.per.min.pos |  31 | 106.355 |   99.0 |  66 | 184 | 26.635 |  4.784 |  9.770 | 26.50 |
| Controle     |      | Rural  |          |                               | TFL.corretas.per.min.pre |  58 |  90.276 |   92.0 |  23 | 154 | 26.761 |  3.514 |  7.037 | 34.50 |
| Controle     |      | Urbana |          |                               | TFL.corretas.per.min.pre |   7 |  92.286 |   98.0 |  47 | 123 | 24.067 |  9.097 | 22.259 | 19.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pre |  25 |  89.520 |   87.0 |  52 | 137 | 20.199 |  4.040 |  8.338 | 24.00 |
| Experimental |      | Rural  |          |                               | TFL.corretas.per.min.pre |  35 |  89.114 |   90.0 |  51 | 134 | 19.123 |  3.232 |  6.569 | 19.50 |
| Experimental |      | Urbana |          |                               | TFL.corretas.per.min.pre |   6 | 102.000 |   95.0 |  90 | 132 | 16.444 |  6.713 | 17.257 | 15.50 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pre |  12 |  96.167 |   97.5 |  50 | 119 | 21.468 |  6.197 | 13.640 | 31.00 |
| Controle     |      | Rural  |          |                               | TFL.corretas.per.min.pos |  58 | 104.914 |  105.0 |  42 | 184 | 25.393 |  3.334 |  6.677 | 32.50 |
| Controle     |      | Urbana |          |                               | TFL.corretas.per.min.pos |   7 | 142.429 |  149.0 |  87 | 176 | 28.553 | 10.792 | 26.407 | 22.50 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pos |  25 | 123.600 |  130.0 |  74 | 176 | 28.076 |  5.615 | 11.589 | 41.00 |
| Experimental |      | Rural  |          |                               | TFL.corretas.per.min.pos |  35 | 108.371 |  104.0 |  70 | 184 | 23.394 |  3.954 |  8.036 | 21.50 |
| Experimental |      | Urbana |          |                               | TFL.corretas.per.min.pos |   6 | 132.000 |  122.0 |  94 | 190 | 33.923 | 13.849 | 35.600 | 30.50 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pos |  12 | 119.917 |  132.0 |  66 | 166 | 32.084 |  9.262 | 20.385 | 50.25 |
| Controle     |      |        | Branca   |                               | TFL.corretas.per.min.pre |  12 | 103.667 |  102.5 |  83 | 137 | 15.956 |  4.606 | 10.138 | 24.25 |
| Controle     |      |        | Indígena |                               | TFL.corretas.per.min.pre |   3 | 114.000 |   99.0 |  89 | 154 | 35.000 | 20.207 | 86.945 | 32.50 |
| Controle     |      |        | Parda    |                               | TFL.corretas.per.min.pre |  41 |  90.756 |   93.0 |  23 | 134 | 24.414 |  3.813 |  7.706 | 33.00 |
| Controle     |      |        | Preta    |                               | TFL.corretas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |        |  0.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pre |  33 |  82.242 |   84.0 |  39 | 137 | 24.357 |  4.240 |  8.637 | 42.00 |
| Experimental |      |        | Amarela  |                               | TFL.corretas.per.min.pre |   1 |  76.000 |   76.0 |  76 |  76 |        |        |        |  0.00 |
| Experimental |      |        | Branca   |                               | TFL.corretas.per.min.pre |   5 | 103.400 |   96.0 |  92 | 117 | 12.502 |  5.591 | 15.523 | 22.00 |
| Experimental |      |        | Indígena |                               | TFL.corretas.per.min.pre |   8 |  92.750 |   96.0 |  50 | 113 | 20.534 |  7.260 | 17.167 | 18.25 |
| Experimental |      |        | Parda    |                               | TFL.corretas.per.min.pre |  16 |  87.062 |   83.0 |  51 | 134 | 20.693 |  5.173 | 11.026 | 17.50 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pre |  23 |  93.783 |   92.0 |  57 | 132 | 19.751 |  4.118 |  8.541 | 25.00 |
| Controle     |      |        | Branca   |                               | TFL.corretas.per.min.pos |  12 | 114.000 |  114.5 |  83 | 150 | 19.088 |  5.510 | 12.128 | 18.25 |
| Controle     |      |        | Indígena |                               | TFL.corretas.per.min.pos |   3 | 116.667 |  115.0 |  88 | 147 | 29.535 | 17.052 | 73.370 | 29.50 |
| Controle     |      |        | Parda    |                               | TFL.corretas.per.min.pos |  41 |  99.951 |   93.0 |  42 | 184 | 26.189 |  4.090 |  8.266 | 30.00 |
| Controle     |      |        | Preta    |                               | TFL.corretas.per.min.pos |   1 | 118.000 |  118.0 | 118 | 118 |        |        |        |  0.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pos |  33 | 128.424 |  135.0 |  74 | 176 | 28.025 |  4.878 |  9.937 | 43.00 |
| Experimental |      |        | Amarela  |                               | TFL.corretas.per.min.pos |   1 |  81.000 |   81.0 |  81 |  81 |        |        |        |  0.00 |
| Experimental |      |        | Branca   |                               | TFL.corretas.per.min.pos |   5 | 125.400 |  121.0 | 108 | 150 | 18.582 |  8.310 | 23.073 | 30.00 |
| Experimental |      |        | Indígena |                               | TFL.corretas.per.min.pos |   8 | 105.875 |  111.5 |  66 | 137 | 21.189 |  7.492 | 17.715 | 16.75 |
| Experimental |      |        | Parda    |                               | TFL.corretas.per.min.pos |  16 |  99.500 |   96.5 |  70 | 144 | 19.190 |  4.798 | 10.226 | 12.00 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pos |  23 | 125.087 |  129.0 |  79 | 190 | 30.639 |  6.389 | 13.249 | 45.50 |
| Controle     |      |        |          | 1st quintile                  | TFL.corretas.per.min.pre |  17 |  52.118 |   53.0 |  23 |  67 | 10.398 |  2.522 |  5.346 |  9.00 |
| Controle     |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pre |  15 |  77.800 |   80.0 |  68 |  84 |  5.401 |  1.395 |  2.991 |  6.00 |
| Controle     |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pre |  18 |  89.333 |   89.0 |  85 |  94 |  2.849 |  0.672 |  1.417 |  5.00 |
| Controle     |      |        |          | 4th quintile                  | TFL.corretas.per.min.pre |  22 | 102.182 |  101.5 |  97 | 110 |  4.447 |  0.948 |  1.972 |  6.50 |
| Controle     |      |        |          | 5th quintile                  | TFL.corretas.per.min.pre |  18 | 122.833 |  119.0 | 112 | 154 | 11.216 |  2.644 |  5.577 | 13.00 |
| Experimental |      |        |          | 1st quintile                  | TFL.corretas.per.min.pre |   6 |  58.167 |   58.5 |  50 |  66 |  6.795 |  2.774 |  7.131 | 11.25 |
| Experimental |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pre |  11 |  76.727 |   78.0 |  68 |  84 |  5.002 |  1.508 |  3.360 |  4.00 |
| Experimental |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pre |  15 |  90.867 |   92.0 |  85 |  94 |  2.748 |  0.710 |  1.522 |  3.50 |
| Experimental |      |        |          | 4th quintile                  | TFL.corretas.per.min.pre |   9 | 101.000 |   98.0 |  95 | 110 |  6.083 |  2.028 |  4.676 | 11.00 |
| Experimental |      |        |          | 5th quintile                  | TFL.corretas.per.min.pre |  12 | 118.333 |  116.5 | 112 | 134 |  7.190 |  2.076 |  4.568 |  3.00 |
| Controle     |      |        |          | 1st quintile                  | TFL.corretas.per.min.pos |  17 |  96.647 |   91.0 |  42 | 148 | 29.392 |  7.129 | 15.112 | 41.00 |
| Controle     |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pos |  15 |  99.267 |   89.0 |  65 | 139 | 22.967 |  5.930 | 12.719 | 28.00 |
| Controle     |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pos |  18 | 107.222 |  100.5 |  68 | 150 | 24.821 |  5.850 | 12.343 | 45.75 |
| Controle     |      |        |          | 4th quintile                  | TFL.corretas.per.min.pos |  22 | 126.364 |  120.0 |  90 | 171 | 22.671 |  4.833 | 10.052 | 28.75 |
| Controle     |      |        |          | 5th quintile                  | TFL.corretas.per.min.pos |  18 | 129.444 |  124.0 |  87 | 184 | 28.679 |  6.760 | 14.262 | 31.75 |
| Experimental |      |        |          | 1st quintile                  | TFL.corretas.per.min.pos |   6 |  95.500 |   92.5 |  66 | 150 | 29.602 | 12.085 | 31.066 | 20.25 |
| Experimental |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pos |  11 |  91.636 |   88.0 |  70 | 144 | 19.392 |  5.847 | 13.028 | 13.50 |
| Experimental |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pos |  15 | 111.867 |  114.0 |  93 | 139 | 14.579 |  3.764 |  8.074 | 15.00 |
| Experimental |      |        |          | 4th quintile                  | TFL.corretas.per.min.pos |   9 | 124.111 |  112.0 |  94 | 190 | 30.444 | 10.148 | 23.402 | 33.00 |
| Experimental |      |        |          | 5th quintile                  | TFL.corretas.per.min.pos |  12 | 137.333 |  135.5 |  99 | 184 | 22.459 |  6.483 | 14.270 | 18.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |  skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:-------------------------|----:|----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos | 143 | 0.7064414 | -0.1847531 | NO       |  11.13508 | D’Agostino | 0.0038199 | \*       | QQ        |
| TFL.corretas.per.min.pos | 106 | 1.1094241 |  1.2425624 | NO       |  22.96905 | D’Agostino | 0.0000103 | \*\*\*   | QQ        |
| TFL.corretas.per.min.pos |  87 | 1.1403893 |  2.1851035 | NO       |  24.35781 | D’Agostino | 0.0000051 | \*\*\*\* | NO        |
| TFL.corretas.per.min.pos | 143 | 0.7162772 | -0.2270789 | NO       |  11.44766 | D’Agostino | 0.0032672 | \*       | QQ        |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                                         |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:------------------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`                          | 143 |       3 |     139 | 1.7713509 | 0.1554672 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`                          | 143 |       3 |     135 | 1.3810000 | 0.2510000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`                          | 106 |       3 |     102 | 0.8848717 | 0.4516597 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`                          | 106 |       3 |      98 | 1.1400000 | 0.3370000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`                      |  87 |       7 |      79 | 0.6996289 | 0.6721865 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`                      |  87 |       5 |      73 | 0.7690000 | 0.5750000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`TFL.corretas.per.min.quintile` | 143 |       9 |     133 | 0.8124322 | 0.6055845 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`TFL.corretas.per.min.quintile` | 143 |       9 |     123 | 1.1010000 | 0.3670000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                        | DFn | DFd |       SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:------------------------------|----:|----:|----------:|---------:|-------:|:--------|------:|:-------|
| 1   | TFL.corretas.per.min.pre      |   1 | 140 | 29658.210 | 82721.63 | 50.194 | \<0.001 | 0.264 | \*     |
| 2   | grupo                         |   1 | 140 |    11.754 | 82721.63 |  0.020 | 0.888   | 0.000 |        |
| 4   | Sexo                          |   1 | 140 |  3705.494 | 79027.89 |  6.564 | 0.011   | 0.045 | \*     |
| 6   | Zona                          |   1 | 103 |  8670.494 | 49973.04 | 17.871 | \<0.001 | 0.148 | \*     |
| 8   | Cor.Raca                      |   4 |  81 |  1020.020 | 25234.54 |  0.819 | 0.517   | 0.039 |        |
| 10  | TFL.corretas.per.min.quintile |   4 | 137 |  4299.838 | 78433.55 |  1.878 | 0.118   | 0.052 |        |

## ANCOVA tests for two factors

|     | Effect                              | DFn | DFd |       SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:------------------------------------|----:|----:|----------:|---------:|-------:|:--------|------:|:-------|
| 1   | TFL.corretas.per.min.pre            |   1 | 138 | 26457.287 | 78968.65 | 46.235 | \<0.001 | 0.251 | \*     |
| 4   | grupo:Sexo                          |   1 | 138 |    43.030 | 78968.65 |  0.075 | 0.784   | 0.001 |        |
| 8   | grupo:Zona                          |   1 | 101 |  1097.366 | 48816.33 |  2.270 | 0.135   | 0.022 |        |
| 12  | grupo:Cor.Raca                      |   2 |  78 |   243.424 | 24680.13 |  0.385 | 0.682   | 0.010 |        |
| 16  | grupo:TFL.corretas.per.min.quintile |   4 | 132 |  1407.353 | 76994.76 |  0.603 | 0.661   | 0.018 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  90 |  90.222 |    2.600 |   113.022 |      3.024 | 113.479 |    2.563 |
| TFL.corretas.per.min.pos | Experimental |  53 |  92.170 |    2.691 |   113.660 |      3.769 | 112.885 |    3.341 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |    0.594 |   -7.734 |     8.922 | 4.212 |     0.141 | 0.888 | 0.888 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |   -1.948 |   -9.794 |     5.899 | 3.969 |    -0.491 | 0.624 | 0.624 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |  -22.800 |  -30.345 |   -15.255 | 3.833 |    -5.948 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | pre    | pos    |  -21.491 |  -31.323 |   -11.658 | 4.995 |    -4.302 | \<0.001 | \<0.001 | \*\*\*\*     |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |  36 |  92.333 |    4.096 |   120.056 |      4.439 | 119.217 |    3.989 |
| TFL.corretas.per.min.pos | Controle     | M    |  54 |  88.815 |    3.381 |   108.333 |      3.984 | 109.618 |    3.261 |
| TFL.corretas.per.min.pos | Experimental | F    |  22 |  97.682 |    3.682 |   123.955 |      5.482 | 119.889 |    5.135 |
| TFL.corretas.per.min.pos | Experimental | M    |  31 |  88.258 |    3.673 |   106.355 |      4.784 | 107.975 |    4.303 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos |              | F    | Controle | Experimental |   -0.672 |  -13.506 |    12.163 | 6.491 |    -0.104 | 0.918 | 0.918 | ns           |
| TFL.corretas.per.min.pos |              | M    | Controle | Experimental |    1.643 |   -9.016 |    12.301 | 5.391 |     0.305 | 0.761 | 0.761 | ns           |
| TFL.corretas.per.min.pre |              | F    | Controle | Experimental |   -5.348 |  -17.583 |     6.886 | 6.188 |    -0.864 | 0.389 | 0.389 | ns           |
| TFL.corretas.per.min.pre |              | M    | Controle | Experimental |    0.557 |   -9.631 |    10.744 | 5.152 |     0.108 | 0.914 | 0.914 | ns           |
| TFL.corretas.per.min.pos | Controle     |      | F        | M            |    9.599 |   -0.597 |    19.795 | 5.157 |     1.862 | 0.065 | 0.065 | ns           |
| TFL.corretas.per.min.pos | Experimental |      | F        | M            |   11.914 |   -1.375 |    25.203 | 6.721 |     1.773 | 0.078 | 0.078 | ns           |
| TFL.corretas.per.min.pre | Controle     |      | F        | M            |    3.519 |   -6.209 |    13.246 | 4.920 |     0.715 | 0.476 | 0.476 | ns           |
| TFL.corretas.per.min.pre | Experimental |      | F        | M            |    9.424 |   -3.179 |    22.027 | 6.374 |     1.478 | 0.142 | 0.142 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -27.722 |  -39.466 |   -15.978 | 5.966 |    -4.647 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |  -19.519 |  -29.107 |    -9.930 | 4.871 |    -4.007 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | F    | pre    | pos    |  -26.273 |  -41.296 |   -11.250 | 7.632 |    -3.443 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.corretas.per.min | Experimental | M    | pre    | pos    |  -18.097 |  -30.753 |    -5.441 | 6.429 |    -2.815 | 0.005   | 0.005   | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var                      | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | Rural  |  58 |  90.276 |    3.514 |   104.914 |      3.334 | 105.138 |    2.887 |
| TFL.corretas.per.min.pos | Controle     | Urbana |   7 |  92.286 |    9.097 |   142.429 |     10.792 | 141.560 |    8.311 |
| TFL.corretas.per.min.pos | Experimental | Rural  |  35 |  89.114 |    3.232 |   108.371 |      3.954 | 109.228 |    3.719 |
| TFL.corretas.per.min.pos | Experimental | Urbana |   6 | 102.000 |    6.713 |   132.000 |     13.849 | 125.846 |    9.034 |

| .y.                      | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:-------------------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min.pos |              | Rural  | Controle | Experimental |   -4.090 |  -13.427 |     5.247 |  4.707 |    -0.869 | 0.387   | 0.387   | ns           |
| TFL.corretas.per.min.pos |              | Urbana | Controle | Experimental |   15.714 |   -8.613 |    40.041 | 12.263 |     1.281 | 0.203   | 0.203   | ns           |
| TFL.corretas.per.min.pre |              | Rural  | Controle | Experimental |    1.162 |   -8.969 |    11.292 |  5.108 |     0.227 | 0.821   | 0.821   | ns           |
| TFL.corretas.per.min.pre |              | Urbana | Controle | Experimental |   -9.714 |  -36.047 |    16.619 | 13.276 |    -0.732 | 0.466   | 0.466   | ns           |
| TFL.corretas.per.min.pos | Controle     |        | Rural    | Urbana       |  -36.421 |  -53.875 |   -18.967 |  8.799 |    -4.139 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pos | Experimental |        | Rural    | Urbana       |  -16.618 |  -36.029 |     2.793 |  9.785 |    -1.698 | 0.093   | 0.093   | ns           |
| TFL.corretas.per.min.pre | Controle     |        | Rural    | Urbana       |   -2.010 |  -20.948 |    16.929 |  9.548 |    -0.210 | 0.834   | 0.834   | ns           |
| TFL.corretas.per.min.pre | Experimental |        | Rural    | Urbana       |  -12.886 |  -33.800 |     8.028 | 10.544 |    -1.222 | 0.224   | 0.224   | ns           |

| .y.                  | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | Rural  | pre    | pos    |  -14.638 |  -23.668 |    -5.608 |  4.580 |    -3.196 | 0.002   | 0.002   | \*\*         |
| TFL.corretas.per.min | Controle     | Urbana | pre    | pos    |  -50.143 |  -76.136 |   -24.150 | 13.183 |    -3.804 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.corretas.per.min | Experimental | Rural  | pre    | pos    |  -19.257 |  -30.881 |    -7.633 |  5.896 |    -3.266 | 0.001   | 0.001   | \*\*         |
| TFL.corretas.per.min | Experimental | Urbana | pre    | pos    |  -30.000 |  -58.075 |    -1.925 | 14.239 |    -2.107 | 0.036   | 0.036   | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var                      | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | Branca   |  12 | 103.667 |    4.606 |   114.000 |      5.510 | 106.654 |    5.277 |
| TFL.corretas.per.min.pos | Controle     | Parda    |  41 |  90.756 |    3.813 |    99.951 |      4.090 | 101.406 |    2.809 |
| TFL.corretas.per.min.pos | Experimental | Branca   |   5 | 103.400 |    5.591 |   125.400 |      8.310 | 118.236 |    8.084 |
| TFL.corretas.per.min.pos | Experimental | Indígena |   8 |  92.750 |    7.260 |   105.875 |      7.492 | 105.971 |    6.343 |
| TFL.corretas.per.min.pos | Experimental | Parda    |  16 |  87.062 |    5.173 |    99.500 |      4.798 | 103.472 |    4.519 |

|     | .y.                      | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 1   | TFL.corretas.per.min.pos |              | Branca   | Controle | Experimental |  -11.582 |  -30.603 |     7.439 |  9.550 |    -1.213 | 0.229 | 0.229 | ns           |
| 3   | TFL.corretas.per.min.pos |              | Parda    | Controle | Experimental |   -2.067 |  -12.622 |     8.489 |  5.300 |    -0.390 | 0.698 | 0.698 | ns           |
| 4   | TFL.corretas.per.min.pre |              | Branca   | Controle | Experimental |    0.267 |  -22.855 |    23.388 | 11.612 |     0.023 | 0.982 | 0.982 | ns           |
| 6   | TFL.corretas.per.min.pre |              | Parda    | Controle | Experimental |    3.694 |   -9.111 |    16.498 |  6.430 |     0.574 | 0.567 | 0.567 | ns           |
| 8   | TFL.corretas.per.min.pos | Controle     |          | Branca   | Parda        |    5.248 |   -6.725 |    17.222 |  6.012 |     0.873 | 0.385 | 0.385 | ns           |
| 10  | TFL.corretas.per.min.pos | Experimental |          | Branca   | Indígena     |   12.265 |   -8.203 |    32.734 | 10.277 |     1.193 | 0.236 | 0.709 | ns           |
| 11  | TFL.corretas.per.min.pos | Experimental |          | Branca   | Parda        |   14.764 |   -3.797 |    33.324 |  9.319 |     1.584 | 0.117 | 0.352 | ns           |
| 12  | TFL.corretas.per.min.pos | Experimental |          | Indígena | Parda        |    2.498 |  -13.011 |    18.008 |  7.787 |     0.321 | 0.749 | 1.000 | ns           |
| 14  | TFL.corretas.per.min.pre | Controle     |          | Branca   | Parda        |   12.911 |   -1.346 |    27.167 |  7.160 |     1.803 | 0.075 | 0.075 | ns           |
| 16  | TFL.corretas.per.min.pre | Experimental |          | Branca   | Indígena     |   10.650 |  -14.113 |    35.413 | 12.436 |     0.856 | 0.394 | 1.000 | ns           |
| 17  | TFL.corretas.per.min.pre | Experimental |          | Branca   | Parda        |   16.338 |   -5.918 |    38.593 | 11.177 |     1.462 | 0.148 | 0.444 | ns           |
| 18  | TFL.corretas.per.min.pre | Experimental |          | Indígena | Parda        |    5.688 |  -13.122 |    24.497 |  9.446 |     0.602 | 0.549 | 1.000 | ns           |

| .y.                  | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | Branca   | pre    | pos    |  -10.333 |  -28.499 |     7.832 |  9.196 |    -1.124 | 0.263 | 0.263 | ns           |
| TFL.corretas.per.min | Controle     | Parda    | pre    | pos    |   -9.195 |  -19.023 |     0.633 |  4.975 |    -1.848 | 0.066 | 0.066 | ns           |
| TFL.corretas.per.min | Experimental | Branca   | pre    | pos    |  -22.000 |  -50.142 |     6.142 | 14.246 |    -1.544 | 0.125 | 0.125 | ns           |
| TFL.corretas.per.min | Experimental | Indígena | pre    | pos    |  -13.125 |  -35.373 |     9.123 | 11.262 |    -1.165 | 0.246 | 0.246 | ns           |
| TFL.corretas.per.min | Experimental | Parda    | pre    | pos    |  -12.437 |  -28.169 |     3.294 |  7.964 |    -1.562 | 0.120 | 0.120 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:TFL.corretas.per.min.quintile**

| var                      | grupo        | TFL.corretas.per.min.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:------------------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | 1st quintile                  |  17 |  52.118 |    2.522 |    96.647 |      7.129 | 125.803 |   13.202 |
| TFL.corretas.per.min.pos | Controle     | 2nd quintile                  |  15 |  77.800 |    1.395 |    99.267 |      5.930 | 109.137 |    7.411 |
| TFL.corretas.per.min.pos | Controle     | 3rd quintile                  |  18 |  89.333 |    0.672 |   107.222 |      5.850 | 108.432 |    5.714 |
| TFL.corretas.per.min.pos | Controle     | 4th quintile                  |  22 | 102.182 |    0.948 |   126.364 |      4.833 | 117.925 |    6.184 |
| TFL.corretas.per.min.pos | Controle     | 5th quintile                  |  18 | 122.833 |    2.644 |   129.444 |      6.760 | 105.498 |   11.262 |
| TFL.corretas.per.min.pos | Experimental | 1st quintile                  |   6 |  58.167 |    2.774 |    95.500 |     12.085 | 120.114 |   14.035 |
| TFL.corretas.per.min.pos | Experimental | 2nd quintile                  |  11 |  76.727 |    1.508 |    91.636 |      5.847 | 102.312 |    8.473 |
| TFL.corretas.per.min.pos | Experimental | 3rd quintile                  |  15 |  90.867 |    0.710 |   111.867 |      3.764 | 111.925 |    6.236 |
| TFL.corretas.per.min.pos | Experimental | 4th quintile                  |   9 | 101.000 |    2.028 |   124.111 |     10.148 | 116.560 |    8.614 |
| TFL.corretas.per.min.pos | Experimental | 5th quintile                  |  12 | 118.333 |    2.076 |   137.333 |      6.483 | 116.766 |   10.875 |

| .y.                      | grupo        | TFL.corretas.per.min.quintile | group1       | group2       | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:-------------------------|:-------------|:------------------------------|:-------------|:-------------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min.pos |              | 1st quintile                  | Controle     | Experimental |    5.689 |  -17.288 |    28.666 | 11.616 |     0.490 | 0.625   | 0.625   | ns           |
| TFL.corretas.per.min.pos |              | 2nd quintile                  | Controle     | Experimental |    6.825 |  -12.151 |    25.800 |  9.593 |     0.711 | 0.478   | 0.478   | ns           |
| TFL.corretas.per.min.pos |              | 3rd quintile                  | Controle     | Experimental |   -3.493 |  -20.221 |    13.234 |  8.456 |    -0.413 | 0.68    | 0.68    | ns           |
| TFL.corretas.per.min.pos |              | 4th quintile                  | Controle     | Experimental |    1.365 |  -17.552 |    20.282 |  9.563 |     0.143 | 0.887   | 0.887   | ns           |
| TFL.corretas.per.min.pos |              | 5th quintile                  | Controle     | Experimental |  -11.268 |  -29.278 |     6.742 |  9.105 |    -1.238 | 0.218   | 0.218   | ns           |
| TFL.corretas.per.min.pre |              | 1st quintile                  | Controle     | Experimental |   -6.049 |  -12.504 |     0.406 |  3.263 |    -1.854 | 0.066   | 0.066   | ns           |
| TFL.corretas.per.min.pre |              | 2nd quintile                  | Controle     | Experimental |    1.073 |   -4.323 |     6.469 |  2.728 |     0.393 | 0.695   | 0.695   | ns           |
| TFL.corretas.per.min.pre |              | 3rd quintile                  | Controle     | Experimental |   -1.533 |   -6.286 |     3.219 |  2.403 |    -0.638 | 0.524   | 0.524   | ns           |
| TFL.corretas.per.min.pre |              | 4th quintile                  | Controle     | Experimental |    1.182 |   -4.197 |     6.560 |  2.719 |     0.435 | 0.665   | 0.665   | ns           |
| TFL.corretas.per.min.pre |              | 5th quintile                  | Controle     | Experimental |    4.500 |   -0.566 |     9.566 |  2.561 |     1.757 | 0.081   | 0.081   | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 1st quintile | 2nd quintile |   16.666 |   -6.270 |    39.602 | 11.595 |     1.437 | 0.153   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 1st quintile | 3rd quintile |   17.371 |  -10.275 |    45.017 | 13.976 |     1.243 | 0.216   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 1st quintile | 4th quintile |    7.878 |  -26.015 |    41.771 | 17.134 |     0.460 | 0.646   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 1st quintile | 5th quintile |   20.305 |  -25.281 |    65.891 | 23.045 |     0.881 | 0.38    | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 2nd quintile | 3rd quintile |    0.705 |  -17.386 |    18.796 |  9.146 |     0.077 | 0.939   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 2nd quintile | 4th quintile |   -8.788 |  -30.511 |    12.935 | 10.982 |    -0.800 | 0.425   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 2nd quintile | 5th quintile |    3.639 |  -28.233 |    35.511 | 16.113 |     0.226 | 0.822   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 3rd quintile | 4th quintile |   -9.493 |  -26.538 |     7.552 |  8.617 |    -1.102 | 0.273   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 3rd quintile | 5th quintile |    2.934 |  -22.783 |    28.651 | 13.001 |     0.226 | 0.822   | 1       | ns           |
| TFL.corretas.per.min.pos | Controle     |                               | 4th quintile | 5th quintile |   12.427 |   -7.207 |    32.061 |  9.926 |     1.252 | 0.213   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 1st quintile | 2nd quintile |   17.801 |   -8.902 |    44.504 | 13.499 |     1.319 | 0.19    | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 1st quintile | 3rd quintile |    8.189 |  -22.161 |    38.538 | 15.343 |     0.534 | 0.594   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 1st quintile | 4th quintile |    3.554 |  -32.511 |    39.618 | 18.232 |     0.195 | 0.846   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 1st quintile | 5th quintile |    3.348 |  -40.080 |    46.775 | 21.954 |     0.152 | 0.879   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 2nd quintile | 3rd quintile |   -9.613 |  -30.404 |    11.179 | 10.511 |    -0.915 | 0.362   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 2nd quintile | 4th quintile |  -14.248 |  -40.231 |    11.736 | 13.136 |    -1.085 | 0.28    | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 2nd quintile | 5th quintile |  -14.454 |  -46.495 |    17.588 | 16.198 |    -0.892 | 0.374   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 3rd quintile | 4th quintile |   -4.635 |  -25.684 |    16.414 | 10.641 |    -0.436 | 0.664   | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 3rd quintile | 5th quintile |   -4.841 |  -29.670 |    19.988 | 12.552 |    -0.386 | 0.7     | 1       | ns           |
| TFL.corretas.per.min.pos | Experimental |                               | 4th quintile | 5th quintile |   -0.206 |  -23.721 |    23.309 | 11.888 |    -0.017 | 0.986   | 1       | ns           |
| TFL.corretas.per.min.pre | Controle     |                               | 1st quintile | 2nd quintile |  -25.682 |  -30.498 |   -20.867 |  2.434 |   -10.549 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 1st quintile | 3rd quintile |  -37.216 |  -41.813 |   -32.619 |  2.324 |   -16.012 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 1st quintile | 4th quintile |  -50.064 |  -54.454 |   -45.675 |  2.219 |   -22.560 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 1st quintile | 5th quintile |  -70.716 |  -75.313 |   -66.119 |  2.324 |   -30.426 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 2nd quintile | 3rd quintile |  -11.533 |  -16.286 |    -6.781 |  2.403 |    -4.800 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 2nd quintile | 4th quintile |  -24.382 |  -28.933 |   -19.830 |  2.301 |   -10.595 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 2nd quintile | 5th quintile |  -45.033 |  -49.786 |   -40.281 |  2.403 |   -18.744 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 3rd quintile | 4th quintile |  -12.848 |  -17.169 |    -8.528 |  2.184 |    -5.883 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 3rd quintile | 5th quintile |  -33.500 |  -38.031 |   -28.969 |  2.291 |   -14.624 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Controle     |                               | 4th quintile | 5th quintile |  -20.652 |  -24.972 |   -16.331 |  2.184 |    -9.455 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 1st quintile | 2nd quintile |  -18.561 |  -25.459 |   -11.662 |  3.488 |    -5.322 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 1st quintile | 3rd quintile |  -32.700 |  -39.266 |   -26.134 |  3.320 |    -9.851 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 1st quintile | 4th quintile |  -42.833 |  -49.998 |   -35.669 |  3.622 |   -11.826 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 1st quintile | 5th quintile |  -60.167 |  -66.963 |   -53.370 |  3.436 |   -17.510 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 2nd quintile | 3rd quintile |  -14.139 |  -19.535 |    -8.744 |  2.728 |    -5.183 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 2nd quintile | 4th quintile |  -24.273 |  -30.382 |   -18.163 |  3.089 |    -7.858 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 2nd quintile | 5th quintile |  -41.606 |  -47.280 |   -35.932 |  2.869 |   -14.504 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 3rd quintile | 4th quintile |  -10.133 |  -15.865 |    -4.402 |  2.898 |    -3.497 | \<0.001 | 0.006   | \*\*         |
| TFL.corretas.per.min.pre | Experimental |                               | 3rd quintile | 5th quintile |  -27.467 |  -32.731 |   -22.202 |  2.662 |   -10.320 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min.pre | Experimental |                               | 4th quintile | 5th quintile |  -17.333 |  -23.327 |   -11.339 |  3.030 |    -5.720 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.                  | grupo        | TFL.corretas.per.min.quintile | group1 | group2 | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:------------------------------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | 1st quintile                  | pre    | pos    |  -44.529 |  -56.730 |   -32.329 |  6.197 |    -7.186 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Controle     | 2nd quintile                  | pre    | pos    |  -21.467 |  -34.455 |    -8.478 |  6.597 |    -3.254 | 0.001   | 0.001   | \*\*         |
| TFL.corretas.per.min | Controle     | 3rd quintile                  | pre    | pos    |  -17.889 |  -29.746 |    -6.032 |  6.022 |    -2.971 | 0.003   | 0.003   | \*\*         |
| TFL.corretas.per.min | Controle     | 4th quintile                  | pre    | pos    |  -24.182 |  -34.907 |   -13.457 |  5.447 |    -4.439 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Controle     | 5th quintile                  | pre    | pos    |   -6.611 |  -18.468 |     5.246 |  6.022 |    -1.098 | 0.273   | 0.273   | ns           |
| TFL.corretas.per.min | Experimental | 1st quintile                  | pre    | pos    |  -37.333 |  -57.870 |   -16.797 | 10.430 |    -3.579 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.corretas.per.min | Experimental | 2nd quintile                  | pre    | pos    |  -14.909 |  -30.077 |     0.258 |  7.703 |    -1.935 | 0.054   | 0.054   | ns           |
| TFL.corretas.per.min | Experimental | 3rd quintile                  | pre    | pos    |  -21.000 |  -33.989 |    -8.011 |  6.597 |    -3.183 | 0.002   | 0.002   | \*\*         |
| TFL.corretas.per.min | Experimental | 4th quintile                  | pre    | pos    |  -23.111 |  -39.879 |    -6.343 |  8.516 |    -2.714 | 0.007   | 0.007   | \*\*         |
| TFL.corretas.per.min | Experimental | 5th quintile                  | pre    | pos    |  -19.000 |  -33.522 |    -4.478 |  7.375 |    -2.576 | 0.011   | 0.011   | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
