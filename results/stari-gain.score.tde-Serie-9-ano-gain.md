ANOVA in Gains for gain TDE - Escrita (acertos) (gain TDE - Escrita
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
  TDE - Escrita (acertos) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain TDE - Escrita (acertos) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |    mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|--------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          | gain.score.tde |   9 |   3.889 |    4.0 | -16 |  18 | 10.529 | 3.510 |  8.093 | 13.00 |
| Controle     | M    |        |          | gain.score.tde |  19 |   3.158 |    2.0 | -14 |  22 |  9.465 | 2.171 |  4.562 | 12.00 |
| Experimental | F    |        |          | gain.score.tde |   4 |  -3.750 |   -4.5 |  -8 |   2 |  4.193 | 2.097 |  6.672 |  3.25 |
| Experimental | M    |        |          | gain.score.tde |   7 |   0.143 |    3.0 | -22 |  21 | 13.777 | 5.207 | 12.742 | 12.50 |
| Controle     |      | Rural  |          | gain.score.tde |  12 |   2.583 |    6.0 | -16 |  18 | 11.245 | 3.246 |  7.145 | 16.75 |
| Controle     |      | Urbana |          | gain.score.tde |   1 |  14.000 |   14.0 |  14 |  14 |        |       |        |  0.00 |
| Controle     |      |        |          | gain.score.tde |  15 |   3.333 |    2.0 | -11 |  22 |  8.415 | 2.173 |  4.660 |  7.50 |
| Experimental |      | Rural  |          | gain.score.tde |   6 |   2.667 |    3.5 | -22 |  21 | 13.967 | 5.702 | 14.657 |  4.75 |
| Experimental |      | Urbana |          | gain.score.tde |   1 |  -5.000 |   -5.0 |  -5 |  -5 |        |       |        |  0.00 |
| Experimental |      |        |          | gain.score.tde |   4 |  -6.250 |   -6.0 | -11 |  -2 |  4.031 | 2.016 |  6.414 |  5.25 |
| Controle     |      |        | Branca   | gain.score.tde |   3 |   0.333 |   -1.0 |  -9 |  11 | 10.066 | 5.812 | 25.006 | 10.00 |
| Controle     |      |        | Indígena | gain.score.tde |   1 | -16.000 |  -16.0 | -16 | -16 |        |       |        |  0.00 |
| Controle     |      |        | Parda    | gain.score.tde |  10 |   2.900 |    6.0 | -14 |  18 | 10.290 | 3.254 |  7.361 | 11.75 |
| Controle     |      |        |          | gain.score.tde |  14 |   5.786 |    3.0 |  -5 |  22 |  8.135 | 2.174 |  4.697 | 12.25 |
| Experimental |      |        | Branca   | gain.score.tde |   2 |   3.500 |    3.5 |   3 |   4 |  0.707 | 0.500 |  6.353 |  0.50 |
| Experimental |      |        | Indígena | gain.score.tde |   3 |  -4.000 |    2.0 | -22 |   8 | 15.875 | 9.165 | 39.434 | 15.00 |
| Experimental |      |        | Parda    | gain.score.tde |   3 |   4.000 |   -4.0 |  -5 |  21 | 14.731 | 8.505 | 36.594 | 13.00 |
| Experimental |      |        |          | gain.score.tde |   3 |  -7.000 |   -8.0 | -11 |  -2 |  4.583 | 2.646 | 11.384 |  4.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.score.tde |  39 | -0.1687984 | -0.2860641 | YES      | 0.9881119 | Shapiro-Wilk | 0.9482131 | ns       | YES       |
| gain.score.tde |  20 | -0.5315747 | -0.4685741 | NO       | 0.9555797 | Shapiro-Wilk | 0.4597339 | ns       | YES       |
| gain.score.tde |  22 | -0.1383540 | -1.0405725 | YES      | 0.9714044 | Shapiro-Wilk | 0.7433384 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     |  39 |   3 |  35 | 1.0252650 | 0.3932623 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     |  20 |   3 |  16 | 0.6895281 | 0.5715727 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` |  22 |   5 |  16 | 0.4674608 | 0.7949020 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  37 | 171.909 | 3732.860 | 1.704 | 0.200 | 0.044 |        |
| Sexo     |   1 |  37 |   5.654 | 3899.115 | 0.054 | 0.818 | 0.001 |        |
| Zona     |   1 |  18 |   6.422 | 2546.778 | 0.045 | 0.834 | 0.003 |        |
| Cor.Raca |   2 |  19 | 318.062 | 2216.892 | 1.363 | 0.280 | 0.125 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  35 |  38.412 | 3691.022 | 0.364 | 0.550 | 0.010 |        |
| 6   | grupo:Zona     |   1 |  16 | 161.855 | 2366.250 | 1.094 | 0.311 | 0.064 |        |
| 9   | grupo:Cor.Raca |   2 |  16 |  67.568 | 2094.067 | 0.258 | 0.776 | 0.031 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     |  28 |  3.393 | 1.819 |
| gain.score.tde | Experimental |  11 | -1.273 | 3.344 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |   p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|----:|------:|:-------------|
| gain.score.tde | Controle | Experimental |    4.666 |   -2.576 |    11.908 | 3.574 |     1.305 | 0.2 |   0.2 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |     M |    SE |
|:---------------|:-------------|:-----|----:|------:|------:|
| gain.score.tde | Controle     | F    |   9 | 3.889 | 3.510 |
| gain.score.tde | Controle     | M    |  19 | 3.158 | 2.171 |
| gain.score.tde | Experimental | M    |   7 | 0.143 | 5.207 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.score.tde |          | M    | Controle | Experimental |    3.015 |   -6.588 |    12.618 | 4.714 |     0.640 | 0.527 | 0.527 | ns           |
| 3   | gain.score.tde | Controle |      | F        | M            |    0.731 |   -8.058 |     9.520 | 4.315 |     0.169 | 0.867 | 0.867 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
