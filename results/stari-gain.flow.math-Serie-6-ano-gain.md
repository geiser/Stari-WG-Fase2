ANOVA in Gains for gain flow (prob. matemática) (gain flow (prob.
matemática))
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
  flow (prob. matemática) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (prob. matemática) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |    max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|-------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.math |  16 |  0.197 |  0.222 | -0.889 |  1.222 | 0.600 | 0.150 | 0.320 | 0.694 |
| Controle     | M    |        |          | gain.flow.math |  16 |  0.243 |  0.264 | -0.778 |  2.111 | 0.724 | 0.181 | 0.386 | 0.660 |
| Experimental | F    |        |          | gain.flow.math |   6 |  0.007 |  0.111 | -0.403 |  0.222 | 0.268 | 0.109 | 0.281 | 0.389 |
| Experimental | M    |        |          | gain.flow.math |   9 | -0.198 |  0.000 | -1.222 |  0.333 | 0.526 | 0.175 | 0.405 | 0.667 |
| Controle     |      | Rural  |          | gain.flow.math |  21 |  0.060 |  0.222 | -0.778 |  0.778 | 0.460 | 0.100 | 0.209 | 0.556 |
| Controle     |      | Urbana |          | gain.flow.math |   8 |  0.674 |  0.722 | -0.889 |  2.111 | 0.909 | 0.321 | 0.760 | 0.903 |
| Controle     |      |        |          | gain.flow.math |   3 |  0.130 |  0.278 | -0.667 |  0.778 | 0.734 | 0.424 | 1.822 | 0.722 |
| Experimental |      | Rural  |          | gain.flow.math |  10 | -0.178 |  0.000 | -1.222 |  0.333 | 0.500 | 0.158 | 0.358 | 0.583 |
| Experimental |      | Urbana |          | gain.flow.math |   4 |  0.111 |  0.222 | -0.222 |  0.222 | 0.222 | 0.111 | 0.354 | 0.111 |
| Experimental |      |        |          | gain.flow.math |   1 | -0.403 | -0.403 | -0.403 | -0.403 |       |       |       | 0.000 |
| Controle     |      |        | Branca   | gain.flow.math |   5 |  0.222 |  0.333 | -0.556 |  0.778 | 0.484 | 0.217 | 0.601 | 0.111 |
| Controle     |      |        | Parda    | gain.flow.math |  13 | -0.017 | -0.111 | -0.889 |  0.778 | 0.589 | 0.163 | 0.356 | 0.778 |
| Controle     |      |        |          | gain.flow.math |  14 |  0.440 |  0.278 | -0.667 |  2.111 | 0.722 | 0.193 | 0.417 | 0.881 |
| Experimental |      |        | Amarela  | gain.flow.math |   1 | -0.403 | -0.403 | -0.403 | -0.403 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | gain.flow.math |   4 | -0.167 | -0.111 | -0.778 |  0.333 | 0.533 | 0.266 | 0.848 | 0.778 |
| Experimental |      |        |          | gain.flow.math |  10 | -0.067 |  0.056 | -1.222 |  0.222 | 0.442 | 0.140 | 0.316 | 0.389 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.math |  47 |  0.3953834 |  0.7324714 | YES      | 0.9671097 | Shapiro-Wilk | 0.2050756 | ns       | YES       |
| gain.flow.math |  43 | -0.3114125 |  0.6802942 | YES      | 0.9721576 | Shapiro-Wilk | 0.3742488 | ns       | YES       |
| gain.flow.math |  23 | -0.0984040 | -1.2228062 | YES      | 0.9542223 | Shapiro-Wilk | 0.3570678 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     |  47 |   3 |  43 | 0.7620489 | 0.5215873 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     |  43 |   3 |  39 | 3.0118792 | 0.0415242 | \*       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` |  23 |   3 |  19 | 1.1051656 | 0.3714770 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 |  45 | 1.153 | 16.018 | 3.239 | 0.079 | 0.067 |        |
| Sexo     |   1 |  45 | 0.044 | 17.127 | 0.115 | 0.737 | 0.003 |        |
| Zona     |   1 |  41 | 2.184 | 13.638 | 6.567 | 0.014 | 0.138 | \*     |
| Cor.Raca |   2 |  20 | 0.454 |  6.023 | 0.754 | 0.483 | 0.070 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  43 | 0.155 | 15.851 | 0.421 | 0.520 | 0.010 |        |
| 6   | grupo:Zona     |   1 |  39 | 0.201 | 12.410 | 0.632 | 0.431 | 0.016 |        |
| 9   | grupo:Cor.Raca |   0 |  19 |       |  5.955 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.math | Controle     |  32 |  0.220 | 0.116 |
| gain.flow.math | Experimental |  15 | -0.116 | 0.114 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math | Controle | Experimental |    0.336 |    -0.04 |     0.712 | 0.187 |       1.8 | 0.079 | 0.079 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    |  16 |  0.197 | 0.150 |
| gain.flow.math | Controle     | M    |  16 |  0.243 | 0.181 |
| gain.flow.math | Experimental | F    |   6 |  0.007 | 0.109 |
| gain.flow.math | Experimental | M    |   9 | -0.198 | 0.175 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | F    | Controle | Experimental |    0.190 |   -0.396 |     0.777 | 0.291 |     0.655 | 0.516 | 0.516 | ns           |
| gain.flow.math |              | M    | Controle | Experimental |    0.441 |   -0.070 |     0.951 | 0.253 |     1.742 | 0.089 | 0.089 | ns           |
| gain.flow.math | Controle     |      | F        | M            |   -0.046 |   -0.479 |     0.387 | 0.215 |    -0.213 | 0.833 | 0.833 | ns           |
| gain.flow.math | Experimental |      | F        | M            |    0.204 |   -0.441 |     0.850 | 0.320 |     0.639 | 0.526 | 0.526 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.math | Controle     | Rural  |  21 |  0.060 | 0.100 |
| gain.flow.math | Controle     | Urbana |   8 |  0.674 | 0.321 |
| gain.flow.math | Experimental | Rural  |  10 | -0.178 | 0.158 |

|     | .y.            | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.flow.math |          | Rural | Controle | Experimental |    0.238 |   -0.217 |     0.693 | 0.224 |     1.062 | 0.295 | 0.295 | ns           |
| 3   | gain.flow.math | Controle |       | Rural    | Urbana       |   -0.613 |   -1.105 |    -0.121 | 0.242 |    -2.529 | 0.016 | 0.016 | \*           |

### factores: **grupo:Cor.Raca**
