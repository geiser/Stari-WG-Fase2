ANOVA in Gains for gain flow (ativ. leitura) (gain flow (ativ. leitura))
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
  flow (ativ. leitura) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (ativ. leitura) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.read |  74 | -0.142 | -0.111 | -1.222 | 1.111 | 0.559 | 0.065 | 0.129 | 0.840 |
| Controle     | M    |        |          | gain.flow.read |  62 | -0.019 |  0.000 | -1.111 | 1.111 | 0.546 | 0.069 | 0.139 | 0.778 |
| Experimental | F    |        |          | gain.flow.read |  97 | -0.068 | -0.097 | -1.556 | 1.556 | 0.541 | 0.055 | 0.109 | 0.556 |
| Experimental | M    |        |          | gain.flow.read | 110 |  0.017 |  0.000 | -1.667 | 1.833 | 0.610 | 0.058 | 0.115 | 0.750 |
| Controle     |      | Rural  |          | gain.flow.read |  55 | -0.073 | -0.111 | -1.111 | 1.000 | 0.545 | 0.073 | 0.147 | 0.889 |
| Controle     |      | Urbana |          | gain.flow.read |  61 | -0.106 | -0.111 | -1.222 | 1.000 | 0.539 | 0.069 | 0.138 | 0.722 |
| Controle     |      |        |          | gain.flow.read |  20 | -0.058 | -0.111 | -0.889 | 1.111 | 0.647 | 0.145 | 0.303 | 0.892 |
| Experimental |      | Rural  |          | gain.flow.read |  92 | -0.017 |  0.000 | -1.556 | 1.222 | 0.560 | 0.058 | 0.116 | 0.694 |
| Experimental |      | Urbana |          | gain.flow.read |  83 | -0.068 | -0.111 | -1.667 | 1.556 | 0.575 | 0.063 | 0.125 | 0.556 |
| Experimental |      |        |          | gain.flow.read |  32 |  0.078 |  0.111 | -1.222 | 1.833 | 0.646 | 0.114 | 0.233 | 0.722 |
| Controle     |      |        | Branca   | gain.flow.read |  18 |  0.160 |  0.222 | -0.778 | 1.111 | 0.532 | 0.125 | 0.264 | 0.667 |
| Controle     |      |        | Indígena | gain.flow.read |   4 |  0.194 |  0.000 | -0.222 | 1.000 | 0.555 | 0.277 | 0.883 | 0.472 |
| Controle     |      |        | Parda    | gain.flow.read |  42 | -0.218 | -0.222 | -1.222 | 0.889 | 0.556 | 0.086 | 0.173 | 0.889 |
| Controle     |      |        |          | gain.flow.read |  72 | -0.086 | -0.111 | -1.222 | 1.111 | 0.543 | 0.064 | 0.128 | 0.792 |
| Experimental |      |        | Branca   | gain.flow.read |  15 | -0.241 | -0.175 | -1.444 | 0.556 | 0.609 | 0.157 | 0.337 | 0.833 |
| Experimental |      |        | Parda    | gain.flow.read |  49 | -0.024 |  0.000 | -1.556 | 1.000 | 0.512 | 0.073 | 0.147 | 0.667 |
| Experimental |      |        |          | gain.flow.read | 143 |  0.000 |  0.000 | -1.667 | 1.833 | 0.597 | 0.050 | 0.099 | 0.667 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.read | 343 | -0.0315497 |  0.1366234 | YES      | 0.6234605 | D’Agostino | 0.7321790 | ns       | \-        |
| gain.flow.read | 291 | -0.1279367 |  0.0496551 | YES      | 1.0373585 | D’Agostino | 0.5953063 | ns       | \-        |
| gain.flow.read | 128 | -0.1297989 | -0.3725289 | YES      | 0.8434478 | D’Agostino | 0.6559151 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.read | Levene’s test | `gain.flow.read`~`grupo`\*`Sexo`     | 343 |   3 | 339 | 0.6264612 | 0.5983340 | ns       |
| gain.flow.read | Levene’s test | `gain.flow.read`~`grupo`\*`Zona`     | 291 |   3 | 287 | 0.1080923 | 0.9553263 | ns       |
| gain.flow.read | Levene’s test | `gain.flow.read`~`grupo`\*`Cor.Raca` | 128 |   4 | 123 | 0.2107996 | 0.9320214 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 341 | 0.323 | 110.567 | 0.995 | 0.319 | 0.003 |        |
| Sexo     |   1 | 341 | 0.929 | 109.960 | 2.881 | 0.091 | 0.008 |        |
| Zona     |   1 | 289 | 0.154 |  89.279 | 0.500 | 0.480 | 0.002 |        |
| Cor.Raca |   2 | 125 | 0.515 |  38.352 | 0.838 | 0.435 | 0.013 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 339 | 0.030 | 109.682 | 0.092 | 0.762 | 0.000 |        |
| 6   | grupo:Zona     |   1 | 287 | 0.005 |  89.121 | 0.017 | 0.896 | 0.000 |        |
| 9   | grupo:Cor.Raca |   1 | 123 | 2.127 |  36.186 | 7.230 | 0.008 | 0.056 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.read | Controle     | 136 | -0.086 | 0.048 |
| gain.flow.read | Experimental | 207 | -0.023 | 0.040 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.read | Controle | Experimental |   -0.063 |   -0.186 |     0.061 | 0.063 |    -0.998 | 0.319 | 0.319 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.read | Controle     | F    |  74 | -0.142 | 0.065 |
| gain.flow.read | Controle     | M    |  62 | -0.019 | 0.069 |
| gain.flow.read | Experimental | F    |  97 | -0.068 | 0.055 |
| gain.flow.read | Experimental | M    | 110 |  0.017 | 0.058 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.read |              | F    | Controle | Experimental |   -0.074 |   -0.246 |     0.099 | 0.088 |    -0.840 | 0.402 | 0.402 | ns           |
| gain.flow.read |              | M    | Controle | Experimental |   -0.035 |   -0.213 |     0.142 | 0.090 |    -0.393 | 0.695 | 0.695 | ns           |
| gain.flow.read | Controle     |      | F        | M            |   -0.123 |   -0.316 |     0.069 | 0.098 |    -1.258 | 0.209 | 0.209 | ns           |
| gain.flow.read | Experimental |      | F        | M            |   -0.085 |   -0.241 |     0.071 | 0.079 |    -1.072 | 0.284 | 0.284 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.read | Controle     | Rural  |  55 | -0.073 | 0.073 |
| gain.flow.read | Controle     | Urbana |  61 | -0.106 | 0.069 |
| gain.flow.read | Experimental | Rural  |  92 | -0.017 | 0.058 |
| gain.flow.read | Experimental | Urbana |  83 | -0.068 | 0.063 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.read |              | Rural  | Controle | Experimental |   -0.056 |   -0.243 |     0.131 | 0.095 |    -0.586 | 0.558 | 0.558 | ns           |
| gain.flow.read |              | Urbana | Controle | Experimental |   -0.038 |   -0.223 |     0.147 | 0.094 |    -0.406 | 0.685 | 0.685 | ns           |
| gain.flow.read | Controle     |        | Rural    | Urbana       |    0.033 |   -0.171 |     0.237 | 0.104 |     0.321 | 0.749 | 0.749 | ns           |
| gain.flow.read | Experimental |        | Rural    | Urbana       |    0.051 |   -0.115 |     0.217 | 0.084 |     0.601 | 0.548 | 0.548 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.read | Controle     | Branca   |  18 |  0.160 | 0.125 |
| gain.flow.read | Controle     | Parda    |  42 | -0.218 | 0.086 |
| gain.flow.read | Experimental | Branca   |  15 | -0.241 | 0.157 |
| gain.flow.read | Experimental | Parda    |  49 | -0.024 | 0.073 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.read |              | Branca   | Controle | Experimental |    0.401 |    0.026 |     0.777 | 0.190 |     2.118 | 0.036 | 0.036 | \*           |
| gain.flow.read |              | Parda    | Controle | Experimental |   -0.194 |   -0.419 |     0.032 | 0.114 |    -1.698 | 0.092 | 0.092 | ns           |
| gain.flow.read | Controle     |          | Branca   | Parda        |    0.378 |    0.076 |     0.680 | 0.153 |     2.476 | 0.015 | 0.015 | \*           |
| gain.flow.read | Experimental |          | Branca   | Parda        |   -0.217 |   -0.534 |     0.100 | 0.160 |    -1.356 | 0.178 | 0.178 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.read-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
