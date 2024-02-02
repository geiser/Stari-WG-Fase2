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
| Controle     | F    |        |          | gain.flow.math |  72 | -0.033 |  0.000 | -1.889 |  1.444 | 0.598 | 0.070 | 0.140 | 0.556 |
| Controle     | M    |        |          | gain.flow.math |  82 | -0.116 |  0.000 | -1.778 |  1.444 | 0.559 | 0.062 | 0.123 | 0.764 |
| Experimental | F    |        |          | gain.flow.math |  92 | -0.102 | -0.111 | -1.528 |  1.667 | 0.568 | 0.059 | 0.118 | 0.667 |
| Experimental | M    |        |          | gain.flow.math |  83 | -0.067 | -0.111 | -3.000 |  1.556 | 0.716 | 0.079 | 0.156 | 0.757 |
| Controle     |      | Rural  |          | gain.flow.math | 103 | -0.102 |  0.000 | -1.889 |  1.444 | 0.555 | 0.055 | 0.108 | 0.667 |
| Controle     |      | Urbana |          | gain.flow.math |  30 | -0.150 | -0.056 | -1.778 |  0.778 | 0.625 | 0.114 | 0.233 | 0.750 |
| Controle     |      |        |          | gain.flow.math |  21 |  0.152 |  0.000 | -0.611 |  1.444 | 0.584 | 0.127 | 0.266 | 0.778 |
| Experimental |      | Rural  |          | gain.flow.math |  89 | -0.030 |  0.000 | -1.556 |  1.556 | 0.611 | 0.065 | 0.129 | 0.778 |
| Experimental |      | Urbana |          | gain.flow.math |  41 | -0.209 | -0.111 | -3.000 |  1.000 | 0.635 | 0.099 | 0.201 | 0.556 |
| Experimental |      |        |          | gain.flow.math |  45 | -0.083 | -0.111 | -1.667 |  1.667 | 0.699 | 0.104 | 0.210 | 0.778 |
| Controle     |      |        | Branca   | gain.flow.math |  20 |  0.061 |  0.000 | -1.000 |  1.444 | 0.611 | 0.137 | 0.286 | 0.806 |
| Controle     |      |        | Indígena | gain.flow.math |   3 |  0.111 |  0.222 | -0.444 |  0.556 | 0.509 | 0.294 | 1.265 | 0.500 |
| Controle     |      |        | Parda    | gain.flow.math |  46 | -0.086 | -0.111 | -1.222 |  1.208 | 0.524 | 0.077 | 0.155 | 0.556 |
| Controle     |      |        | Preta    | gain.flow.math |   1 | -0.222 | -0.222 | -0.222 | -0.222 |       |       |       | 0.000 |
| Controle     |      |        |          | gain.flow.math |  84 | -0.110 |  0.000 | -1.889 |  1.444 | 0.605 | 0.066 | 0.131 | 0.667 |
| Experimental |      |        | Branca   | gain.flow.math |  17 |  0.007 | -0.111 | -0.889 |  1.444 | 0.592 | 0.144 | 0.304 | 0.556 |
| Experimental |      |        | Indígena | gain.flow.math |  13 | -0.279 | -0.111 | -1.222 |  0.444 | 0.508 | 0.141 | 0.307 | 0.736 |
| Experimental |      |        | Parda    | gain.flow.math |  45 |  0.005 |  0.000 | -1.556 |  1.153 | 0.585 | 0.087 | 0.176 | 0.750 |
| Experimental |      |        | Preta    | gain.flow.math |   1 |  0.667 |  0.667 |  0.667 |  0.667 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.math |  99 | -0.124 | -0.111 | -3.000 |  1.667 | 0.684 | 0.069 | 0.136 | 0.667 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry |  statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|-----------:|:-----------|----------:|:---------|:----------|
| gain.flow.math | 329 | -0.2794875 |  1.6584922 | YES      | 19.7948807 | D’Agostino | 0.0000503 | \*\*\*   | \-        |
| gain.flow.math | 263 | -0.4744837 |  1.7254867 | YES      | 23.1591919 | D’Agostino | 0.0000094 | \*\*\*\* | \-        |
| gain.flow.math | 146 |  0.0470518 | -0.0346234 | YES      |  0.1451038 | D’Agostino | 0.9300175 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     | 329 |   3 | 325 | 0.7958288 | 0.4969169 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     | 263 |   3 | 259 | 0.4672360 | 0.7053890 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` | 146 |   7 | 138 | 0.5665446 | 0.7820572 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 327 | 0.006 | 122.243 | 0.016 | 0.901 | 0.000 |        |
| Sexo     |   1 | 327 | 0.034 | 122.215 | 0.090 | 0.764 | 0.000 |        |
| Zona     |   1 | 261 | 0.692 |  92.011 | 1.964 | 0.162 | 0.007 |        |
| Cor.Raca |   3 | 142 | 0.791 |  44.700 | 0.837 | 0.476 | 0.017 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 325 | 0.282 | 121.925 | 0.751 | 0.387 | 0.002 |        |
| 6   | grupo:Zona     |   1 | 259 | 0.218 |  91.701 | 0.616 | 0.433 | 0.002 |        |
| 9   | grupo:Cor.Raca |   3 | 138 | 0.946 |  43.721 | 0.996 | 0.397 | 0.021 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.math | Controle     | 154 | -0.077 | 0.046 |
| gain.flow.math | Experimental | 175 | -0.085 | 0.048 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math | Controle | Experimental |    0.008 |   -0.124 |     0.141 | 0.068 |     0.125 | 0.901 | 0.901 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    |  72 | -0.033 | 0.070 |
| gain.flow.math | Controle     | M    |  82 | -0.116 | 0.062 |
| gain.flow.math | Experimental | F    |  92 | -0.102 | 0.059 |
| gain.flow.math | Experimental | M    |  83 | -0.067 | 0.079 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | F    | Controle | Experimental |    0.069 |   -0.121 |     0.259 | 0.096 |     0.716 | 0.475 | 0.475 | ns           |
| gain.flow.math |              | M    | Controle | Experimental |   -0.049 |   -0.236 |     0.139 | 0.095 |    -0.509 | 0.611 | 0.611 | ns           |
| gain.flow.math | Controle     |      | F        | M            |    0.083 |   -0.111 |     0.278 | 0.099 |     0.842 | 0.400 | 0.400 | ns           |
| gain.flow.math | Experimental |      | F        | M            |   -0.034 |   -0.217 |     0.148 | 0.093 |    -0.369 | 0.713 | 0.713 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.math | Controle     | Rural  | 103 | -0.102 | 0.055 |
| gain.flow.math | Controle     | Urbana |  30 | -0.150 | 0.114 |
| gain.flow.math | Experimental | Rural  |  89 | -0.030 | 0.065 |
| gain.flow.math | Experimental | Urbana |  41 | -0.209 | 0.099 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | Rural  | Controle | Experimental |   -0.072 |   -0.242 |     0.097 | 0.086 |    -0.841 | 0.401 | 0.401 | ns           |
| gain.flow.math |              | Urbana | Controle | Experimental |    0.058 |   -0.223 |     0.340 | 0.143 |     0.409 | 0.683 | 0.683 | ns           |
| gain.flow.math | Controle     |        | Rural    | Urbana       |    0.048 |   -0.195 |     0.291 | 0.123 |     0.390 | 0.697 | 0.697 | ns           |
| gain.flow.math | Experimental |        | Rural    | Urbana       |    0.179 |   -0.042 |     0.400 | 0.112 |     1.595 | 0.112 | 0.112 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.math | Controle     | Branca   |  20 |  0.061 | 0.137 |
| gain.flow.math | Controle     | Parda    |  46 | -0.086 | 0.077 |
| gain.flow.math | Experimental | Branca   |  17 |  0.007 | 0.144 |
| gain.flow.math | Experimental | Indígena |  13 | -0.279 | 0.141 |
| gain.flow.math | Experimental | Parda    |  45 |  0.005 | 0.087 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.flow.math |              | Branca   | Controle | Experimental |    0.054 |   -0.314 |     0.421 | 0.186 |     0.289 | 0.773 | 0.773 | ns           |
| 3   | gain.flow.math |              | Parda    | Controle | Experimental |   -0.091 |   -0.324 |     0.143 | 0.118 |    -0.766 | 0.445 | 0.445 | ns           |
| 5   | gain.flow.math | Controle     |          | Branca   | Parda        |    0.147 |   -0.152 |     0.446 | 0.151 |     0.974 | 0.332 | 0.332 | ns           |
| 7   | gain.flow.math | Experimental |          | Branca   | Indígena     |    0.286 |   -0.124 |     0.697 | 0.208 |     1.378 | 0.170 | 0.511 | ns           |
| 8   | gain.flow.math | Experimental |          | Branca   | Parda        |    0.003 |   -0.315 |     0.320 | 0.160 |     0.017 | 0.986 | 1.000 | ns           |
| 9   | gain.flow.math | Experimental |          | Indígena | Parda        |   -0.283 |   -0.634 |     0.067 | 0.177 |    -1.597 | 0.113 | 0.338 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
