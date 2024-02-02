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
| Controle     | F    |        |          | gain.flow.debat |  44 | -0.007 | -0.111 | -1.016 | 1.333 | 0.614 | 0.093 | 0.187 | 0.667 |
| Controle     | M    |        |          | gain.flow.debat |  36 | -0.048 |  0.000 | -3.000 | 1.222 | 0.815 | 0.136 | 0.276 | 1.028 |
| Experimental | F    |        |          | gain.flow.debat |  88 | -0.157 | -0.167 | -2.889 | 1.444 | 0.692 | 0.074 | 0.147 | 0.889 |
| Experimental | M    |        |          | gain.flow.debat |  65 | -0.040 |  0.000 | -1.667 | 1.333 | 0.758 | 0.094 | 0.188 | 1.111 |
| Controle     |      | Rural  |          | gain.flow.debat |  31 | -0.042 | -0.111 | -1.556 | 1.000 | 0.695 | 0.125 | 0.255 | 1.000 |
| Controle     |      | Urbana |          | gain.flow.debat |  16 |  0.095 |  0.000 | -0.889 | 1.333 | 0.595 | 0.149 | 0.317 | 0.583 |
| Controle     |      |        |          | gain.flow.debat |  33 | -0.069 | -0.111 | -3.000 | 1.222 | 0.778 | 0.136 | 0.276 | 0.792 |
| Experimental |      | Rural  |          | gain.flow.debat |  44 | -0.003 |  0.111 | -2.889 | 1.000 | 0.743 | 0.112 | 0.226 | 0.917 |
| Experimental |      | Urbana |          | gain.flow.debat |  26 | -0.285 | -0.444 | -1.444 | 1.333 | 0.827 | 0.162 | 0.334 | 0.833 |
| Experimental |      |        |          | gain.flow.debat |  83 | -0.107 | -0.111 | -1.556 | 1.444 | 0.671 | 0.074 | 0.146 | 0.944 |
| Controle     |      |        | Branca   | gain.flow.debat |   3 |  0.222 | -0.222 | -0.333 | 1.222 | 0.868 | 0.501 | 2.156 | 0.778 |
| Controle     |      |        | Parda    | gain.flow.debat |  31 |  0.054 | -0.111 | -1.556 | 1.333 | 0.747 | 0.134 | 0.274 | 1.056 |
| Controle     |      |        |          | gain.flow.debat |  46 | -0.095 |  0.000 | -3.000 | 1.222 | 0.677 | 0.100 | 0.201 | 0.677 |
| Experimental |      |        | Amarela  | gain.flow.debat |   1 |  0.111 |  0.111 |  0.111 | 0.111 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | gain.flow.debat |  16 | -0.025 |  0.076 | -1.667 | 1.222 | 0.815 | 0.204 | 0.434 | 1.194 |
| Experimental |      |        | Parda    | gain.flow.debat |  41 |  0.049 |  0.111 | -1.333 | 1.000 | 0.610 | 0.095 | 0.192 | 1.000 |
| Experimental |      |        |          | gain.flow.debat |  95 | -0.191 | -0.333 | -2.889 | 1.444 | 0.746 | 0.077 | 0.152 | 1.000 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.debat | 233 | -0.4991140 |  1.0362727 | YES      | 16.163706 | D’Agostino | 0.0003091 | \*\*     | \-        |
| gain.flow.debat | 117 | -0.4249984 |  1.1607326 | YES      |  8.870540 | D’Agostino | 0.0118519 | ns       | QQ        |
| gain.flow.debat |  92 | -0.2292961 | -0.7415023 | YES      |  4.052546 | D’Agostino | 0.1318259 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var             | method        | formula                               |   n | df1 | df2 | statistic |         p | p.signif |
|:----------------|:--------------|:--------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Sexo`     | 233 |   3 | 229 | 0.9643387 | 0.4103142 | ns       |
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Zona`     | 117 |   3 | 113 | 0.5418568 | 0.6546160 | ns       |
| gain.flow.debat | Levene’s test | `gain.flow.debat`~`grupo`\*`Cor.Raca` |  92 |   4 |  87 | 1.3104412 | 0.2724645 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 231 | 0.350 | 118.526 | 0.683 | 0.409 | 0.003 |        |
| Sexo     |   1 | 231 | 0.237 | 118.640 | 0.461 | 0.498 | 0.002 |        |
| Zona     |   1 | 115 | 0.396 |  62.092 | 0.733 | 0.394 | 0.006 |        |
| Cor.Raca |   2 |  89 | 0.026 |  43.229 | 0.026 | 0.974 | 0.001 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 229 | 0.322 | 117.981 | 0.625 | 0.430 | 0.003 |        |
| 6   | grupo:Zona     |   1 | 113 | 1.121 |  60.636 | 2.089 | 0.151 | 0.018 |        |
| 9   | grupo:Cor.Raca |   1 |  87 | 0.131 |  43.074 | 0.264 | 0.609 | 0.003 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n |      M |    SE |
|:----------------|:-------------|----:|-------:|------:|
| gain.flow.debat | Controle     |  80 | -0.026 | 0.079 |
| gain.flow.debat | Experimental | 153 | -0.107 | 0.058 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.debat | Controle | Experimental |    0.082 |   -0.113 |     0.276 | 0.099 |     0.826 | 0.409 | 0.409 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.debat-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n |      M |    SE |
|:----------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.debat | Controle     | F    |  44 | -0.007 | 0.093 |
| gain.flow.debat | Controle     | M    |  36 | -0.048 | 0.136 |
| gain.flow.debat | Experimental | F    |  88 | -0.157 | 0.074 |
| gain.flow.debat | Experimental | M    |  65 | -0.040 | 0.094 |

| .y.             | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.debat |              | F    | Controle | Experimental |    0.150 |   -0.111 |     0.411 | 0.133 |     1.130 | 0.260 | 0.260 | ns           |
| gain.flow.debat |              | M    | Controle | Experimental |   -0.008 |   -0.302 |     0.286 | 0.149 |    -0.054 | 0.957 | 0.957 | ns           |
| gain.flow.debat | Controle     |      | F        | M            |    0.041 |   -0.277 |     0.359 | 0.161 |     0.252 | 0.801 | 0.801 | ns           |
| gain.flow.debat | Experimental |      | F        | M            |   -0.117 |   -0.348 |     0.114 | 0.117 |    -0.997 | 0.320 | 0.320 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.debat-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.debat-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var             | grupo        | Zona   |   n |      M |    SE |
|:----------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.debat | Controle     | Rural  |  31 | -0.042 | 0.125 |
| gain.flow.debat | Controle     | Urbana |  16 |  0.095 | 0.149 |
| gain.flow.debat | Experimental | Rural  |  44 | -0.003 | 0.112 |
| gain.flow.debat | Experimental | Urbana |  26 | -0.285 | 0.162 |

| .y.             | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.debat |              | Rural  | Controle | Experimental |   -0.038 |   -0.379 |     0.302 | 0.172 |    -0.223 | 0.824 | 0.824 | ns           |
| gain.flow.debat |              | Urbana | Controle | Experimental |    0.380 |   -0.081 |     0.841 | 0.233 |     1.632 | 0.105 | 0.105 | ns           |
| gain.flow.debat | Controle     |        | Rural    | Urbana       |   -0.136 |   -0.583 |     0.310 | 0.225 |    -0.605 | 0.547 | 0.547 | ns           |
| gain.flow.debat | Experimental |        | Rural    | Urbana       |    0.282 |   -0.077 |     0.641 | 0.181 |     1.555 | 0.123 | 0.123 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.debat-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.debat-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var             | grupo        | Cor.Raca |   n |      M |    SE |
|:----------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.debat | Controle     | Parda    |  31 |  0.054 | 0.134 |
| gain.flow.debat | Experimental | Branca   |  16 | -0.025 | 0.204 |
| gain.flow.debat | Experimental | Parda    |  41 |  0.049 | 0.095 |

|     | .y.             | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.debat |              | Parda    | Controle | Experimental |    0.004 |   -0.327 |     0.335 | 0.166 |     0.026 | 0.979 | 0.979 | ns           |
| 4   | gain.flow.debat | Experimental |          | Branca   | Parda        |   -0.075 |   -0.484 |     0.335 | 0.206 |    -0.362 | 0.718 | 0.718 | ns           |
