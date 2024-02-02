ANOVA in Gains for gain Vocabulario (acertos) (gain Vocabulario
(acertos))
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

**NOTE**

- Teste ANOVA para determinar se houve diferenças significativas no gain
  Vocabulario (acertos) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain Vocabulario (acertos) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable   |   n |   mean | median | min | max |     sd |    se |     ci |  iqr |
|:-------------|:-----|:-------|:---------|:-----------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|-----:|
| Controle     | F    |        |          | gain.vocab |  17 |  2.824 |    2.0 |  -5 |  12 |  4.503 | 1.092 |  2.315 | 6.00 |
| Controle     | M    |        |          | gain.vocab |  11 |  3.727 |    3.0 |  -8 |  28 |  9.717 | 2.930 |  6.528 | 5.50 |
| Experimental | F    |        |          | gain.vocab |   4 | -4.000 |   -4.5 | -10 |   3 |  5.354 | 2.677 |  8.520 | 4.00 |
| Experimental | M    |        |          | gain.vocab |   9 |  0.889 |    0.0 |  -8 |  15 |  6.451 | 2.150 |  4.958 | 3.00 |
| Controle     |      | Rural  |          | gain.vocab |  18 |  3.500 |    1.5 |  -5 |  28 |  7.081 | 1.669 |  3.522 | 4.75 |
| Controle     |      | Urbana |          | gain.vocab |   3 | -0.333 |    2.0 |  -7 |   4 |  5.859 | 3.383 | 14.556 | 5.50 |
| Controle     |      |        |          | gain.vocab |   7 |  3.857 |    6.0 |  -8 |  12 |  7.198 | 2.721 |  6.657 | 9.50 |
| Experimental |      | Rural  |          | gain.vocab |  11 |  0.091 |   -1.0 |  -8 |  15 |  6.236 | 1.880 |  4.190 | 5.00 |
| Experimental |      | Urbana |          | gain.vocab |   2 | -4.500 |   -4.5 | -10 |   1 |  7.778 | 5.500 | 69.884 | 5.50 |
| Controle     |      |        | Branca   | gain.vocab |   4 |  5.250 |    5.0 |  -1 |  12 |  5.377 | 2.689 |  8.557 | 4.75 |
| Controle     |      |        | Indígena | gain.vocab |   2 |  1.000 |    1.0 |   1 |   1 |  0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        | Parda    | gain.vocab |  14 |  1.143 |    1.5 |  -8 |  11 |  4.865 | 1.300 |  2.809 | 3.00 |
| Controle     |      |        | Preta    | gain.vocab |   1 |  4.000 |    4.0 |   4 |   4 |        |       |        | 0.00 |
| Controle     |      |        |          | gain.vocab |   7 |  6.571 |    6.0 |  -5 |  28 | 10.907 | 4.122 | 10.087 | 9.50 |
| Experimental |      |        | Branca   | gain.vocab |   2 |  8.000 |    8.0 |   1 |  15 |  9.899 | 7.000 | 88.943 | 7.00 |
| Experimental |      |        | Indígena | gain.vocab |   3 | -5.667 |   -5.0 |  -8 |  -4 |  2.082 | 1.202 |  5.171 | 2.00 |
| Experimental |      |        | Parda    | gain.vocab |   5 | -1.200 |   -1.0 |  -3 |   0 |  1.304 | 0.583 |  1.619 | 2.00 |
| Experimental |      |        |          | gain.vocab |   3 | -0.333 |    3.0 | -10 |   6 |  8.505 | 4.910 | 21.127 | 8.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var        |   n |   skewness |  kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-----------|----:|-----------:|----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.vocab |  41 |  1.3072097 | 3.1697517 | NO       | 0.8985949 | Shapiro-Wilk | 0.0015075 | \*\*     | NO        |
| gain.vocab |  34 |  1.8333945 | 4.3471826 | NO       | 0.8359538 | Shapiro-Wilk | 0.0001380 | \*\*\*   | NO        |
| gain.vocab |  31 | -0.0670016 | 0.3972443 | YES      | 0.9420610 | Shapiro-Wilk | 0.0941019 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var        | method        | formula                          |   n | df1 | df2 | statistic |         p | p.signif |
|:-----------|:--------------|:---------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Sexo`     |  41 |   3 |  37 | 0.7622738 | 0.5224708 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Zona`     |  34 |   3 |  30 | 0.0511724 | 0.9844109 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Cor.Raca` |  31 |   6 |  24 | 1.9868710 | 0.1074003 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  39 | 127.792 | 1759.184 | 2.833 | 0.100 | 0.068 |        |
| Sexo     |   1 |  39 |   8.788 | 1878.188 | 0.182 | 0.672 | 0.005 |        |
| Zona     |   1 |  32 |  75.477 | 1470.759 | 1.642 | 0.209 | 0.049 |        |
| Cor.Raca |   3 |  27 | 252.623 |  591.570 | 3.843 | 0.021 | 0.299 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  37 | 31.089 | 1687.541 | 0.682 | 0.414 | 0.018 |        |
| 6   | grupo:Zona     |   1 |  30 |  0.586 | 1370.576 | 0.013 | 0.911 | 0.000 |        |
| 9   | grupo:Cor.Raca |   2 |  24 | 56.605 |  507.931 | 1.337 | 0.281 | 0.100 |        |

## Pairwise comparisons for one factor: **grupo**

| var        | grupo        |   n |      M |    SE |
|:-----------|:-------------|----:|-------:|------:|
| gain.vocab | Controle     |  28 |  3.179 | 1.298 |
| gain.vocab | Experimental |  13 | -0.615 | 1.763 |

| .y.        | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |   p | p.adj | p.adj.signif |
|:-----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|----:|------:|:-------------|
| gain.vocab | Controle | Experimental |    3.794 |   -0.765 |     8.353 | 2.254 |     1.683 | 0.1 |   0.1 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var        | grupo        | Sexo |   n |     M |    SE |
|:-----------|:-------------|:-----|----:|------:|------:|
| gain.vocab | Controle     | F    |  17 | 2.824 | 1.092 |
| gain.vocab | Controle     | M    |  11 | 3.727 | 2.930 |
| gain.vocab | Experimental | M    |   9 | 0.889 | 2.150 |

|     | .y.        | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-----------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.vocab |          | M    | Controle | Experimental |    2.838 |   -3.431 |     9.107 | 3.085 |      0.92 | 0.364 | 0.364 | ns           |
| 3   | gain.vocab | Controle |      | F        | M            |   -0.904 |   -6.301 |     4.493 | 2.656 |     -0.34 | 0.736 | 0.736 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
