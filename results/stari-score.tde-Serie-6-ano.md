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
    - [factores:
      **grupo:score.tde.quintile**](#factores-gruposcoretdequintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  TDE - Escrita (Acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  TDE - Escrita (Acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | score.tde.quintile | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:-------------------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          |                    | score.tde.pre |  16 | 29.875 |   30.0 |  20 |  39 |  5.898 | 1.474 |  3.143 |  8.00 |
| Controle     | M    |        |          |                    | score.tde.pre |  14 | 30.571 |   30.5 |  20 |  38 |  5.626 | 1.504 |  3.248 |  6.25 |
| Experimental | F    |        |          |                    | score.tde.pre |   7 | 34.571 |   35.0 |  28 |  40 |  4.158 | 1.571 |  3.845 |  5.50 |
| Experimental | M    |        |          |                    | score.tde.pre |   7 | 25.857 |   25.0 |  21 |  37 |  5.640 | 2.132 |  5.216 |  5.00 |
| Controle     | F    |        |          |                    | score.tde.pos |  16 | 28.750 |   26.0 |  18 |  42 |  7.638 | 1.909 |  4.070 | 11.00 |
| Controle     | M    |        |          |                    | score.tde.pos |  14 | 25.857 |   23.0 |   0 |  45 | 12.961 | 3.464 |  7.483 | 19.25 |
| Experimental | F    |        |          |                    | score.tde.pos |   7 | 32.143 |   27.0 |  25 |  44 |  7.734 | 2.923 |  7.152 | 11.50 |
| Experimental | M    |        |          |                    | score.tde.pos |   7 | 22.000 |   19.0 |  11 |  43 | 10.312 | 3.897 |  9.537 |  6.50 |
| Controle     |      | Rural  |          |                    | score.tde.pre |  24 | 29.625 |   29.5 |  20 |  39 |  5.933 | 1.211 |  2.505 |  8.75 |
| Controle     |      | Urbana |          |                    | score.tde.pre |   3 | 33.000 |   32.0 |  28 |  39 |  5.568 | 3.215 | 13.831 |  5.50 |
| Controle     |      |        |          |                    | score.tde.pre |   3 | 32.000 |   30.0 |  30 |  36 |  3.464 | 2.000 |  8.605 |  3.00 |
| Experimental |      | Rural  |          |                    | score.tde.pre |  13 | 29.615 |   29.0 |  21 |  40 |  6.423 | 1.781 |  3.881 | 10.00 |
| Experimental |      | Urbana |          |                    | score.tde.pre |   1 | 38.000 |   38.0 |  38 |  38 |        |       |        |  0.00 |
| Controle     |      | Rural  |          |                    | score.tde.pos |  24 | 26.042 |   25.5 |   0 |  45 | 10.498 | 2.143 |  4.433 | 16.25 |
| Controle     |      | Urbana |          |                    | score.tde.pos |   3 | 31.333 |   34.0 |  24 |  36 |  6.429 | 3.712 | 15.971 |  6.00 |
| Controle     |      |        |          |                    | score.tde.pos |   3 | 34.333 |   40.0 |  21 |  42 | 11.590 | 6.692 | 28.792 | 10.50 |
| Experimental |      | Rural  |          |                    | score.tde.pos |  13 | 26.385 |   26.0 |  11 |  44 | 10.292 | 2.854 |  6.219 |  8.00 |
| Experimental |      | Urbana |          |                    | score.tde.pos |   1 | 36.000 |   36.0 |  36 |  36 |        |       |        |  0.00 |
| Controle     |      |        | Branca   |                    | score.tde.pre |   4 | 26.500 |   27.5 |  20 |  31 |  4.796 | 2.398 |  7.631 |  5.00 |
| Controle     |      |        | Parda    |                    | score.tde.pre |  15 | 31.467 |   32.0 |  22 |  39 |  5.780 | 1.492 |  3.201 |  9.00 |
| Controle     |      |        |          |                    | score.tde.pre |  11 | 29.818 |   30.0 |  20 |  39 |  5.654 | 1.705 |  3.798 |  5.50 |
| Experimental |      |        | Branca   |                    | score.tde.pre |   1 | 38.000 |   38.0 |  38 |  38 |        |       |        |  0.00 |
| Experimental |      |        | Indígena |                    | score.tde.pre |   1 | 28.000 |   28.0 |  28 |  28 |        |       |        |  0.00 |
| Experimental |      |        | Parda    |                    | score.tde.pre |   7 | 29.286 |   29.0 |  21 |  40 |  7.499 | 2.834 |  6.936 | 11.50 |
| Experimental |      |        |          |                    | score.tde.pre |   5 | 30.400 |   32.0 |  23 |  37 |  6.148 | 2.750 |  7.634 | 10.00 |
| Controle     |      |        | Branca   |                    | score.tde.pos |   4 | 29.750 |   33.5 |  16 |  36 |  9.465 | 4.732 | 15.061 |  8.75 |
| Controle     |      |        | Parda    |                    | score.tde.pos |  15 | 23.600 |   23.0 |   0 |  42 |  9.948 | 2.569 |  5.509 |  6.00 |
| Controle     |      |        |          |                    | score.tde.pos |  11 | 31.727 |   35.0 |  16 |  45 | 10.110 | 3.048 |  6.792 | 16.50 |
| Experimental |      |        | Branca   |                    | score.tde.pos |   1 | 36.000 |   36.0 |  36 |  36 |        |       |        |  0.00 |
| Experimental |      |        | Indígena |                    | score.tde.pos |   1 | 25.000 |   25.0 |  25 |  25 |        |       |        |  0.00 |
| Experimental |      |        | Parda    |                    | score.tde.pos |   7 | 27.286 |   26.0 |  17 |  43 | 10.499 | 3.968 |  9.710 | 14.50 |
| Experimental |      |        |          |                    | score.tde.pos |   5 | 25.400 |   26.0 |  11 |  44 | 12.219 | 5.464 | 15.172 |  8.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pre |  19 | 26.737 |   28.0 |  20 |  31 |  3.754 | 0.861 |  1.809 |  5.50 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pre |  11 | 36.182 |   37.0 |  32 |  39 |  2.483 | 0.749 |  1.668 |  3.50 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pre |   7 | 24.571 |   25.0 |  21 |  29 |  3.155 | 1.192 |  2.918 |  4.50 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pre |   7 | 35.857 |   37.0 |  32 |  40 |  3.024 | 1.143 |  2.796 |  4.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pos |  19 | 25.053 |   24.0 |   0 |  42 | 10.617 | 2.436 |  5.117 | 15.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pos |  11 | 31.455 |   34.0 |  19 |  45 |  8.982 | 2.708 |  6.034 | 13.50 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pos |   7 | 22.571 |   19.0 |  11 |  43 | 10.358 | 3.915 |  9.579 |  8.50 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pos |   7 | 31.571 |   27.0 |  21 |  44 |  8.463 | 3.199 |  7.827 | 11.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| score.tde.pos |  44 |  0.1277750 | -0.7118573 | YES      | 0.9775225 | Shapiro-Wilk | 0.5375177 | ns       | YES       |
| score.tde.pos |  41 | -0.0477707 | -0.5425014 | YES      | 0.9892279 | Shapiro-Wilk | 0.9607380 | ns       | YES       |
| score.tde.pos |  28 |  0.1862940 | -0.5461932 | YES      | 0.9869384 | Shapiro-Wilk | 0.9722770 | ns       | YES       |
| score.tde.pos |  44 | -0.0858340 | -0.7804000 | YES      | 0.9762364 | Shapiro-Wilk | 0.4905936 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                              |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:-------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`               |  44 |       3 |      40 | 1.3251427 | 0.2796601 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`               |  44 |       3 |      36 | 0.9940000 | 0.4070000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`               |  41 |       3 |      37 | 1.4406231 | 0.2465689 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`               |  41 |       2 |      34 | 0.0050000 | 0.9950000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`           |  28 |       4 |      23 | 0.8283690 | 0.5207780 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`           |  28 |       2 |      20 | 0.2710000 | 0.7650000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`score.tde.quintile` |  44 |       3 |      40 | 0.7011614 | 0.5569270 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`score.tde.quintile` |  44 |       3 |      36 | 1.4770000 | 0.2370000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect             | DFn | DFd |      SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:-------------------|----:|----:|---------:|---------:|-------:|:--------|------:|:-------|
| 1   | score.tde.pre      |   1 |  41 | 1159.200 | 3318.928 | 14.320 | \<0.001 | 0.259 | \*     |
| 2   | grupo              |   1 |  41 |    1.111 | 3318.928 |  0.014 | 0.907   | 0.000 |        |
| 4   | Sexo               |   1 |  41 |  115.765 | 3204.274 |  1.481 | 0.231   | 0.035 |        |
| 6   | Zona               |   1 |  38 |   15.942 | 2776.846 |  0.218 | 0.643   | 0.006 |        |
| 8   | Cor.Raca           |   2 |  24 |  232.026 | 1926.144 |  1.446 | 0.255   | 0.108 |        |
| 10  | score.tde.quintile |   1 |  41 |   89.400 | 3230.639 |  1.135 | 0.293   | 0.027 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |     SSn |      SSd |      F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|--------:|---------:|-------:|------:|------:|:-------|
| 1   | score.tde.pre            |   1 |  39 | 852.515 | 3203.057 | 10.380 | 0.003 | 0.210 | \*     |
| 4   | grupo:Sexo               |   1 |  39 |   0.712 | 3203.057 |  0.009 | 0.926 | 0.000 |        |
| 8   | grupo:Zona               |   1 |  36 |   0.026 | 2775.786 |  0.000 | 0.985 | 0.000 |        |
| 12  | grupo:Cor.Raca           |   1 |  22 |  38.797 | 1788.791 |  0.477 | 0.497 | 0.021 |        |
| 16  | grupo:score.tde.quintile |   1 |  39 |   0.183 | 3229.185 |  0.002 | 0.963 | 0.000 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  30 |  30.200 |    1.038 |    27.400 |      1.894 |  27.404 |    1.643 |
| score.tde.pos | Experimental |  14 |  30.214 |    1.755 |    27.071 |      2.731 |  27.063 |    2.405 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |    0.341 |   -5.540 |     6.222 | 2.912 |     0.117 | 0.907 | 0.907 | ns           |
| score.tde.pre | Controle | Experimental |   -0.014 |   -3.914 |     3.886 | 1.932 |    -0.007 | 0.994 | 0.994 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    2.800 |   -1.531 |     7.131 | 2.178 |     1.286 | 0.202 | 0.202 | ns           |
| score.tde | Experimental | pre    | pos    |    3.143 |   -3.196 |     9.482 | 3.188 |     0.986 | 0.327 | 0.327 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  16 |  29.875 |    1.474 |    28.750 |      1.909 |  29.025 |    2.267 |
| score.tde.pos | Controle     | M    |  14 |  30.571 |    1.504 |    25.857 |      3.464 |  25.551 |    2.424 |
| score.tde.pos | Experimental | F    |   7 |  34.571 |    1.571 |    32.143 |      2.923 |  28.504 |    3.607 |
| score.tde.pos | Experimental | M    |   7 |  25.857 |    2.132 |    22.000 |      3.897 |  25.623 |    3.605 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |    0.521 |   -8.142 |     9.183 | 4.283 |     0.122 | 0.904 | 0.904 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |   -0.071 |   -8.908 |     8.765 | 4.369 |    -0.016 | 0.987 | 0.987 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |   -4.696 |   -9.771 |     0.378 | 2.511 |    -1.871 | 0.069 | 0.069 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |    4.714 |   -0.469 |     9.898 | 2.565 |     1.838 | 0.073 | 0.073 | ns           |
| score.tde.pos | Controle     |      | F        | M            |    3.473 |   -3.245 |    10.191 | 3.321 |     1.046 | 0.302 | 0.302 | ns           |
| score.tde.pos | Experimental |      | F        | M            |    2.881 |   -7.925 |    13.688 | 5.343 |     0.539 | 0.593 | 0.593 | ns           |
| score.tde.pre | Controle     |      | F        | M            |   -0.696 |   -4.794 |     3.401 | 2.028 |    -0.343 | 0.733 | 0.733 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    8.714 |    2.729 |    14.699 | 2.961 |     2.943 | 0.005 | 0.005 | \*\*         |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    1.125 |   -4.593 |     6.843 | 2.873 |     0.392 | 0.696 | 0.696 | ns           |
| score.tde | Controle     | M    | pre    | pos    |    4.714 |   -1.398 |    10.827 | 3.072 |     1.535 | 0.129 | 0.129 | ns           |
| score.tde | Experimental | F    | pre    | pos    |    2.429 |   -6.216 |    11.073 | 4.344 |     0.559 | 0.578 | 0.578 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    3.857 |   -4.787 |    12.502 | 4.344 |     0.888 | 0.377 | 0.377 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:score.tde.quintile**

| var           | grupo        | score.tde.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 2nd quintile       |  19 |  26.737 |    0.861 |    25.053 |      2.436 |  29.414 |    2.583 |
| score.tde.pos | Controle     | 3rd quintile       |  11 |  36.182 |    0.749 |    31.455 |      2.708 |  23.937 |    3.796 |
| score.tde.pos | Experimental | 2nd quintile       |   7 |  24.571 |    1.192 |    22.571 |      3.915 |  29.656 |    4.236 |
| score.tde.pos | Experimental | 3rd quintile       |   7 |  35.857 |    1.143 |    31.571 |      3.199 |  24.463 |    4.241 |

| .y.           | grupo        | score.tde.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | 2nd quintile       | Controle     | Experimental |   -0.242 |   -8.604 |     8.120 | 4.134 |    -0.059 | 0.954   | 0.954   | ns           |
| score.tde.pos |              | 3rd quintile       | Controle     | Experimental |   -0.525 |   -9.429 |     8.378 | 4.402 |    -0.119 | 0.906   | 0.906   | ns           |
| score.tde.pre |              | 2nd quintile       | Controle     | Experimental |    2.165 |   -0.764 |     5.095 | 1.449 |     1.494 | 0.143   | 0.143   | ns           |
| score.tde.pre |              | 3rd quintile       | Controle     | Experimental |    0.325 |   -2.879 |     3.528 | 1.585 |     0.205 | 0.839   | 0.839   | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 3rd quintile |    5.476 |   -5.429 |    16.381 | 5.391 |     1.016 | 0.316   | 0.316   | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 3rd quintile |    5.193 |   -8.848 |    19.234 | 6.942 |     0.748 | 0.459   | 0.459   | ns           |
| score.tde.pre | Controle     |                    | 2nd quintile | 3rd quintile |   -9.445 |  -11.955 |    -6.935 | 1.242 |    -7.604 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 3rd quintile |  -11.286 |  -14.827 |    -7.744 | 1.752 |    -6.440 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.       | grupo        | score.tde.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 2nd quintile       | pre    | pos    |    1.684 |   -3.071 |     6.439 | 2.389 |     0.705 | 0.483 | 0.483 | ns           |
| score.tde | Controle     | 3rd quintile       | pre    | pos    |    4.727 |   -1.522 |    10.977 | 3.140 |     1.505 | 0.136 | 0.136 | ns           |
| score.tde | Experimental | 2nd quintile       | pre    | pos    |    2.000 |   -5.834 |     9.834 | 3.937 |     0.508 | 0.613 | 0.613 | ns           |
| score.tde | Experimental | 3rd quintile       | pre    | pos    |    4.286 |   -3.548 |    12.120 | 3.937 |     1.089 | 0.280 | 0.280 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-6-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
