ANCOVA in Vocabulario (acertos) (Vocabulario (acertos))
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
    - [factores: **grupo:vocab.quintile**](#factores-grupovocabquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Vocabulario (acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Vocabulario (acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | vocab.quintile | variable  |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|:----------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          |                | vocab.pre | 259 | 26.842 |   27.0 |   6 |  45 |  8.705 | 0.541 | 1.065 | 13.50 |
| Controle     | M    |        |          |                | vocab.pre | 257 | 24.899 |   25.0 |   4 |  45 |  9.767 | 0.609 | 1.200 | 17.00 |
| Experimental | F    |        |          |                | vocab.pre | 369 | 27.621 |   29.0 |   1 |  44 |  8.689 | 0.452 | 0.889 | 12.00 |
| Experimental | M    |        |          |                | vocab.pre | 345 | 26.867 |   28.0 |   5 |  48 |  8.610 | 0.464 | 0.912 | 12.00 |
| Controle     | F    |        |          |                | vocab.pos | 259 | 28.305 |   29.0 |   0 |  45 |  9.111 | 0.566 | 1.115 | 13.50 |
| Controle     | M    |        |          |                | vocab.pos | 257 | 25.549 |   26.0 |   2 |  45 | 10.432 | 0.651 | 1.281 | 17.00 |
| Experimental | F    |        |          |                | vocab.pos | 369 | 29.379 |   30.0 |   2 |  47 |  8.826 | 0.459 | 0.904 | 12.00 |
| Experimental | M    |        |          |                | vocab.pos | 345 | 27.075 |   27.0 |   1 |  45 |  9.466 | 0.510 | 1.002 | 15.00 |
| Controle     |      | Rural  |          |                | vocab.pre | 253 | 25.285 |   26.0 |   4 |  45 |  8.733 | 0.549 | 1.081 | 14.00 |
| Controle     |      | Urbana |          |                | vocab.pre | 114 | 26.632 |   28.0 |   6 |  43 |  9.130 | 0.855 | 1.694 | 14.00 |
| Controle     |      |        |          |                | vocab.pre | 149 | 26.295 |   26.0 |   5 |  45 | 10.280 | 0.842 | 1.664 | 16.00 |
| Experimental |      | Rural  |          |                | vocab.pre | 294 | 26.289 |   27.0 |   5 |  44 |  8.843 | 0.516 | 1.015 | 13.00 |
| Experimental |      | Urbana |          |                | vocab.pre | 190 | 27.779 |   28.5 |   1 |  48 |  8.692 | 0.631 | 1.244 | 14.00 |
| Experimental |      |        |          |                | vocab.pre | 230 | 28.061 |   29.0 |   6 |  44 |  8.285 | 0.546 | 1.076 | 11.00 |
| Controle     |      | Rural  |          |                | vocab.pos | 253 | 26.976 |   28.0 |   2 |  45 |  9.937 | 0.625 | 1.230 | 14.00 |
| Controle     |      | Urbana |          |                | vocab.pos | 114 | 27.816 |   29.0 |   7 |  45 |  9.209 | 0.863 | 1.709 | 14.00 |
| Controle     |      |        |          |                | vocab.pos | 149 | 26.181 |   27.0 |   0 |  44 | 10.272 | 0.842 | 1.663 | 18.00 |
| Experimental |      | Rural  |          |                | vocab.pos | 294 | 27.384 |   28.0 |   1 |  46 |  9.315 | 0.543 | 1.069 | 13.00 |
| Experimental |      | Urbana |          |                | vocab.pos | 190 | 29.063 |   30.0 |   8 |  46 |  8.844 | 0.642 | 1.266 | 13.00 |
| Experimental |      |        |          |                | vocab.pos | 230 | 28.735 |   30.0 |   3 |  47 |  9.306 | 0.614 | 1.209 | 14.00 |
| Controle     |      |        | Branca   |                | vocab.pre |  54 | 26.463 |   26.5 |   8 |  45 |  8.293 | 1.129 | 2.264 | 11.75 |
| Controle     |      |        | Indígena |                | vocab.pre |  13 | 26.154 |   25.0 |  15 |  41 |  7.175 | 1.990 | 4.336 |  6.00 |
| Controle     |      |        | Parda    |                | vocab.pre | 168 | 25.458 |   25.5 |   7 |  45 |  9.070 | 0.700 | 1.382 | 15.00 |
| Controle     |      |        | Preta    |                | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |        |       |       |  0.00 |
| Controle     |      |        |          |                | vocab.pre | 280 | 26.021 |   26.0 |   4 |  45 |  9.719 | 0.581 | 1.143 | 16.00 |
| Experimental |      |        | Amarela  |                | vocab.pre |   1 | 23.000 |   23.0 |  23 |  23 |        |       |       |  0.00 |
| Experimental |      |        | Branca   |                | vocab.pre |  62 | 28.935 |   29.0 |  12 |  41 |  7.596 | 0.965 | 1.929 | 11.50 |
| Experimental |      |        | Indígena |                | vocab.pre |  18 | 22.889 |   23.5 |  12 |  34 |  7.866 | 1.854 | 3.912 | 15.00 |
| Experimental |      |        | Parda    |                | vocab.pre | 202 | 25.653 |   26.5 |   1 |  44 |  9.102 | 0.640 | 1.263 | 13.00 |
| Experimental |      |        | Preta    |                | vocab.pre |   1 | 10.000 |   10.0 |  10 |  10 |        |       |       |  0.00 |
| Experimental |      |        |          |                | vocab.pre | 430 | 28.000 |   29.0 |   5 |  48 |  8.441 | 0.407 | 0.800 | 13.00 |
| Controle     |      |        | Branca   |                | vocab.pos |  54 | 28.222 |   28.5 |  10 |  45 |  9.160 | 1.247 | 2.500 | 13.00 |
| Controle     |      |        | Indígena |                | vocab.pos |  13 | 30.154 |   29.0 |  18 |  43 |  7.967 | 2.210 | 4.814 | 13.00 |
| Controle     |      |        | Parda    |                | vocab.pos | 168 | 26.649 |   29.0 |   0 |  45 | 10.379 | 0.801 | 1.581 | 16.25 |
| Controle     |      |        | Preta    |                | vocab.pos |   1 | 24.000 |   24.0 |  24 |  24 |        |       |       |  0.00 |
| Controle     |      |        |          |                | vocab.pos | 280 | 26.714 |   27.0 |   2 |  45 |  9.800 | 0.586 | 1.153 | 15.00 |
| Experimental |      |        | Amarela  |                | vocab.pos |   1 | 26.000 |   26.0 |  26 |  26 |        |       |       |  0.00 |
| Experimental |      |        | Branca   |                | vocab.pos |  62 | 28.387 |   29.0 |   6 |  47 | 10.103 | 1.283 | 2.566 | 17.00 |
| Experimental |      |        | Indígena |                | vocab.pos |  18 | 26.056 |   25.0 |  13 |  39 |  8.537 | 2.012 | 4.245 | 15.25 |
| Experimental |      |        | Parda    |                | vocab.pos | 202 | 27.391 |   28.0 |   1 |  46 |  9.400 | 0.661 | 1.304 | 14.00 |
| Experimental |      |        | Preta    |                | vocab.pos |   1 | 13.000 |   13.0 |  13 |  13 |        |       |       |  0.00 |
| Experimental |      |        |          |                | vocab.pos | 430 | 28.793 |   30.0 |   2 |  46 |  8.982 | 0.433 | 0.851 | 13.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pre | 102 | 12.461 |   13.0 |   4 |  16 |  2.977 | 0.295 | 0.585 |  4.00 |
| Controle     |      |        |          | 2nd quintile   | vocab.pre |  86 | 19.500 |   19.0 |  17 |  22 |  1.629 | 0.176 | 0.349 |  3.00 |
| Controle     |      |        |          | 3rd quintile   | vocab.pre | 129 | 25.922 |   26.0 |  23 |  29 |  1.894 | 0.167 | 0.330 |  2.00 |
| Controle     |      |        |          | 4th quintile   | vocab.pre |  91 | 32.253 |   32.0 |  30 |  34 |  1.473 | 0.154 | 0.307 |  3.00 |
| Controle     |      |        |          | 5th quintile   | vocab.pre | 108 | 38.185 |   37.5 |  35 |  45 |  2.676 | 0.258 | 0.510 |  4.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pre | 106 | 12.868 |   13.5 |   1 |  16 |  2.957 | 0.287 | 0.569 |  4.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pre | 106 | 20.057 |   20.0 |  17 |  22 |  1.667 | 0.162 | 0.321 |  3.00 |
| Experimental |      |        |          | 3rd quintile   | vocab.pre | 182 | 26.220 |   26.0 |  23 |  29 |  1.991 | 0.148 | 0.291 |  3.00 |
| Experimental |      |        |          | 4th quintile   | vocab.pre | 158 | 31.759 |   32.0 |  30 |  34 |  1.403 | 0.112 | 0.220 |  3.00 |
| Experimental |      |        |          | 5th quintile   | vocab.pre | 162 | 38.154 |   38.0 |  35 |  48 |  2.577 | 0.202 | 0.400 |  4.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pos | 102 | 15.108 |   15.0 |   2 |  29 |  5.308 | 0.526 | 1.043 |  6.75 |
| Controle     |      |        |          | 2nd quintile   | vocab.pos |  86 | 21.628 |   21.5 |   0 |  37 |  6.758 | 0.729 | 1.449 |  9.00 |
| Controle     |      |        |          | 3rd quintile   | vocab.pos | 129 | 27.000 |   27.0 |   7 |  40 |  6.167 | 0.543 | 1.074 |  7.00 |
| Controle     |      |        |          | 4th quintile   | vocab.pos |  91 | 33.879 |   34.0 |  12 |  44 |  5.228 | 0.548 | 1.089 |  6.00 |
| Controle     |      |        |          | 5th quintile   | vocab.pos | 108 | 36.389 |   38.0 |  10 |  45 |  7.148 | 0.688 | 1.364 |  7.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pos | 106 | 17.821 |   18.0 |   2 |  42 |  7.087 | 0.688 | 1.365 |  9.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pos | 106 | 20.925 |   21.0 |   6 |  35 |  5.602 | 0.544 | 1.079 |  8.00 |
| Experimental |      |        |          | 3rd quintile   | vocab.pos | 182 | 27.758 |   28.0 |   7 |  44 |  6.661 | 0.494 | 0.974 |  7.00 |
| Experimental |      |        |          | 4th quintile   | vocab.pos | 158 | 31.190 |   32.0 |   1 |  45 |  6.389 | 0.508 | 1.004 |  6.00 |
| Experimental |      |        |          | 5th quintile   | vocab.pos | 162 | 37.623 |   38.0 |  16 |  47 |  5.328 | 0.419 | 0.827 |  6.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |    n |   skewness | kurtosis | symmetry | statistic | method     |   p | p.signif | normality |
|:----------|-----:|-----------:|---------:|:---------|----------:|:-----------|----:|:---------|:----------|
| vocab.pos | 1230 | -0.7188952 | 2.515595 | NO       | 165.08926 | D’Agostino |   0 | \*\*\*\* | \-        |
| vocab.pos |  851 | -0.6391421 | 2.556992 | NO       | 106.00168 | D’Agostino |   0 | \*\*\*\* | \-        |
| vocab.pos |  520 | -0.7288094 | 3.046307 | NO       |  81.51455 | D’Agostino |   0 | \*\*\*\* | \-        |
| vocab.pos | 1230 | -0.7937843 | 2.445495 | NO       | 178.40524 | D’Agostino |   0 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                          |    n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------------|-----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`           | 1230 |       3 |    1226 |  2.604402 | 0.0505212 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`           | 1230 |       3 |    1222 |  0.496000 | 0.6850000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`           |  851 |       3 |     847 |  3.839840 | 0.0095316 | \*       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`           |  851 |       3 |     843 |  2.432000 | 0.0640000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`       |  520 |       8 |     511 |  1.595603 | 0.1232791 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`       |  520 |       5 |     505 |  3.335000 | 0.0060000 | \*       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`vocab.quintile` | 1230 |       9 |    1220 |  2.866583 | 0.0023715 | \*       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`vocab.quintile` | 1230 |       9 |    1210 |  0.385000 | 0.9430000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn |  DFd |       SSn |      SSd |        F | p       |   ges | p\<.05 |
|:----|:---------------|----:|-----:|----------:|---------:|---------:|:--------|------:|:-------|
| 1   | vocab.pre      |   1 | 1227 | 64649.357 | 46044.71 | 1722.777 | \<0.001 | 0.584 | \*     |
| 2   | grupo          |   1 | 1227 |    13.175 | 46044.71 |    0.351 | 0.554   | 0.000 |        |
| 4   | Sexo           |   1 | 1227 |   673.922 | 45383.96 |   18.220 | \<0.001 | 0.015 | \*     |
| 6   | Zona           |   1 |  848 |     3.513 | 29287.58 |    0.102 | 0.75    | 0.000 |        |
| 8   | Cor.Raca       |   4 |  514 |   143.981 | 21039.47 |    0.879 | 0.476   | 0.007 |        |
| 10  | vocab.quintile |   4 | 1224 |   366.106 | 45691.78 |    2.452 | 0.044   | 0.008 | \*     |

## ANCOVA tests for two factors

|     | Effect               | DFn |  DFd |       SSn |      SSd |        F | p       |   ges | p\<.05 |
|:----|:---------------------|----:|-----:|----------:|---------:|---------:|:--------|------:|:-------|
| 1   | vocab.pre            |   1 | 1225 | 63414.262 | 45353.21 | 1712.833 | \<0.001 | 0.583 | \*     |
| 4   | grupo:Sexo           |   1 | 1225 |    19.273 | 45353.21 |    0.521 | 0.471   | 0.000 |        |
| 8   | grupo:Zona           |   1 |  846 |    24.280 | 29256.71 |    0.702 | 0.402   | 0.001 |        |
| 12  | grupo:Cor.Raca       |   3 |  510 |   154.025 | 20883.95 |    1.254 | 0.29    | 0.007 |        |
| 16  | grupo:vocab.quintile |   4 | 1219 |   806.334 | 44871.46 |    5.476 | \<0.001 | 0.018 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 516 |  25.874 |    0.409 |    26.932 |      0.435 |  27.584 |     0.27 |
| vocab.pos | Experimental | 714 |  27.256 |    0.324 |    28.266 |      0.345 |  27.795 |     0.23 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -0.210 |   -0.907 |     0.486 | 0.355 |    -0.593 | 0.554 | 0.554 | ns           |
| vocab.pre | Controle | Experimental |   -1.382 |   -2.394 |    -0.370 | 0.516 |    -2.680 | 0.007 | 0.007 | \*\*         |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -1.058 |   -2.183 |     0.067 | 0.574 |    -1.844 | 0.065 | 0.065 | ns           |
| vocab | Experimental | pre    | pos    |   -1.010 |   -1.966 |    -0.053 | 0.488 |    -2.071 | 0.039 | 0.039 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    | 259 |  26.842 |    0.541 |    28.305 |      0.566 |  28.172 |    0.378 |
| vocab.pos | Controle     | M    | 257 |  24.899 |    0.609 |    25.549 |      0.651 |  26.984 |    0.381 |
| vocab.pos | Experimental | F    | 369 |  27.621 |    0.452 |    29.379 |      0.459 |  28.617 |    0.317 |
| vocab.pos | Experimental | M    | 345 |  26.867 |    0.464 |    27.075 |      0.510 |  26.922 |    0.328 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -0.445 |   -1.414 |     0.523 | 0.493 |    -0.903 | 0.367   | 0.367   | ns           |
| vocab.pos |              | M    | Controle | Experimental |    0.062 |   -0.924 |     1.049 | 0.503 |     0.124 | 0.901   | 0.901   | ns           |
| vocab.pre |              | F    | Controle | Experimental |   -0.779 |   -2.195 |     0.638 | 0.722 |    -1.079 | 0.281   | 0.281   | ns           |
| vocab.pre |              | M    | Controle | Experimental |   -1.968 |   -3.408 |    -0.528 | 0.734 |    -2.681 | 0.007   | 0.007   | \*\*         |
| vocab.pos | Controle     |      | F        | M            |    1.188 |    0.134 |     2.241 | 0.537 |     2.211 | 0.027   | 0.027   | \*           |
| vocab.pos | Experimental |      | F        | M            |    1.695 |    0.801 |     2.590 | 0.456 |     3.718 | \<0.001 | \<0.001 | \*\*\*       |
| vocab.pre | Controle     |      | F        | M            |    1.943 |    0.404 |     3.481 | 0.784 |     2.478 | 0.013   | 0.013   | \*           |
| vocab.pre | Experimental |      | F        | M            |    0.754 |   -0.555 |     2.063 | 0.667 |     1.130 | 0.259   | 0.259   | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -1.463 |   -3.043 |     0.116 | 0.805 |    -1.817 | 0.069 | 0.069 | ns           |
| vocab | Controle     | M    | pre    | pos    |   -0.650 |   -2.235 |     0.936 | 0.809 |    -0.804 | 0.422 | 0.422 | ns           |
| vocab | Experimental | F    | pre    | pos    |   -1.759 |   -3.082 |    -0.435 | 0.675 |    -2.606 | 0.009 | 0.009 | \*\*         |
| vocab | Experimental | M    | pre    | pos    |   -0.209 |   -1.577 |     1.160 | 0.698 |    -0.299 | 0.765 | 0.765 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var       | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Rural  | 253 |  25.285 |    0.549 |    26.976 |      0.625 |  27.877 |    0.371 |
| vocab.pos | Controle     | Urbana | 114 |  26.632 |    0.855 |    27.816 |      0.863 |  27.598 |    0.551 |
| vocab.pos | Experimental | Rural  | 294 |  26.289 |    0.516 |    27.384 |      0.543 |  27.451 |    0.343 |
| vocab.pos | Experimental | Urbana | 190 |  27.779 |    0.631 |    29.063 |      0.642 |  27.892 |    0.428 |

| .y.       | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Rural  | Controle | Experimental |    0.426 |   -0.565 |     1.417 | 0.505 |     0.844 | 0.399 | 0.399 | ns           |
| vocab.pos |              | Urbana | Controle | Experimental |   -0.294 |   -1.663 |     1.074 | 0.697 |    -0.422 | 0.673 | 0.673 | ns           |
| vocab.pre |              | Rural  | Controle | Experimental |   -1.005 |   -2.488 |     0.479 | 0.756 |    -1.329 | 0.184 | 0.184 | ns           |
| vocab.pre |              | Urbana | Controle | Experimental |   -1.147 |   -3.197 |     0.903 | 1.044 |    -1.099 | 0.272 | 0.272 | ns           |
| vocab.pos | Controle     |        | Rural    | Urbana       |    0.279 |   -1.024 |     1.583 | 0.664 |     0.421 | 0.674 | 0.674 | ns           |
| vocab.pos | Experimental |        | Rural    | Urbana       |   -0.441 |   -1.518 |     0.635 | 0.548 |    -0.805 | 0.421 | 0.421 | ns           |
| vocab.pre | Controle     |        | Rural    | Urbana       |   -1.347 |   -3.299 |     0.605 | 0.994 |    -1.355 | 0.176 | 0.176 | ns           |
| vocab.pre | Experimental |        | Rural    | Urbana       |   -1.490 |   -3.100 |     0.121 | 0.821 |    -1.816 | 0.070 | 0.070 | ns           |

| .y.   | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Rural  | pre    | pos    |   -1.692 |   -3.280 |    -0.104 | 0.810 |    -2.089 | 0.037 | 0.037 | \*           |
| vocab | Controle     | Urbana | pre    | pos    |   -1.184 |   -3.550 |     1.182 | 1.206 |    -0.982 | 0.326 | 0.326 | ns           |
| vocab | Experimental | Rural  | pre    | pos    |   -1.095 |   -2.569 |     0.378 | 0.751 |    -1.458 | 0.145 | 0.145 | ns           |
| vocab | Experimental | Urbana | pre    | pos    |   -1.284 |   -3.117 |     0.548 | 0.934 |    -1.374 | 0.169 | 0.169 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |  54 |  26.463 |    1.129 |    28.222 |      1.247 |  27.821 |    0.871 |
| vocab.pos | Controle     | Indígena |  13 |  26.154 |    1.990 |    30.154 |      2.210 |  30.012 |    1.775 |
| vocab.pos | Controle     | Parda    | 168 |  25.458 |    0.700 |    26.649 |      0.801 |  27.090 |    0.494 |
| vocab.pos | Experimental | Branca   |  62 |  28.935 |    0.965 |    28.387 |      1.283 |  25.914 |    0.818 |
| vocab.pos | Experimental | Indígena |  18 |  22.889 |    1.854 |    26.056 |      2.012 |  28.649 |    1.512 |
| vocab.pos | Experimental | Parda    | 202 |  25.653 |    0.640 |    27.391 |      0.661 |  27.668 |    0.450 |

| .y.       | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Branca   | Controle | Experimental |    1.907 |   -0.439 |     4.252 | 1.194 |     1.597 | 0.111 | 0.111 | ns           |
| vocab.pos |              | Indígena | Controle | Experimental |    1.363 |   -3.218 |     5.943 | 2.332 |     0.584 | 0.559 | 0.559 | ns           |
| vocab.pos |              | Parda    | Controle | Experimental |   -0.579 |   -1.892 |     0.734 | 0.668 |    -0.866 | 0.387 | 0.387 | ns           |
| vocab.pre |              | Branca   | Controle | Experimental |   -2.473 |   -5.677 |     0.732 | 1.631 |    -1.516 | 0.130 | 0.130 | ns           |
| vocab.pre |              | Indígena | Controle | Experimental |    3.265 |   -3.000 |     9.530 | 3.189 |     1.024 | 0.306 | 0.306 | ns           |
| vocab.pre |              | Parda    | Controle | Experimental |   -0.195 |   -1.992 |     1.602 | 0.915 |    -0.213 | 0.831 | 0.831 | ns           |
| vocab.pos | Controle     |          | Branca   | Indígena     |   -2.191 |   -6.075 |     1.693 | 1.977 |    -1.108 | 0.268 | 0.805 | ns           |
| vocab.pos | Controle     |          | Branca   | Parda        |    0.732 |   -1.236 |     2.699 | 1.002 |     0.730 | 0.465 | 1.000 | ns           |
| vocab.pos | Controle     |          | Indígena | Parda        |    2.922 |   -0.697 |     6.542 | 1.842 |     1.586 | 0.113 | 0.340 | ns           |
| vocab.pos | Experimental |          | Branca   | Indígena     |   -2.735 |   -6.123 |     0.653 | 1.724 |    -1.586 | 0.113 | 0.340 | ns           |
| vocab.pos | Experimental |          | Branca   | Parda        |   -1.754 |   -3.591 |     0.083 | 0.935 |    -1.876 | 0.061 | 0.184 | ns           |
| vocab.pos | Experimental |          | Indígena | Parda        |    0.981 |   -2.117 |     4.078 | 1.577 |     0.622 | 0.534 | 1.000 | ns           |
| vocab.pre | Controle     |          | Branca   | Indígena     |    0.309 |   -5.009 |     5.627 | 2.707 |     0.114 | 0.909 | 1.000 | ns           |
| vocab.pre | Controle     |          | Branca   | Parda        |    1.005 |   -1.688 |     3.697 | 1.371 |     0.733 | 0.464 | 1.000 | ns           |
| vocab.pre | Controle     |          | Indígena | Parda        |    0.696 |   -4.260 |     5.651 | 2.522 |     0.276 | 0.783 | 1.000 | ns           |
| vocab.pre | Experimental |          | Branca   | Indígena     |    6.047 |    1.438 |    10.655 | 2.346 |     2.578 | 0.010 | 0.031 | \*           |
| vocab.pre | Experimental |          | Branca   | Parda        |    3.282 |    0.783 |     5.781 | 1.272 |     2.580 | 0.010 | 0.030 | \*           |
| vocab.pre | Experimental |          | Indígena | Parda        |   -2.765 |   -6.999 |     1.470 | 2.155 |    -1.283 | 0.200 | 0.600 | ns           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |   -1.759 |   -5.257 |     1.738 | 1.782 |    -0.987 | 0.324 | 0.324 | ns           |
| vocab | Controle     | Indígena | pre    | pos    |   -4.000 |  -11.128 |     3.128 | 3.632 |    -1.101 | 0.271 | 0.271 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |   -1.190 |   -3.173 |     0.792 | 1.010 |    -1.178 | 0.239 | 0.239 | ns           |
| vocab | Experimental | Branca   | pre    | pos    |    0.548 |   -2.716 |     3.812 | 1.663 |     0.330 | 0.742 | 0.742 | ns           |
| vocab | Experimental | Indígena | pre    | pos    |   -3.167 |   -9.224 |     2.891 | 3.087 |    -1.026 | 0.305 | 0.305 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |   -1.738 |   -3.546 |     0.071 | 0.922 |    -1.886 | 0.060 | 0.060 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:vocab.quintile**

| var       | grupo        | vocab.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 1st quintile   | 102 |  12.461 |    0.295 |    15.108 |      0.526 |  23.888 |    1.278 |
| vocab.pos | Controle     | 2nd quintile   |  86 |  19.500 |    0.176 |    21.628 |      0.729 |  26.060 |    0.867 |
| vocab.pos | Controle     | 3rd quintile   | 129 |  25.922 |    0.167 |    27.000 |      0.543 |  27.466 |    0.538 |
| vocab.pos | Controle     | 4th quintile   |  91 |  32.253 |    0.154 |    33.879 |      0.548 |  30.435 |    0.775 |
| vocab.pos | Controle     | 5th quintile   | 108 |  38.185 |    0.258 |    36.389 |      0.688 |  29.280 |    1.084 |
| vocab.pos | Experimental | 1st quintile   | 106 |  12.868 |    0.287 |    17.821 |      0.688 |  26.350 |    1.244 |
| vocab.pos | Experimental | 2nd quintile   | 106 |  20.057 |    0.162 |    20.925 |      0.544 |  25.013 |    0.789 |
| vocab.pos | Experimental | 3rd quintile   | 182 |  26.220 |    0.148 |    27.758 |      0.494 |  28.040 |    0.451 |
| vocab.pos | Experimental | 4th quintile   | 158 |  31.759 |    0.112 |    31.190 |      0.508 |  28.050 |    0.629 |
| vocab.pos | Experimental | 5th quintile   | 162 |  38.154 |    0.202 |    37.623 |      0.419 |  30.534 |    1.028 |

| .y.       | grupo        | vocab.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:---------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| vocab.pos |              | 1st quintile   | Controle     | Experimental |   -2.461 |   -4.114 |    -0.809 | 0.842 |    -2.923 | 0.004   | 0.004   | \*\*         |
| vocab.pos |              | 2nd quintile   | Controle     | Experimental |    1.047 |   -0.682 |     2.777 | 0.882 |     1.188 | 0.235   | 0.235   | ns           |
| vocab.pos |              | 3rd quintile   | Controle     | Experimental |   -0.575 |   -1.945 |     0.796 | 0.699 |    -0.822 | 0.411   | 0.411   | ns           |
| vocab.pos |              | 4th quintile   | Controle     | Experimental |    2.385 |    0.816 |     3.953 | 0.799 |     2.983 | 0.003   | 0.003   | \*\*         |
| vocab.pos |              | 5th quintile   | Controle     | Experimental |   -1.254 |   -2.732 |     0.225 | 0.754 |    -1.663 | 0.097   | 0.097   | ns           |
| vocab.pre |              | 1st quintile   | Controle     | Experimental |   -0.407 |   -1.003 |     0.189 | 0.304 |    -1.341 | 0.18    | 0.18    | ns           |
| vocab.pre |              | 2nd quintile   | Controle     | Experimental |   -0.557 |   -1.180 |     0.067 | 0.318 |    -1.752 | 0.08    | 0.08    | ns           |
| vocab.pre |              | 3rd quintile   | Controle     | Experimental |   -0.297 |   -0.792 |     0.197 | 0.252 |    -1.180 | 0.238   | 0.238   | ns           |
| vocab.pre |              | 4th quintile   | Controle     | Experimental |    0.493 |   -0.072 |     1.058 | 0.288 |     1.712 | 0.087   | 0.087   | ns           |
| vocab.pre |              | 5th quintile   | Controle     | Experimental |    0.031 |   -0.503 |     0.564 | 0.272 |     0.113 | 0.91    | 0.91    | ns           |
| vocab.pos | Controle     |                | 1st quintile | 2nd quintile |   -2.172 |   -4.231 |    -0.114 | 1.049 |    -2.070 | 0.039   | 0.386   | ns           |
| vocab.pos | Controle     |                | 1st quintile | 3rd quintile |   -3.577 |   -6.200 |    -0.955 | 1.337 |    -2.676 | 0.008   | 0.076   | ns           |
| vocab.pos | Controle     |                | 1st quintile | 4th quintile |   -6.547 |  -10.074 |    -3.020 | 1.798 |    -3.642 | \<0.001 | 0.003   | \*\*         |
| vocab.pos | Controle     |                | 1st quintile | 5th quintile |   -5.392 |   -9.721 |    -1.063 | 2.206 |    -2.444 | 0.015   | 0.147   | ns           |
| vocab.pos | Controle     |                | 2nd quintile | 3rd quintile |   -1.405 |   -3.341 |     0.530 | 0.986 |    -1.425 | 0.155   | 1       | ns           |
| vocab.pos | Controle     |                | 2nd quintile | 4th quintile |   -4.374 |   -7.048 |    -1.701 | 1.363 |    -3.211 | 0.001   | 0.014   | \*           |
| vocab.pos | Controle     |                | 2nd quintile | 5th quintile |   -3.220 |   -6.599 |     0.159 | 1.723 |    -1.869 | 0.062   | 0.618   | ns           |
| vocab.pos | Controle     |                | 3rd quintile | 4th quintile |   -2.969 |   -4.874 |    -1.065 | 0.971 |    -3.059 | 0.002   | 0.023   | \*           |
| vocab.pos | Controle     |                | 3rd quintile | 5th quintile |   -1.815 |   -4.275 |     0.646 | 1.254 |    -1.447 | 0.148   | 1       | ns           |
| vocab.pos | Controle     |                | 4th quintile | 5th quintile |    1.154 |   -0.775 |     3.084 | 0.983 |     1.174 | 0.241   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 2nd quintile |    1.336 |   -0.645 |     3.318 | 1.010 |     1.323 | 0.186   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 3rd quintile |   -1.691 |   -4.227 |     0.846 | 1.293 |    -1.307 | 0.191   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 4th quintile |   -1.701 |   -4.999 |     1.598 | 1.681 |    -1.011 | 0.312   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 5th quintile |   -4.184 |   -8.392 |     0.024 | 2.145 |    -1.951 | 0.051   | 0.513   | ns           |
| vocab.pos | Experimental |                | 2nd quintile | 3rd quintile |   -3.027 |   -4.769 |    -1.285 | 0.888 |    -3.408 | \<0.001 | 0.007   | \*\*         |
| vocab.pos | Experimental |                | 2nd quintile | 4th quintile |   -3.037 |   -5.393 |    -0.681 | 1.201 |    -2.529 | 0.012   | 0.116   | ns           |
| vocab.pos | Experimental |                | 2nd quintile | 5th quintile |   -5.521 |   -8.706 |    -2.335 | 1.624 |    -3.400 | \<0.001 | 0.007   | \*\*         |
| vocab.pos | Experimental |                | 3rd quintile | 4th quintile |   -0.010 |   -1.565 |     1.545 | 0.793 |    -0.013 | 0.99    | 1       | ns           |
| vocab.pos | Experimental |                | 3rd quintile | 5th quintile |   -2.494 |   -4.753 |    -0.234 | 1.152 |    -2.165 | 0.031   | 0.305   | ns           |
| vocab.pos | Experimental |                | 4th quintile | 5th quintile |   -2.484 |   -4.146 |    -0.822 | 0.847 |    -2.932 | 0.003   | 0.034   | \*           |
| vocab.pre | Controle     |                | 1st quintile | 2nd quintile |   -7.039 |   -7.668 |    -6.410 | 0.320 |   -21.965 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 1st quintile | 3rd quintile |  -13.462 |  -14.031 |   -12.893 | 0.290 |   -46.411 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 1st quintile | 4th quintile |  -19.792 |  -20.411 |   -19.173 | 0.316 |   -62.699 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 1st quintile | 5th quintile |  -25.724 |  -26.317 |   -25.131 | 0.302 |   -85.109 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 3rd quintile |   -6.422 |   -7.020 |    -5.825 | 0.305 |   -21.074 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 4th quintile |  -12.753 |  -13.399 |   -12.107 | 0.329 |   -38.736 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 5th quintile |  -18.685 |  -19.306 |   -18.064 | 0.316 |   -59.059 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 3rd quintile | 4th quintile |   -6.330 |   -6.918 |    -5.742 | 0.300 |   -21.123 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 3rd quintile | 5th quintile |  -12.263 |  -12.823 |   -11.703 | 0.286 |   -42.949 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 4th quintile | 5th quintile |   -5.932 |   -6.544 |    -5.321 | 0.312 |   -19.044 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 2nd quintile |   -7.189 |   -7.779 |    -6.599 | 0.301 |   -23.907 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 3rd quintile |  -13.352 |  -13.877 |   -12.827 | 0.267 |   -49.919 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 4th quintile |  -18.892 |  -19.431 |   -18.352 | 0.275 |   -68.735 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 5th quintile |  -25.286 |  -25.823 |   -24.750 | 0.273 |   -92.461 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 3rd quintile |   -6.163 |   -6.688 |    -5.638 | 0.267 |   -23.042 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 4th quintile |  -11.703 |  -12.242 |   -11.164 | 0.275 |   -42.580 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 5th quintile |  -18.098 |  -18.634 |   -17.561 | 0.273 |   -66.175 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 3rd quintile | 4th quintile |   -5.540 |   -6.007 |    -5.073 | 0.238 |   -23.272 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 3rd quintile | 5th quintile |  -11.935 |  -12.398 |   -11.471 | 0.236 |   -50.472 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 4th quintile | 5th quintile |   -6.395 |   -6.875 |    -5.915 | 0.245 |   -26.126 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.   | grupo        | vocab.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:------|:-------------|:---------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| vocab | Controle     | 1st quintile   | pre    | pos    |   -2.647 |   -3.926 |    -1.368 | 0.652 |    -4.058 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab | Controle     | 2nd quintile   | pre    | pos    |   -2.128 |   -3.521 |    -0.735 | 0.710 |    -2.995 | 0.003   | 0.003   | \*\*         |
| vocab | Controle     | 3rd quintile   | pre    | pos    |   -1.078 |   -2.215 |     0.060 | 0.580 |    -1.858 | 0.063   | 0.063   | ns           |
| vocab | Controle     | 4th quintile   | pre    | pos    |   -1.626 |   -2.981 |    -0.272 | 0.691 |    -2.355 | 0.019   | 0.019   | \*           |
| vocab | Controle     | 5th quintile   | pre    | pos    |    1.796 |    0.553 |     3.039 | 0.634 |     2.834 | 0.005   | 0.005   | \*\*         |
| vocab | Experimental | 1st quintile   | pre    | pos    |   -4.953 |   -6.208 |    -3.698 | 0.640 |    -7.740 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab | Experimental | 2nd quintile   | pre    | pos    |   -0.868 |   -2.123 |     0.387 | 0.640 |    -1.356 | 0.175   | 0.175   | ns           |
| vocab | Experimental | 3rd quintile   | pre    | pos    |   -1.538 |   -2.496 |    -0.581 | 0.488 |    -3.150 | 0.002   | 0.002   | \*\*         |
| vocab | Experimental | 4th quintile   | pre    | pos    |    0.570 |   -0.458 |     1.597 | 0.524 |     1.087 | 0.277   | 0.277   | ns           |
| vocab | Experimental | 5th quintile   | pre    | pos    |    0.531 |   -0.484 |     1.546 | 0.518 |     1.026 | 0.305   | 0.305   | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
