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

| grupo        | Sexo | Zona   | Cor.Raca | vocab.quintile | variable  |   n |   mean | median | min | max |     sd |    se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|:----------|----:|-------:|-------:|----:|----:|-------:|------:|--------:|------:|
| Controle     | F    |        |          |                | vocab.pre |  17 | 23.941 |   23.0 |  12 |  35 |  6.015 | 1.459 |   3.093 |  8.00 |
| Controle     | M    |        |          |                | vocab.pre |  11 | 22.273 |   23.0 |  14 |  32 |  6.051 | 1.825 |   4.065 |  6.50 |
| Experimental | F    |        |          |                | vocab.pre |   4 | 28.250 |   29.0 |  22 |  33 |  5.620 | 2.810 |   8.943 |  8.75 |
| Experimental | M    |        |          |                | vocab.pre |   9 | 21.667 |   21.0 |  13 |  39 |  7.842 | 2.614 |   6.028 |  8.00 |
| Controle     | F    |        |          |                | vocab.pos |  17 | 26.765 |   23.0 |  18 |  40 |  6.824 | 1.655 |   3.509 |  7.00 |
| Controle     | M    |        |          |                | vocab.pos |  11 | 26.000 |   25.0 |  12 |  47 | 10.315 | 3.110 |   6.930 | 12.00 |
| Experimental | F    |        |          |                | vocab.pos |   4 | 24.250 |   25.5 |  18 |  28 |  4.787 | 2.394 |   7.617 |  6.25 |
| Experimental | M    |        |          |                | vocab.pos |   9 | 22.556 |   21.0 |  10 |  39 |  9.812 | 3.271 |   7.542 | 15.00 |
| Controle     |      | Rural  |          |                | vocab.pre |  18 | 25.833 |   25.5 |  19 |  35 |  5.079 | 1.197 |   2.526 |  5.75 |
| Controle     |      | Urbana |          |                | vocab.pre |   3 | 17.667 |   19.0 |  14 |  20 |  3.215 | 1.856 |   7.985 |  3.00 |
| Controle     |      |        |          |                | vocab.pre |   7 | 19.143 |   19.0 |  12 |  28 |  5.367 | 2.029 |   4.964 |  5.50 |
| Experimental |      | Rural  |          |                | vocab.pre |  11 | 23.636 |   23.0 |  13 |  39 |  7.379 | 2.225 |   4.958 |  6.00 |
| Experimental |      | Urbana |          |                | vocab.pre |   2 | 24.000 |   24.0 |  15 |  33 | 12.728 | 9.000 | 114.356 |  9.00 |
| Controle     |      | Rural  |          |                | vocab.pos |  18 | 29.333 |   27.5 |  22 |  47 |  7.195 | 1.696 |   3.578 | 10.50 |
| Controle     |      | Urbana |          |                | vocab.pos |   3 | 17.333 |   18.0 |  12 |  22 |  5.033 | 2.906 |  12.503 |  5.00 |
| Controle     |      |        |          |                | vocab.pos |   7 | 23.000 |   20.0 |  15 |  40 |  8.165 | 3.086 |   7.551 |  5.00 |
| Experimental |      | Rural  |          |                | vocab.pos |  11 | 23.727 |   22.0 |  10 |  39 |  8.900 | 2.684 |   5.979 | 10.00 |
| Experimental |      | Urbana |          |                | vocab.pos |   2 | 19.500 |   19.5 |  16 |  23 |  4.950 | 3.500 |  44.472 |  3.50 |
| Controle     |      |        | Branca   |                | vocab.pre |   4 | 25.250 |   28.0 |  14 |  31 |  7.632 | 3.816 |  12.144 |  4.25 |
| Controle     |      |        | Indígena |                | vocab.pre |   2 | 25.000 |   25.0 |  24 |  26 |  1.414 | 1.000 |  12.706 |  1.00 |
| Controle     |      |        | Parda    |                | vocab.pre |  14 | 22.643 |   23.0 |  12 |  35 |  6.295 | 1.683 |   3.635 |  5.25 |
| Controle     |      |        | Preta    |                | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |        |       |         |  0.00 |
| Controle     |      |        |          |                | vocab.pre |   7 | 23.571 |   20.0 |  18 |  34 |  6.133 | 2.318 |   5.672 |  8.50 |
| Experimental |      |        | Branca   |                | vocab.pre |   2 | 15.500 |   15.5 |  15 |  16 |  0.707 | 0.500 |   6.353 |  0.50 |
| Experimental |      |        | Indígena |                | vocab.pre |   3 | 24.333 |   22.0 |  18 |  33 |  7.767 | 4.485 |  19.295 |  7.50 |
| Experimental |      |        | Parda    |                | vocab.pre |   5 | 24.000 |   23.0 |  13 |  39 |  9.434 | 4.219 |  11.714 |  3.00 |
| Experimental |      |        |          |                | vocab.pre |   3 | 28.000 |   26.0 |  25 |  33 |  4.359 | 2.517 |  10.828 |  4.00 |
| Controle     |      |        | Branca   |                | vocab.pos |   4 | 30.500 |   32.0 |  18 |  40 |  9.292 | 4.646 |  14.785 |  8.50 |
| Controle     |      |        | Indígena |                | vocab.pos |   2 | 26.000 |   26.0 |  25 |  27 |  1.414 | 1.000 |  12.706 |  1.00 |
| Controle     |      |        | Parda    |                | vocab.pos |  14 | 23.786 |   23.0 |  12 |  36 |  6.253 | 1.671 |   3.611 |  5.50 |
| Controle     |      |        | Preta    |                | vocab.pos |   1 | 23.000 |   23.0 |  23 |  23 |        |       |         |  0.00 |
| Controle     |      |        |          |                | vocab.pos |   7 | 30.143 |   25.0 |  18 |  47 | 11.335 | 4.284 |  10.483 | 17.50 |
| Experimental |      |        | Branca   |                | vocab.pos |   2 | 23.500 |   23.5 |  16 |  31 | 10.607 | 7.500 |  95.297 |  7.50 |
| Experimental |      |        | Indígena |                | vocab.pos |   3 | 18.667 |   18.0 |  10 |  28 |  9.018 | 5.207 |  22.403 |  9.00 |
| Experimental |      |        | Parda    |                | vocab.pos |   5 | 22.800 |   21.0 |  11 |  39 | 10.109 | 4.521 |  12.552 |  1.00 |
| Experimental |      |        |          |                | vocab.pos |   3 | 27.667 |   28.0 |  23 |  32 |  4.509 | 2.603 |  11.202 |  4.50 |
| Controle     |      |        |          | 1st quintile   | vocab.pre |   3 | 13.333 |   14.0 |  12 |  14 |  1.155 | 0.667 |   2.868 |  1.00 |
| Controle     |      |        |          | 2nd quintile   | vocab.pre |   9 | 19.222 |   19.0 |  18 |  20 |  0.667 | 0.222 |   0.512 |  1.00 |
| Controle     |      |        |          | 3rd quintile   | vocab.pre |  12 | 25.583 |   25.5 |  23 |  29 |  2.353 | 0.679 |   1.495 |  5.00 |
| Controle     |      |        |          | 4th quintile   | vocab.pre |   3 | 32.333 |   32.0 |  31 |  34 |  1.528 | 0.882 |   3.795 |  1.50 |
| Controle     |      |        |          | 5th quintile   | vocab.pre |   1 | 35.000 |   35.0 |  35 |  35 |        |       |         |  0.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pre |   3 | 14.667 |   15.0 |  13 |  16 |  1.528 | 0.882 |   3.795 |  1.50 |
| Experimental |      |        |          | 2nd quintile   | vocab.pre |   3 | 20.333 |   21.0 |  18 |  22 |  2.082 | 1.202 |   5.171 |  2.00 |
| Experimental |      |        |          | 3rd quintile   | vocab.pre |   4 | 24.500 |   24.5 |  23 |  26 |  1.291 | 0.645 |   2.054 |  1.50 |
| Experimental |      |        |          | 4th quintile   | vocab.pre |   2 | 33.000 |   33.0 |  33 |  33 |  0.000 | 0.000 |   0.000 |  0.00 |
| Experimental |      |        |          | 5th quintile   | vocab.pre |   1 | 39.000 |   39.0 |  39 |  39 |        |       |         |  0.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pos |   3 | 20.333 |   20.0 |  18 |  23 |  2.517 | 1.453 |   6.252 |  2.50 |
| Controle     |      |        |          | 2nd quintile   | vocab.pos |   9 | 23.444 |   22.0 |  12 |  47 |  9.593 | 3.198 |   7.374 |  3.00 |
| Controle     |      |        |          | 3rd quintile   | vocab.pos |  12 | 27.583 |   26.5 |  15 |  40 |  6.986 | 2.017 |   4.439 |  7.25 |
| Controle     |      |        |          | 4th quintile   | vocab.pos |   3 | 34.000 |   32.0 |  30 |  40 |  5.292 | 3.055 |  13.145 |  5.00 |
| Controle     |      |        |          | 5th quintile   | vocab.pos |   1 | 36.000 |   36.0 |  36 |  36 |        |       |         |  0.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pos |   3 | 19.333 |   16.0 |  11 |  31 | 10.408 | 6.009 |  25.856 | 10.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pos |   3 | 16.333 |   18.0 |  10 |  21 |  5.686 | 3.283 |  14.125 |  5.50 |
| Experimental |      |        |          | 3rd quintile   | vocab.pos |   4 | 25.750 |   25.0 |  21 |  32 |  5.188 | 2.594 |   8.255 |  7.25 |
| Experimental |      |        |          | 4th quintile   | vocab.pos |   2 | 25.500 |   25.5 |  23 |  28 |  3.536 | 2.500 |  31.766 |  2.50 |
| Experimental |      |        |          | 5th quintile   | vocab.pos |   1 | 39.000 |   39.0 |  39 |  39 |        |       |         |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |   skewness |  kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|-----------:|----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  41 |  1.2185083 | 2.9902430 | NO       | 0.9001201 | Shapiro-Wilk | 0.0016717 | \*\*     | NO        |
| vocab.pos |  34 |  1.4779309 | 3.1108004 | NO       | 0.8811789 | Shapiro-Wilk | 0.0015142 | \*\*     | NO        |
| vocab.pos |  31 | -0.2063583 | 0.2136927 | YES      | 0.9508284 | Shapiro-Wilk | 0.1645419 | ns       | YES       |
| vocab.pos |  41 |  1.5407436 | 4.8969925 | NO       | 0.8847272 | Shapiro-Wilk | 0.0006053 | \*\*\*   | NO        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                          |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`           |  41 |       3 |      37 | 0.5074713 | 0.6795505 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`           |  41 |       3 |      33 | 0.2310000 | 0.8740000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`           |  34 |       3 |      30 | 0.1585063 | 0.9233639 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`           |  34 |       3 |      26 | 0.3690000 | 0.7760000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`       |  31 |       6 |      24 | 1.6564906 | 0.1751888 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`       |  31 |       5 |      18 | 1.3980000 | 0.2720000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`vocab.quintile` |  41 |       9 |      31 | 0.4515033 | 0.8953758 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`vocab.quintile` |  41 |       6 |      24 | 0.7350000 | 0.6270000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |     SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre      |   1 |  38 | 989.384 | 1670.503 | 22.506 | \<0.001 | 0.372 | \*     |
| 2   | grupo          |   1 |  38 | 121.452 | 1670.503 |  2.763 | 0.105   | 0.068 |        |
| 4   | Sexo           |   1 |  38 |   0.770 | 1791.184 |  0.016 | 0.899   | 0.000 |        |
| 6   | Zona           |   1 |  31 | 126.221 | 1357.970 |  2.881 | 0.1     | 0.085 |        |
| 8   | Cor.Raca       |   3 |  26 | 231.735 |  573.372 |  3.503 | 0.029   | 0.288 | \*     |
| 10  | vocab.quintile |   4 |  35 | 107.587 | 1684.368 |  0.559 | 0.694   | 0.060 |        |

## ANCOVA tests for two factors

|     | Effect               | DFn | DFd |      SSn |      SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------------|----:|----:|---------:|---------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre            |   1 |  36 | 1013.771 | 1634.260 | 22.332 | \<0.001 | 0.383 | \*     |
| 4   | grupo:Sexo           |   1 |  36 |   17.880 | 1634.260 |  0.394 | 0.534   | 0.011 |        |
| 8   | grupo:Zona           |   1 |  29 |    4.349 | 1237.090 |  0.102 | 0.752   | 0.004 |        |
| 12  | grupo:Cor.Raca       |   2 |  23 |   44.295 |  497.227 |  1.024 | 0.375   | 0.082 |        |
| 16  | grupo:vocab.quintile |   4 |  30 |  147.551 | 1364.119 |  0.811 | 0.528   | 0.098 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  28 |  23.286 |    1.129 |    26.464 |      1.549 |  26.564 |    1.253 |
| vocab.pos | Experimental |  13 |  23.692 |    2.129 |    23.077 |      2.330 |  22.863 |    1.839 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |    3.700 |   -0.806 |     8.207 | 2.226 |     1.662 | 0.105 | 0.105 | ns           |
| vocab.pre | Controle | Experimental |   -0.407 |   -4.849 |     4.036 | 2.196 |    -0.185 | 0.854 | 0.854 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -3.179 |   -7.143 |     0.786 | 1.991 |    -1.596 | 0.114 | 0.114 | ns           |
| vocab | Experimental | pre    | pos    |    0.615 |   -5.203 |     6.434 | 2.923 |     0.211 | 0.834 | 0.834 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-7-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-7-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-7-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  17 |  23.941 |    1.459 |    26.765 |      1.655 |  25.883 |    1.681 |
| vocab.pos | Controle     | M    |  11 |  22.273 |    1.825 |    26.000 |      3.110 |  26.520 |    2.079 |
| vocab.pos | Experimental | M    |   9 |  21.667 |    2.614 |    22.556 |      3.271 |  23.585 |    2.306 |

|     | .y.       | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | vocab.pos |          | M    | Controle | Experimental |    2.935 |   -3.366 |     9.236 | 3.097 |     0.948 | 0.350 | 0.350 | ns           |
| 4   | vocab.pre |          | M    | Controle | Experimental |    0.606 |   -5.332 |     6.545 | 2.922 |     0.207 | 0.837 | 0.837 | ns           |
| 5   | vocab.pos | Controle |      | F        | M            |   -0.637 |   -6.093 |     4.819 | 2.682 |    -0.238 | 0.814 | 0.814 | ns           |
| 7   | vocab.pre | Controle |      | F        | M            |    1.668 |   -3.444 |     6.781 | 2.516 |     0.663 | 0.512 | 0.512 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -2.824 |   -8.084 |     2.437 | 2.636 |    -1.071 | 0.288 | 0.288 | ns           |
| vocab | Controle     | M    | pre    | pos    |   -3.727 |  -10.267 |     2.812 | 3.277 |    -1.137 | 0.259 | 0.259 | ns           |
| vocab | Experimental | M    | pre    | pos    |   -0.889 |   -8.118 |     6.341 | 3.623 |    -0.245 | 0.807 | 0.807 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-7-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-7-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:vocab.quintile**
