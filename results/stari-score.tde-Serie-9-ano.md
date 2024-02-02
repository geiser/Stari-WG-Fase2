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

| grupo        | Sexo | Zona   | Cor.Raca | score.tde.quintile | variable      |   n |   mean | median | min | max |     sd |     se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:-------------------|:--------------|----:|-------:|-------:|----:|----:|-------:|-------:|-------:|------:|
| Controle     | F    |        |          |                    | score.tde.pre |   9 | 33.333 |   34.0 |  25 |  41 |  5.477 |  1.826 |  4.210 |  6.00 |
| Controle     | M    |        |          |                    | score.tde.pre |  19 | 31.842 |   34.0 |  17 |  46 |  8.559 |  1.964 |  4.125 | 13.00 |
| Experimental | F    |        |          |                    | score.tde.pre |   4 | 32.250 |   31.0 |  27 |  40 |  5.560 |  2.780 |  8.848 |  4.75 |
| Experimental | M    |        |          |                    | score.tde.pre |   7 | 35.286 |   37.0 |  19 |  46 |  9.050 |  3.421 |  8.370 |  9.50 |
| Controle     | F    |        |          |                    | score.tde.pos |   9 | 37.222 |   39.0 |  25 |  48 |  7.190 |  2.397 |  5.527 |  9.00 |
| Controle     | M    |        |          |                    | score.tde.pos |  19 | 35.000 |   37.0 |  12 |  59 | 12.459 |  2.858 |  6.005 | 18.50 |
| Experimental | F    |        |          |                    | score.tde.pos |   4 | 28.500 |   26.5 |  19 |  42 |  9.747 |  4.873 | 15.509 |  8.00 |
| Experimental | M    |        |          |                    | score.tde.pos |   7 | 35.429 |   38.0 |  15 |  50 | 13.998 |  5.291 | 12.946 | 17.50 |
| Controle     |      | Rural  |          |                    | score.tde.pre |  12 | 33.167 |   33.5 |  17 |  46 |  9.252 |  2.671 |  5.879 | 15.50 |
| Controle     |      | Urbana |          |                    | score.tde.pre |   1 | 25.000 |   25.0 |  25 |  25 |        |        |        |  0.00 |
| Controle     |      |        |          |                    | score.tde.pre |  15 | 32.133 |   34.0 |  20 |  39 |  6.368 |  1.644 |  3.527 | 10.50 |
| Experimental |      | Rural  |          |                    | score.tde.pre |   6 | 36.333 |   38.5 |  19 |  46 |  9.438 |  3.853 |  9.904 |  6.75 |
| Experimental |      | Urbana |          |                    | score.tde.pre |   1 | 30.000 |   30.0 |  30 |  30 |        |        |        |  0.00 |
| Experimental |      |        |          |                    | score.tde.pre |   4 | 32.000 |   30.5 |  27 |  40 |  5.715 |  2.858 |  9.095 |  5.50 |
| Controle     |      | Rural  |          |                    | score.tde.pos |  12 | 35.750 |   38.0 |  21 |  50 | 11.202 |  3.234 |  7.117 | 19.50 |
| Controle     |      | Urbana |          |                    | score.tde.pos |   1 | 39.000 |   39.0 |  39 |  39 |        |        |        |  0.00 |
| Controle     |      |        |          |                    | score.tde.pos |  15 | 35.467 |   37.0 |  12 |  59 | 11.482 |  2.965 |  6.359 | 13.50 |
| Experimental |      | Rural  |          |                    | score.tde.pos |   6 | 39.000 |   41.0 |  15 |  50 | 12.900 |  5.266 | 13.537 | 10.25 |
| Experimental |      | Urbana |          |                    | score.tde.pos |   1 | 25.000 |   25.0 |  25 |  25 |        |        |        |  0.00 |
| Experimental |      |        |          |                    | score.tde.pos |   4 | 25.750 |   23.5 |  18 |  38 |  9.323 |  4.661 | 14.835 | 11.75 |
| Controle     |      |        | Branca   |                    | score.tde.pre |   3 | 40.333 |   44.0 |  31 |  46 |  8.145 |  4.702 | 20.232 |  7.50 |
| Controle     |      |        | Indígena |                    | score.tde.pre |   1 | 41.000 |   41.0 |  41 |  41 |        |        |        |  0.00 |
| Controle     |      |        | Parda    |                    | score.tde.pre |  10 | 28.700 |   28.0 |  17 |  42 |  8.193 |  2.591 |  5.861 | 12.25 |
| Controle     |      |        |          |                    | score.tde.pre |  14 | 32.571 |   34.5 |  25 |  39 |  5.787 |  1.547 |  3.342 | 10.75 |
| Experimental |      |        | Branca   |                    | score.tde.pre |   2 | 40.000 |   40.0 |  34 |  46 |  8.485 |  6.000 | 76.237 |  6.00 |
| Experimental |      |        | Indígena |                    | score.tde.pre |   3 | 39.667 |   40.0 |  37 |  42 |  2.517 |  1.453 |  6.252 |  2.50 |
| Experimental |      |        | Parda    |                    | score.tde.pre |   3 | 27.000 |   30.0 |  19 |  32 |  7.000 |  4.041 | 17.389 |  6.50 |
| Experimental |      |        |          |                    | score.tde.pre |   3 | 32.000 |   29.0 |  27 |  40 |  7.000 |  4.041 | 17.389 |  6.50 |
| Controle     |      |        | Branca   |                    | score.tde.pos |   3 | 40.667 |   42.0 |  37 |  43 |  3.215 |  1.856 |  7.985 |  3.00 |
| Controle     |      |        | Indígena |                    | score.tde.pos |   1 | 25.000 |   25.0 |  25 |  25 |        |        |        |  0.00 |
| Controle     |      |        | Parda    |                    | score.tde.pos |  10 | 31.600 |   28.0 |  12 |  50 | 13.418 |  4.243 |  9.599 | 21.75 |
| Controle     |      |        |          |                    | score.tde.pos |  14 | 38.357 |   40.0 |  21 |  59 |  9.369 |  2.504 |  5.410 |  6.50 |
| Experimental |      |        | Branca   |                    | score.tde.pos |   2 | 43.500 |   43.5 |  37 |  50 |  9.192 |  6.500 | 82.590 |  6.50 |
| Experimental |      |        | Indígena |                    | score.tde.pos |   3 | 35.667 |   42.0 |  15 |  50 | 18.339 | 10.588 | 45.558 | 17.50 |
| Experimental |      |        | Parda    |                    | score.tde.pos |   3 | 31.000 |   28.0 |  25 |  40 |  7.937 |  4.583 | 19.717 |  7.50 |
| Experimental |      |        |          |                    | score.tde.pos |   3 | 25.000 |   19.0 |  18 |  38 | 11.269 |  6.506 | 27.995 | 10.00 |
| Controle     |      |        |          | 1st quintile       | score.tde.pre |   1 | 17.000 |   17.0 |  17 |  17 |        |        |        |  0.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pre |  11 | 25.455 |   25.0 |  20 |  31 |  3.078 |  0.928 |  2.068 |  2.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pre |  14 | 37.000 |   36.5 |  33 |  42 |  2.689 |  0.719 |  1.553 |  3.75 |
| Controle     |      |        |          | 4th quintile       | score.tde.pre |   2 | 45.000 |   45.0 |  44 |  46 |  1.414 |  1.000 | 12.706 |  1.00 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pre |   4 | 26.250 |   28.0 |  19 |  30 |  4.992 |  2.496 |  7.943 |  4.25 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pre |   6 | 37.500 |   38.5 |  32 |  42 |  3.886 |  1.586 |  4.078 |  5.25 |
| Experimental |      |        |          | 4th quintile       | score.tde.pre |   1 | 46.000 |   46.0 |  46 |  46 |        |        |        |  0.00 |
| Controle     |      |        |          | 1st quintile       | score.tde.pos |   1 | 24.000 |   24.0 |  24 |  24 |        |        |        |  0.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pos |  11 | 31.273 |   28.0 |  12 |  48 | 11.341 |  3.419 |  7.619 | 18.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pos |  14 | 39.429 |   41.0 |  22 |  59 | 10.188 |  2.723 |  5.883 | 11.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pos |   2 | 40.000 |   40.0 |  37 |  43 |  4.243 |  3.000 | 38.119 |  3.00 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pos |   4 | 25.500 |   22.0 |  18 |  40 | 10.149 |  5.074 | 16.149 | 10.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pos |   6 | 35.000 |   37.5 |  15 |  50 | 12.133 |  4.953 | 12.732 | 10.75 |
| Experimental |      |        |          | 4th quintile       | score.tde.pos |   1 | 50.000 |   50.0 |  50 |  50 |        |        |        |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| score.tde.pos |  39 | -0.2301196 | -0.4638487 | YES      | 0.9824124 | Shapiro-Wilk | 0.7895374 | ns       | YES       |
| score.tde.pos |  20 | -0.6962424 | -0.3824120 | NO       | 0.9387465 | Shapiro-Wilk | 0.2270254 | ns       | YES       |
| score.tde.pos |  22 | -0.1552125 | -1.0009895 | YES      | 0.9648343 | Shapiro-Wilk | 0.5926271 | ns       | YES       |
| score.tde.pos |  39 | -0.0874246 | -0.3245606 | YES      | 0.9810662 | Shapiro-Wilk | 0.7421020 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                              |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:-------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`               |  39 |       3 |      35 | 0.7607550 | 0.5237257 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`               |  39 |       3 |      31 | 1.8350000 | 0.1610000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`               |  20 |       3 |      16 | 0.9627332 | 0.4343267 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`               |  20 |       1 |      14 | 0.0530000 | 0.8220000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`           |  22 |       5 |      16 | 0.4726691 | 0.7912264 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`           |  22 |       4 |      11 | 2.8050000 | 0.0790000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`score.tde.quintile` |  39 |       6 |      32 | 0.4846578 | 0.8147725 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`score.tde.quintile` |  39 |       4 |      27 | 2.0570000 | 0.1140000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect             | DFn | DFd |      SSn |      SSd |      F |     p |   ges | p\<.05 |
|:----|:-------------------|----:|----:|---------:|---------:|-------:|------:|------:|:-------|
| 1   | score.tde.pre      |   1 |  36 | 1224.525 | 3596.099 | 12.259 | 0.001 | 0.254 | \*     |
| 2   | grupo              |   1 |  36 |  137.558 | 3596.099 |  1.377 | 0.248 | 0.037 |        |
| 4   | Sexo               |   1 |  36 |    4.791 | 3728.866 |  0.046 | 0.831 | 0.001 |        |
| 6   | Zona               |   1 |  17 |    6.319 | 2083.182 |  0.052 | 0.823 | 0.003 |        |
| 8   | Cor.Raca           |   2 |  18 |  179.402 | 2142.766 |  0.754 | 0.485 | 0.077 |        |
| 10  | score.tde.quintile |   3 |  34 |    3.036 | 3730.621 |  0.009 | 0.999 | 0.001 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |      SSn |      SSd |      F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|---------:|-------:|------:|------:|:-------|
| 1   | score.tde.pre            |   1 |  34 | 1135.726 | 3532.544 | 10.931 | 0.002 | 0.243 | \*     |
| 4   | grupo:Sexo               |   1 |  34 |   60.550 | 3532.544 |  0.583 | 0.450 | 0.017 |        |
| 8   | grupo:Zona               |   1 |  15 |  144.884 | 1938.225 |  1.121 | 0.306 | 0.070 |        |
| 12  | grupo:Cor.Raca           |   2 |  15 |   68.517 | 2028.977 |  0.253 | 0.780 | 0.033 |        |
| 16  | grupo:score.tde.quintile |   2 |  31 |  135.425 | 3455.126 |  0.608 | 0.551 | 0.038 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  28 |  32.321 |    1.442 |    35.714 |      2.069 |  36.108 |    1.892 |
| score.tde.pos | Experimental |  11 |  34.182 |    2.350 |    32.909 |      3.793 |  31.908 |    3.027 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |     4.20 |   -3.058 |    11.458 | 3.579 |     1.173 | 0.248 | 0.248 | ns           |
| score.tde.pre | Controle | Experimental |    -1.86 |   -7.394 |     3.674 | 2.731 |    -0.681 | 0.500 | 0.500 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |   -3.393 |   -8.572 |     1.787 | 2.599 |    -1.305 | 0.196 | 0.196 | ns           |
| score.tde | Experimental | pre    | pos    |    1.273 |   -6.991 |     9.536 | 4.147 |     0.307 | 0.760 | 0.760 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |   9 |  33.333 |    1.826 |    37.222 |      2.397 |  36.937 |    3.508 |
| score.tde.pos | Controle     | M    |  19 |  31.842 |    1.964 |    35.000 |      2.858 |  35.731 |    2.426 |
| score.tde.pos | Experimental | M    |   7 |  35.286 |    3.421 |    35.429 |      5.291 |  33.812 |    4.014 |

|     | .y.           | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | score.tde.pos |          | M    | Controle | Experimental |    1.919 |   -7.707 |    11.544 | 4.720 |     0.407 | 0.687 | 0.687 | ns           |
| 4   | score.tde.pre |          | M    | Controle | Experimental |   -3.444 |  -10.652 |     3.765 | 3.539 |    -0.973 | 0.338 | 0.338 | ns           |
| 5   | score.tde.pos | Controle |      | F        | M            |    1.206 |   -7.505 |     9.916 | 4.271 |     0.282 | 0.780 | 0.780 | ns           |
| 7   | score.tde.pre | Controle |      | F        | M            |    1.491 |   -5.106 |     8.088 | 3.239 |     0.460 | 0.648 | 0.648 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |   -3.889 |  -13.331 |     5.553 | 4.726 |    -0.823 | 0.414 | 0.414 | ns           |
| score.tde | Controle     | M    | pre    | pos    |   -3.158 |   -9.656 |     3.340 | 3.253 |    -0.971 | 0.335 | 0.335 | ns           |
| score.tde | Experimental | M    | pre    | pos    |   -0.143 |  -10.849 |    10.563 | 5.359 |    -0.027 | 0.979 | 0.979 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:score.tde.quintile**

| var           | grupo        | score.tde.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 2nd quintile       |  11 |  25.455 |    0.928 |    31.273 |      3.419 |  43.456 |    5.517 |
| score.tde.pos | Controle     | 3rd quintile       |  14 |  37.000 |    0.719 |    39.429 |      2.723 |  32.970 |    3.621 |
| score.tde.pos | Experimental | 3rd quintile       |   6 |  37.500 |    1.586 |    35.000 |      4.953 |  27.734 |    4.917 |

|     | .y.           | grupo    | score.tde.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----|:--------------|:---------|:-------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| 2   | score.tde.pos |          | 3rd quintile       | Controle     | Experimental |    5.236 |   -4.764 |    15.236 | 4.874 |     1.074 | 0.292   | 0.292   | ns           |
| 4   | score.tde.pre |          | 3rd quintile       | Controle     | Experimental |   -0.500 |   -3.570 |     2.570 | 1.499 |    -0.334 | 0.741   | 0.741   | ns           |
| 5   | score.tde.pos | Controle |                    | 2nd quintile | 3rd quintile |   10.486 |   -6.215 |    27.187 | 8.140 |     1.288 | 0.209   | 0.209   | ns           |
| 7   | score.tde.pre | Controle |                    | 2nd quintile | 3rd quintile |  -11.545 |  -14.081 |    -9.010 | 1.238 |    -9.328 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.       | grupo        | score.tde.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 2nd quintile       | pre    | pos    |   -5.818 |  -12.701 |     1.065 | 3.436 |    -1.693 | 0.096 | 0.096 | ns           |
| score.tde | Controle     | 3rd quintile       | pre    | pos    |   -2.429 |   -8.529 |     3.672 | 3.046 |    -0.797 | 0.429 | 0.429 | ns           |
| score.tde | Experimental | 3rd quintile       | pre    | pos    |    2.500 |   -6.819 |    11.819 | 4.652 |     0.537 | 0.593 | 0.593 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
