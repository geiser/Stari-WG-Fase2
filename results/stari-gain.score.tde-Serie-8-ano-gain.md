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
| Controle     | F    |        |          | gain.score.tde |   7 |  -9.714 |  -11.0 | -21 |   6 |  9.962 | 3.765 |  9.213 | 12.00 |
| Controle     | M    |        |          | gain.score.tde |  14 |  -0.214 |    1.5 |  -9 |  10 |  6.908 | 1.846 |  3.989 | 13.25 |
| Experimental | F    |        |          | gain.score.tde |   3 | -10.000 |   -4.0 | -27 |   1 | 14.933 | 8.622 | 37.096 | 14.00 |
| Experimental | M    |        |          | gain.score.tde |   8 |  -3.750 |   -1.5 | -36 |  11 | 14.200 | 5.020 | 11.872 |  7.00 |
| Controle     |      | Rural  |          | gain.score.tde |   9 |  -0.778 |    2.0 | -11 |  10 |  8.151 | 2.717 |  6.266 | 15.00 |
| Controle     |      | Urbana |          | gain.score.tde |   4 |   1.000 |    1.0 |  -5 |   7 |  4.899 | 2.449 |  7.795 |  3.00 |
| Controle     |      |        |          | gain.score.tde |   8 |  -8.500 |   -8.5 | -21 |   8 |  9.899 | 3.500 |  8.276 | 10.50 |
| Experimental |      | Rural  |          | gain.score.tde |   4 |  -1.750 |   -4.0 |  -6 |   7 |  5.909 | 2.955 |  9.403 |  3.25 |
| Experimental |      | Urbana |          | gain.score.tde |   1 |  -1.000 |   -1.0 |  -1 |  -1 |        |       |        |  0.00 |
| Experimental |      |        |          | gain.score.tde |   6 |  -8.667 |   -0.5 | -36 |  11 | 18.446 | 7.531 | 19.358 | 21.75 |
| Controle     |      |        | Parda    | gain.score.tde |   8 |  -5.250 |   -8.0 | -21 |  10 |  9.558 | 3.379 |  7.991 | 11.25 |
| Controle     |      |        |          | gain.score.tde |  13 |  -2.231 |    1.0 | -19 |   8 |  8.908 | 2.471 |  5.383 | 13.00 |
| Experimental |      |        | Branca   | gain.score.tde |   1 |   7.000 |    7.0 |   7 |   7 |        |       |        |  0.00 |
| Experimental |      |        | Indígena | gain.score.tde |   1 |  11.000 |   11.0 |  11 |  11 |        |       |        |  0.00 |
| Experimental |      |        | Parda    | gain.score.tde |   3 | -11.667 |   -4.0 | -27 |  -4 | 13.279 | 7.667 | 32.987 | 11.50 |
| Experimental |      |        |          | gain.score.tde |   6 |  -7.167 |   -1.5 | -36 |   1 | 14.359 | 5.862 | 15.068 |  5.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.score.tde |  32 | -0.9332037 |  1.3898775 | NO       | 0.9396303 | Shapiro-Wilk | 0.0730805 | ns       | YES       |
| gain.score.tde |  18 |  0.0648439 | -1.3923929 | YES      | 0.9555838 | Shapiro-Wilk | 0.5191234 | ns       | YES       |
| gain.score.tde |  13 | -0.2578439 | -0.9267589 | YES      | 0.9337319 | Shapiro-Wilk | 0.3809850 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     |  32 |   3 |  28 | 0.2615399 | 0.8524755 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     |  18 |   3 |  14 | 1.4904501 | 0.2602032 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` |  13 |   3 |   9 | 0.4007607 | 0.7559373 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  30 |  31.039 | 3579.680 | 0.260 | 0.614 | 0.009 |        |
| Sexo     |   1 |  30 | 473.619 | 3137.100 | 4.529 | 0.042 | 0.131 | \*     |
| Zona     |   1 |  16 |  10.155 |  714.123 | 0.228 | 0.640 | 0.014 |        |
| Cor.Raca |   2 |  10 | 441.231 | 1082.000 | 2.039 | 0.181 | 0.290 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  28 | 15.704 | 3073.286 | 0.143 | 0.708 | 0.005 |        |
| 6   | grupo:Zona     |   1 |  14 |  0.656 |  708.306 | 0.013 | 0.911 | 0.001 |        |
| 9   | grupo:Cor.Raca |   0 |   9 |        |  992.167 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     |  21 | -3.381 | 1.974 |
| gain.score.tde | Experimental |  11 | -5.455 | 4.203 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde | Controle | Experimental |    2.074 |    -6.23 |    10.377 | 4.066 |      0.51 | 0.614 | 0.614 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |   7 | -9.714 | 3.765 |
| gain.score.tde | Controle     | M    |  14 | -0.214 | 1.846 |
| gain.score.tde | Experimental | M    |   8 | -3.750 | 5.020 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.score.tde |          | M    | Controle | Experimental |    3.536 |   -5.622 |    12.694 | 4.455 |     0.794 | 0.435 | 0.435 | ns           |
| 3   | gain.score.tde | Controle |      | F        | M            |   -9.500 |  -19.065 |     0.065 | 4.653 |    -2.042 | 0.051 | 0.051 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
