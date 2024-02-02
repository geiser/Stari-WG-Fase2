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

| grupo        | Sexo | Zona   | Cor.Raca | vocab.quintile | variable  |   n |   mean | median | min | max |    sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|:----------|----:|-------:|-------:|----:|----:|------:|------:|-------:|------:|
| Controle     | F    |        |          |                | vocab.pre |  13 | 20.692 |   19.0 |  12 |  28 | 5.453 | 1.512 |  3.295 |  8.00 |
| Controle     | M    |        |          |                | vocab.pre |  13 | 18.154 |   16.0 |  12 |  29 | 5.565 | 1.544 |  3.363 |  8.00 |
| Experimental | F    |        |          |                | vocab.pre |   6 | 22.833 |   25.0 |  11 |  30 | 6.646 | 2.713 |  6.974 |  5.00 |
| Experimental | M    |        |          |                | vocab.pre |   7 | 22.000 |   24.0 |   9 |  30 | 7.916 | 2.992 |  7.321 | 11.50 |
| Controle     | F    |        |          |                | vocab.pos |  13 | 20.385 |   20.0 |  14 |  27 | 4.273 | 1.185 |  2.582 |  6.00 |
| Controle     | M    |        |          |                | vocab.pos |  13 | 17.000 |   17.0 |  11 |  26 | 5.244 | 1.454 |  3.169 | 10.00 |
| Experimental | F    |        |          |                | vocab.pos |   6 | 24.500 |   24.5 |  19 |  28 | 3.507 | 1.432 |  3.681 |  4.50 |
| Experimental | M    |        |          |                | vocab.pos |   7 | 22.714 |   25.0 |  14 |  35 | 8.180 | 3.092 |  7.565 | 12.50 |
| Controle     |      | Rural  |          |                | vocab.pre |  21 | 18.952 |   17.0 |  12 |  29 | 5.554 | 1.212 |  2.528 |  8.00 |
| Controle     |      | Urbana |          |                | vocab.pre |   3 | 23.667 |   24.0 |  19 |  28 | 4.509 | 2.603 | 11.202 |  4.50 |
| Controle     |      |        |          |                | vocab.pre |   2 | 18.000 |   18.0 |  13 |  23 | 7.071 | 5.000 | 63.531 |  5.00 |
| Experimental |      | Rural  |          |                | vocab.pre |  12 | 22.250 |   25.0 |   9 |  30 | 7.362 | 2.125 |  4.678 | 10.75 |
| Experimental |      | Urbana |          |                | vocab.pre |   1 | 24.000 |   24.0 |  24 |  24 |       |       |        |  0.00 |
| Controle     |      | Rural  |          |                | vocab.pos |  21 | 18.000 |   17.0 |  11 |  27 | 5.070 | 1.106 |  2.308 |  8.00 |
| Controle     |      | Urbana |          |                | vocab.pos |   3 | 21.667 |   23.0 |  16 |  26 | 5.132 | 2.963 | 12.748 |  5.00 |
| Controle     |      |        |          |                | vocab.pos |   2 | 21.500 |   21.5 |  20 |  23 | 2.121 | 1.500 | 19.059 |  1.50 |
| Experimental |      | Rural  |          |                | vocab.pos |  12 | 23.333 |   24.0 |  14 |  35 | 6.513 | 1.880 |  4.138 | 10.00 |
| Experimental |      | Urbana |          |                | vocab.pos |   1 | 26.000 |   26.0 |  26 |  26 |       |       |        |  0.00 |
| Controle     |      |        | Branca   |                | vocab.pre |   5 | 21.400 |   19.0 |  16 |  29 | 6.189 | 2.768 |  7.684 | 11.00 |
| Controle     |      |        | Parda    |                | vocab.pre |  13 | 19.385 |   18.0 |  12 |  28 | 5.980 | 1.658 |  3.613 | 11.00 |
| Controle     |      |        |          |                | vocab.pre |   8 | 18.250 |   18.0 |  12 |  24 | 4.743 | 1.677 |  3.966 |  8.50 |
| Experimental |      |        | Branca   |                | vocab.pre |   1 | 24.000 |   24.0 |  24 |  24 |       |       |        |  0.00 |
| Experimental |      |        | Parda    |                | vocab.pre |   6 | 20.000 |   21.5 |   9 |  30 | 8.899 | 3.633 |  9.339 | 14.25 |
| Experimental |      |        |          |                | vocab.pre |   6 | 24.500 |   25.0 |  17 |  30 | 5.282 | 2.156 |  5.543 |  8.00 |
| Controle     |      |        | Branca   |                | vocab.pos |   5 | 19.800 |   19.0 |  14 |  27 | 4.970 | 2.223 |  6.171 |  5.00 |
| Controle     |      |        | Parda    |                | vocab.pos |  13 | 18.385 |   18.0 |  11 |  26 | 5.455 | 1.513 |  3.296 | 10.00 |
| Controle     |      |        |          |                | vocab.pos |   8 | 18.500 |   18.0 |  12 |  26 | 4.781 | 1.690 |  3.997 |  6.00 |
| Experimental |      |        | Branca   |                | vocab.pos |   1 | 26.000 |   26.0 |  26 |  26 |       |       |        |  0.00 |
| Experimental |      |        | Parda    |                | vocab.pos |   6 | 23.500 |   23.5 |  15 |  35 | 8.337 | 3.403 |  8.749 | 12.75 |
| Experimental |      |        |          |                | vocab.pos |   6 | 23.167 |   24.0 |  14 |  28 | 4.875 | 1.990 |  5.116 |  2.75 |
| Controle     |      |        |          | 1st quintile   | vocab.pre |  10 | 14.000 |   14.0 |  12 |  16 | 1.764 | 0.558 |  1.262 |  3.50 |
| Controle     |      |        |          | 2nd quintile   | vocab.pre |   7 | 18.714 |   19.0 |  17 |  22 | 1.704 | 0.644 |  1.576 |  1.50 |
| Controle     |      |        |          | 3rd quintile   | vocab.pre |   9 | 26.000 |   27.0 |  23 |  29 | 2.179 | 0.726 |  1.675 |  3.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pre |   2 | 10.000 |   10.0 |   9 |  11 | 1.414 | 1.000 | 12.706 |  1.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pre |   3 | 18.000 |   17.0 |  17 |  20 | 1.732 | 1.000 |  4.303 |  1.50 |
| Experimental |      |        |          | 3rd quintile   | vocab.pre |   5 | 25.400 |   26.0 |  24 |  27 | 1.342 | 0.600 |  1.666 |  2.00 |
| Experimental |      |        |          | 4th quintile   | vocab.pre |   3 | 30.000 |   30.0 |  30 |  30 | 0.000 | 0.000 |  0.000 |  0.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pos |  10 | 15.800 |   16.5 |  11 |  21 | 3.795 | 1.200 |  2.715 |  6.50 |
| Controle     |      |        |          | 2nd quintile   | vocab.pos |   7 | 17.000 |   17.0 |  12 |  23 | 3.651 | 1.380 |  3.377 |  3.50 |
| Controle     |      |        |          | 3rd quintile   | vocab.pos |   9 | 23.222 |   23.0 |  14 |  27 | 3.962 | 1.321 |  3.045 |  4.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pos |   2 | 17.000 |   17.0 |  15 |  19 | 2.828 | 2.000 | 25.412 |  2.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pos |   3 | 17.333 |   15.0 |  14 |  23 | 4.933 | 2.848 | 12.254 |  4.50 |
| Experimental |      |        |          | 3rd quintile   | vocab.pos |   5 | 27.600 |   26.0 |  23 |  35 | 4.506 | 2.015 |  5.594 |  2.00 |
| Experimental |      |        |          | 4th quintile   | vocab.pos |   3 | 27.333 |   28.0 |  25 |  29 | 2.082 | 1.202 |  5.171 |  2.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  39 | 0.3620599 | -0.5360044 | YES      | 0.9769425 | Shapiro-Wilk | 0.5932097 | ns       | YES       |
| vocab.pos |  37 | 0.3076699 | -0.5023085 | YES      | 0.9808572 | Shapiro-Wilk | 0.7608976 | ns       | YES       |
| vocab.pos |  25 | 0.2172027 | -0.6933129 | YES      | 0.9762373 | Shapiro-Wilk | 0.8019238 | ns       | YES       |
| vocab.pos |  39 | 0.1392555 | -0.5364195 | YES      | 0.9882111 | Shapiro-Wilk | 0.9500548 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                          |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`           |  39 |       3 |      35 | 1.4201317 | 0.2533109 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`           |  39 |       3 |      31 | 0.6870000 | 0.5670000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`           |  37 |       3 |      33 | 0.5681406 | 0.6399112 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`           |  37 |       2 |      30 | 0.1340000 | 0.8750000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`       |  25 |       3 |      21 | 0.4995937 | 0.6865892 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`       |  25 |       2 |      18 | 0.2010000 | 0.8200000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`vocab.quintile` |  39 |       6 |      32 | 0.3214736 | 0.9208779 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`vocab.quintile` |  39 |       5 |      26 | 0.8750000 | 0.5110000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |     SSn |     SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|--------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre      |   1 |  36 | 572.833 | 523.936 | 39.360 | \<0.001 | 0.522 | \*     |
| 2   | grupo          |   1 |  36 |  70.525 | 523.936 |  4.846 | 0.034   | 0.119 | \*     |
| 4   | Sexo           |   1 |  36 |  18.963 | 575.499 |  1.186 | 0.283   | 0.032 |        |
| 6   | Zona           |   1 |  34 |   0.157 | 568.045 |  0.009 | 0.923   | 0.000 |        |
| 8   | Cor.Raca       |   1 |  22 |   3.667 | 355.428 |  0.227 | 0.638   | 0.010 |        |
| 10  | vocab.quintile |   3 |  34 |  63.621 | 530.841 |  1.358 | 0.272   | 0.107 |        |

## ANCOVA tests for two factors

|     | Effect               | DFn | DFd |     SSn |     SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------------|----:|----:|--------:|--------:|-------:|:--------|------:|:-------|
| 1   | vocab.pre            |   1 |  34 | 513.613 | 498.393 | 35.038 | \<0.001 | 0.508 | \*     |
| 4   | grupo:Sexo           |   1 |  34 |   0.620 | 498.393 |  0.042 | 0.838   | 0.001 |        |
| 8   | grupo:Zona           |   1 |  32 |   0.628 | 484.355 |  0.042 | 0.84    | 0.001 |        |
| 12  | grupo:Cor.Raca       |   1 |  20 |   0.114 | 251.942 |  0.009 | 0.925   | 0.000 |        |
| 16  | grupo:vocab.quintile |   2 |  31 |  20.342 | 444.208 |  0.710 | 0.5     | 0.044 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  26 |  19.423 |    1.089 |    18.692 |      0.979 |  19.331 |    0.755 |
| vocab.pos | Experimental |  13 |  22.385 |    1.960 |    23.538 |      1.742 |  22.262 |    1.077 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -2.931 |   -5.631 |    -0.231 | 1.331 |    -2.201 | 0.034 | 0.034 | \*           |
| vocab.pre | Controle | Experimental |   -2.962 |   -7.149 |     1.226 | 2.067 |    -1.433 | 0.160 | 0.160 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |    0.731 |   -2.460 |     3.921 | 1.601 |     0.456 | 0.649 | 0.649 | ns           |
| vocab | Experimental | pre    | pos    |   -1.154 |   -5.666 |     3.358 | 2.264 |    -0.510 | 0.612 | 0.612 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  13 |  20.692 |    1.512 |    20.385 |      1.185 |  20.209 |    1.062 |
| vocab.pos | Controle     | M    |  13 |  18.154 |    1.544 |    17.000 |      1.454 |  18.405 |    1.088 |
| vocab.pos | Experimental | F    |   6 |  22.833 |    2.713 |    24.500 |      1.432 |  22.992 |    1.584 |
| vocab.pos | Experimental | M    |   7 |  22.000 |    2.992 |    22.714 |      3.092 |  21.725 |    1.457 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -2.783 |   -6.650 |     1.085 | 1.903 |    -1.462 | 0.153 | 0.153 | ns           |
| vocab.pos |              | M    | Controle | Experimental |   -3.320 |   -7.059 |     0.419 | 1.840 |    -1.804 | 0.080 | 0.080 | ns           |
| vocab.pre |              | F    | Controle | Experimental |   -2.141 |   -8.307 |     4.025 | 3.037 |    -0.705 | 0.485 | 0.485 | ns           |
| vocab.pre |              | M    | Controle | Experimental |   -3.846 |   -9.703 |     2.010 | 2.885 |    -1.333 | 0.191 | 0.191 | ns           |
| vocab.pos | Controle     |      | F        | M            |    1.804 |   -1.295 |     4.904 | 1.525 |     1.183 | 0.245 | 0.245 | ns           |
| vocab.pos | Experimental |      | F        | M            |    1.267 |   -3.066 |     5.599 | 2.132 |     0.594 | 0.556 | 0.556 | ns           |
| vocab.pre | Controle     |      | F        | M            |    2.538 |   -2.361 |     7.438 | 2.414 |     1.052 | 0.300 | 0.300 | ns           |
| vocab.pre | Experimental |      | F        | M            |    0.833 |   -6.117 |     7.783 | 3.423 |     0.243 | 0.809 | 0.809 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |    0.308 |   -4.213 |     4.828 | 2.266 |     0.136 | 0.892 | 0.892 | ns           |
| vocab | Controle     | M    | pre    | pos    |    1.154 |   -3.367 |     5.674 | 2.266 |     0.509 | 0.612 | 0.612 | ns           |
| vocab | Experimental | F    | pre    | pos    |   -1.667 |   -8.320 |     4.987 | 3.336 |    -0.500 | 0.619 | 0.619 | ns           |
| vocab | Experimental | M    | pre    | pos    |   -0.714 |   -6.874 |     5.446 | 3.089 |    -0.231 | 0.818 | 0.818 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |   5 |  21.400 |    2.768 |    19.800 |      2.223 |  18.718 |    1.596 |
| vocab.pos | Controle     | Parda    |  13 |  19.385 |    1.658 |    18.385 |      1.513 |  18.815 |    0.987 |
| vocab.pos | Experimental | Parda    |   6 |  20.000 |    3.633 |    23.500 |      3.403 |  23.469 |    1.449 |

|     | .y.       | grupo    | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:---------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | vocab.pos |          | Parda    | Controle | Experimental |   -4.653 |   -8.310 |    -0.996 | 1.753 |    -2.654 | 0.015 | 0.015 | \*           |
| 4   | vocab.pre |          | Parda    | Controle | Experimental |   -0.615 |   -7.621 |     6.390 | 3.369 |    -0.183 | 0.857 | 0.857 | ns           |
| 5   | vocab.pos | Controle |          | Branca   | Parda        |   -0.098 |   -4.023 |     3.827 | 1.882 |    -0.052 | 0.959 | 0.959 | ns           |
| 7   | vocab.pre | Controle |          | Branca   | Parda        |    2.015 |   -5.454 |     9.485 | 3.592 |     0.561 | 0.581 | 0.581 | ns           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |      1.6 |   -6.713 |     9.913 | 4.119 |     0.388 | 0.700 | 0.700 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |      1.0 |   -4.155 |     6.155 | 2.555 |     0.391 | 0.697 | 0.697 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |     -3.5 |  -11.089 |     4.089 | 3.760 |    -0.931 | 0.357 | 0.357 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:vocab.quintile**

| var       | grupo        | vocab.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 1st quintile   |  10 |  14.000 |    0.558 |    15.800 |      1.200 |  18.605 |    2.905 |
| vocab.pos | Controle     | 2nd quintile   |   7 |  18.714 |    0.644 |    17.000 |      1.380 |  17.735 |    1.633 |
| vocab.pos | Controle     | 3rd quintile   |   9 |  26.000 |    0.726 |    23.222 |      1.321 |  20.757 |    2.653 |
| vocab.pos | Experimental | 3rd quintile   |   5 |  25.400 |    0.600 |    27.600 |      2.015 |  25.399 |    2.706 |

|     | .y.       | grupo    | vocab.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----|:----------|:---------|:---------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| 3   | vocab.pos |          | 3rd quintile   | Controle     | Experimental |   -4.641 |   -9.161 |    -0.122 | 2.199 |    -2.111 | 0.045   | 0.045   | \*           |
| 6   | vocab.pre |          | 3rd quintile   | Controle     | Experimental |    0.600 |   -1.497 |     2.697 | 1.022 |     0.587 | 0.562   | 0.562   | ns           |
| 7   | vocab.pos | Controle |                | 1st quintile | 2nd quintile |    0.870 |   -4.754 |     6.495 | 2.736 |     0.318 | 0.753   | 1       | ns           |
| 8   | vocab.pos | Controle |                | 1st quintile | 3rd quintile |   -2.152 |  -12.954 |     8.649 | 5.255 |    -0.410 | 0.685   | 1       | ns           |
| 9   | vocab.pos | Controle |                | 2nd quintile | 3rd quintile |   -3.023 |  -10.400 |     4.355 | 3.589 |    -0.842 | 0.407   | 1       | ns           |
| 13  | vocab.pre | Controle |                | 1st quintile | 2nd quintile |   -4.714 |   -6.567 |    -2.862 | 0.903 |    -5.221 | \<0.001 | \<0.001 | \*\*\*\*     |
| 14  | vocab.pre | Controle |                | 1st quintile | 3rd quintile |  -12.000 |  -13.727 |   -10.273 | 0.842 |   -14.255 | \<0.001 | \<0.001 | \*\*\*\*     |
| 15  | vocab.pre | Controle |                | 2nd quintile | 3rd quintile |   -7.286 |   -9.180 |    -5.391 | 0.923 |    -7.891 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.   | grupo        | vocab.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | 1st quintile   | pre    | pos    |   -1.800 |   -4.547 |     0.947 | 1.370 |    -1.314 | 0.195 | 0.195 | ns           |
| vocab | Controle     | 2nd quintile   | pre    | pos    |    1.714 |   -1.569 |     4.998 | 1.638 |     1.047 | 0.300 | 0.300 | ns           |
| vocab | Controle     | 3rd quintile   | pre    | pos    |    2.778 |   -0.118 |     5.674 | 1.444 |     1.923 | 0.060 | 0.060 | ns           |
| vocab | Experimental | 3rd quintile   | pre    | pos    |   -2.200 |   -6.085 |     1.685 | 1.938 |    -1.135 | 0.261 | 0.261 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-Serie-6-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
