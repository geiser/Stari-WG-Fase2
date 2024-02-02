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
| Controle     | F    |        |          | gain.flow.math | 246 | -0.095 | -0.111 | -1.889 |  1.444 | 0.586 | 0.037 | 0.074 | 0.667 |
| Controle     | M    |        |          | gain.flow.math | 249 | -0.001 |  0.000 | -1.889 |  2.250 | 0.618 | 0.039 | 0.077 | 0.857 |
| Experimental | F    |        |          | gain.flow.math | 370 | -0.060 | -0.111 | -2.556 |  2.111 | 0.638 | 0.033 | 0.065 | 0.778 |
| Experimental | M    |        |          | gain.flow.math | 342 | -0.050 |  0.000 | -3.000 |  1.556 | 0.653 | 0.035 | 0.069 | 0.885 |
| Controle     |      | Rural  |          | gain.flow.math | 231 | -0.096 |  0.000 | -1.889 |  1.444 | 0.565 | 0.037 | 0.073 | 0.701 |
| Controle     |      | Urbana |          | gain.flow.math | 137 | -0.026 | -0.111 | -1.778 |  2.250 | 0.657 | 0.056 | 0.111 | 0.778 |
| Controle     |      |        |          | gain.flow.math | 127 |  0.015 |  0.111 | -1.889 |  2.111 | 0.608 | 0.054 | 0.107 | 0.708 |
| Experimental |      | Rural  |          | gain.flow.math | 283 |  0.044 |  0.000 | -1.556 |  2.111 | 0.579 | 0.034 | 0.068 | 0.778 |
| Experimental |      | Urbana |          | gain.flow.math | 192 | -0.165 | -0.111 | -3.000 |  1.444 | 0.683 | 0.049 | 0.097 | 0.778 |
| Experimental |      |        |          | gain.flow.math | 237 | -0.086 | -0.111 | -1.889 |  1.778 | 0.671 | 0.044 | 0.086 | 0.889 |
| Controle     |      |        | Branca   | gain.flow.math |  49 |  0.038 |  0.000 | -1.000 |  1.556 | 0.580 | 0.083 | 0.166 | 0.889 |
| Controle     |      |        | Indígena | gain.flow.math |  10 |  0.033 |  0.111 | -1.111 |  0.667 | 0.542 | 0.171 | 0.388 | 0.667 |
| Controle     |      |        | Parda    | gain.flow.math | 166 | -0.034 |  0.000 | -1.333 |  2.111 | 0.618 | 0.048 | 0.095 | 0.778 |
| Controle     |      |        | Preta    | gain.flow.math |   1 | -0.222 | -0.222 | -0.222 | -0.222 |       |       |       | 0.000 |
| Controle     |      |        |          | gain.flow.math | 269 | -0.075 |  0.000 | -1.889 |  2.250 | 0.603 | 0.037 | 0.072 | 0.750 |
| Experimental |      |        | Amarela  | gain.flow.math |   2 |  0.167 |  0.167 | -0.111 |  0.444 | 0.393 | 0.278 | 3.530 | 0.278 |
| Experimental |      |        | Branca   | gain.flow.math |  62 | -0.092 |  0.000 | -2.375 |  1.444 | 0.612 | 0.078 | 0.155 | 0.750 |
| Experimental |      |        | Indígena | gain.flow.math |  16 | -0.296 | -0.222 | -1.222 |  0.444 | 0.464 | 0.116 | 0.247 | 0.684 |
| Experimental |      |        | Parda    | gain.flow.math | 181 | -0.015 |  0.000 | -1.556 |  1.444 | 0.548 | 0.041 | 0.080 | 0.847 |
| Experimental |      |        | Preta    | gain.flow.math |   1 |  0.667 |  0.667 |  0.667 |  0.667 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.math | 450 | -0.061 | -0.104 | -3.000 |  2.111 | 0.689 | 0.032 | 0.064 | 0.778 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |    n |   skewness |  kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|-----:|-----------:|----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.math | 1207 | -0.0688254 | 0.9035917 | YES      | 22.916592 | D’Agostino | 0.0000106 | \*\*\*   | \-        |
| gain.flow.math |  843 | -0.0861731 | 1.0415310 | YES      | 20.308578 | D’Agostino | 0.0000389 | \*\*\*   | \-        |
| gain.flow.math |  488 |  0.0929715 | 0.4913045 | YES      |  4.916584 | D’Agostino | 0.0855810 | ns       | \-        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |    n | df1 |  df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|-----:|----:|-----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     | 1207 |   3 | 1203 | 0.7795177 | 0.5054217 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     |  843 |   3 |  839 | 1.3507855 | 0.2566449 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` |  488 |   8 |  479 | 0.7540816 | 0.6435998 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn |  DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|-----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 1205 | 0.017 | 475.075 | 0.043 | 0.837 | 0.000 |        |
| Sexo     |   1 | 1205 | 0.610 | 474.482 | 1.549 | 0.213 | 0.001 |        |
| Zona     |   1 |  841 | 1.573 | 319.909 | 4.136 | 0.042 | 0.005 | \*     |
| Cor.Raca |   4 |  483 | 0.723 | 163.571 | 0.534 | 0.711 | 0.004 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn |  DFd |   SSn |     SSd |      F |     p |   ges | p\<.05 |
|:----|:---------------|----:|-----:|------:|--------:|-------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 1203 | 0.518 | 473.951 |  1.314 | 0.252 | 0.001 |        |
| 6   | grupo:Zona     |   1 |  839 | 3.800 | 315.894 | 10.092 | 0.002 | 0.012 | \*     |
| 9   | grupo:Cor.Raca |   3 |  479 | 1.454 | 162.015 |  1.433 | 0.232 | 0.009 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.math | Controle     | 495 | -0.048 | 0.027 |
| gain.flow.math | Experimental | 712 | -0.056 | 0.024 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math | Controle | Experimental |    0.008 |   -0.065 |      0.08 | 0.037 |     0.206 | 0.837 | 0.837 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    | 246 | -0.095 | 0.037 |
| gain.flow.math | Controle     | M    | 249 | -0.001 | 0.039 |
| gain.flow.math | Experimental | F    | 370 | -0.060 | 0.033 |
| gain.flow.math | Experimental | M    | 342 | -0.050 | 0.035 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | F    | Controle | Experimental |   -0.035 |   -0.136 |     0.066 | 0.052 |    -0.679 | 0.498 | 0.498 | ns           |
| gain.flow.math |              | M    | Controle | Experimental |    0.049 |   -0.053 |     0.152 | 0.052 |     0.941 | 0.347 | 0.347 | ns           |
| gain.flow.math | Controle     |      | F        | M            |   -0.094 |   -0.205 |     0.016 | 0.056 |    -1.675 | 0.094 | 0.094 | ns           |
| gain.flow.math | Experimental |      | F        | M            |   -0.010 |   -0.103 |     0.082 | 0.047 |    -0.218 | 0.828 | 0.828 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.math | Controle     | Rural  | 231 | -0.096 | 0.037 |
| gain.flow.math | Controle     | Urbana | 137 | -0.026 | 0.056 |
| gain.flow.math | Experimental | Rural  | 283 |  0.044 | 0.034 |
| gain.flow.math | Experimental | Urbana | 192 | -0.165 | 0.049 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.flow.math |              | Rural  | Controle | Experimental |   -0.140 |   -0.246 |    -0.033 | 0.054 |    -2.566 | 0.01    | 0.01    | \*           |
| gain.flow.math |              | Urbana | Controle | Experimental |    0.139 |    0.004 |     0.273 | 0.069 |     2.020 | 0.044   | 0.044   | \*           |
| gain.flow.math | Controle     |        | Rural    | Urbana       |   -0.069 |   -0.199 |     0.061 | 0.066 |    -1.046 | 0.296   | 0.296   | ns           |
| gain.flow.math | Experimental |        | Rural    | Urbana       |    0.209 |    0.096 |     0.322 | 0.057 |     3.643 | \<0.001 | \<0.001 | \*\*\*       |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.math | Controle     | Branca   |  49 |  0.038 | 0.083 |
| gain.flow.math | Controle     | Indígena |  10 |  0.033 | 0.171 |
| gain.flow.math | Controle     | Parda    | 166 | -0.034 | 0.048 |
| gain.flow.math | Experimental | Branca   |  62 | -0.092 | 0.078 |
| gain.flow.math | Experimental | Indígena |  16 | -0.296 | 0.116 |
| gain.flow.math | Experimental | Parda    | 181 | -0.015 | 0.041 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | Branca   | Controle | Experimental |    0.130 |   -0.089 |     0.349 | 0.111 |     1.169 | 0.243 | 0.243 | ns           |
| gain.flow.math |              | Indígena | Controle | Experimental |    0.329 |   -0.132 |     0.790 | 0.235 |     1.404 | 0.161 | 0.161 | ns           |
| gain.flow.math |              | Parda    | Controle | Experimental |   -0.019 |   -0.142 |     0.104 | 0.063 |    -0.301 | 0.763 | 0.763 | ns           |
| gain.flow.math | Controle     |          | Branca   | Indígena     |    0.004 |   -0.392 |     0.401 | 0.202 |     0.022 | 0.983 | 1.000 | ns           |
| gain.flow.math | Controle     |          | Branca   | Parda        |    0.071 |   -0.115 |     0.257 | 0.095 |     0.753 | 0.452 | 1.000 | ns           |
| gain.flow.math | Controle     |          | Indígena | Parda        |    0.067 |   -0.305 |     0.439 | 0.189 |     0.353 | 0.724 | 1.000 | ns           |
| gain.flow.math | Experimental |          | Branca   | Indígena     |    0.204 |   -0.117 |     0.524 | 0.163 |     1.248 | 0.212 | 0.637 | ns           |
| gain.flow.math | Experimental |          | Branca   | Parda        |   -0.078 |   -0.246 |     0.091 | 0.086 |    -0.906 | 0.365 | 1.000 | ns           |
| gain.flow.math | Experimental |          | Indígena | Parda        |   -0.281 |   -0.580 |     0.017 | 0.152 |    -1.854 | 0.064 | 0.193 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
