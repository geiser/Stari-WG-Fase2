ANOVA in Gains for gain flow (prod. textual) (gain flow (prod. textual))
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
  flow (prod. textual) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (prod. textual) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |    max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|-------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.text |   6 |  0.111 |  0.444 | -1.000 |  0.667 | 0.678 | 0.277 | 0.711 | 0.806 |
| Controle     | M    |        |          | gain.flow.text |   9 |  0.068 |  0.000 | -1.167 |  1.667 | 0.907 | 0.302 | 0.697 | 1.111 |
| Experimental | F    |        |          | gain.flow.text |   1 |  0.556 |  0.556 |  0.556 |  0.556 |       |       |       | 0.000 |
| Experimental | M    |        |          | gain.flow.text |   8 | -0.545 | -0.569 | -1.556 |  0.333 | 0.553 | 0.196 | 0.462 | 0.556 |
| Controle     |      | Rural  |          | gain.flow.text |   6 | -0.241 | -0.556 | -1.000 |  1.111 | 0.752 | 0.307 | 0.789 | 0.500 |
| Controle     |      | Urbana |          | gain.flow.text |   3 |  0.407 |  0.000 | -0.444 |  1.667 | 1.113 | 0.643 | 2.765 | 1.056 |
| Controle     |      |        |          | gain.flow.text |   6 |  0.250 |  0.556 | -1.167 |  0.667 | 0.703 | 0.287 | 0.737 | 0.167 |
| Experimental |      | Rural  |          | gain.flow.text |   6 | -0.352 | -0.333 | -1.556 |  0.556 | 0.768 | 0.314 | 0.806 | 0.889 |
| Experimental |      |        |          | gain.flow.text |   3 | -0.565 | -0.694 | -0.778 | -0.222 | 0.300 | 0.173 | 0.744 | 0.278 |
| Controle     |      |        | Parda    | gain.flow.text |   8 |  0.167 |  0.333 | -0.556 |  1.111 | 0.656 | 0.232 | 0.548 | 1.139 |
| Controle     |      |        |          | gain.flow.text |   7 | -0.008 |  0.000 | -1.167 |  1.667 | 0.979 | 0.370 | 0.906 | 1.167 |
| Experimental |      |        | Branca   | gain.flow.text |   1 | -0.222 | -0.222 | -0.222 | -0.222 |       |       |       | 0.000 |
| Experimental |      |        | Indígena | gain.flow.text |   1 | -0.222 | -0.222 | -0.222 | -0.222 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | gain.flow.text |   3 | -0.222 |  0.333 | -1.556 |  0.556 | 1.160 | 0.670 | 2.882 | 1.056 |
| Experimental |      |        |          | gain.flow.text |   4 | -0.674 | -0.736 | -0.778 | -0.444 | 0.158 | 0.079 | 0.251 | 0.146 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.text |  24 |  0.1545808 | -0.4554549 | YES      | 0.9806740 | Shapiro-Wilk | 0.9079492 | ns       | YES       |
| gain.flow.text |  15 |  0.3746647 | -1.1158902 | YES      | 0.9434363 | Shapiro-Wilk | 0.4275491 | ns       | YES       |
| gain.flow.text |  13 | -0.4163553 | -1.1811695 | YES      | 0.9323080 | Shapiro-Wilk | 0.3652203 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     |  24 |   3 |  20 | 0.9573855 | 0.4320076 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     |  15 |   2 |  12 | 0.1557744 | 0.8574550 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` |  13 |   3 |   9 | 0.6719843 | 0.5904425 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 |  22 | 1.452 | 12.101 | 2.639 | 0.118 | 0.107 |        |
| Sexo     |   1 |  22 | 0.774 | 12.778 | 1.333 | 0.261 | 0.057 |        |
| Zona     |   1 |  13 | 1.188 |  8.288 | 1.864 | 0.195 | 0.125 |        |
| Cor.Raca |   2 |  10 | 0.135 |  6.034 | 0.112 | 0.895 | 0.022 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  20 | 0.797 | 11.017 | 1.447 | 0.243 | 0.067 |        |
| 6   | grupo:Zona     |   0 |  12 |       |  8.251 |       |       |       |        |
| 9   | grupo:Cor.Raca |   0 |   9 |       |  5.704 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     |  15 |  0.085 | 0.206 |
| gain.flow.text | Experimental |   9 | -0.423 | 0.211 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text | Controle | Experimental |    0.508 |    -0.14 |     1.157 | 0.313 |     1.625 | 0.118 | 0.118 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.text | Controle     | F    |   6 |  0.111 | 0.277 |
| gain.flow.text | Controle     | M    |   9 |  0.068 | 0.302 |
| gain.flow.text | Experimental | M    |   8 | -0.545 | 0.196 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.text |          | M    | Controle | Experimental |    0.613 |   -0.139 |     1.365 | 0.361 |      1.70 | 0.105 | 0.105 | ns           |
| 3   | gain.flow.text | Controle |      | F        | M            |    0.043 |   -0.773 |     0.859 | 0.391 |      0.11 | 0.913 | 0.913 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
