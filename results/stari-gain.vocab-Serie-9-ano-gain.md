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
| Controle     | F    |        |          | gain.vocab |   8 | -2.500 |   -1.5 | -18 |   7 |  8.124 | 2.872 |  6.792 |  7.5 |
| Controle     | M    |        |          | gain.vocab |  19 |  0.632 |    2.0 | -17 |   9 |  6.978 | 1.601 |  3.363 |  8.0 |
| Experimental | F    |        |          | gain.vocab |   3 |  0.667 |   -6.0 |  -8 |  16 | 13.317 | 7.688 | 33.080 | 12.0 |
| Experimental | M    |        |          | gain.vocab |   5 |  2.000 |    1.0 |  -2 |   9 |  4.183 | 1.871 |  5.194 |  2.0 |
| Controle     |      | Rural  |          | gain.vocab |  10 |  2.700 |    3.5 |  -9 |   9 |  4.923 | 1.557 |  3.522 |  4.5 |
| Controle     |      | Urbana |          | gain.vocab |   1 | -4.000 |   -4.0 |  -4 |  -4 |        |       |        |  0.0 |
| Controle     |      |        |          | gain.vocab |  16 | -1.938 |   -1.0 | -18 |   9 |  8.282 | 2.071 |  4.413 | 11.0 |
| Experimental |      | Rural  |          | gain.vocab |   4 |  1.500 |    1.5 |  -6 |   9 |  6.137 | 3.069 |  9.766 |  4.5 |
| Experimental |      | Urbana |          | gain.vocab |   1 | -8.000 |   -8.0 |  -8 |  -8 |        |       |        |  0.0 |
| Experimental |      |        |          | gain.vocab |   3 |  4.667 |    0.0 |  -2 |  16 |  9.866 | 5.696 | 24.508 |  9.0 |
| Controle     |      |        | Branca   | gain.vocab |   2 |  3.500 |    3.5 |   3 |   4 |  0.707 | 0.500 |  6.353 |  0.5 |
| Controle     |      |        | Indígena | gain.vocab |   1 |  1.000 |    1.0 |   1 |   1 |        |       |        |  0.0 |
| Controle     |      |        | Parda    | gain.vocab |  11 |  1.000 |    4.0 | -18 |   9 |  8.485 | 2.558 |  5.700 |  8.5 |
| Controle     |      |        |          | gain.vocab |  13 | -2.077 |   -1.0 | -17 |   9 |  6.970 | 1.933 |  4.212 |  9.0 |
| Experimental |      |        | Branca   | gain.vocab |   1 |  9.000 |    9.0 |   9 |   9 |        |       |        |  0.0 |
| Experimental |      |        | Indígena | gain.vocab |   2 | -2.500 |   -2.5 |  -6 |   1 |  4.950 | 3.500 | 44.472 |  3.5 |
| Experimental |      |        | Parda    | gain.vocab |   2 | -3.000 |   -3.0 |  -8 |   2 |  7.071 | 5.000 | 63.531 |  5.0 |
| Experimental |      |        |          | gain.vocab |   3 |  4.667 |    0.0 |  -2 |  16 |  9.866 | 5.696 | 24.508 |  9.0 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var        |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-----------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.vocab |  35 | -0.3845272 | -0.1258144 | YES      | 0.9749268 | Shapiro-Wilk | 0.5916300 | ns       | YES       |
| gain.vocab |  16 | -0.7511895 |  0.4805884 | NO       | 0.9126322 | Shapiro-Wilk | 0.1283195 | ns       | YES       |
| gain.vocab |  19 | -1.1759149 |  1.1546945 | NO       | 0.8867015 | Shapiro-Wilk | 0.0281402 | \*       | NO        |

## Assumption: Homogeneity of data distribution

| var        | method        | formula                          |   n | df1 | df2 | statistic |         p | p.signif |
|:-----------|:--------------|:---------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Sexo`     |  35 |   3 |  31 | 0.6382940 | 0.5960834 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Zona`     |  16 |   3 |  12 | 0.5549818 | 0.6545869 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Cor.Raca` |  19 |   5 |  13 | 0.6506358 | 0.6663139 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  33 |  19.913 | 1821.630 | 0.361 | 0.552 | 0.011 |        |
| Sexo     |   1 |  33 |  49.164 | 1792.379 | 0.905 | 0.348 | 0.027 |        |
| Zona     |   1 |  14 | 122.223 |  343.214 | 4.986 | 0.042 | 0.263 | \*     |
| Cor.Raca |   2 |  16 |  77.379 |  850.410 | 0.728 | 0.498 | 0.083 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  31 |  4.548 | 1763.088 | 0.080 | 0.779 | 0.003 |        |
| 6   | grupo:Zona     |   1 |  12 |  3.336 |  331.100 | 0.121 | 0.734 | 0.010 |        |
| 9   | grupo:Cor.Raca |   2 |  13 | 45.644 |  795.000 | 0.373 | 0.696 | 0.054 |        |

## Pairwise comparisons for one factor: **grupo**

| var        | grupo        |   n |      M |    SE |
|:-----------|:-------------|----:|-------:|------:|
| gain.vocab | Controle     |  27 | -0.296 | 1.409 |
| gain.vocab | Experimental |   8 |  1.500 | 2.765 |

| .y.        | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab | Controle | Experimental |   -1.796 |   -7.881 |     4.288 | 2.991 |    -0.601 | 0.552 | 0.552 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.vocab-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var        | grupo        | Sexo |   n |      M |    SE |
|:-----------|:-------------|:-----|----:|-------:|------:|
| gain.vocab | Controle     | F    |   8 | -2.500 | 2.872 |
| gain.vocab | Controle     | M    |  19 |  0.632 | 1.601 |
| gain.vocab | Experimental | M    |   5 |  2.000 | 1.871 |

|     | .y.        | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-----------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.vocab |          | M    | Controle | Experimental |   -1.368 |   -8.532 |     5.796 | 3.503 |    -0.391 | 0.699 | 0.699 | ns           |
| 3   | gain.vocab | Controle |      | F        | M            |   -3.132 |   -9.139 |     2.876 | 2.937 |    -1.066 | 0.295 | 0.295 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
