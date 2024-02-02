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
| Controle     | F    |        |          | gain.flow.text |  69 | -0.033 | -0.111 | -1.444 |  1.444 | 0.566 | 0.068 | 0.136 | 0.778 |
| Controle     | M    |        |          | gain.flow.text |  80 | -0.048 |  0.000 | -2.556 |  1.667 | 0.694 | 0.078 | 0.154 | 0.625 |
| Experimental | F    |        |          | gain.flow.text |  91 | -0.016 |  0.000 | -2.556 |  2.153 | 0.715 | 0.075 | 0.149 | 0.889 |
| Experimental | M    |        |          | gain.flow.text |  80 |  0.114 |  0.111 | -1.444 |  1.778 | 0.618 | 0.069 | 0.138 | 0.594 |
| Controle     |      | Rural  |          | gain.flow.text |  98 | -0.072 | -0.111 | -2.556 |  1.444 | 0.605 | 0.061 | 0.121 | 0.729 |
| Controle     |      | Urbana |          | gain.flow.text |  30 |  0.040 |  0.000 | -1.444 |  1.667 | 0.723 | 0.132 | 0.270 | 0.660 |
| Controle     |      |        |          | gain.flow.text |  21 | -0.015 |  0.000 | -1.444 |  1.444 | 0.666 | 0.145 | 0.303 | 0.667 |
| Experimental |      | Rural  |          | gain.flow.text |  85 |  0.089 |  0.000 | -2.556 |  2.153 | 0.702 | 0.076 | 0.151 | 0.778 |
| Experimental |      | Urbana |          | gain.flow.text |  41 | -0.041 | -0.111 | -1.000 |  1.444 | 0.568 | 0.089 | 0.179 | 0.667 |
| Experimental |      |        |          | gain.flow.text |  45 |  0.038 |  0.111 | -1.778 |  1.556 | 0.709 | 0.106 | 0.213 | 1.000 |
| Controle     |      |        | Branca   | gain.flow.text |  20 |  0.062 |  0.111 | -1.444 |  1.444 | 0.751 | 0.168 | 0.352 | 0.722 |
| Controle     |      |        | Indígena | gain.flow.text |   3 |  0.148 |  0.222 |  0.000 |  0.222 | 0.128 | 0.074 | 0.319 | 0.111 |
| Controle     |      |        | Parda    | gain.flow.text |  42 | -0.110 | -0.014 | -1.444 |  1.000 | 0.513 | 0.079 | 0.160 | 0.444 |
| Controle     |      |        | Preta    | gain.flow.text |   1 | -0.333 | -0.333 | -0.333 | -0.333 |       |       |       | 0.000 |
| Controle     |      |        |          | gain.flow.text |  83 | -0.034 | -0.111 | -2.556 |  1.667 | 0.678 | 0.074 | 0.148 | 0.778 |
| Experimental |      |        | Branca   | gain.flow.text |  17 | -0.041 | -0.111 | -1.222 |  2.153 | 0.755 | 0.183 | 0.388 | 0.625 |
| Experimental |      |        | Indígena | gain.flow.text |  12 |  0.134 |  0.111 | -0.500 |  0.556 | 0.328 | 0.095 | 0.208 | 0.389 |
| Experimental |      |        | Parda    | gain.flow.text |  44 |  0.265 |  0.222 | -0.778 |  1.778 | 0.633 | 0.095 | 0.192 | 1.073 |
| Experimental |      |        | Preta    | gain.flow.text |   1 |  1.000 |  1.000 |  1.000 |  1.000 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.text |  97 | -0.061 |  0.000 | -2.556 |  1.556 | 0.684 | 0.069 | 0.138 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |  kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.text | 320 | -0.0877023 | 1.2379883 | YES      | 11.101440 | D’Agostino | 0.0038847 | \*       | \-        |
| gain.flow.text | 254 | -0.1087005 | 1.7118855 | YES      | 13.649584 | D’Agostino | 0.0010865 | \*       | \-        |
| gain.flow.text | 140 |  0.3355982 | 0.9619534 | YES      |  7.329574 | D’Agostino | 0.0256096 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     | 320 |   3 | 316 | 0.8076201 | 0.4903982 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     | 254 |   3 | 250 | 0.6279597 | 0.5975627 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` | 140 |   7 | 132 | 1.7731202 | 0.0978231 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 318 | 0.583 | 136.672 | 1.357 | 0.245 | 0.004 |        |
| Sexo     |   1 | 318 | 0.259 | 136.996 | 0.601 | 0.439 | 0.002 |        |
| Zona     |   1 | 252 | 0.005 | 106.227 | 0.011 | 0.917 | 0.000 |        |
| Cor.Raca |   3 | 136 | 0.328 |  53.089 | 0.280 | 0.840 | 0.006 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 316 | 0.413 | 135.942 | 0.960 | 0.328 | 0.003 |        |
| 6   | grupo:Zona     |   1 | 250 | 0.732 | 104.939 | 1.744 | 0.188 | 0.007 |        |
| 9   | grupo:Cor.Raca |   3 | 132 | 2.226 |  49.075 | 1.996 | 0.118 | 0.043 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     | 149 | -0.041 | 0.052 |
| gain.flow.text | Experimental | 171 |  0.045 | 0.051 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text | Controle | Experimental |   -0.086 |    -0.23 |     0.059 | 0.073 |    -1.165 | 0.245 | 0.245 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.text | Controle     | F    |  69 | -0.033 | 0.068 |
| gain.flow.text | Controle     | M    |  80 | -0.048 | 0.078 |
| gain.flow.text | Experimental | F    |  91 | -0.016 | 0.075 |
| gain.flow.text | Experimental | M    |  80 |  0.114 | 0.069 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | F    | Controle | Experimental |   -0.017 |   -0.223 |     0.189 | 0.105 |    -0.163 | 0.871 | 0.871 | ns           |
| gain.flow.text |              | M    | Controle | Experimental |   -0.161 |   -0.365 |     0.043 | 0.104 |    -1.557 | 0.120 | 0.120 | ns           |
| gain.flow.text | Controle     |      | F        | M            |    0.014 |   -0.198 |     0.226 | 0.108 |     0.131 | 0.896 | 0.896 | ns           |
| gain.flow.text | Experimental |      | F        | M            |   -0.130 |   -0.328 |     0.068 | 0.101 |    -1.296 | 0.196 | 0.196 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.text | Controle     | Rural  |  98 | -0.072 | 0.061 |
| gain.flow.text | Controle     | Urbana |  30 |  0.040 | 0.132 |
| gain.flow.text | Experimental | Rural  |  85 |  0.089 | 0.076 |
| gain.flow.text | Experimental | Urbana |  41 | -0.041 | 0.089 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Rural  | Controle | Experimental |   -0.161 |   -0.350 |     0.029 | 0.096 |    -1.673 | 0.096 | 0.096 | ns           |
| gain.flow.text |              | Urbana | Controle | Experimental |    0.081 |   -0.226 |     0.387 | 0.156 |     0.520 | 0.604 | 0.604 | ns           |
| gain.flow.text | Controle     |        | Rural    | Urbana       |   -0.112 |   -0.378 |     0.154 | 0.135 |    -0.827 | 0.409 | 0.409 | ns           |
| gain.flow.text | Experimental |        | Rural    | Urbana       |    0.130 |   -0.113 |     0.372 | 0.123 |     1.053 | 0.293 | 0.293 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.text | Controle     | Branca   |  20 |  0.062 | 0.168 |
| gain.flow.text | Controle     | Parda    |  42 | -0.110 | 0.079 |
| gain.flow.text | Experimental | Branca   |  17 | -0.041 | 0.183 |
| gain.flow.text | Experimental | Indígena |  12 |  0.134 | 0.095 |
| gain.flow.text | Experimental | Parda    |  44 |  0.265 | 0.095 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.flow.text |              | Branca   | Controle | Experimental |    0.103 |   -0.298 |     0.504 | 0.203 |     0.510 | 0.611 | 0.611 | ns           |
| 3   | gain.flow.text |              | Parda    | Controle | Experimental |   -0.375 |   -0.637 |    -0.113 | 0.132 |    -2.832 | 0.005 | 0.005 | \*\*         |
| 5   | gain.flow.text | Controle     |          | Branca   | Parda        |    0.173 |   -0.157 |     0.503 | 0.167 |     1.036 | 0.302 | 0.302 | ns           |
| 7   | gain.flow.text | Experimental |          | Branca   | Indígena     |   -0.175 |   -0.633 |     0.283 | 0.232 |    -0.756 | 0.451 | 1.000 | ns           |
| 8   | gain.flow.text | Experimental |          | Branca   | Parda        |   -0.306 |   -0.653 |     0.041 | 0.175 |    -1.743 | 0.084 | 0.251 | ns           |
| 9   | gain.flow.text | Experimental |          | Indígena | Parda        |   -0.131 |   -0.526 |     0.265 | 0.200 |    -0.653 | 0.515 | 1.000 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
