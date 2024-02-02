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
    - [factores: **grupo:Serie**](#factores-gruposerie)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Vocabulario (acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Vocabulario (acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable  |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:----------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          |       | vocab.pre |  57 | 37.965 |   37.0 |  35 |  45 |  2.618 | 0.347 | 0.695 |  3.00 |
| Controle     | M    |        |          |       | vocab.pre |  51 | 38.431 |   39.0 |  35 |  45 |  2.744 | 0.384 | 0.772 |  4.00 |
| Experimental | F    |        |          |       | vocab.pre |  90 | 38.178 |   38.0 |  35 |  44 |  2.424 | 0.256 | 0.508 |  4.00 |
| Experimental | M    |        |          |       | vocab.pre |  72 | 38.125 |   37.0 |  35 |  48 |  2.773 | 0.327 | 0.652 |  4.00 |
| Controle     | F    |        |          |       | vocab.pos |  57 | 37.158 |   37.0 |  10 |  45 |  5.870 | 0.777 | 1.558 |  5.00 |
| Controle     | M    |        |          |       | vocab.pos |  51 | 35.529 |   38.0 |  11 |  45 |  8.327 | 1.166 | 2.342 |  8.00 |
| Experimental | F    |        |          |       | vocab.pos |  90 | 38.089 |   38.5 |  16 |  47 |  5.025 | 0.530 | 1.052 |  5.00 |
| Experimental | M    |        |          |       | vocab.pos |  72 | 37.042 |   37.0 |  17 |  45 |  5.665 | 0.668 | 1.331 |  6.00 |
| Controle     |      | Rural  |          |       | vocab.pre |  43 | 37.465 |   37.0 |  35 |  45 |  2.585 | 0.394 | 0.796 |  4.00 |
| Controle     |      | Urbana |          |       | vocab.pre |  28 | 37.679 |   37.0 |  35 |  43 |  2.178 | 0.412 | 0.845 |  2.25 |
| Controle     |      |        |          |       | vocab.pre |  37 | 39.405 |   39.0 |  35 |  45 |  2.753 | 0.453 | 0.918 |  5.00 |
| Experimental |      | Rural  |          |       | vocab.pre |  56 | 38.286 |   38.0 |  35 |  44 |  2.462 | 0.329 | 0.659 |  3.25 |
| Experimental |      | Urbana |          |       | vocab.pre |  50 | 38.120 |   37.0 |  35 |  48 |  2.811 | 0.398 | 0.799 |  3.00 |
| Experimental |      |        |          |       | vocab.pre |  56 | 38.054 |   37.5 |  35 |  44 |  2.511 | 0.336 | 0.673 |  4.00 |
| Controle     |      | Rural  |          |       | vocab.pos |  43 | 36.930 |   37.0 |  11 |  45 |  6.606 | 1.007 | 2.033 |  7.00 |
| Controle     |      | Urbana |          |       | vocab.pos |  28 | 37.286 |   38.0 |  22 |  45 |  4.446 | 0.840 | 1.724 |  3.50 |
| Controle     |      |        |          |       | vocab.pos |  37 | 35.081 |   39.0 |  10 |  44 |  9.133 | 1.501 | 3.045 |  9.00 |
| Experimental |      | Rural  |          |       | vocab.pos |  56 | 37.036 |   38.5 |  16 |  46 |  6.904 | 0.923 | 1.849 |  6.25 |
| Experimental |      | Urbana |          |       | vocab.pos |  50 | 38.120 |   38.5 |  26 |  46 |  4.129 | 0.584 | 1.173 |  5.00 |
| Experimental |      |        |          |       | vocab.pos |  56 | 37.768 |   37.5 |  23 |  47 |  4.431 | 0.592 | 1.187 |  6.25 |
| Controle     |      |        | Branca   |       | vocab.pre |   7 | 39.143 |   38.0 |  36 |  45 |  3.579 | 1.353 | 3.310 |  5.50 |
| Controle     |      |        | Indígena |       | vocab.pre |   1 | 41.000 |   41.0 |  41 |  41 |        |       |       |  0.00 |
| Controle     |      |        | Parda    |       | vocab.pre |  32 | 37.625 |   37.0 |  35 |  45 |  2.311 | 0.408 | 0.833 |  3.00 |
| Controle     |      |        |          |       | vocab.pre |  68 | 38.309 |   38.0 |  35 |  45 |  2.728 | 0.331 | 0.660 |  4.00 |
| Experimental |      |        | Branca   |       | vocab.pre |  16 | 38.500 |   38.0 |  36 |  41 |  1.713 | 0.428 | 0.913 |  3.00 |
| Experimental |      |        | Parda    |       | vocab.pre |  36 | 38.306 |   38.0 |  35 |  44 |  2.628 | 0.438 | 0.889 |  3.25 |
| Experimental |      |        |          |       | vocab.pre | 110 | 38.055 |   37.0 |  35 |  48 |  2.675 | 0.255 | 0.505 |  4.00 |
| Controle     |      |        | Branca   |       | vocab.pos |   7 | 40.857 |   42.0 |  36 |  45 |  3.388 | 1.280 | 3.133 |  4.50 |
| Controle     |      |        | Indígena |       | vocab.pos |   1 | 43.000 |   43.0 |  43 |  43 |        |       |       |  0.00 |
| Controle     |      |        | Parda    |       | vocab.pos |  32 | 35.812 |   37.0 |  10 |  45 |  7.664 | 1.355 | 2.763 |  6.25 |
| Controle     |      |        |          |       | vocab.pos |  68 | 36.103 |   38.0 |  11 |  45 |  7.101 | 0.861 | 1.719 |  6.25 |
| Experimental |      |        | Branca   |       | vocab.pos |  16 | 39.750 |   40.0 |  35 |  47 |  3.152 | 0.788 | 1.679 |  4.00 |
| Experimental |      |        | Parda    |       | vocab.pos |  36 | 38.222 |   39.0 |  17 |  46 |  5.404 | 0.901 | 1.829 |  6.25 |
| Experimental |      |        |          |       | vocab.pos | 110 | 37.118 |   38.0 |  16 |  46 |  5.490 | 0.523 | 1.037 |  6.00 |
| Controle     |      |        |          | 6 ano | vocab.pre |  13 | 37.000 |   37.0 |  35 |  41 |  1.871 | 0.519 | 1.131 |  3.00 |
| Controle     |      |        |          | 7 ano | vocab.pre |  23 | 37.652 |   37.0 |  35 |  45 |  2.347 | 0.489 | 1.015 |  1.50 |
| Controle     |      |        |          | 8 ano | vocab.pre |  22 | 38.091 |   37.0 |  35 |  45 |  3.022 | 0.644 | 1.340 |  4.50 |
| Controle     |      |        |          | 9 ano | vocab.pre |  50 | 38.780 |   38.0 |  35 |  45 |  2.743 | 0.388 | 0.779 |  4.00 |
| Experimental |      |        |          | 6 ano | vocab.pre |  17 | 37.059 |   37.0 |  35 |  43 |  2.076 | 0.503 | 1.067 |  3.00 |
| Experimental |      |        |          | 7 ano | vocab.pre |  35 | 38.229 |   37.0 |  35 |  43 |  2.315 | 0.391 | 0.795 |  2.50 |
| Experimental |      |        |          | 8 ano | vocab.pre |  51 | 37.961 |   38.0 |  35 |  43 |  2.315 | 0.324 | 0.651 |  4.00 |
| Experimental |      |        |          | 9 ano | vocab.pre |  59 | 38.593 |   38.0 |  35 |  48 |  2.983 | 0.388 | 0.777 |  5.00 |
| Controle     |      |        |          | 6 ano | vocab.pos |  13 | 36.923 |   37.0 |  33 |  40 |  2.060 | 0.571 | 1.245 |  2.00 |
| Controle     |      |        |          | 7 ano | vocab.pos |  23 | 35.130 |   37.0 |  11 |  45 |  7.238 | 1.509 | 3.130 |  4.50 |
| Controle     |      |        |          | 8 ano | vocab.pos |  22 | 33.864 |   39.0 |  10 |  45 | 11.141 | 2.375 | 4.940 | 11.00 |
| Controle     |      |        |          | 9 ano | vocab.pos |  50 | 37.940 |   39.0 |  22 |  45 |  5.262 | 0.744 | 1.495 |  7.75 |
| Experimental |      |        |          | 6 ano | vocab.pos |  17 | 37.059 |   40.0 |  21 |  43 |  6.057 | 1.469 | 3.114 |  5.00 |
| Experimental |      |        |          | 7 ano | vocab.pos |  35 | 35.914 |   37.0 |  17 |  46 |  5.938 | 1.004 | 2.040 |  4.50 |
| Experimental |      |        |          | 8 ano | vocab.pos |  51 | 37.549 |   38.0 |  16 |  44 |  5.471 | 0.766 | 1.539 |  6.00 |
| Experimental |      |        |          | 9 ano | vocab.pos |  59 | 38.864 |   39.0 |  27 |  47 |  4.333 | 0.564 | 1.129 |  5.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |  skewness | kurtosis | symmetry | statistic | method     |   p | p.signif | normality |
|:----------|----:|----------:|---------:|:---------|----------:|:-----------|----:|:---------|:----------|
| vocab.pos | 270 | -1.971868 | 5.478122 | NO       | 126.35711 | D’Agostino |   0 | \*\*\*\* | \-        |
| vocab.pos | 177 | -1.882228 | 5.345584 | NO       |  84.77603 | D’Agostino |   0 | \*\*\*\* | QQ        |
| vocab.pos |  92 | -1.976971 | 6.181404 | NO       |  55.70645 | D’Agostino |   0 | \*\*\*\* | NO        |
| vocab.pos | 270 | -1.760568 | 4.509882 | NO       | 109.90381 | D’Agostino |   0 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 270 |       3 |     266 |  1.865092 | 0.1358184 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 270 |       3 |     262 |  2.084000 | 0.1030000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     | 177 |       3 |     173 |  2.084154 | 0.1040900 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 177 |       3 |     169 |  0.620000 | 0.6030000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  92 |       4 |      87 |  1.679845 | 0.1619124 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  92 |       3 |      83 |  1.200000 | 0.3150000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    | 270 |       7 |     262 |  2.704731 | 0.0100842 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    | 270 |       7 |     254 |  0.861000 | 0.5380000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |     SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:----------|----:|----:|--------:|---------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre |   1 | 267 | 698.941 | 9338.756 | 19.983 | \<0.001 | 0.070 | \*     |
| 2   | grupo     |   1 | 267 | 101.833 | 9338.756 |  2.911 | 0.089   | 0.011 |        |
| 4   | Sexo      |   1 | 267 | 133.218 | 9307.371 |  3.822 | 0.052   | 0.014 |        |
| 6   | Zona      |   1 | 174 |  28.862 | 5508.063 |  0.912 | 0.341   | 0.005 |        |
| 8   | Cor.Raca  |   2 |  88 | 126.985 | 3006.013 |  1.859 | 0.162   | 0.041 |        |
| 10  | Serie     |   3 | 265 | 262.359 | 9178.230 |  2.525 | 0.058   | 0.028 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre      |   1 | 265 | 723.983 | 9198.466 | 20.857 | \<0.001 | 0.073 | \*     |
| 4   | grupo:Sexo     |   1 | 265 |  13.231 | 9198.466 |  0.381 | 0.538   | 0.001 |        |
| 8   | grupo:Zona     |   1 | 172 |   8.961 | 5498.934 |  0.280 | 0.597   | 0.002 |        |
| 12  | grupo:Cor.Raca |   1 |  86 |  30.588 | 2931.493 |  0.897 | 0.346   | 0.010 |        |
| 16  | grupo:Serie    |   3 | 261 | 114.190 | 8928.984 |  1.113 | 0.344   | 0.013 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 108 |  38.185 |    0.258 |    36.389 |      0.688 |  36.377 |    0.569 |
| vocab.pos | Experimental | 162 |  38.154 |    0.202 |    37.623 |      0.419 |  37.631 |    0.465 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -1.254 |   -2.700 |     0.193 | 0.735 |    -1.706 | 0.089 | 0.089 | ns           |
| vocab.pre | Controle | Experimental |    0.031 |   -0.609 |     0.671 | 0.325 |     0.095 | 0.924 | 0.924 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |    1.796 |    0.538 |     3.054 | 0.640 |     2.805 | 0.005 | 0.005 | \*\*         |
| vocab | Experimental | pre    | pos    |    0.531 |   -0.496 |     1.558 | 0.523 |     1.015 | 0.310 | 0.310 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  57 |  37.965 |    0.347 |    37.158 |      0.777 |  37.285 |    0.781 |
| vocab.pos | Controle     | M    |  51 |  38.431 |    0.384 |    35.529 |      1.166 |  35.363 |    0.826 |
| vocab.pos | Experimental | F    |  90 |  38.178 |    0.256 |    38.089 |      0.530 |  38.082 |    0.621 |
| vocab.pos | Experimental | M    |  72 |  38.125 |    0.327 |    37.042 |      0.668 |  37.068 |    0.694 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -0.797 |   -2.762 |     1.167 | 0.998 |    -0.799 | 0.425 | 0.425 | ns           |
| vocab.pos |              | M    | Controle | Experimental |   -1.705 |   -3.830 |     0.420 | 1.079 |    -1.580 | 0.115 | 0.115 | ns           |
| vocab.pre |              | F    | Controle | Experimental |   -0.213 |   -1.087 |     0.661 | 0.444 |    -0.479 | 0.632 | 0.632 | ns           |
| vocab.pre |              | M    | Controle | Experimental |    0.306 |   -0.639 |     1.251 | 0.480 |     0.638 | 0.524 | 0.524 | ns           |
| vocab.pos | Controle     |      | F        | M            |    1.922 |   -0.318 |     4.161 | 1.137 |     1.690 | 0.092 | 0.092 | ns           |
| vocab.pos | Experimental |      | F        | M            |    1.014 |   -0.820 |     2.848 | 0.932 |     1.089 | 0.277 | 0.277 | ns           |
| vocab.pre | Controle     |      | F        | M            |   -0.466 |   -1.462 |     0.529 | 0.505 |    -0.923 | 0.357 | 0.357 | ns           |
| vocab.pre | Experimental |      | F        | M            |    0.053 |   -0.764 |     0.869 | 0.415 |     0.127 | 0.899 | 0.899 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |    0.807 |   -0.922 |     2.536 | 0.880 |     0.917 | 0.360 | 0.360 | ns           |
| vocab | Controle     | M    | pre    | pos    |    2.902 |    1.074 |     4.730 | 0.931 |     3.118 | 0.002 | 0.002 | \*\*         |
| vocab | Experimental | F    | pre    | pos    |    0.089 |   -1.287 |     1.465 | 0.701 |     0.127 | 0.899 | 0.899 | ns           |
| vocab | Experimental | M    | pre    | pos    |    1.083 |   -0.455 |     2.622 | 0.783 |     1.383 | 0.167 | 0.167 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var       | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Rural  |  43 |  37.465 |    0.394 |    36.930 |      1.007 |  37.187 |    0.866 |
| vocab.pos | Controle     | Urbana |  28 |  37.679 |    0.412 |    37.286 |      0.840 |  37.428 |    1.069 |
| vocab.pos | Experimental | Rural  |  56 |  38.286 |    0.329 |    37.036 |      0.923 |  36.852 |    0.758 |
| vocab.pos | Experimental | Urbana |  50 |  38.120 |    0.398 |    38.120 |      0.584 |  38.025 |    0.800 |

| .y.       | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Rural  | Controle | Experimental |    0.335 |   -1.945 |     2.614 | 1.155 |     0.290 | 0.772 | 0.772 | ns           |
| vocab.pos |              | Urbana | Controle | Experimental |   -0.598 |   -3.236 |     2.041 | 1.337 |    -0.447 | 0.655 | 0.655 | ns           |
| vocab.pre |              | Rural  | Controle | Experimental |   -0.821 |   -1.843 |     0.202 | 0.518 |    -1.584 | 0.115 | 0.115 | ns           |
| vocab.pre |              | Urbana | Controle | Experimental |   -0.441 |   -1.632 |     0.749 | 0.603 |    -0.732 | 0.465 | 0.465 | ns           |
| vocab.pos | Controle     |        | Rural    | Urbana       |   -0.241 |   -2.952 |     2.470 | 1.374 |    -0.175 | 0.861 | 0.861 | ns           |
| vocab.pos | Experimental |        | Rural    | Urbana       |   -1.173 |   -3.345 |     0.999 | 1.100 |    -1.066 | 0.288 | 0.288 | ns           |
| vocab.pre | Controle     |        | Rural    | Urbana       |   -0.213 |   -1.438 |     1.011 | 0.620 |    -0.344 | 0.731 | 0.731 | ns           |
| vocab.pre | Experimental |        | Rural    | Urbana       |    0.166 |   -0.816 |     1.147 | 0.497 |     0.333 | 0.739 | 0.739 | ns           |

| .y.   | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Rural  | pre    | pos    |    0.535 |   -1.367 |     2.436 | 0.967 |     0.553 | 0.580 | 0.580 | ns           |
| vocab | Controle     | Urbana | pre    | pos    |    0.393 |   -1.964 |     2.749 | 1.198 |     0.328 | 0.743 | 0.743 | ns           |
| vocab | Experimental | Rural  | pre    | pos    |    1.250 |   -0.416 |     2.916 | 0.847 |     1.475 | 0.141 | 0.141 | ns           |
| vocab | Experimental | Urbana | pre    | pos    |    0.000 |   -1.763 |     1.763 | 0.897 |     0.000 | 1.000 | 1.000 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |   7 |  39.143 |    1.353 |    40.857 |      1.280 |  40.373 |    2.221 |
| vocab.pos | Controle     | Parda    |  32 |  37.625 |    0.408 |    35.812 |      1.355 |  36.080 |    1.041 |
| vocab.pos | Experimental | Branca   |  16 |  38.500 |    0.428 |    39.750 |      0.788 |  39.584 |    1.462 |
| vocab.pos | Experimental | Parda    |  36 |  38.306 |    0.438 |    38.222 |      0.901 |  38.153 |    0.974 |

| .y.       | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Branca   | Controle | Experimental |    0.789 |   -4.481 |     6.058 | 2.651 |     0.298 | 0.767 | 0.767 | ns           |
| vocab.pos |              | Parda    | Controle | Experimental |   -2.073 |   -4.913 |     0.768 | 1.429 |    -1.450 | 0.151 | 0.151 | ns           |
| vocab.pre |              | Branca   | Controle | Experimental |    0.643 |   -1.576 |     2.862 | 1.116 |     0.576 | 0.566 | 0.566 | ns           |
| vocab.pre |              | Parda    | Controle | Experimental |   -0.681 |   -1.870 |     0.509 | 0.599 |    -1.137 | 0.259 | 0.259 | ns           |
| vocab.pos | Controle     |          | Branca   | Parda        |    4.293 |   -0.610 |     9.196 | 2.466 |     1.741 | 0.085 | 0.085 | ns           |
| vocab.pos | Experimental |          | Branca   | Parda        |    1.431 |   -2.057 |     4.920 | 1.755 |     0.816 | 0.417 | 0.417 | ns           |
| vocab.pre | Controle     |          | Branca   | Parda        |    1.518 |   -0.525 |     3.561 | 1.028 |     1.477 | 0.143 | 0.143 | ns           |
| vocab.pre | Experimental |          | Branca   | Parda        |    0.194 |   -1.277 |     1.666 | 0.740 |     0.263 | 0.793 | 0.793 | ns           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |   -1.714 |   -6.506 |     3.077 | 2.428 |    -0.706 | 0.481 | 0.481 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |    1.812 |   -0.428 |     4.053 | 1.135 |     1.596 | 0.112 | 0.112 | ns           |
| vocab | Experimental | Branca   | pre    | pos    |   -1.250 |   -4.419 |     1.919 | 1.606 |    -0.778 | 0.437 | 0.437 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |    0.083 |   -2.029 |     2.196 | 1.070 |     0.078 | 0.938 | 0.938 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var       | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 6 ano |  13 |  37.000 |    0.519 |    36.923 |      0.571 |  37.610 |    1.630 |
| vocab.pos | Controle     | 7 ano |  23 |  37.652 |    0.489 |    35.130 |      1.509 |  35.433 |    1.222 |
| vocab.pos | Controle     | 8 ano |  22 |  38.091 |    0.644 |    33.864 |      2.375 |  33.908 |    1.247 |
| vocab.pos | Controle     | 9 ano |  50 |  38.780 |    0.388 |    37.940 |      0.744 |  37.579 |    0.832 |
| vocab.pos | Experimental | 6 ano |  17 |  37.059 |    0.503 |    37.059 |      1.469 |  37.711 |    1.427 |
| vocab.pos | Experimental | 7 ano |  35 |  38.229 |    0.391 |    35.914 |      1.004 |  35.878 |    0.989 |
| vocab.pos | Experimental | 8 ano |  51 |  37.961 |    0.324 |    37.549 |      0.766 |  37.670 |    0.820 |
| vocab.pos | Experimental | 9 ano |  59 |  38.593 |    0.388 |    38.864 |      0.564 |  38.613 |    0.764 |

| .y.       | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | 6 ano | Controle | Experimental |   -0.101 |   -4.345 |     4.142 | 2.155 |    -0.047 | 0.963 | 0.963 | ns           |
| vocab.pos |              | 7 ano | Controle | Experimental |   -0.445 |   -3.540 |     2.651 | 1.572 |    -0.283 | 0.778 | 0.778 | ns           |
| vocab.pos |              | 8 ano | Controle | Experimental |   -3.762 |   -6.700 |    -0.824 | 1.492 |    -2.521 | 0.012 | 0.012 | \*           |
| vocab.pos |              | 9 ano | Controle | Experimental |   -1.034 |   -3.249 |     1.180 | 1.125 |    -0.920 | 0.359 | 0.359 | ns           |
| vocab.pre |              | 6 ano | Controle | Experimental |   -0.059 |   -1.939 |     1.821 | 0.955 |    -0.062 | 0.951 | 0.951 | ns           |
| vocab.pre |              | 7 ano | Controle | Experimental |   -0.576 |   -1.946 |     0.793 | 0.695 |    -0.829 | 0.408 | 0.408 | ns           |
| vocab.pre |              | 8 ano | Controle | Experimental |    0.130 |   -1.171 |     1.431 | 0.661 |     0.197 | 0.844 | 0.844 | ns           |
| vocab.pre |              | 9 ano | Controle | Experimental |    0.187 |   -0.794 |     1.167 | 0.498 |     0.375 | 0.708 | 0.708 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 7 ano        |    2.176 |   -1.824 |     6.177 | 2.032 |     1.071 | 0.285 | 1.000 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 8 ano        |    3.701 |   -0.339 |     7.742 | 2.052 |     1.804 | 0.072 | 0.434 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 9 ano        |    0.031 |   -3.588 |     3.649 | 1.838 |     0.017 | 0.987 | 1.000 | ns           |
| vocab.pos | Controle     |       | 7 ano    | 8 ano        |    1.525 |   -1.912 |     4.962 | 1.745 |     0.874 | 0.383 | 1.000 | ns           |
| vocab.pos | Controle     |       | 7 ano    | 9 ano        |   -2.146 |   -5.064 |     0.772 | 1.482 |    -1.448 | 0.149 | 0.893 | ns           |
| vocab.pos | Controle     |       | 8 ano    | 9 ano        |   -3.671 |   -6.623 |    -0.718 | 1.499 |    -2.448 | 0.015 | 0.090 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 7 ano        |    1.833 |   -1.587 |     5.253 | 1.737 |     1.055 | 0.292 | 1.000 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 8 ano        |    0.041 |   -3.194 |     3.276 | 1.643 |     0.025 | 0.980 | 1.000 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 9 ano        |   -0.903 |   -4.101 |     2.296 | 1.624 |    -0.556 | 0.579 | 1.000 | ns           |
| vocab.pos | Experimental |       | 7 ano    | 8 ano        |   -1.792 |   -4.321 |     0.737 | 1.284 |    -1.395 | 0.164 | 0.984 | ns           |
| vocab.pos | Experimental |       | 7 ano    | 9 ano        |   -2.736 |   -5.195 |    -0.276 | 1.249 |    -2.190 | 0.029 | 0.176 | ns           |
| vocab.pos | Experimental |       | 8 ano    | 9 ano        |   -0.943 |   -3.152 |     1.266 | 1.122 |    -0.841 | 0.401 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 7 ano        |   -0.652 |   -2.422 |     1.118 | 0.899 |    -0.725 | 0.469 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 8 ano        |   -1.091 |   -2.876 |     0.694 | 0.906 |    -1.204 | 0.230 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 9 ano        |   -1.780 |   -3.368 |    -0.192 | 0.807 |    -2.207 | 0.028 | 0.169 | ns           |
| vocab.pre | Controle     |       | 7 ano    | 8 ano        |   -0.439 |   -1.960 |     1.083 | 0.773 |    -0.568 | 0.571 | 1.000 | ns           |
| vocab.pre | Controle     |       | 7 ano    | 9 ano        |   -1.128 |   -2.413 |     0.158 | 0.653 |    -1.728 | 0.085 | 0.511 | ns           |
| vocab.pre | Controle     |       | 8 ano    | 9 ano        |   -0.689 |   -1.994 |     0.616 | 0.663 |    -1.040 | 0.300 | 1.000 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 7 ano        |   -1.170 |   -2.678 |     0.338 | 0.766 |    -1.527 | 0.128 | 0.768 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 8 ano        |   -0.902 |   -2.331 |     0.527 | 0.726 |    -1.243 | 0.215 | 1.000 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 9 ano        |   -1.534 |   -2.939 |    -0.130 | 0.713 |    -2.151 | 0.032 | 0.194 | ns           |
| vocab.pre | Experimental |       | 7 ano    | 8 ano        |    0.268 |   -0.852 |     1.388 | 0.569 |     0.471 | 0.638 | 1.000 | ns           |
| vocab.pre | Experimental |       | 7 ano    | 9 ano        |   -0.365 |   -1.453 |     0.724 | 0.553 |    -0.660 | 0.510 | 1.000 | ns           |
| vocab.pre | Experimental |       | 8 ano    | 9 ano        |   -0.632 |   -1.608 |     0.343 | 0.495 |    -1.277 | 0.203 | 1.000 | ns           |

| .y.   | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | 6 ano | pre    | pos    |    0.077 |   -3.501 |     3.655 | 1.821 |     0.042 | 0.966 | 0.966 | ns           |
| vocab | Controle     | 7 ano | pre    | pos    |    2.522 |   -0.168 |     5.212 | 1.369 |     1.842 | 0.066 | 0.066 | ns           |
| vocab | Controle     | 8 ano | pre    | pos    |    4.227 |    1.477 |     6.978 | 1.400 |     3.020 | 0.003 | 0.003 | \*\*         |
| vocab | Controle     | 9 ano | pre    | pos    |    0.840 |   -0.984 |     2.664 | 0.929 |     0.905 | 0.366 | 0.366 | ns           |
| vocab | Experimental | 6 ano | pre    | pos    |    0.000 |   -3.129 |     3.129 | 1.593 |     0.000 | 1.000 | 1.000 | ns           |
| vocab | Experimental | 7 ano | pre    | pos    |    2.314 |    0.134 |     4.495 | 1.110 |     2.085 | 0.038 | 0.038 | \*           |
| vocab | Experimental | 8 ano | pre    | pos    |    0.412 |   -1.395 |     2.218 | 0.919 |     0.448 | 0.654 | 0.654 | ns           |
| vocab | Experimental | 9 ano | pre    | pos    |   -0.271 |   -1.951 |     1.408 | 0.855 |    -0.317 | 0.751 | 0.751 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-5th-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
