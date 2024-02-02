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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.math |  16 | -0.075 | -0.201 | -1.014 | 1.778 | 0.707 | 0.177 | 0.377 | 0.583 |
| Controle     | M    |        |          | gain.flow.math |  15 |  0.378 |  0.333 | -0.333 | 1.111 | 0.463 | 0.120 | 0.257 | 0.611 |
| Experimental | F    |        |          | gain.flow.math |   4 |  0.139 |  0.056 | -0.667 | 1.111 | 0.745 | 0.372 | 1.185 | 0.694 |
| Experimental | M    |        |          | gain.flow.math |   7 |  0.290 |  0.111 | -0.333 | 1.694 | 0.651 | 0.246 | 0.602 | 0.167 |
| Controle     |      | Rural  |          | gain.flow.math |  19 |  0.254 |  0.111 | -0.778 | 1.778 | 0.624 | 0.143 | 0.301 | 0.868 |
| Controle     |      | Urbana |          | gain.flow.math |   4 |  0.417 |  0.556 | -0.556 | 1.111 | 0.788 | 0.394 | 1.253 | 1.083 |
| Controle     |      |        |          | gain.flow.math |   8 | -0.252 | -0.333 | -1.014 | 0.333 | 0.451 | 0.159 | 0.377 | 0.611 |
| Experimental |      | Rural  |          | gain.flow.math |   8 |  0.111 |  0.111 | -0.667 | 1.111 | 0.490 | 0.173 | 0.409 | 0.167 |
| Experimental |      | Urbana |          | gain.flow.math |   1 |  1.694 |  1.694 |  1.694 | 1.694 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.math |   2 |  0.000 |  0.000 | -0.333 | 0.333 | 0.471 | 0.333 | 4.235 | 0.333 |
| Controle     |      |        | Branca   | gain.flow.math |   3 |  0.148 |  0.111 | -0.222 | 0.556 | 0.390 | 0.225 | 0.969 | 0.389 |
| Controle     |      |        | Parda    | gain.flow.math |  17 |  0.159 | -0.111 | -0.556 | 1.778 | 0.686 | 0.166 | 0.353 | 1.000 |
| Controle     |      |        | Preta    | gain.flow.math |   1 |  0.444 |  0.444 |  0.444 | 0.444 |       |       |       | 0.000 |
| Controle     |      |        |          | gain.flow.math |  10 |  0.087 |  0.278 | -1.014 | 1.000 | 0.677 | 0.214 | 0.484 | 0.972 |
| Experimental |      |        | Branca   | gain.flow.math |   3 |  0.676 |  0.222 |  0.111 | 1.694 | 0.884 | 0.510 | 2.196 | 0.792 |
| Experimental |      |        | Indígena | gain.flow.math |   2 |  0.500 |  0.500 | -0.111 | 1.111 | 0.864 | 0.611 | 7.765 | 0.611 |
| Experimental |      |        | Parda    | gain.flow.math |   2 |  0.056 |  0.056 |  0.000 | 0.111 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        |          | gain.flow.math |   4 | -0.139 | -0.111 | -0.667 | 0.333 | 0.448 | 0.224 | 0.713 | 0.583 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.math |  42 | 1.0220264 |  0.9181866 | NO       | 0.9273496 | Shapiro-Wilk | 0.0105556 | \*       | NO        |
| gain.flow.math |  32 | 0.3864703 | -0.1958180 | YES      | 0.9813117 | Shapiro-Wilk | 0.8367158 | ns       | YES       |
| gain.flow.math |  28 | 0.8565569 | -0.2166983 | NO       | 0.9002807 | Shapiro-Wilk | 0.0116153 | \*       | NO        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     |  42 |   3 |  38 | 0.3252568 | 0.8070672 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     |  32 |   3 |  28 | 1.4689412 | 0.2443183 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` |  28 |   5 |  22 | 0.5843481 | 0.7117303 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 |  40 | 0.067 | 16.347 | 0.163 | 0.689 | 0.004 |        |
| Sexo     |   1 |  40 | 1.526 | 14.887 | 4.101 | 0.050 | 0.093 | \*     |
| Zona     |   1 |  30 | 0.896 | 11.981 | 2.243 | 0.145 | 0.070 |        |
| Cor.Raca |   3 |  24 | 0.514 | 10.584 | 0.389 | 0.762 | 0.046 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  38 | 0.174 | 14.704 | 0.450 | 0.506 | 0.012 |        |
| 6   | grupo:Zona     |   1 |  28 | 1.413 | 10.560 | 3.747 | 0.063 | 0.118 |        |
| 9   | grupo:Cor.Raca |   1 |  22 | 0.325 | 10.147 | 0.706 | 0.410 | 0.031 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |     M |    SE |
|:---------------|:-------------|----:|------:|------:|
| gain.flow.math | Controle     |  31 | 0.144 | 0.114 |
| gain.flow.math | Experimental |  11 | 0.235 | 0.197 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math | Controle | Experimental |   -0.091 |   -0.544 |     0.363 | 0.224 |    -0.404 | 0.689 | 0.689 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.math-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    |  16 | -0.075 | 0.177 |
| gain.flow.math | Controle     | M    |  15 |  0.378 | 0.120 |
| gain.flow.math | Experimental | M    |   7 |  0.290 | 0.246 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.math |          | M    | Controle | Experimental |    0.088 |   -0.479 |     0.655 | 0.279 |     0.315 | 0.754 | 0.754 | ns           |
| 3   | gain.flow.math | Controle |      | F        | M            |   -0.452 |   -0.898 |    -0.007 | 0.219 |    -2.062 | 0.047 | 0.047 | \*           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
