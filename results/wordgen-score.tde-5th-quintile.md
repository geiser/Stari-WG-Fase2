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

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          |       | score.tde.pre |  72 | 58.028 |   57.0 |  52 |  72 |  4.887 | 0.576 |  1.148 |  7.25 |
| Controle     | M    |        |          |       | score.tde.pre |  52 | 59.442 |   58.0 |  52 |  75 |  5.919 | 0.821 |  1.648 |  8.25 |
| Experimental | F    |        |          |       | score.tde.pre |  86 | 58.395 |   58.0 |  52 |  73 |  4.990 | 0.538 |  1.070 |  7.75 |
| Experimental | M    |        |          |       | score.tde.pre |  48 | 58.229 |   57.0 |  52 |  71 |  5.150 | 0.743 |  1.495 |  8.00 |
| Controle     | F    |        |          |       | score.tde.pos |  72 | 54.500 |   55.5 |  24 |  72 |  9.710 | 1.144 |  2.282 | 10.25 |
| Controle     | M    |        |          |       | score.tde.pos |  52 | 55.231 |   57.5 |  22 |  73 | 12.460 | 1.728 |  3.469 | 13.00 |
| Experimental | F    |        |          |       | score.tde.pos |  86 | 56.651 |   58.0 |  14 |  73 | 10.095 | 1.089 |  2.164 | 11.75 |
| Experimental | M    |        |          |       | score.tde.pos |  48 | 54.250 |   55.5 |  22 |  74 | 11.446 | 1.652 |  3.323 | 13.25 |
| Controle     |      | Rural  |          |       | score.tde.pre |  53 | 58.264 |   57.0 |  52 |  69 |  4.772 | 0.656 |  1.315 |  8.00 |
| Controle     |      | Urbana |          |       | score.tde.pre |  29 | 59.966 |   58.0 |  52 |  75 |  6.293 | 1.169 |  2.394 |  8.00 |
| Controle     |      |        |          |       | score.tde.pre |  42 | 58.143 |   57.5 |  52 |  73 |  5.367 | 0.828 |  1.673 |  8.00 |
| Experimental |      | Rural  |          |       | score.tde.pre |  52 | 58.827 |   58.0 |  52 |  73 |  5.276 | 0.732 |  1.469 |  7.00 |
| Experimental |      | Urbana |          |       | score.tde.pre |  37 | 57.865 |   58.0 |  52 |  71 |  5.045 | 0.829 |  1.682 |  7.00 |
| Experimental |      |        |          |       | score.tde.pre |  45 | 58.156 |   57.0 |  52 |  69 |  4.781 | 0.713 |  1.436 |  8.00 |
| Controle     |      | Rural  |          |       | score.tde.pos |  53 | 56.491 |   57.0 |  24 |  72 |  9.549 | 1.312 |  2.632 | 12.00 |
| Controle     |      | Urbana |          |       | score.tde.pos |  29 | 53.103 |   55.0 |  28 |  73 | 10.814 | 2.008 |  4.114 | 11.00 |
| Controle     |      |        |          |       | score.tde.pos |  42 | 53.857 |   56.0 |  22 |  73 | 12.434 | 1.919 |  3.875 | 10.75 |
| Experimental |      | Rural  |          |       | score.tde.pos |  52 | 56.077 |   58.0 |  22 |  72 | 11.998 | 1.664 |  3.340 | 14.00 |
| Experimental |      | Urbana |          |       | score.tde.pos |  37 | 54.108 |   55.0 |  38 |  74 |  8.517 | 1.400 |  2.840 | 10.00 |
| Experimental |      |        |          |       | score.tde.pos |  45 | 56.844 |   58.0 |  14 |  73 | 10.536 | 1.571 |  3.165 | 11.00 |
| Controle     |      |        | Branca   |       | score.tde.pre |  11 | 60.000 |   61.0 |  52 |  67 |  4.712 | 1.421 |  3.165 |  4.00 |
| Controle     |      |        | Indígena |       | score.tde.pre |   3 | 56.667 |   53.0 |  52 |  65 |  7.234 | 4.177 | 17.971 |  6.50 |
| Controle     |      |        | Parda    |       | score.tde.pre |  35 | 57.286 |   57.0 |  52 |  66 |  3.900 | 0.659 |  1.340 |  5.50 |
| Controle     |      |        |          |       | score.tde.pre |  75 | 59.120 |   58.0 |  52 |  75 |  5.911 | 0.683 |  1.360 |  9.00 |
| Experimental |      |        | Branca   |       | score.tde.pre |  13 | 61.385 |   61.0 |  54 |  73 |  5.561 | 1.542 |  3.360 |  6.00 |
| Experimental |      |        | Indígena |       | score.tde.pre |   2 | 53.500 |   53.5 |  53 |  54 |  0.707 | 0.500 |  6.353 |  0.50 |
| Experimental |      |        | Parda    |       | score.tde.pre |  35 | 58.143 |   58.0 |  52 |  68 |  5.214 | 0.881 |  1.791 |  8.00 |
| Experimental |      |        |          |       | score.tde.pre |  84 | 58.060 |   57.0 |  52 |  71 |  4.775 | 0.521 |  1.036 |  8.00 |
| Controle     |      |        | Branca   |       | score.tde.pos |  11 | 55.273 |   59.0 |  22 |  72 | 13.342 | 4.023 |  8.964 | 11.00 |
| Controle     |      |        | Indígena |       | score.tde.pos |   3 | 60.333 |   63.0 |  55 |  63 |  4.619 | 2.667 | 11.474 |  4.00 |
| Controle     |      |        | Parda    |       | score.tde.pos |  35 | 52.086 |   54.0 |  24 |  68 | 10.354 | 1.750 |  3.557 |  9.50 |
| Controle     |      |        |          |       | score.tde.pos |  75 | 55.787 |   56.0 |  24 |  73 | 10.864 | 1.255 |  2.500 | 11.50 |
| Experimental |      |        | Branca   |       | score.tde.pos |  13 | 59.923 |   58.0 |  49 |  72 |  8.046 | 2.232 |  4.862 | 13.00 |
| Experimental |      |        | Indígena |       | score.tde.pos |   2 | 54.500 |   54.5 |  52 |  57 |  3.536 | 2.500 | 31.766 |  2.50 |
| Experimental |      |        | Parda    |       | score.tde.pos |  35 | 52.943 |   55.0 |  14 |  71 | 14.582 | 2.465 |  5.009 | 17.00 |
| Experimental |      |        |          |       | score.tde.pos |  84 | 56.369 |   57.0 |  24 |  74 |  8.808 | 0.961 |  1.912 | 12.00 |
| Controle     |      |        |          | 6 ano | score.tde.pre |  16 | 56.938 |   56.5 |  52 |  63 |  3.820 | 0.955 |  2.036 |  5.75 |
| Controle     |      |        |          | 7 ano | score.tde.pre |  23 | 57.957 |   57.0 |  52 |  69 |  4.477 | 0.934 |  1.936 |  5.50 |
| Controle     |      |        |          | 8 ano | score.tde.pre |  28 | 58.429 |   57.5 |  52 |  72 |  5.561 | 1.051 |  2.156 |  7.25 |
| Controle     |      |        |          | 9 ano | score.tde.pre |  57 | 59.456 |   58.0 |  52 |  75 |  5.904 | 0.782 |  1.567 |  8.00 |
| Experimental |      |        |          | 6 ano | score.tde.pre |  13 | 56.385 |   56.0 |  52 |  65 |  3.754 | 1.041 |  2.268 |  3.00 |
| Experimental |      |        |          | 7 ano | score.tde.pre |  30 | 57.933 |   57.0 |  52 |  68 |  4.502 | 0.822 |  1.681 |  8.00 |
| Experimental |      |        |          | 8 ano | score.tde.pre |  41 | 58.146 |   57.0 |  52 |  73 |  5.512 | 0.861 |  1.740 |  6.00 |
| Experimental |      |        |          | 9 ano | score.tde.pre |  50 | 59.240 |   58.5 |  52 |  71 |  5.141 | 0.727 |  1.461 |  7.75 |
| Controle     |      |        |          | 6 ano | score.tde.pos |  16 | 52.500 |   54.0 |  28 |  66 |  9.359 | 2.340 |  4.987 |  7.75 |
| Controle     |      |        |          | 7 ano | score.tde.pos |  23 | 51.696 |   56.0 |  22 |  72 | 14.968 | 3.121 |  6.473 | 12.00 |
| Controle     |      |        |          | 8 ano | score.tde.pos |  28 | 55.071 |   56.0 |  32 |  71 |  9.116 | 1.723 |  3.535 |  9.25 |
| Controle     |      |        |          | 9 ano | score.tde.pos |  57 | 56.579 |   58.0 |  31 |  73 | 10.046 | 1.331 |  2.666 | 12.00 |
| Experimental |      |        |          | 6 ano | score.tde.pos |  13 | 52.923 |   52.0 |  40 |  65 |  9.535 | 2.644 |  5.762 | 18.00 |
| Experimental |      |        |          | 7 ano | score.tde.pos |  30 | 51.167 |   54.0 |  22 |  67 | 11.841 | 2.162 |  4.422 | 11.75 |
| Experimental |      |        |          | 8 ano | score.tde.pos |  41 | 58.659 |   59.0 |  39 |  73 |  8.302 | 1.297 |  2.621 | 13.00 |
| Experimental |      |        |          | 9 ano | score.tde.pos |  50 | 56.960 |   57.0 |  14 |  74 | 10.999 | 1.555 |  3.126 |  8.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |  skewness | kurtosis | symmetry | statistic | method     |     p | p.signif | normality |
|:--------------|----:|----------:|---------:|:---------|----------:|:-----------|------:|:---------|:----------|
| score.tde.pos | 258 | -1.491525 | 3.548392 | NO       |  85.91342 | D’Agostino | 0e+00 | \*\*\*\* | \-        |
| score.tde.pos | 171 | -1.136942 | 1.940447 | NO       |  39.05520 | D’Agostino | 0e+00 | \*\*\*\* | QQ        |
| score.tde.pos |  99 | -1.352855 | 2.113046 | NO       |  31.22072 | D’Agostino | 2e-07 | \*\*\*\* | NO        |
| score.tde.pos | 258 | -1.365642 | 3.489673 | NO       |  79.05315 | D’Agostino | 0e+00 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 258 |       3 |     254 | 0.4274319 | 0.7335111 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 258 |       3 |     250 | 1.6650000 | 0.1750000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     | 171 |       3 |     167 | 0.5694662 | 0.6358691 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 171 |       3 |     163 | 0.8740000 | 0.4560000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  99 |       5 |      93 | 1.3338840 | 0.2568400 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  99 |       5 |      87 | 1.0490000 | 0.3950000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    | 258 |       7 |     250 | 2.0388511 | 0.0508765 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    | 258 |       7 |     242 | 0.3980000 | 0.9030000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect        | DFn | DFd |      SSn |      SSd |       F | p       |   ges | p\<.05 |
|:----|:--------------|----:|----:|---------:|---------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre |   1 | 255 | 8779.715 | 20843.79 | 107.410 | \<0.001 | 0.296 | \*     |
| 2   | grupo         |   1 | 255 |  109.778 | 20843.79 |   1.343 | 0.248   | 0.005 |        |
| 4   | Sexo          |   1 | 255 |  161.570 | 20792.00 |   1.982 | 0.16    | 0.008 |        |
| 6   | Zona          |   1 | 168 |  337.545 | 12368.73 |   4.585 | 0.034   | 0.027 | \*     |
| 8   | Cor.Raca      |   2 |  95 |  337.126 | 10919.84 |   1.466 | 0.236   | 0.030 |        |
| 10  | Serie         |   3 | 253 |  933.073 | 20020.49 |   3.930 | 0.009   | 0.045 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |      SSn |      SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|---------:|---------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre  |   1 | 253 | 8759.591 | 20670.17 | 107.216 | \<0.001 | 0.298 | \*     |
| 4   | grupo:Sexo     |   1 | 253 |   27.386 | 20670.17 |   0.335 | 0.563   | 0.001 |        |
| 8   | grupo:Zona     |   1 | 166 |  191.580 | 12160.41 |   2.615 | 0.108   | 0.016 |        |
| 12  | grupo:Cor.Raca |   2 |  92 |   56.103 | 10855.91 |   0.238 | 0.789   | 0.005 |        |
| 16  | grupo:Serie    |   3 | 249 |  167.574 | 19746.34 |   0.704 | 0.55    | 0.008 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 124 |  58.621 |    0.482 |    54.806 |      0.979 |  54.639 |    0.812 |
| score.tde.pos | Experimental | 134 |  58.336 |    0.434 |    55.791 |      0.917 |  55.946 |    0.781 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |   -1.306 |   -3.526 |     0.913 | 1.127 |    -1.159 | 0.248 | 0.248 | ns           |
| score.tde.pre | Controle | Experimental |    0.285 |   -0.989 |     1.560 | 0.647 |     0.441 | 0.660 | 0.660 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | pre    | pos    |    3.815 |    1.707 |     5.922 | 1.073 |     3.556 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde | Experimental | pre    | pos    |    2.545 |    0.517 |     4.572 | 1.032 |     2.466 | 0.014   | 0.014   | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  72 |  58.028 |    0.576 |    54.500 |      1.144 |  55.003 |    1.066 |
| score.tde.pos | Controle     | M    |  52 |  59.442 |    0.821 |    55.231 |      1.728 |  54.134 |    1.258 |
| score.tde.pos | Experimental | F    |  86 |  58.395 |    0.538 |    56.651 |      1.089 |  56.739 |    0.975 |
| score.tde.pos | Experimental | M    |  48 |  58.229 |    0.743 |    54.250 |      1.652 |  54.526 |    1.305 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -1.735 |   -4.580 |     1.109 | 1.444 |    -1.201 | 0.231 | 0.231 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |   -0.392 |   -3.964 |     3.181 | 1.814 |    -0.216 | 0.829 | 0.829 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |   -0.368 |   -2.001 |     1.266 | 0.829 |    -0.443 | 0.658 | 0.658 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |    1.213 |   -0.833 |     3.260 | 1.039 |     1.167 | 0.244 | 0.244 | ns           |
| score.tde.pos | Controle     |      | F        | M            |    0.869 |   -2.385 |     4.123 | 1.652 |     0.526 | 0.599 | 0.599 | ns           |
| score.tde.pos | Experimental |      | F        | M            |    2.213 |   -0.994 |     5.421 | 1.629 |     1.359 | 0.175 | 0.175 | ns           |
| score.tde.pre | Controle     |      | F        | M            |   -1.415 |   -3.275 |     0.446 | 0.945 |    -1.497 | 0.136 | 0.136 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    0.166 |   -1.676 |     2.008 | 0.935 |     0.178 | 0.859 | 0.859 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    3.528 |    0.761 |     6.295 | 1.408 |     2.505 | 0.013 | 0.013 | \*           |
| score.tde | Controle     | M    | pre    | pos    |    4.212 |    0.956 |     7.467 | 1.657 |     2.541 | 0.011 | 0.011 | \*           |
| score.tde | Experimental | F    | pre    | pos    |    1.744 |   -0.788 |     4.276 | 1.289 |     1.353 | 0.177 | 0.177 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    3.979 |    0.590 |     7.368 | 1.725 |     2.307 | 0.021 | 0.021 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  53 |  58.264 |    0.656 |    56.491 |      1.312 |  56.909 |    1.177 |
| score.tde.pos | Controle     | Urbana |  29 |  59.966 |    1.169 |    53.103 |      2.008 |  51.616 |    1.598 |
| score.tde.pos | Experimental | Rural  |  52 |  58.827 |    0.732 |    56.077 |      1.664 |  55.865 |    1.187 |
| score.tde.pos | Experimental | Urbana |  37 |  57.865 |    0.829 |    54.108 |      1.400 |  54.974 |    1.410 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |    1.044 |   -2.257 |     4.345 | 1.672 |     0.624 | 0.533 | 0.533 | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |   -3.358 |   -7.581 |     0.866 | 2.139 |    -1.570 | 0.118 | 0.118 | ns           |
| score.tde.pre |              | Rural  | Controle | Experimental |   -0.563 |   -2.592 |     1.466 | 1.028 |    -0.548 | 0.585 | 0.585 | ns           |
| score.tde.pre |              | Urbana | Controle | Experimental |    2.101 |   -0.477 |     4.679 | 1.306 |     1.609 | 0.110 | 0.110 | ns           |
| score.tde.pos | Controle     |        | Rural    | Urbana       |    5.293 |    1.367 |     9.219 | 1.988 |     2.662 | 0.009 | 0.009 | \*\*         |
| score.tde.pos | Experimental |        | Rural    | Urbana       |    0.891 |   -2.751 |     4.533 | 1.845 |     0.483 | 0.630 | 0.630 | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |   -1.701 |   -4.102 |     0.699 | 1.216 |    -1.399 | 0.164 | 0.164 | ns           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |    0.962 |   -1.274 |     3.198 | 1.132 |     0.850 | 0.397 | 0.397 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    1.774 |   -1.370 |     4.917 | 1.598 |     1.110 | 0.268 | 0.268 | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |    6.862 |    2.613 |    11.111 | 2.160 |     3.177 | 0.002 | 0.002 | \*\*         |
| score.tde | Experimental | Rural  | pre    | pos    |    2.750 |   -0.423 |     5.923 | 1.613 |     1.705 | 0.089 | 0.089 | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |    3.757 |   -0.005 |     7.519 | 1.912 |     1.964 | 0.050 | 0.050 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |  11 |  60.000 |    1.421 |    55.273 |      4.023 |  53.541 |    3.335 |
| score.tde.pos | Controle     | Parda    |  35 |  57.286 |    0.659 |    52.086 |      1.750 |  53.466 |    1.881 |
| score.tde.pos | Experimental | Branca   |  13 |  61.385 |    1.542 |    59.923 |      2.232 |  56.603 |    3.130 |
| score.tde.pos | Experimental | Parda    |  35 |  58.143 |    0.881 |    52.943 |      2.465 |  53.340 |    1.860 |

| .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Branca   | Controle | Experimental |   -3.063 |  -12.037 |     5.911 | 4.516 |    -0.678 | 0.499 | 0.499 | ns           |
| score.tde.pos |              | Parda    | Controle | Experimental |    0.126 |   -5.113 |     5.364 | 2.636 |     0.048 | 0.962 | 0.962 | ns           |
| score.tde.pre |              | Branca   | Controle | Experimental |   -1.385 |   -5.254 |     2.485 | 1.948 |    -0.711 | 0.479 | 0.479 | ns           |
| score.tde.pre |              | Parda    | Controle | Experimental |   -0.857 |   -3.115 |     1.401 | 1.137 |    -0.754 | 0.453 | 0.453 | ns           |
| score.tde.pos | Controle     |          | Branca   | Parda        |    0.075 |   -7.590 |     7.739 | 3.857 |     0.019 | 0.985 | 0.985 | ns           |
| score.tde.pos | Experimental |          | Branca   | Parda        |    3.263 |   -4.004 |    10.530 | 3.657 |     0.892 | 0.375 | 0.375 | ns           |
| score.tde.pre | Controle     |          | Branca   | Parda        |    2.714 |   -0.551 |     5.979 | 1.643 |     1.652 | 0.102 | 0.102 | ns           |
| score.tde.pre | Experimental |          | Branca   | Parda        |    3.242 |    0.174 |     6.310 | 1.544 |     2.099 | 0.039 | 0.039 | \*           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |    4.727 |   -3.072 |    12.527 | 3.953 |     1.196 | 0.233 | 0.233 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    5.200 |    0.828 |     9.572 | 2.216 |     2.347 | 0.020 | 0.020 | \*           |
| score.tde | Experimental | Branca   | pre    | pos    |    1.462 |   -5.713 |     8.636 | 3.636 |     0.402 | 0.688 | 0.688 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |    5.200 |    0.828 |     9.572 | 2.216 |     2.347 | 0.020 | 0.020 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var           | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 6 ano |  16 |  56.938 |    0.955 |    52.500 |      2.340 |  54.200 |    2.233 |
| score.tde.pos | Controle     | 7 ano |  23 |  57.957 |    0.934 |    51.696 |      3.121 |  52.267 |    1.858 |
| score.tde.pos | Controle     | 8 ano |  28 |  58.429 |    1.051 |    55.071 |      1.723 |  55.120 |    1.683 |
| score.tde.pos | Controle     | 9 ano |  57 |  59.456 |    0.782 |    56.579 |      1.331 |  55.490 |    1.184 |
| score.tde.pos | Experimental | 6 ano |  13 |  56.385 |    1.041 |    52.923 |      2.644 |  55.236 |    2.480 |
| score.tde.pos | Experimental | 7 ano |  30 |  57.933 |    0.822 |    51.167 |      2.162 |  51.764 |    1.627 |
| score.tde.pos | Experimental | 8 ano |  41 |  58.146 |    0.861 |    58.659 |      1.297 |  59.020 |    1.391 |
| score.tde.pos | Experimental | 9 ano |  50 |  59.240 |    0.727 |    56.960 |      1.555 |  56.110 |    1.262 |

| .y.           | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj | p.adj.signif |
|:--------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|------:|:-------------|
| score.tde.pos |              | 6 ano | Controle | Experimental |   -1.035 |   -7.585 |     5.515 | 3.326 |    -0.311 | 0.756   | 0.756 | ns           |
| score.tde.pos |              | 7 ano | Controle | Experimental |    0.503 |   -4.358 |     5.364 | 2.468 |     0.204 | 0.839   | 0.839 | ns           |
| score.tde.pos |              | 8 ano | Controle | Experimental |   -3.900 |   -8.200 |     0.401 | 2.183 |    -1.786 | 0.075   | 0.075 | ns           |
| score.tde.pos |              | 9 ano | Controle | Experimental |   -0.620 |   -4.019 |     2.778 | 1.726 |    -0.360 | 0.72    | 0.720 | ns           |
| score.tde.pre |              | 6 ano | Controle | Experimental |    0.553 |   -3.258 |     4.364 | 1.935 |     0.286 | 0.775   | 0.775 | ns           |
| score.tde.pre |              | 7 ano | Controle | Experimental |    0.023 |   -2.806 |     2.852 | 1.436 |     0.016 | 0.987   | 0.987 | ns           |
| score.tde.pre |              | 8 ano | Controle | Experimental |    0.282 |   -2.220 |     2.784 | 1.271 |     0.222 | 0.824   | 0.824 | ns           |
| score.tde.pre |              | 9 ano | Controle | Experimental |    0.216 |   -1.762 |     2.194 | 1.004 |     0.215 | 0.83    | 0.830 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 7 ano        |    1.933 |   -3.781 |     7.647 | 2.901 |     0.666 | 0.506   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 8 ano        |   -0.920 |   -6.426 |     4.586 | 2.796 |    -0.329 | 0.742   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 9 ano        |   -1.290 |   -6.281 |     3.702 | 2.534 |    -0.509 | 0.611   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 7 ano    | 8 ano        |   -2.853 |   -7.790 |     2.084 | 2.507 |    -1.138 | 0.256   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 7 ano    | 9 ano        |   -3.223 |   -7.567 |     1.122 | 2.206 |    -1.461 | 0.145   | 0.872 | ns           |
| score.tde.pos | Controle     |       | 8 ano    | 9 ano        |   -0.370 |   -4.423 |     3.684 | 2.058 |    -0.180 | 0.858   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 7 ano        |    3.472 |   -2.362 |     9.305 | 2.962 |     1.172 | 0.242   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 8 ano        |   -3.784 |   -9.380 |     1.811 | 2.841 |    -1.332 | 0.184   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 9 ano        |   -0.875 |   -6.369 |     4.620 | 2.790 |    -0.314 | 0.754   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 7 ano    | 8 ano        |   -7.256 |  -11.470 |    -3.042 | 2.140 |    -3.391 | \<0.001 | 0.005 | \*\*         |
| score.tde.pos | Experimental |       | 7 ano    | 9 ano        |   -4.346 |   -8.406 |    -0.286 | 2.061 |    -2.108 | 0.036   | 0.216 | ns           |
| score.tde.pos | Experimental |       | 8 ano    | 9 ano        |    2.910 |   -0.793 |     6.612 | 1.880 |     1.548 | 0.123   | 0.738 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 7 ano        |   -1.019 |   -4.342 |     2.304 | 1.687 |    -0.604 | 0.546   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 8 ano        |   -1.491 |   -4.690 |     1.708 | 1.624 |    -0.918 | 0.359   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 9 ano        |   -2.519 |   -5.406 |     0.369 | 1.466 |    -1.718 | 0.087   | 0.522 | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 8 ano        |   -0.472 |   -3.344 |     2.400 | 1.458 |    -0.324 | 0.746   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 9 ano        |   -1.500 |   -4.021 |     1.022 | 1.280 |    -1.171 | 0.243   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 8 ano    | 9 ano        |   -1.028 |   -3.383 |     1.328 | 1.196 |    -0.859 | 0.391   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 7 ano        |   -1.549 |   -4.938 |     1.840 | 1.721 |    -0.900 | 0.369   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 8 ano        |   -1.762 |   -5.010 |     1.487 | 1.650 |    -1.068 | 0.287   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 9 ano        |   -2.855 |   -6.033 |     0.322 | 1.613 |    -1.770 | 0.078   | 0.468 | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 8 ano        |   -0.213 |   -2.665 |     2.239 | 1.245 |    -0.171 | 0.864   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 9 ano        |   -1.307 |   -3.664 |     1.050 | 1.197 |    -1.092 | 0.276   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 8 ano    | 9 ano        |   -1.094 |   -3.244 |     1.057 | 1.092 |    -1.002 | 0.317   | 1.000 | ns           |

| .y.       | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 6 ano | pre    | pos    |    4.437 |   -1.349 |    10.224 | 2.945 |     1.507 | 0.133 | 0.133 | ns           |
| score.tde | Controle     | 7 ano | pre    | pos    |    6.261 |    1.435 |    11.087 | 2.456 |     2.549 | 0.011 | 0.011 | \*           |
| score.tde | Controle     | 8 ano | pre    | pos    |    3.357 |   -1.017 |     7.731 | 2.226 |     1.508 | 0.132 | 0.132 | ns           |
| score.tde | Controle     | 9 ano | pre    | pos    |    2.877 |   -0.188 |     5.943 | 1.560 |     1.844 | 0.066 | 0.066 | ns           |
| score.tde | Experimental | 6 ano | pre    | pos    |    3.462 |   -2.958 |     9.881 | 3.267 |     1.059 | 0.290 | 0.290 | ns           |
| score.tde | Experimental | 7 ano | pre    | pos    |    6.767 |    2.541 |    10.992 | 2.151 |     3.146 | 0.002 | 0.002 | \*\*         |
| score.tde | Experimental | 8 ano | pre    | pos    |   -0.512 |   -4.127 |     3.103 | 1.840 |    -0.278 | 0.781 | 0.781 | ns           |
| score.tde | Experimental | 9 ano | pre    | pos    |    2.280 |   -0.993 |     5.553 | 1.666 |     1.369 | 0.172 | 0.172 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-5th-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
