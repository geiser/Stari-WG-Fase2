ANCOVA in TDE - Escrita (Acertos) (TDE - Escrita (Acertos))
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
    - [factores: **grupo:Serie**](#factores-gruposerie)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  TDE - Escrita (Acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  TDE - Escrita (Acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable      |   n |   mean | median | min | max |     sd |    se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|--------:|------:|
| Controle     | F    |        |          |       | score.tde.pre |  36 | 39.167 |   40.5 |  33 |  42 |  3.019 | 0.503 |   1.021 |  6.00 |
| Controle     | M    |        |          |       | score.tde.pre |  18 | 38.111 |   38.0 |  32 |  42 |  2.928 | 0.690 |   1.456 |  3.75 |
| Experimental | F    |        |          |       | score.tde.pre |  61 | 37.557 |   38.0 |  32 |  42 |  3.101 | 0.397 |   0.794 |  5.00 |
| Experimental | M    |        |          |       | score.tde.pre |  80 | 37.250 |   37.0 |  32 |  42 |  3.247 | 0.363 |   0.723 |  6.00 |
| Controle     | F    |        |          |       | score.tde.pos |  36 | 31.444 |   29.5 |   4 |  62 | 16.366 | 2.728 |   5.538 | 24.25 |
| Controle     | M    |        |          |       | score.tde.pos |  18 | 27.667 |   26.5 |   2 |  51 | 12.966 | 3.056 |   6.448 | 15.00 |
| Experimental | F    |        |          |       | score.tde.pos |  61 | 36.934 |   39.0 |   0 |  64 | 14.477 | 1.854 |   3.708 | 21.00 |
| Experimental | M    |        |          |       | score.tde.pos |  80 | 33.300 |   35.0 |   8 |  56 | 11.623 | 1.300 |   2.587 | 17.00 |
| Controle     |      | Rural  |          |       | score.tde.pre |  23 | 39.522 |   41.0 |  34 |  42 |  2.998 | 0.625 |   1.296 |  5.50 |
| Controle     |      | Urbana |          |       | score.tde.pre |  18 | 37.500 |   37.5 |  32 |  42 |  2.662 | 0.628 |   1.324 |  3.50 |
| Controle     |      |        |          |       | score.tde.pre |  13 | 39.385 |   40.0 |  33 |  42 |  3.070 | 0.851 |   1.855 |  3.00 |
| Experimental |      | Rural  |          |       | score.tde.pre |  64 | 36.719 |   37.0 |  32 |  42 |  3.037 | 0.380 |   0.759 |  5.00 |
| Experimental |      | Urbana |          |       | score.tde.pre |  40 | 38.675 |   39.5 |  33 |  42 |  2.912 | 0.460 |   0.931 |  4.50 |
| Experimental |      |        |          |       | score.tde.pre |  37 | 37.135 |   37.0 |  32 |  42 |  3.351 | 0.551 |   1.117 |  6.00 |
| Controle     |      | Rural  |          |       | score.tde.pos |  23 | 33.261 |   35.0 |   2 |  62 | 14.464 | 3.016 |   6.255 | 20.00 |
| Controle     |      | Urbana |          |       | score.tde.pos |  18 | 20.722 |   19.0 |   4 |  39 | 10.910 | 2.572 |   5.426 | 17.25 |
| Controle     |      |        |          |       | score.tde.pos |  13 | 37.846 |   33.0 |  10 |  59 | 16.293 | 4.519 |   9.846 | 25.00 |
| Experimental |      | Rural  |          |       | score.tde.pos |  64 | 34.500 |   34.5 |   8 |  64 | 12.866 | 1.608 |   3.214 | 17.75 |
| Experimental |      | Urbana |          |       | score.tde.pos |  40 | 34.075 |   36.5 |   8 |  56 | 13.088 | 2.069 |   4.186 | 18.50 |
| Experimental |      |        |          |       | score.tde.pos |  37 | 36.378 |   40.0 |   0 |  55 | 13.415 | 2.205 |   4.473 | 17.00 |
| Controle     |      |        | Branca   |       | score.tde.pre |   6 | 38.167 |   38.5 |  35 |  41 |  2.858 | 1.167 |   2.999 |  5.25 |
| Controle     |      |        | Indígena |       | score.tde.pre |   2 | 41.500 |   41.5 |  41 |  42 |  0.707 | 0.500 |   6.353 |  0.50 |
| Controle     |      |        | Parda    |       | score.tde.pre |  22 | 39.045 |   39.5 |  32 |  42 |  3.031 | 0.646 |   1.344 |  5.00 |
| Controle     |      |        |          |       | score.tde.pre |  24 | 38.542 |   38.5 |  33 |  42 |  3.120 | 0.637 |   1.318 |  5.25 |
| Experimental |      |        | Branca   |       | score.tde.pre |  15 | 37.867 |   38.0 |  32 |  42 |  3.137 | 0.810 |   1.737 |  5.00 |
| Experimental |      |        | Indígena |       | score.tde.pre |   4 | 35.000 |   35.0 |  32 |  38 |  2.944 | 1.472 |   4.684 |  4.50 |
| Experimental |      |        | Parda    |       | score.tde.pre |  34 | 37.147 |   38.0 |  32 |  42 |  2.904 | 0.498 |   1.013 |  4.00 |
| Experimental |      |        |          |       | score.tde.pre |  88 | 37.500 |   38.0 |  32 |  42 |  3.291 | 0.351 |   0.697 |  6.00 |
| Controle     |      |        | Branca   |       | score.tde.pos |   6 | 25.667 |   25.0 |  10 |  43 | 15.188 | 6.200 |  15.939 | 25.75 |
| Controle     |      |        | Indígena |       | score.tde.pos |   2 | 40.000 |   40.0 |  31 |  49 | 12.728 | 9.000 | 114.356 |  9.00 |
| Controle     |      |        | Parda    |       | score.tde.pos |  22 | 29.273 |   28.0 |   2 |  59 | 18.362 | 3.915 |   8.141 | 28.75 |
| Controle     |      |        |          |       | score.tde.pos |  24 | 31.333 |   27.5 |  11 |  62 | 12.586 | 2.569 |   5.315 | 13.25 |
| Experimental |      |        | Branca   |       | score.tde.pos |  15 | 37.667 |   40.0 |  10 |  64 | 14.316 | 3.696 |   7.928 | 18.00 |
| Experimental |      |        | Indígena |       | score.tde.pos |   4 | 35.250 |   36.5 |  19 |  49 | 15.019 | 7.510 |  23.899 | 23.25 |
| Experimental |      |        | Parda    |       | score.tde.pos |  34 | 32.853 |   31.5 |   8 |  62 | 14.347 | 2.460 |   5.006 | 18.50 |
| Experimental |      |        |          |       | score.tde.pos |  88 | 35.159 |   38.0 |   0 |  56 | 12.273 | 1.308 |   2.600 | 15.25 |
| Controle     |      |        |          | 6 ano | score.tde.pre |  13 | 38.846 |   40.0 |  35 |  42 |  2.794 | 0.775 |   1.689 |  4.00 |
| Controle     |      |        |          | 7 ano | score.tde.pre |  17 | 38.059 |   38.0 |  32 |  42 |  3.491 | 0.847 |   1.795 |  6.00 |
| Controle     |      |        |          | 8 ano | score.tde.pre |  17 | 38.824 |   39.0 |  34 |  42 |  2.811 | 0.682 |   1.446 |  5.00 |
| Controle     |      |        |          | 9 ano | score.tde.pre |   7 | 40.571 |   42.0 |  36 |  42 |  2.299 | 0.869 |   2.126 |  2.00 |
| Experimental |      |        |          | 6 ano | score.tde.pre |  43 | 37.116 |   37.0 |  32 |  42 |  3.064 | 0.467 |   0.943 |  5.50 |
| Experimental |      |        |          | 7 ano | score.tde.pre |  47 | 37.043 |   37.0 |  32 |  42 |  3.257 | 0.475 |   0.956 |  6.00 |
| Experimental |      |        |          | 8 ano | score.tde.pre |  19 | 37.158 |   38.0 |  32 |  42 |  2.892 | 0.663 |   1.394 |  4.00 |
| Experimental |      |        |          | 9 ano | score.tde.pre |  32 | 38.375 |   40.0 |  32 |  42 |  3.309 | 0.585 |   1.193 |  5.25 |
| Controle     |      |        |          | 6 ano | score.tde.pos |  13 | 26.231 |   25.0 |  10 |  51 | 13.230 | 3.669 |   7.995 | 15.00 |
| Controle     |      |        |          | 7 ano | score.tde.pos |  17 | 22.882 |   18.0 |   2 |  62 | 17.201 | 4.172 |   8.844 | 20.00 |
| Controle     |      |        |          | 8 ano | score.tde.pos |  17 | 36.529 |   36.0 |  19 |  59 | 12.047 | 2.922 |   6.194 | 14.00 |
| Controle     |      |        |          | 9 ano | score.tde.pos |   7 | 39.857 |   40.0 |  26 |  56 | 11.539 | 4.361 |  10.672 | 16.50 |
| Experimental |      |        |          | 6 ano | score.tde.pos |  43 | 28.651 |   29.0 |   8 |  50 | 12.002 | 1.830 |   3.694 | 20.50 |
| Experimental |      |        |          | 7 ano | score.tde.pos |  47 | 33.085 |   33.0 |  12 |  62 | 11.738 | 1.712 |   3.446 | 15.50 |
| Experimental |      |        |          | 8 ano | score.tde.pos |  19 | 44.789 |   43.0 |  24 |  64 |  9.790 | 2.246 |   4.719 | 11.50 |
| Experimental |      |        |          | 9 ano | score.tde.pos |  32 | 39.969 |   43.0 |   0 |  57 | 12.800 | 2.263 |   4.615 | 11.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| score.tde.pos | 195 | -0.2728446 | -0.2174418 | YES      |  2.687979 | D’Agostino | 0.2608031 | ns       | QQ        |
| score.tde.pos | 145 | -0.1134392 | -0.4491432 | YES      |  1.441483 | D’Agostino | 0.4863915 | ns       | QQ        |
| score.tde.pos |  83 |  0.1144178 | -0.6270833 | YES      |  1.594789 | D’Agostino | 0.4505012 | ns       | YES       |
| score.tde.pos | 195 | -0.1622929 |  0.4046466 | YES      |  2.726532 | D’Agostino | 0.2558239 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 195 |       3 |     191 | 3.2198847 | 0.0238928 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 195 |       3 |     187 | 1.1020000 | 0.3500000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     | 145 |       3 |     141 | 0.2260172 | 0.8781747 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 145 |       3 |     137 | 1.0210000 | 0.3850000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  83 |       5 |      77 | 0.8209829 | 0.5384941 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  83 |       5 |      71 | 0.6910000 | 0.6320000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    | 195 |       7 |     187 | 0.7136113 | 0.6605460 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    | 195 |       7 |     179 | 1.0370000 | 0.4070000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect        | DFn | DFd |      SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:--------------|----:|----:|---------:|---------:|-------:|:--------|------:|:-------|
| 1   | score.tde.pre |   1 | 192 | 3614.598 | 32495.25 | 21.357 | \<0.001 | 0.100 | \*     |
| 2   | grupo         |   1 | 192 | 1664.844 | 32495.25 |  9.837 | 0.002   | 0.049 | \*     |
| 4   | Sexo          |   1 | 192 |  149.791 | 34010.31 |  0.846 | 0.359   | 0.004 |        |
| 6   | Zona          |   1 | 142 | 1034.600 | 22942.71 |  6.403 | 0.012   | 0.043 | \*     |
| 8   | Cor.Raca      |   2 |  79 |  291.139 | 17966.40 |  0.640 | 0.53    | 0.016 |        |
| 10  | Serie         |   3 | 190 | 4903.389 | 29256.71 | 10.615 | \<0.001 | 0.144 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |      SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|---------:|---------:|-------:|:--------|------:|:-------|
| 1   | score.tde.pre  |   1 | 190 | 3409.352 | 32072.08 | 20.198 | \<0.001 | 0.096 | \*     |
| 4   | grupo:Sexo     |   1 | 190 |    6.658 | 32072.08 |  0.039 | 0.843   | 0.000 |        |
| 8   | grupo:Zona     |   1 | 140 |  231.200 | 20770.81 |  1.558 | 0.214   | 0.011 |        |
| 12  | grupo:Cor.Raca |   2 |  76 |  104.353 | 16681.68 |  0.238 | 0.789   | 0.006 |        |
| 16  | grupo:Serie    |   3 | 186 |  471.696 | 26526.37 |  1.102 | 0.349   | 0.017 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  54 |  38.815 |    0.409 |    30.185 |      2.082 |  28.754 |    1.797 |
| score.tde.pos | Experimental | 141 |  37.383 |    0.268 |    34.872 |      1.096 |  35.420 |    1.102 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |   -6.667 |  -10.859 |    -2.474 | 2.126 |    -3.136 | 0.002 | 0.002 | \*\*         |
| score.tde.pre | Controle | Experimental |    1.432 |    0.444 |     2.420 | 0.501 |     2.858 | 0.005 | 0.005 | \*\*         |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | pre    | pos    |    8.630 |    4.875 |    12.384 | 1.910 |     4.519 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Experimental | pre    | pos    |    2.511 |    0.187 |     4.834 | 1.182 |     2.125 | 0.034   | 0.034   | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  36 |  39.167 |    0.503 |    31.444 |      2.728 |  29.574 |    2.205 |
| score.tde.pos | Controle     | M    |  18 |  38.111 |    0.690 |    27.667 |      3.056 |  27.219 |    3.064 |
| score.tde.pos | Experimental | F    |  61 |  37.557 |    0.397 |    36.934 |      1.854 |  37.234 |    1.665 |
| score.tde.pos | Experimental | M    |  80 |  37.250 |    0.363 |    33.300 |      1.300 |  34.014 |    1.461 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -7.660 |  -13.130 |    -2.190 | 2.773 |    -2.762 | 0.006 | 0.006 | \*\*         |
| score.tde.pos |              | M    | Controle | Experimental |   -6.795 |  -13.500 |    -0.090 | 3.399 |    -1.999 | 0.047 | 0.047 | \*           |
| score.tde.pre |              | F    | Controle | Experimental |    1.609 |    0.310 |     2.908 | 0.658 |     2.444 | 0.015 | 0.015 | \*           |
| score.tde.pre |              | M    | Controle | Experimental |    0.861 |   -0.751 |     2.473 | 0.817 |     1.054 | 0.293 | 0.293 | ns           |
| score.tde.pos | Controle     |      | F        | M            |    2.354 |   -5.070 |     9.779 | 3.764 |     0.626 | 0.532 | 0.532 | ns           |
| score.tde.pos | Experimental |      | F        | M            |    3.220 |   -1.140 |     7.580 | 2.210 |     1.457 | 0.147 | 0.147 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    1.056 |   -0.728 |     2.840 | 0.904 |     1.167 | 0.245 | 0.245 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    0.307 |   -0.743 |     1.358 | 0.533 |     0.577 | 0.565 | 0.565 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    7.722 |    3.139 |    12.305 | 2.331 |     3.313 | 0.001 | 0.001 | \*\*         |
| score.tde | Controle     | M    | pre    | pos    |   10.444 |    3.963 |    16.926 | 3.296 |     3.169 | 0.002 | 0.002 | \*\*         |
| score.tde | Experimental | F    | pre    | pos    |    0.623 |   -2.898 |     4.144 | 1.791 |     0.348 | 0.728 | 0.728 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    3.950 |    0.876 |     7.024 | 1.564 |     2.526 | 0.012 | 0.012 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  23 |  39.522 |    0.625 |    33.261 |      3.016 |  30.588 |    2.609 |
| score.tde.pos | Controle     | Urbana |  18 |  37.500 |    0.628 |    20.722 |      2.572 |  21.188 |    2.873 |
| score.tde.pos | Experimental | Rural  |  64 |  36.719 |    0.380 |    34.500 |      1.608 |  36.179 |    1.568 |
| score.tde.pos | Experimental | Urbana |  40 |  38.675 |    0.460 |    34.075 |      2.069 |  32.717 |    1.950 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |   -5.590 |  -11.753 |     0.572 | 3.117 |    -1.793 | 0.075   | 0.075   | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |  -11.529 |  -18.411 |    -4.646 | 3.481 |    -3.312 | 0.001   | 0.001   | \*\*         |
| score.tde.pre |              | Rural  | Controle | Experimental |    2.803 |    1.384 |     4.222 | 0.718 |     3.904 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde.pre |              | Urbana | Controle | Experimental |   -1.175 |   -2.832 |     0.482 | 0.838 |    -1.402 | 0.163   | 0.163   | ns           |
| score.tde.pos | Controle     |        | Rural    | Urbana       |    9.400 |    1.696 |    17.105 | 3.897 |     2.412 | 0.017   | 0.017   | \*           |
| score.tde.pos | Experimental |        | Rural    | Urbana       |    3.462 |   -1.574 |     8.498 | 2.547 |     1.359 | 0.176   | 0.176   | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |    2.022 |    0.184 |     3.859 | 0.929 |     2.175 | 0.031   | 0.031   | \*           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |   -1.956 |   -3.133 |    -0.779 | 0.595 |    -3.286 | 0.001   | 0.001   | \*\*         |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    6.261 |    0.799 |    11.722 | 2.775 |     2.257 | 0.025   | 0.025   | \*           |
| score.tde | Controle     | Urbana | pre    | pos    |   16.778 |   10.604 |    22.951 | 3.136 |     5.350 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Experimental | Rural  | pre    | pos    |    2.219 |   -1.055 |     5.493 | 1.663 |     1.334 | 0.183   | 0.183   | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |    4.600 |    0.459 |     8.741 | 2.104 |     2.186 | 0.03    | 0.03    | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |   6 |  38.167 |    1.167 |    25.667 |      6.200 |  25.218 |    6.074 |
| score.tde.pos | Controle     | Parda    |  22 |  39.045 |    0.646 |    29.273 |      3.915 |  27.295 |    3.239 |
| score.tde.pos | Experimental | Branca   |  15 |  37.867 |    0.810 |    37.667 |      3.696 |  37.741 |    3.840 |
| score.tde.pos | Experimental | Parda    |  34 |  37.147 |    0.498 |    32.853 |      2.460 |  34.179 |    2.589 |

| .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Branca   | Controle | Experimental |  -12.522 |  -26.848 |     1.803 | 7.186 |    -1.743 | 0.086 | 0.086 | ns           |
| score.tde.pos |              | Parda    | Controle | Experimental |   -6.885 |  -15.292 |     1.522 | 4.217 |    -1.632 | 0.107 | 0.107 | ns           |
| score.tde.pre |              | Branca   | Controle | Experimental |    0.300 |   -2.572 |     3.172 | 1.441 |     0.208 | 0.836 | 0.836 | ns           |
| score.tde.pre |              | Parda    | Controle | Experimental |    1.898 |    0.271 |     3.525 | 0.816 |     2.326 | 0.023 | 0.023 | \*           |
| score.tde.pos | Controle     |          | Branca   | Parda        |   -2.076 |  -15.769 |    11.617 | 6.869 |    -0.302 | 0.763 | 0.763 | ns           |
| score.tde.pos | Experimental |          | Branca   | Parda        |    3.561 |   -5.667 |    12.789 | 4.629 |     0.769 | 0.444 | 0.444 | ns           |
| score.tde.pre | Controle     |          | Branca   | Parda        |   -0.879 |   -3.617 |     1.860 | 1.374 |    -0.640 | 0.524 | 0.524 | ns           |
| score.tde.pre | Experimental |          | Branca   | Parda        |    0.720 |   -1.123 |     2.563 | 0.925 |     0.778 | 0.439 | 0.439 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |   12.500 |   -0.360 |    25.360 | 6.507 |     1.921 | 0.057 | 0.057 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    9.773 |    3.057 |    16.489 | 3.398 |     2.876 | 0.005 | 0.005 | \*\*         |
| score.tde | Experimental | Branca   | pre    | pos    |    0.200 |   -7.933 |     8.333 | 4.115 |     0.049 | 0.961 | 0.961 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |    4.294 |   -1.108 |     9.696 | 2.733 |     1.571 | 0.118 | 0.118 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var           | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 6 ano |  13 |  38.846 |    0.775 |    26.231 |      3.669 |  24.951 |    3.326 |
| score.tde.pos | Controle     | 7 ano |  17 |  38.059 |    0.847 |    22.882 |      4.172 |  22.547 |    2.897 |
| score.tde.pos | Controle     | 8 ano |  17 |  38.824 |    0.682 |    36.529 |      2.922 |  35.276 |    2.911 |
| score.tde.pos | Controle     | 9 ano |   7 |  40.571 |    0.869 |    39.857 |      4.361 |  36.506 |    4.581 |
| score.tde.pos | Experimental | 6 ano |  43 |  37.116 |    0.467 |    28.651 |      1.830 |  29.447 |    1.831 |
| score.tde.pos | Experimental | 7 ano |  47 |  37.043 |    0.475 |    33.085 |      1.712 |  33.970 |    1.754 |
| score.tde.pos | Experimental | 8 ano |  19 |  37.158 |    0.663 |    44.789 |      2.246 |  45.535 |    2.745 |
| score.tde.pos | Experimental | 9 ano |  32 |  38.375 |    0.585 |    39.969 |      2.263 |  39.254 |    2.118 |

| .y.           | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | 6 ano | Controle | Experimental |   -4.497 |  -12.014 |     3.021 | 3.811 |    -1.180 | 0.24    | 0.24    | ns           |
| score.tde.pos |              | 7 ano | Controle | Experimental |  -11.422 |  -18.114 |    -4.731 | 3.392 |    -3.368 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde.pos |              | 8 ano | Controle | Experimental |  -10.259 |  -18.178 |    -2.340 | 4.014 |    -2.556 | 0.011   | 0.011   | \*           |
| score.tde.pos |              | 9 ano | Controle | Experimental |   -2.748 |  -12.653 |     7.157 | 5.021 |    -0.547 | 0.585   | 0.585   | ns           |
| score.tde.pre |              | 6 ano | Controle | Experimental |    1.730 |   -0.218 |     3.677 | 0.987 |     1.752 | 0.081   | 0.081   | ns           |
| score.tde.pre |              | 7 ano | Controle | Experimental |    1.016 |   -0.725 |     2.758 | 0.883 |     1.151 | 0.251   | 0.251   | ns           |
| score.tde.pre |              | 8 ano | Controle | Experimental |    1.666 |   -0.389 |     3.720 | 1.041 |     1.600 | 0.111   | 0.111   | ns           |
| score.tde.pre |              | 9 ano | Controle | Experimental |    2.196 |   -0.371 |     4.764 | 1.301 |     1.688 | 0.093   | 0.093   | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 7 ano        |    2.403 |   -6.288 |    11.095 | 4.405 |     0.546 | 0.586   | 1       | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 8 ano        |  -10.326 |  -19.006 |    -1.646 | 4.400 |    -2.347 | 0.02    | 0.12    | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 9 ano        |  -11.556 |  -22.642 |    -0.470 | 5.619 |    -2.056 | 0.041   | 0.247   | ns           |
| score.tde.pos | Controle     |       | 7 ano    | 8 ano        |  -12.729 |  -20.821 |    -4.637 | 4.102 |    -3.103 | 0.002   | 0.013   | \*           |
| score.tde.pos | Controle     |       | 7 ano    | 9 ano        |  -13.959 |  -24.630 |    -3.288 | 5.409 |    -2.581 | 0.011   | 0.064   | ns           |
| score.tde.pos | Controle     |       | 8 ano    | 9 ano        |   -1.230 |  -11.854 |     9.394 | 5.385 |    -0.228 | 0.82    | 1       | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 7 ano        |   -4.522 |   -9.494 |     0.449 | 2.520 |    -1.794 | 0.074   | 0.446   | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 8 ano        |  -16.088 |  -22.578 |    -9.598 | 3.290 |    -4.890 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pos | Experimental |       | 6 ano    | 9 ano        |   -9.807 |  -15.351 |    -4.263 | 2.810 |    -3.490 | \<0.001 | 0.004   | \*\*         |
| score.tde.pos | Experimental |       | 7 ano    | 8 ano        |  -11.566 |  -17.971 |    -5.161 | 3.247 |    -3.562 | \<0.001 | 0.003   | \*\*         |
| score.tde.pos | Experimental |       | 7 ano    | 9 ano        |   -5.284 |  -10.734 |     0.165 | 2.762 |    -1.913 | 0.057   | 0.344   | ns           |
| score.tde.pos | Experimental |       | 8 ano    | 9 ano        |    6.281 |   -0.575 |    13.138 | 3.475 |     1.807 | 0.072   | 0.434   | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 7 ano        |    0.787 |   -1.480 |     3.054 | 1.149 |     0.685 | 0.494   | 1       | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 8 ano        |    0.023 |   -2.244 |     2.290 | 1.149 |     0.020 | 0.984   | 1       | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 9 ano        |   -1.725 |   -4.610 |     1.159 | 1.462 |    -1.180 | 0.24    | 1       | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 8 ano        |   -0.765 |   -2.875 |     1.346 | 1.070 |    -0.715 | 0.476   | 1       | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 9 ano        |   -2.513 |   -5.276 |     0.251 | 1.401 |    -1.794 | 0.074   | 0.447   | ns           |
| score.tde.pre | Controle     |       | 8 ano    | 9 ano        |   -1.748 |   -4.511 |     1.015 | 1.401 |    -1.248 | 0.214   | 1       | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 7 ano        |    0.074 |   -1.225 |     1.372 | 0.658 |     0.112 | 0.911   | 1       | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 8 ano        |   -0.042 |   -1.737 |     1.653 | 0.859 |    -0.048 | 0.961   | 1       | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 9 ano        |   -1.259 |   -2.695 |     0.178 | 0.728 |    -1.729 | 0.086   | 0.513   | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 8 ano        |   -0.115 |   -1.788 |     1.557 | 0.848 |    -0.136 | 0.892   | 1       | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 9 ano        |   -1.332 |   -2.743 |     0.078 | 0.715 |    -1.864 | 0.064   | 0.383   | ns           |
| score.tde.pre | Experimental |       | 8 ano    | 9 ano        |   -1.217 |   -2.999 |     0.565 | 0.903 |    -1.347 | 0.18    | 1       | ns           |

| .y.       | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | 6 ano | pre    | pos    |   12.615 |    5.598 |    19.633 | 3.569 |     3.535 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde | Controle     | 7 ano | pre    | pos    |   15.176 |    9.040 |    21.313 | 3.121 |     4.863 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Controle     | 8 ano | pre    | pos    |    2.294 |   -3.843 |     8.431 | 3.121 |     0.735 | 0.463   | 0.463   | ns           |
| score.tde | Controle     | 9 ano | pre    | pos    |    0.714 |   -8.849 |    10.278 | 4.864 |     0.147 | 0.883   | 0.883   | ns           |
| score.tde | Experimental | 6 ano | pre    | pos    |    8.465 |    4.606 |    12.324 | 1.962 |     4.314 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Experimental | 7 ano | pre    | pos    |    3.957 |    0.267 |     7.648 | 1.877 |     2.108 | 0.036   | 0.036   | \*           |
| score.tde | Experimental | 8 ano | pre    | pos    |   -7.632 |  -13.437 |    -1.827 | 2.952 |    -2.585 | 0.01    | 0.01    | \*           |
| score.tde | Experimental | 9 ano | pre    | pos    |   -1.594 |   -6.067 |     2.879 | 2.275 |    -0.701 | 0.484   | 0.484   | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
