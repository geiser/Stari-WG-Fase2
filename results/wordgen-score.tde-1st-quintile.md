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
| Controle     | F    |        |          |       | score.tde.pre |  38 |  9.553 |   10.0 |   0 |  18 |  5.249 | 0.851 |  1.725 |  9.00 |
| Controle     | M    |        |          |       | score.tde.pre |  75 |  9.067 |   10.0 |   0 |  18 |  5.738 | 0.663 |  1.320 |  9.00 |
| Experimental | F    |        |          |       | score.tde.pre |  49 | 10.510 |   12.0 |   0 |  18 |  5.579 | 0.797 |  1.603 | 10.00 |
| Experimental | M    |        |          |       | score.tde.pre |  63 |  9.206 |    9.0 |   0 |  18 |  5.313 | 0.669 |  1.338 |  8.00 |
| Controle     | F    |        |          |       | score.tde.pos |  38 |  9.395 |    8.0 |   0 |  44 |  9.111 | 1.478 |  2.995 | 11.75 |
| Controle     | M    |        |          |       | score.tde.pos |  75 |  8.080 |    4.0 |   0 |  26 |  8.339 | 0.963 |  1.919 | 14.00 |
| Experimental | F    |        |          |       | score.tde.pos |  49 | 10.980 |   10.0 |   0 |  51 |  9.123 | 1.303 |  2.620 | 12.00 |
| Experimental | M    |        |          |       | score.tde.pos |  63 | 11.698 |    9.0 |   0 |  43 |  9.845 | 1.240 |  2.479 | 14.00 |
| Controle     |      | Rural  |          |       | score.tde.pre |  68 |  9.059 |    8.5 |   0 |  18 |  5.361 | 0.650 |  1.298 |  8.00 |
| Controle     |      | Urbana |          |       | score.tde.pre |  16 |  9.062 |   10.5 |   1 |  18 |  6.115 | 1.529 |  3.259 | 10.75 |
| Controle     |      |        |          |       | score.tde.pre |  29 |  9.724 |   11.0 |   0 |  18 |  5.873 | 1.091 |  2.234 |  9.00 |
| Experimental |      | Rural  |          |       | score.tde.pre |  62 |  9.645 |   10.0 |   0 |  18 |  5.812 | 0.738 |  1.476 | 10.00 |
| Experimental |      | Urbana |          |       | score.tde.pre |  26 |  8.654 |    9.0 |   0 |  17 |  4.955 | 0.972 |  2.002 |  6.50 |
| Experimental |      |        |          |       | score.tde.pre |  24 | 11.333 |   13.0 |   0 |  17 |  4.779 | 0.976 |  2.018 |  7.00 |
| Controle     |      | Rural  |          |       | score.tde.pos |  68 |  8.015 |    5.0 |   0 |  44 |  8.474 | 1.028 |  2.051 | 13.00 |
| Controle     |      | Urbana |          |       | score.tde.pos |  16 |  7.000 |    4.0 |   0 |  24 |  7.925 | 1.981 |  4.223 |  7.50 |
| Controle     |      |        |          |       | score.tde.pos |  29 | 10.552 |    8.0 |   0 |  28 |  9.128 | 1.695 |  3.472 | 15.00 |
| Experimental |      | Rural  |          |       | score.tde.pos |  62 | 10.952 |   12.0 |   0 |  29 |  7.968 | 1.012 |  2.023 | 12.00 |
| Experimental |      | Urbana |          |       | score.tde.pos |  26 |  9.808 |    6.0 |   0 |  43 | 10.789 | 2.116 |  4.358 |  6.00 |
| Experimental |      |        |          |       | score.tde.pos |  24 | 14.208 |   12.0 |   0 |  51 | 11.360 | 2.319 |  4.797 | 14.25 |
| Controle     |      |        | Branca   |       | score.tde.pre |   8 |  9.875 |   11.0 |   2 |  15 |  4.612 | 1.630 |  3.855 |  6.50 |
| Controle     |      |        | Indígena |       | score.tde.pre |   2 | 10.000 |   10.0 |   4 |  16 |  8.485 | 6.000 | 76.237 |  6.00 |
| Controle     |      |        | Parda    |       | score.tde.pre |  39 |  8.026 |    7.0 |   0 |  18 |  5.847 | 0.936 |  1.895 | 10.00 |
| Controle     |      |        |          |       | score.tde.pre |  64 |  9.859 |   11.0 |   0 |  18 |  5.427 | 0.678 |  1.356 |  9.00 |
| Experimental |      |        | Branca   |       | score.tde.pre |  17 |  9.471 |    9.0 |   0 |  18 |  6.345 | 1.539 |  3.263 | 11.00 |
| Experimental |      |        | Indígena |       | score.tde.pre |   5 |  7.800 |    6.0 |   6 |  15 |  4.025 | 1.800 |  4.998 |  0.00 |
| Experimental |      |        | Parda    |       | score.tde.pre |  39 |  8.949 |    9.0 |   0 |  18 |  5.596 | 0.896 |  1.814 |  9.00 |
| Experimental |      |        |          |       | score.tde.pre |  51 | 10.706 |   11.0 |   0 |  18 |  5.100 | 0.714 |  1.434 |  7.00 |
| Controle     |      |        | Branca   |       | score.tde.pos |   8 |  4.750 |    3.5 |   0 |  15 |  5.726 | 2.024 |  4.787 |  6.00 |
| Controle     |      |        | Indígena |       | score.tde.pos |   2 | 10.000 |   10.0 |   4 |  16 |  8.485 | 6.000 | 76.237 |  6.00 |
| Controle     |      |        | Parda    |       | score.tde.pos |  39 |  7.359 |    4.0 |   0 |  27 |  7.531 | 1.206 |  2.441 | 12.00 |
| Controle     |      |        |          |       | score.tde.pos |  64 |  9.656 |    7.0 |   0 |  44 |  9.386 | 1.173 |  2.345 | 14.00 |
| Experimental |      |        | Branca   |       | score.tde.pos |  17 | 12.353 |   12.0 |   0 |  36 | 10.416 | 2.526 |  5.355 | 16.00 |
| Experimental |      |        | Indígena |       | score.tde.pos |   5 | 14.400 |   17.0 |   1 |  23 |  8.295 | 3.709 | 10.299 |  5.00 |
| Experimental |      |        | Parda    |       | score.tde.pos |  39 | 10.846 |    8.0 |   0 |  51 | 10.284 | 1.647 |  3.334 | 11.00 |
| Experimental |      |        |          |       | score.tde.pos |  51 | 11.176 |   10.0 |   0 |  43 |  8.847 | 1.239 |  2.488 | 10.50 |
| Controle     |      |        |          | 6 ano | score.tde.pre |  55 |  8.727 |    8.0 |   0 |  18 |  5.345 | 0.721 |  1.445 |  9.00 |
| Controle     |      |        |          | 7 ano | score.tde.pre |  34 | 10.176 |   11.0 |   0 |  18 |  5.589 | 0.959 |  1.950 |  8.00 |
| Controle     |      |        |          | 8 ano | score.tde.pre |  10 |  8.800 |   10.0 |   0 |  18 |  7.223 | 2.284 |  5.167 | 13.25 |
| Controle     |      |        |          | 9 ano | score.tde.pre |  14 |  9.214 |   10.0 |   0 |  17 |  5.352 | 1.430 |  3.090 |  8.50 |
| Experimental |      |        |          | 6 ano | score.tde.pre |  47 |  9.234 |    9.0 |   0 |  18 |  5.760 | 0.840 |  1.691 | 10.00 |
| Experimental |      |        |          | 7 ano | score.tde.pre |  26 | 11.885 |   11.5 |   0 |  18 |  4.546 | 0.892 |  1.836 |  6.00 |
| Experimental |      |        |          | 8 ano | score.tde.pre |  27 |  9.037 |   10.0 |   0 |  16 |  5.034 | 0.969 |  1.992 |  8.00 |
| Experimental |      |        |          | 9 ano | score.tde.pre |  12 |  9.000 |   10.5 |   0 |  17 |  6.310 | 1.822 |  4.009 | 11.50 |
| Controle     |      |        |          | 6 ano | score.tde.pos |  55 |  7.036 |    4.0 |   0 |  44 |  8.542 | 1.152 |  2.309 | 11.00 |
| Controle     |      |        |          | 7 ano | score.tde.pos |  34 |  8.559 |    8.5 |   0 |  24 |  7.178 | 1.231 |  2.505 | 12.00 |
| Controle     |      |        |          | 8 ano | score.tde.pos |  10 |  7.100 |    3.0 |   0 |  21 |  8.774 | 2.775 |  6.277 | 14.00 |
| Controle     |      |        |          | 9 ano | score.tde.pos |  14 | 15.286 |   15.0 |   0 |  28 |  9.384 | 2.508 |  5.418 | 15.00 |
| Experimental |      |        |          | 6 ano | score.tde.pos |  47 |  9.681 |    7.0 |   0 |  29 |  7.667 | 1.118 |  2.251 | 11.00 |
| Experimental |      |        |          | 7 ano | score.tde.pos |  26 | 12.308 |   10.0 |   0 |  43 | 10.525 | 2.064 |  4.251 | 11.50 |
| Experimental |      |        |          | 8 ano | score.tde.pos |  27 | 12.074 |   10.0 |   0 |  51 | 10.820 | 2.082 |  4.280 | 12.50 |
| Experimental |      |        |          | 9 ano | score.tde.pos |  12 | 14.500 |   14.5 |   0 |  29 | 10.501 | 3.031 |  6.672 | 20.25 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n | skewness | kurtosis | symmetry | statistic | method     |   p | p.signif | normality |
|:--------------|----:|---------:|---------:|:---------|----------:|:-----------|----:|:---------|:----------|
| score.tde.pos | 225 | 1.178520 | 3.023229 | NO       |  58.79133 | D’Agostino |   0 | \*\*\*\* | \-        |
| score.tde.pos | 172 | 1.099917 | 2.978319 | NO       |  43.99630 | D’Agostino |   0 | \*\*\*\* | QQ        |
| score.tde.pos | 110 | 1.129952 | 3.537527 | NO       |  34.12359 | D’Agostino |   0 | \*\*\*\* | QQ        |
| score.tde.pos | 225 | 1.214068 | 3.588598 | NO       |  64.00078 | D’Agostino |   0 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 225 |       3 |     221 | 0.2305777 | 0.8750342 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 225 |       3 |     217 | 1.2110000 | 0.3070000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     | 172 |       3 |     168 | 0.6896230 | 0.5595707 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 172 |       3 |     164 | 0.7350000 | 0.5330000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 110 |       5 |     104 | 0.5403776 | 0.7452673 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 110 |       5 |      98 | 0.3580000 | 0.8760000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    | 225 |       7 |     217 | 0.7899270 | 0.5964385 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    | 225 |       7 |     209 | 1.6160000 | 0.1320000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect        | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:--------------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| 1   | score.tde.pre |   1 | 222 | 4377.211 | 13901.475 | 69.902 | \<0.001 | 0.239 | \*     |
| 2   | grupo         |   1 | 222 |  329.052 | 13901.475 |  5.255 | 0.023   | 0.023 | \*     |
| 4   | Sexo          |   1 | 222 |    2.824 | 14227.704 |  0.044 | 0.834   | 0.000 |        |
| 6   | Zona          |   1 | 169 |    2.144 |  9675.122 |  0.037 | 0.847   | 0.000 |        |
| 8   | Cor.Raca      |   2 | 106 |  109.429 |  7161.232 |  0.810 | 0.448   | 0.015 |        |
| 10  | Serie         |   3 | 220 |  993.772 | 13236.755 |  5.506 | 0.001   | 0.070 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| 1   | score.tde.pre  |   1 | 220 | 4427.497 | 13793.351 | 70.617 | \<0.001 | 0.243 | \*     |
| 4   | grupo:Sexo     |   1 | 220 |   95.769 | 13793.351 |  1.527 | 0.218   | 0.007 |        |
| 8   | grupo:Zona     |   1 | 167 |    3.191 |  9379.287 |  0.057 | 0.812   | 0.000 |        |
| 12  | grupo:Cor.Raca |   2 | 103 |  116.153 |  6616.342 |  0.904 | 0.408   | 0.017 |        |
| 16  | grupo:Serie    |   3 | 216 |   99.787 | 12860.828 |  0.559 | 0.643   | 0.008 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 113 |   9.230 |    0.523 |     8.522 |      0.808 |   8.741 |    0.745 |
| score.tde.pos | Experimental | 112 |   9.777 |    0.515 |    11.384 |      0.898 |  11.163 |    0.748 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |   -2.422 |   -4.504 |    -0.340 | 1.056 |    -2.292 | 0.023 | 0.023 | \*           |
| score.tde.pre | Controle | Experimental |   -0.547 |   -1.993 |     0.899 | 0.734 |    -0.745 | 0.457 | 0.457 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    0.708 |   -1.251 |     2.667 | 0.997 |     0.710 | 0.478 | 0.478 | ns           |
| score.tde | Experimental | pre    | pos    |   -1.607 |   -3.575 |     0.360 | 1.001 |    -1.605 | 0.109 | 0.109 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  38 |   9.553 |    0.851 |     9.395 |      1.478 |   9.354 |    1.285 |
| score.tde.pos | Controle     | M    |  75 |   9.067 |    0.663 |     8.080 |      0.963 |   8.434 |    0.915 |
| score.tde.pos | Experimental | F    |  49 |  10.510 |    0.797 |    10.980 |      1.303 |  10.160 |    1.135 |
| score.tde.pos | Experimental | M    |  63 |   9.206 |    0.669 |    11.698 |      1.240 |  11.939 |    0.998 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -0.806 |   -4.185 |     2.572 | 1.714 |    -0.471 | 0.638 | 0.638 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |   -3.505 |   -6.172 |    -0.838 | 1.353 |    -2.590 | 0.010 | 0.010 | \*           |
| score.tde.pre |              | F    | Controle | Experimental |   -0.958 |   -3.303 |     1.388 | 1.190 |    -0.805 | 0.422 | 0.422 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |   -0.140 |   -1.994 |     1.715 | 0.941 |    -0.148 | 0.882 | 0.882 | ns           |
| score.tde.pos | Controle     |      | F        | M            |    0.920 |   -2.189 |     4.028 | 1.577 |     0.583 | 0.560 | 0.560 | ns           |
| score.tde.pos | Experimental |      | F        | M            |   -1.779 |   -4.761 |     1.204 | 1.513 |    -1.175 | 0.241 | 0.241 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    0.486 |   -1.675 |     2.647 | 1.096 |     0.443 | 0.658 | 0.658 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    1.304 |   -0.763 |     3.371 | 1.049 |     1.243 | 0.215 | 0.215 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    0.158 |   -3.228 |     3.544 | 1.723 |     0.092 | 0.927 | 0.927 | ns           |
| score.tde | Controle     | M    | pre    | pos    |    0.987 |   -1.423 |     3.397 | 1.226 |     0.805 | 0.421 | 0.421 | ns           |
| score.tde | Experimental | F    | pre    | pos    |   -0.469 |   -3.451 |     2.512 | 1.517 |    -0.309 | 0.757 | 0.757 | ns           |
| score.tde | Experimental | M    | pre    | pos    |   -2.492 |   -5.121 |     0.137 | 1.338 |    -1.863 | 0.063 | 0.063 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  68 |   9.059 |    0.650 |     8.015 |      1.028 |   8.132 |    0.909 |
| score.tde.pos | Controle     | Urbana |  16 |   9.062 |    1.529 |     7.000 |      1.981 |   7.115 |    1.874 |
| score.tde.pos | Experimental | Rural  |  62 |   9.645 |    0.738 |    10.952 |      1.012 |  10.611 |    0.953 |
| score.tde.pos | Experimental | Urbana |  26 |   8.654 |    0.972 |     9.808 |      2.116 |  10.242 |    1.471 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |   -2.478 |   -5.079 |     0.123 | 1.317 |    -1.881 | 0.062 | 0.062 | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |   -3.127 |   -7.829 |     1.575 | 2.382 |    -1.313 | 0.191 | 0.191 | ns           |
| score.tde.pre |              | Rural  | Controle | Experimental |   -0.586 |   -2.508 |     1.335 | 0.973 |    -0.602 | 0.548 | 0.548 | ns           |
| score.tde.pre |              | Urbana | Controle | Experimental |    0.409 |   -3.068 |     3.885 | 1.761 |     0.232 | 0.817 | 0.817 | ns           |
| score.tde.pos | Controle     |        | Rural    | Urbana       |    1.018 |   -3.094 |     5.129 | 2.082 |     0.489 | 0.626 | 0.626 | ns           |
| score.tde.pos | Experimental |        | Rural    | Urbana       |    0.369 |   -3.094 |     3.832 | 1.754 |     0.210 | 0.834 | 0.834 | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |   -0.004 |   -3.044 |     3.037 | 1.540 |    -0.002 | 0.998 | 0.998 | ns           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |    0.991 |   -1.565 |     3.548 | 1.295 |     0.766 | 0.445 | 0.445 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    1.044 |   -1.404 |     3.492 | 1.245 |     0.839 | 0.402 | 0.402 | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |    2.062 |   -2.985 |     7.110 | 2.566 |     0.804 | 0.422 | 0.422 | ns           |
| score.tde | Experimental | Rural  | pre    | pos    |   -1.306 |   -3.870 |     1.258 | 1.303 |    -1.002 | 0.317 | 0.317 | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |   -1.154 |   -5.113 |     2.805 | 2.013 |    -0.573 | 0.567 | 0.567 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |   8 |   9.875 |    1.630 |     4.750 |      2.024 |   3.897 |    2.851 |
| score.tde.pos | Controle     | Parda    |  39 |   8.026 |    0.936 |     7.359 |      1.206 |   7.863 |    1.293 |
| score.tde.pos | Experimental | Branca   |  17 |   9.471 |    1.539 |    12.353 |      2.526 |  11.797 |    1.955 |
| score.tde.pos | Experimental | Indígena |   5 |   7.800 |    1.800 |    14.400 |      3.709 |  15.070 |    3.603 |
| score.tde.pos | Experimental | Parda    |  39 |   8.949 |    0.896 |    10.846 |      1.647 |  10.673 |    1.290 |

|     | .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | score.tde.pos |              | Branca   | Controle | Experimental |   -7.900 |  -14.747 |    -1.052 | 3.452 |    -2.288 | 0.024 | 0.024 | \*           |
| 3   | score.tde.pos |              | Parda    | Controle | Experimental |   -2.810 |   -6.435 |     0.816 | 1.828 |    -1.537 | 0.127 | 0.127 | ns           |
| 4   | score.tde.pre |              | Branca   | Controle | Experimental |    0.404 |   -4.443 |     5.251 | 2.444 |     0.165 | 0.869 | 0.869 | ns           |
| 6   | score.tde.pre |              | Parda    | Controle | Experimental |   -0.923 |   -3.483 |     1.637 | 1.291 |    -0.715 | 0.476 | 0.476 | ns           |
| 8   | score.tde.pos | Controle     |          | Branca   | Parda        |   -3.966 |  -10.185 |     2.252 | 3.135 |    -1.265 | 0.209 | 0.209 | ns           |
| 10  | score.tde.pos | Experimental |          | Branca   | Indígena     |   -3.273 |  -11.411 |     4.864 | 4.102 |    -0.798 | 0.427 | 1.000 | ns           |
| 11  | score.tde.pos | Experimental |          | Branca   | Parda        |    1.124 |   -3.520 |     5.767 | 2.341 |     0.480 | 0.632 | 1.000 | ns           |
| 12  | score.tde.pos | Experimental |          | Indígena | Parda        |    4.397 |   -3.195 |    11.989 | 3.828 |     1.149 | 0.253 | 0.760 | ns           |
| 14  | score.tde.pre | Controle     |          | Branca   | Parda        |    1.849 |   -2.538 |     6.237 | 2.212 |     0.836 | 0.405 | 0.405 | ns           |
| 16  | score.tde.pre | Experimental |          | Branca   | Indígena     |    1.671 |   -4.081 |     7.422 | 2.900 |     0.576 | 0.566 | 1.000 | ns           |
| 17  | score.tde.pre | Experimental |          | Branca   | Parda        |    0.522 |   -2.764 |     3.807 | 1.657 |     0.315 | 0.753 | 1.000 | ns           |
| 18  | score.tde.pre | Experimental |          | Indígena | Parda        |   -1.149 |   -6.519 |     4.221 | 2.708 |    -0.424 | 0.672 | 1.000 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |    5.125 |   -2.324 |    12.574 | 3.778 |     1.357 | 0.176 | 0.176 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    0.667 |   -2.707 |     4.040 | 1.711 |     0.390 | 0.697 | 0.697 | ns           |
| score.tde | Experimental | Branca   | pre    | pos    |   -2.882 |   -7.992 |     2.227 | 2.592 |    -1.112 | 0.267 | 0.267 | ns           |
| score.tde | Experimental | Indígena | pre    | pos    |   -6.600 |  -16.022 |     2.822 | 4.779 |    -1.381 | 0.169 | 0.169 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |   -1.897 |   -5.271 |     1.476 | 1.711 |    -1.109 | 0.269 | 0.269 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var           | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 6 ano |  55 |   8.727 |    0.721 |     7.036 |      1.152 |   7.667 |    1.043 |
| score.tde.pos | Controle     | 7 ano |  34 |  10.176 |    0.959 |     8.559 |      1.231 |   8.010 |    1.325 |
| score.tde.pos | Controle     | 8 ano |  10 |   8.800 |    2.284 |     7.100 |      2.775 |   7.672 |    2.441 |
| score.tde.pos | Controle     | 9 ano |  14 |   9.214 |    1.430 |    15.286 |      2.508 |  15.520 |    2.062 |
| score.tde.pos | Experimental | 6 ano |  47 |   9.234 |    0.840 |     9.681 |      1.118 |   9.899 |    1.126 |
| score.tde.pos | Experimental | 7 ano |  26 |  11.885 |    0.892 |    12.308 |      2.064 |  10.368 |    1.530 |
| score.tde.pos | Experimental | 8 ano |  27 |   9.037 |    0.969 |    12.074 |      2.082 |  12.453 |    1.486 |
| score.tde.pos | Experimental | 9 ano |  12 |   9.000 |    1.822 |    14.500 |      3.031 |  14.909 |    2.228 |

| .y.           | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj | p.adj.signif |
|:--------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|------:|:-------------|
| score.tde.pos |              | 6 ano | Controle | Experimental |   -2.232 |   -5.254 |     0.791 | 1.534 |    -1.455 | 0.147   | 0.147 | ns           |
| score.tde.pos |              | 7 ano | Controle | Experimental |   -2.358 |   -6.333 |     1.617 | 2.017 |    -1.169 | 0.244   | 0.244 | ns           |
| score.tde.pos |              | 8 ano | Controle | Experimental |   -4.781 |  -10.411 |     0.849 | 2.857 |    -1.674 | 0.096   | 0.096 | ns           |
| score.tde.pos |              | 9 ano | Controle | Experimental |    0.611 |   -5.372 |     6.594 | 3.036 |     0.201 | 0.841   | 0.841 | ns           |
| score.tde.pre |              | 6 ano | Controle | Experimental |   -0.507 |   -2.659 |     1.645 | 1.092 |    -0.464 | 0.643   | 0.643 | ns           |
| score.tde.pre |              | 7 ano | Controle | Experimental |   -1.708 |   -4.530 |     1.114 | 1.432 |    -1.193 | 0.234   | 0.234 | ns           |
| score.tde.pre |              | 8 ano | Controle | Experimental |   -0.237 |   -4.247 |     3.773 | 2.035 |    -0.116 | 0.907   | 0.907 | ns           |
| score.tde.pre |              | 9 ano | Controle | Experimental |    0.214 |   -4.048 |     4.476 | 2.162 |     0.099 | 0.921   | 0.921 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 7 ano        |   -0.342 |   -3.671 |     2.987 | 1.689 |    -0.203 | 0.84    | 1.000 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 8 ano        |   -0.004 |   -5.233 |     5.224 | 2.653 |    -0.002 | 0.999   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 6 ano    | 9 ano        |   -7.853 |  -12.406 |    -3.299 | 2.310 |    -3.399 | \<0.001 | 0.005 | \*\*         |
| score.tde.pos | Controle     |       | 7 ano    | 8 ano        |    0.338 |   -5.139 |     5.815 | 2.779 |     0.122 | 0.903   | 1.000 | ns           |
| score.tde.pos | Controle     |       | 7 ano    | 9 ano        |   -7.510 |  -12.343 |    -2.677 | 2.452 |    -3.063 | 0.002   | 0.015 | \*           |
| score.tde.pos | Controle     |       | 8 ano    | 9 ano        |   -7.848 |  -14.146 |    -1.551 | 3.195 |    -2.456 | 0.015   | 0.089 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 7 ano        |   -0.468 |   -4.219 |     3.282 | 1.903 |    -0.246 | 0.806   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 8 ano        |   -2.554 |   -6.227 |     1.119 | 1.863 |    -1.370 | 0.172   | 1.000 | ns           |
| score.tde.pos | Experimental |       | 6 ano    | 9 ano        |   -5.010 |   -9.929 |    -0.090 | 2.496 |    -2.007 | 0.046   | 0.276 | ns           |
| score.tde.pos | Experimental |       | 7 ano    | 8 ano        |   -2.085 |   -6.298 |     2.128 | 2.137 |    -0.976 | 0.33    | 1.000 | ns           |
| score.tde.pos | Experimental |       | 7 ano    | 9 ano        |   -4.541 |   -9.877 |     0.794 | 2.707 |    -1.678 | 0.095   | 0.569 | ns           |
| score.tde.pos | Experimental |       | 8 ano    | 9 ano        |   -2.456 |   -7.733 |     2.821 | 2.677 |    -0.917 | 0.36    | 1.000 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 7 ano        |   -1.449 |   -3.813 |     0.914 | 1.199 |    -1.209 | 0.228   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 8 ano        |   -0.073 |   -3.797 |     3.652 | 1.890 |    -0.038 | 0.969   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 6 ano    | 9 ano        |   -0.487 |   -3.730 |     2.756 | 1.645 |    -0.296 | 0.768   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 8 ano        |    1.376 |   -2.521 |     5.274 | 1.977 |     0.696 | 0.487   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 7 ano    | 9 ano        |    0.962 |   -2.478 |     4.402 | 1.745 |     0.551 | 0.582   | 1.000 | ns           |
| score.tde.pre | Controle     |       | 8 ano    | 9 ano        |   -0.414 |   -4.900 |     4.071 | 2.276 |    -0.182 | 0.856   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 7 ano        |   -2.651 |   -5.298 |    -0.003 | 1.343 |    -1.973 | 0.05    | 0.299 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 8 ano        |    0.197 |   -2.419 |     2.813 | 1.327 |     0.148 | 0.882   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 6 ano    | 9 ano        |    0.234 |   -3.270 |     3.738 | 1.778 |     0.132 | 0.895   | 1.000 | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 8 ano        |    2.848 |   -0.129 |     5.824 | 1.510 |     1.885 | 0.061   | 0.364 | ns           |
| score.tde.pre | Experimental |       | 7 ano    | 9 ano        |    2.885 |   -0.896 |     6.665 | 1.918 |     1.504 | 0.134   | 0.805 | ns           |
| score.tde.pre | Experimental |       | 8 ano    | 9 ano        |    0.037 |   -3.722 |     3.796 | 1.907 |     0.019 | 0.985   | 1.000 | ns           |

| .y.       | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 6 ano | pre    | pos    |    1.691 |   -1.083 |     4.464 | 1.411 |     1.198 | 0.231 | 0.231 | ns           |
| score.tde | Controle     | 7 ano | pre    | pos    |    1.618 |   -1.910 |     5.145 | 1.795 |     0.901 | 0.368 | 0.368 | ns           |
| score.tde | Controle     | 8 ano | pre    | pos    |    1.700 |   -4.804 |     8.204 | 3.309 |     0.514 | 0.608 | 0.608 | ns           |
| score.tde | Controle     | 9 ano | pre    | pos    |   -6.071 |  -11.569 |    -0.574 | 2.797 |    -2.171 | 0.030 | 0.030 | \*           |
| score.tde | Experimental | 6 ano | pre    | pos    |   -0.447 |   -3.447 |     2.553 | 1.526 |    -0.293 | 0.770 | 0.770 | ns           |
| score.tde | Experimental | 7 ano | pre    | pos    |   -0.423 |   -4.457 |     3.611 | 2.052 |    -0.206 | 0.837 | 0.837 | ns           |
| score.tde | Experimental | 8 ano | pre    | pos    |   -3.037 |   -6.995 |     0.921 | 2.014 |    -1.508 | 0.132 | 0.132 | ns           |
| score.tde | Experimental | 9 ano | pre    | pos    |   -5.500 |  -11.438 |     0.438 | 3.021 |    -1.821 | 0.069 | 0.069 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-1st-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
