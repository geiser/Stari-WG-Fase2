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

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable  |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:----------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          |       | vocab.pre |   5 | 13.200 |   13.0 |  12 |  15 |  1.304 | 0.583 |  1.619 |  2.00 |
| Controle     | M    |        |          |       | vocab.pre |  12 | 13.667 |   14.0 |   7 |  16 |  2.605 | 0.752 |  1.655 |  3.25 |
| Experimental | F    |        |          |       | vocab.pre |   3 | 12.000 |   11.0 |  11 |  14 |  1.732 | 1.000 |  4.303 |  1.50 |
| Experimental | M    |        |          |       | vocab.pre |   6 | 12.167 |   13.0 |   7 |  16 |  3.488 | 1.424 |  3.661 |  4.50 |
| Controle     | F    |        |          |       | vocab.pos |   5 | 20.000 |   20.0 |  16 |  23 |  2.550 | 1.140 |  3.166 |  1.00 |
| Controle     | M    |        |          |       | vocab.pos |  12 | 16.167 |   17.5 |  11 |  22 |  3.689 | 1.065 |  2.344 |  5.50 |
| Experimental | F    |        |          |       | vocab.pos |   3 | 20.000 |   19.0 |  17 |  24 |  3.606 | 2.082 |  8.957 |  3.50 |
| Experimental | M    |        |          |       | vocab.pos |   6 | 16.000 |   15.0 |   8 |  31 |  7.950 | 3.246 |  8.343 |  3.75 |
| Controle     |      | Rural  |          |       | vocab.pre |  10 | 14.300 |   15.0 |  12 |  16 |  1.829 | 0.578 |  1.308 |  3.75 |
| Controle     |      | Urbana |          |       | vocab.pre |   3 | 11.667 |   14.0 |   7 |  14 |  4.041 | 2.333 | 10.040 |  3.50 |
| Controle     |      |        |          |       | vocab.pre |   4 | 13.000 |   13.0 |  12 |  14 |  0.816 | 0.408 |  1.299 |  0.50 |
| Experimental |      | Rural  |          |       | vocab.pre |   6 | 11.167 |   11.0 |   7 |  16 |  3.125 | 1.276 |  3.280 |  3.00 |
| Experimental |      | Urbana |          |       | vocab.pre |   1 | 15.000 |   15.0 |  15 |  15 |        |       |        |  0.00 |
| Experimental |      |        |          |       | vocab.pre |   2 | 13.500 |   13.5 |  13 |  14 |  0.707 | 0.500 |  6.353 |  0.50 |
| Controle     |      | Rural  |          |       | vocab.pos |  10 | 15.300 |   15.5 |  11 |  21 |  3.498 | 1.106 |  2.502 |  5.50 |
| Controle     |      | Urbana |          |       | vocab.pos |   3 | 18.667 |   18.0 |  18 |  20 |  1.155 | 0.667 |  2.868 |  1.00 |
| Controle     |      |        |          |       | vocab.pos |   4 | 21.250 |   21.0 |  20 |  23 |  1.500 | 0.750 |  2.387 |  2.25 |
| Experimental |      | Rural  |          |       | vocab.pos |   6 | 16.833 |   16.0 |   8 |  31 |  8.010 | 3.270 |  8.406 |  6.50 |
| Experimental |      | Urbana |          |       | vocab.pos |   1 | 16.000 |   16.0 |  16 |  16 |        |       |        |  0.00 |
| Experimental |      |        |          |       | vocab.pos |   2 | 19.500 |   19.5 |  15 |  24 |  6.364 | 4.500 | 57.178 |  4.50 |
| Controle     |      |        | Branca   |       | vocab.pre |   3 | 15.333 |   16.0 |  14 |  16 |  1.155 | 0.667 |  2.868 |  1.00 |
| Controle     |      |        | Parda    |       | vocab.pre |   9 | 13.667 |   13.0 |  12 |  16 |  1.658 | 0.553 |  1.275 |  3.00 |
| Controle     |      |        |          |       | vocab.pre |   5 | 12.200 |   13.0 |   7 |  15 |  3.114 | 1.393 |  3.867 |  2.00 |
| Experimental |      |        | Branca   |       | vocab.pre |   2 | 15.500 |   15.5 |  15 |  16 |  0.707 | 0.500 |  6.353 |  0.50 |
| Experimental |      |        | Parda    |       | vocab.pre |   5 | 10.200 |   11.0 |   7 |  13 |  2.280 | 1.020 |  2.831 |  2.00 |
| Experimental |      |        |          |       | vocab.pre |   2 | 13.500 |   13.5 |  13 |  14 |  0.707 | 0.500 |  6.353 |  0.50 |
| Controle     |      |        | Branca   |       | vocab.pos |   3 | 18.000 |   18.0 |  17 |  19 |  1.000 | 0.577 |  2.484 |  1.00 |
| Controle     |      |        | Parda    |       | vocab.pos |   9 | 16.111 |   15.0 |  11 |  23 |  4.755 | 1.585 |  3.655 |  8.00 |
| Controle     |      |        |          |       | vocab.pos |   5 | 19.000 |   20.0 |  16 |  21 |  2.000 | 0.894 |  2.483 |  2.00 |
| Experimental |      |        | Branca   |       | vocab.pos |   2 | 23.500 |   23.5 |  16 |  31 | 10.607 | 7.500 | 95.297 |  7.50 |
| Experimental |      |        | Parda    |       | vocab.pos |   5 | 14.000 |   15.0 |   8 |  19 |  4.472 | 2.000 |  5.553 |  6.00 |
| Experimental |      |        |          |       | vocab.pos |   2 | 19.500 |   19.5 |  15 |  24 |  6.364 | 4.500 | 57.178 |  4.50 |
| Controle     |      |        |          | 6 ano | vocab.pre |  10 | 14.000 |   14.0 |  12 |  16 |  1.764 | 0.558 |  1.262 |  3.50 |
| Controle     |      |        |          | 7 ano | vocab.pre |   3 | 13.333 |   14.0 |  12 |  14 |  1.155 | 0.667 |  2.868 |  1.00 |
| Controle     |      |        |          | 8 ano | vocab.pre |   3 | 12.333 |   14.0 |   7 |  16 |  4.726 | 2.728 | 11.740 |  4.50 |
| Controle     |      |        |          | 9 ano | vocab.pre |   1 | 13.000 |   13.0 |  13 |  13 |        |       |        |  0.00 |
| Experimental |      |        |          | 6 ano | vocab.pre |   2 | 10.000 |   10.0 |   9 |  11 |  1.414 | 1.000 | 12.706 |  1.00 |
| Experimental |      |        |          | 7 ano | vocab.pre |   3 | 14.667 |   15.0 |  13 |  16 |  1.528 | 0.882 |  3.795 |  1.50 |
| Experimental |      |        |          | 8 ano | vocab.pre |   4 | 11.250 |   12.0 |   7 |  14 |  3.096 | 1.548 |  4.926 |  3.25 |
| Controle     |      |        |          | 6 ano | vocab.pos |  10 | 15.800 |   16.5 |  11 |  21 |  3.795 | 1.200 |  2.715 |  6.50 |
| Controle     |      |        |          | 7 ano | vocab.pos |   3 | 20.333 |   20.0 |  18 |  23 |  2.517 | 1.453 |  6.252 |  2.50 |
| Controle     |      |        |          | 8 ano | vocab.pos |   3 | 17.667 |   18.0 |  15 |  20 |  2.517 | 1.453 |  6.252 |  2.50 |
| Controle     |      |        |          | 9 ano | vocab.pos |   1 | 22.000 |   22.0 |  22 |  22 |        |       |        |  0.00 |
| Experimental |      |        |          | 6 ano | vocab.pos |   2 | 17.000 |   17.0 |  15 |  19 |  2.828 | 2.000 | 25.412 |  2.00 |
| Experimental |      |        |          | 7 ano | vocab.pos |   3 | 19.333 |   16.0 |  11 |  31 | 10.408 | 6.009 | 25.856 | 10.00 |
| Experimental |      |        |          | 8 ano | vocab.pos |   4 | 16.000 |   16.0 |   8 |  24 |  6.583 | 3.291 | 10.475 |  5.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  26 | 0.8273545 |  0.7844226 | NO       | 0.9353944 | Shapiro-Wilk | 0.1042311 | ns       | YES       |
| vocab.pos |  20 | 0.4648321 | -0.1577904 | YES      | 0.9580033 | Shapiro-Wilk | 0.5047737 | ns       | YES       |
| vocab.pos |  19 | 0.0907702 | -1.3318269 | YES      | 0.9611344 | Shapiro-Wilk | 0.5949235 | ns       | YES       |
| vocab.pos |  26 | 0.4529936 | -0.3324232 | YES      | 0.9749100 | Shapiro-Wilk | 0.7519044 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  26 |       3 |      22 | 0.5792218 | 0.6348196 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  26 |       3 |      18 | 2.9170000 | 0.0620000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  20 |       3 |      16 | 0.6945184 | 0.5687480 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  20 |       2 |      13 | 2.8950000 | 0.0910000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  19 |       3 |      15 | 3.5997326 | 0.0386713 | \*       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  19 |       3 |      11 | 2.2850000 | 0.1360000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  26 |       6 |      19 | 0.7204479 | 0.6382104 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  26 |       5 |      13 | 3.0460000 | 0.0490000 | \*       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:----------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | vocab.pre |   1 |  23 | 39.779 | 561.750 | 1.629 | 0.215 | 0.066 |        |
| 2   | grupo     |   1 |  23 |  3.247 | 561.750 | 0.133 | 0.719 | 0.006 |        |
| 4   | Sexo      |   1 |  23 | 93.087 | 471.910 | 4.537 | 0.044 | 0.165 | \*     |
| 6   | Zona      |   1 |  17 | 18.793 | 409.679 | 0.780 | 0.390 | 0.044 |        |
| 8   | Cor.Raca  |   1 |  16 | 40.039 | 417.106 | 1.536 | 0.233 | 0.088 |        |
| 10  | Serie     |   3 |  21 | 73.291 | 491.706 | 1.043 | 0.394 | 0.130 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | vocab.pre      |   1 |  21 | 48.337 | 469.329 | 2.163 | 0.156 | 0.093 |        |
| 4   | grupo:Sexo     |   1 |  21 |  0.000 | 469.329 | 0.000 | 0.999 | 0.000 |        |
| 8   | grupo:Zona     |   1 |  15 | 51.725 | 340.496 | 2.279 | 0.152 | 0.132 |        |
| 12  | grupo:Cor.Raca |   1 |  14 | 38.117 | 375.214 | 1.422 | 0.253 | 0.092 |        |
| 16  | grupo:Serie    |   2 |  18 | 24.221 | 467.438 | 0.466 | 0.635 | 0.049 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  17 |  13.529 |    0.550 |    17.294 |      0.915 |  17.041 |    1.215 |
| vocab.pos | Experimental |   9 |  12.111 |    0.964 |    17.333 |      2.279 |  17.812 |    1.690 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -0.772 |   -5.150 |     3.607 | 2.117 |    -0.365 | 0.719 | 0.719 | ns           |
| vocab.pre | Controle | Experimental |    1.418 |   -0.702 |     3.539 | 1.028 |     1.380 | 0.180 | 0.180 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -3.765 |   -6.492 |    -1.037 | 1.356 |    -2.776 | 0.008 | 0.008 | \*\*         |
| vocab | Experimental | pre    | pos    |   -5.222 |   -8.970 |    -1.474 | 1.864 |    -2.801 | 0.007 | 0.007 | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |   5 |  13.200 |    0.583 |    20.000 |      1.140 |  19.987 |    2.187 |
| vocab.pos | Controle     | M    |  12 |  13.667 |    0.752 |    16.167 |      1.065 |  15.915 |    1.426 |
| vocab.pos | Experimental | M    |   6 |  12.167 |    1.424 |    16.000 |      3.246 |  16.514 |    2.039 |

|     | .y.       | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | vocab.pos |          | M    | Controle | Experimental |   -0.599 |   -5.877 |     4.679 | 2.522 |    -0.238 | 0.815 | 0.815 | ns           |
| 4   | vocab.pre |          | M    | Controle | Experimental |    1.500 |   -1.282 |     4.282 | 1.334 |     1.125 | 0.274 | 0.274 | ns           |
| 5   | vocab.pos | Controle |      | F        | M            |    4.072 |   -1.392 |     9.536 | 2.611 |     1.560 | 0.135 | 0.135 | ns           |
| 7   | vocab.pre | Controle |      | F        | M            |   -0.467 |   -3.428 |     2.495 | 1.420 |    -0.329 | 0.746 | 0.746 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -6.800 |  -11.889 |    -1.711 | 2.518 |    -2.701 | 0.010 | 0.010 | \*           |
| vocab | Controle     | M    | pre    | pos    |   -2.500 |   -5.785 |     0.785 | 1.625 |    -1.538 | 0.132 | 0.132 | ns           |
| vocab | Experimental | M    | pre    | pos    |   -3.833 |   -8.479 |     0.812 | 2.298 |    -1.668 | 0.103 | 0.103 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-1st-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
