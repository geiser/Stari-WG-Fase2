ANOVA in Gains for gain flow (debate) (gain flow (debate))
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
  flow (debate) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (debate) (measured using the difference between post-test
  and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable        |   n |   mean | median |    min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:----------------|----:|-------:|-------:|-------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.debat |  15 |  0.075 |  0.167 | -1.042 | 1.111 | 0.484 | 0.125 | 0.268 | 0.444 |
| Controle     | M    |        |          | gain.flow.debat |  13 |  0.009 | -0.111 | -0.889 | 1.000 | 0.496 | 0.138 | 0.300 | 0.333 |
| Experimental | F    |        |          | gain.flow.debat |   3 |  0.380 |  0.222 |  0.028 | 0.889 | 0.452 | 0.261 | 1.122 | 0.431 |
| Experimental | M    |        |          | gain.flow.debat |   7 | -0.450 | -0.556 | -1.444 | 0.403 | 0.638 | 0.241 | 0.590 | 0.778 |
| Controle     |      | Rural  |          | gain.flow.debat |  22 |  0.043 |  0.000 | -0.889 | 1.000 | 0.401 | 0.086 | 0.178 | 0.500 |
| Controle     |      | Urbana |          | gain.flow.debat |   3 |  0.171 |  0.444 | -1.042 | 1.111 | 1.102 | 0.636 | 2.738 | 1.076 |
| Controle     |      |        |          | gain.flow.debat |   3 | -0.074 |  0.111 | -0.556 | 0.222 | 0.421 | 0.243 | 1.045 | 0.389 |
| Experimental |      | Rural  |          | gain.flow.debat |  10 | -0.201 | -0.097 | -1.444 | 0.889 | 0.691 | 0.219 | 0.495 | 0.944 |
| Controle     |      |        | Branca   | gain.flow.debat |   5 |  0.200 |  0.000 | -0.333 | 1.000 | 0.529 | 0.237 | 0.657 | 0.556 |
| Controle     |      |        | Parda    | gain.flow.debat |  14 | -0.174 | -0.111 | -1.042 | 0.333 | 0.427 | 0.114 | 0.247 | 0.431 |
| Controle     |      |        |          | gain.flow.debat |   9 |  0.296 |  0.222 | -0.222 | 1.111 | 0.419 | 0.140 | 0.322 | 0.444 |
| Experimental |      |        | Parda    | gain.flow.debat |   4 | -0.389 | -0.500 | -0.778 | 0.222 | 0.484 | 0.242 | 0.771 | 0.667 |
| Experimental |      |        |          | gain.flow.debat |   6 | -0.076 |  0.125 | -1.444 | 0.889 | 0.820 | 0.335 | 0.861 | 0.767 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.debat |  38 |  0.0410583 | -0.0439664 | YES      | 0.9683025 | Shapiro-Wilk | 0.3481093 | ns       | YES       |
| gain.flow.debat |  35 | -0.2058921 | -0.0353980 | YES      | 0.9712618 | Shapiro-Wilk | 0.4788497 | ns       | YES       |
| gain.flow.debat |  23 | -0.1001913 | -0.9009458 | YES      | 0.9821640 | Shapiro-Wilk | 0.9394757 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var             | method        | formula                               |   n | df1 | df2 | statistic |         p | p.signif |
|:----------------|:--------------|:--------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Sexo`     |  38 |   3 |  34 | 0.3583622 | 0.7834081 | ns       |
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Zona`     |  35 |   2 |  32 | 3.2543906 | 0.0516944 | ns       |
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Cor.Raca` |  23 |   2 |  20 | 0.1646756 | 0.8493071 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 |  36 | 0.444 | 10.556 | 1.515 | 0.226 | 0.040 |        |
| Sexo     |   1 |  36 | 0.731 | 10.269 | 2.564 | 0.118 | 0.066 |        |
| Zona     |   1 |  33 | 0.115 | 10.522 | 0.361 | 0.552 | 0.011 |        |
| Cor.Raca |   1 |  21 | 0.695 |  4.339 | 3.364 | 0.081 | 0.138 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  34 | 0.941 |  9.079 | 3.523 | 0.069 | 0.094 |        |
| 6   | grupo:Zona     |   0 |  32 |       | 10.112 |       |       |       |        |
| 9   | grupo:Cor.Raca |   0 |  20 |       |  4.195 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n |      M |    SE |
|:----------------|:-------------|----:|-------:|------:|
| gain.flow.debat | Controle     |  28 |  0.044 | 0.091 |
| gain.flow.debat | Experimental |  10 | -0.201 | 0.219 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.debat | Controle | Experimental |    0.246 |   -0.159 |      0.65 | 0.199 |     1.231 | 0.226 | 0.226 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.debat-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n |      M |    SE |
|:----------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.debat | Controle     | F    |  15 |  0.075 | 0.125 |
| gain.flow.debat | Controle     | M    |  13 |  0.009 | 0.138 |
| gain.flow.debat | Experimental | M    |   7 | -0.450 | 0.241 |

|     | .y.             | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.debat |          | M    | Controle | Experimental |    0.459 |   -0.038 |     0.956 | 0.244 |     1.881 | 0.069 | 0.069 | ns           |
| 3   | gain.flow.debat | Controle |      | F        | M            |    0.066 |   -0.335 |     0.468 | 0.197 |     0.337 | 0.738 | 0.738 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
