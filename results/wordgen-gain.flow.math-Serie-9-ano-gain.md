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
| Controle     | F    |        |          | gain.flow.math |  53 | -0.051 |  0.000 | -1.556 |  1.222 | 0.657 | 0.090 | 0.181 | 1.000 |
| Controle     | M    |        |          | gain.flow.math |  65 |  0.138 |  0.111 | -1.889 |  2.111 | 0.671 | 0.083 | 0.166 | 0.889 |
| Experimental | F    |        |          | gain.flow.math |  83 |  0.062 |  0.111 | -1.444 |  1.778 | 0.624 | 0.069 | 0.136 | 0.722 |
| Experimental | M    |        |          | gain.flow.math |  81 | -0.029 |  0.111 | -1.889 |  1.333 | 0.652 | 0.072 | 0.144 | 0.889 |
| Controle     |      | Rural  |          | gain.flow.math |  39 | -0.044 |  0.000 | -1.222 |  0.889 | 0.601 | 0.096 | 0.195 | 0.944 |
| Controle     |      | Urbana |          | gain.flow.math |  25 |  0.111 | -0.111 | -0.889 |  2.000 | 0.738 | 0.148 | 0.305 | 1.000 |
| Controle     |      |        |          | gain.flow.math |  54 |  0.096 |  0.111 | -1.889 |  2.111 | 0.686 | 0.093 | 0.187 | 0.639 |
| Experimental |      | Rural  |          | gain.flow.math |  53 |  0.117 |  0.222 | -1.111 |  1.111 | 0.545 | 0.075 | 0.150 | 0.556 |
| Experimental |      | Urbana |          | gain.flow.math |  40 | -0.138 | -0.118 | -1.667 |  1.333 | 0.666 | 0.105 | 0.213 | 0.917 |
| Experimental |      |        |          | gain.flow.math |  71 |  0.030 |  0.111 | -1.889 |  1.778 | 0.677 | 0.080 | 0.160 | 0.903 |
| Controle     |      |        | Branca   | gain.flow.math |   7 | -0.016 |  0.111 | -0.889 |  0.667 | 0.586 | 0.221 | 0.542 | 0.889 |
| Controle     |      |        | Indígena | gain.flow.math |   3 |  0.111 |  0.000 | -0.222 |  0.556 | 0.401 | 0.231 | 0.995 | 0.389 |
| Controle     |      |        | Parda    | gain.flow.math |  45 |  0.114 |  0.111 | -1.333 |  2.111 | 0.731 | 0.109 | 0.219 | 0.778 |
| Controle     |      |        |          | gain.flow.math |  63 |  0.015 |  0.111 | -1.889 |  1.222 | 0.649 | 0.082 | 0.163 | 1.000 |
| Experimental |      |        | Branca   | gain.flow.math |  13 |  0.256 |  0.222 | -0.444 |  1.111 | 0.443 | 0.123 | 0.268 | 0.333 |
| Experimental |      |        | Indígena | gain.flow.math |   3 | -0.370 | -0.444 | -0.556 | -0.111 | 0.231 | 0.134 | 0.575 | 0.222 |
| Experimental |      |        | Parda    | gain.flow.math |  44 | -0.024 |  0.056 | -1.111 |  1.111 | 0.606 | 0.091 | 0.184 | 0.944 |
| Experimental |      |        |          | gain.flow.math | 104 |  0.016 |  0.111 | -1.889 |  1.778 | 0.674 | 0.066 | 0.131 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.math | 282 | -0.0847433 |  0.2342155 | YES      | 1.4024058 | D’Agostino | 0.4959883 | ns       | \-        |
| gain.flow.math | 157 |  0.1214396 | -0.2646466 | YES      | 0.6046034 | D’Agostino | 0.7391150 | ns       | QQ        |
| gain.flow.math | 115 |  0.2571209 |  0.3904520 | YES      | 2.8437782 | D’Agostino | 0.2412578 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     | 282 |   3 | 278 | 0.2081637 | 0.8907067 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     | 157 |   3 | 153 | 1.1631762 | 0.3257828 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` | 115 |   5 | 109 | 1.2543082 | 0.2890187 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 280 | 0.087 | 118.535 | 0.207 | 0.650 | 0.001 |        |
| Sexo     |   1 | 280 | 0.053 | 118.570 | 0.124 | 0.725 | 0.000 |        |
| Zona     |   1 | 155 | 0.313 |  61.035 | 0.795 | 0.374 | 0.005 |        |
| Cor.Raca |   2 | 112 | 0.437 |  45.220 | 0.542 | 0.583 | 0.010 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 278 | 1.336 | 117.153 | 3.171 | 0.076 | 0.011 |        |
| 6   | grupo:Zona     |   1 | 153 | 1.530 |  59.504 | 3.934 | 0.049 | 0.025 | \*     |
| 9   | grupo:Cor.Raca |   2 | 109 | 0.878 |  44.113 | 1.084 | 0.342 | 0.020 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |     M |    SE |
|:---------------|:-------------|----:|------:|------:|
| gain.flow.math | Controle     | 118 | 0.053 | 0.062 |
| gain.flow.math | Experimental | 164 | 0.017 | 0.050 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |    p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|-----:|------:|:-------------|
| gain.flow.math | Controle | Experimental |    0.036 |   -0.119 |      0.19 | 0.079 |     0.455 | 0.65 |  0.65 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    |  53 | -0.051 | 0.090 |
| gain.flow.math | Controle     | M    |  65 |  0.138 | 0.083 |
| gain.flow.math | Experimental | F    |  83 |  0.062 | 0.069 |
| gain.flow.math | Experimental | M    |  81 | -0.029 | 0.072 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | F    | Controle | Experimental |   -0.113 |   -0.338 |     0.111 | 0.114 |    -0.993 | 0.322 | 0.322 | ns           |
| gain.flow.math |              | M    | Controle | Experimental |    0.167 |   -0.046 |     0.379 | 0.108 |     1.541 | 0.124 | 0.124 | ns           |
| gain.flow.math | Controle     |      | F        | M            |   -0.189 |   -0.425 |     0.048 | 0.120 |    -1.572 | 0.117 | 0.117 | ns           |
| gain.flow.math | Experimental |      | F        | M            |    0.091 |   -0.109 |     0.291 | 0.101 |     0.898 | 0.370 | 0.370 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.math | Controle     | Rural  |  39 | -0.044 | 0.096 |
| gain.flow.math | Controle     | Urbana |  25 |  0.111 | 0.148 |
| gain.flow.math | Experimental | Rural  |  53 |  0.117 | 0.075 |
| gain.flow.math | Experimental | Urbana |  40 | -0.138 | 0.105 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | Rural  | Controle | Experimental |   -0.161 |   -0.421 |     0.099 | 0.132 |    -1.221 | 0.224 | 0.224 | ns           |
| gain.flow.math |              | Urbana | Controle | Experimental |    0.249 |   -0.065 |     0.563 | 0.159 |     1.564 | 0.120 | 0.120 | ns           |
| gain.flow.math | Controle     |        | Rural    | Urbana       |   -0.155 |   -0.471 |     0.161 | 0.160 |    -0.970 | 0.334 | 0.334 | ns           |
| gain.flow.math | Experimental |        | Rural    | Urbana       |    0.254 |   -0.004 |     0.512 | 0.131 |     1.948 | 0.053 | 0.053 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.math | Controle     | Branca   |   7 | -0.016 | 0.221 |
| gain.flow.math | Controle     | Parda    |  45 |  0.114 | 0.109 |
| gain.flow.math | Experimental | Branca   |  13 |  0.256 | 0.123 |
| gain.flow.math | Experimental | Parda    |  44 | -0.024 | 0.091 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math |              | Branca   | Controle | Experimental |   -0.272 |   -0.872 |     0.327 | 0.302 |    -0.900 | 0.370 | 0.370 | ns           |
| gain.flow.math |              | Parda    | Controle | Experimental |    0.138 |   -0.134 |     0.409 | 0.137 |     1.006 | 0.317 | 0.317 | ns           |
| gain.flow.math | Controle     |          | Branca   | Parda        |   -0.129 |   -0.649 |     0.390 | 0.262 |    -0.494 | 0.622 | 0.622 | ns           |
| gain.flow.math | Experimental |          | Branca   | Parda        |    0.280 |   -0.123 |     0.684 | 0.204 |     1.377 | 0.171 | 0.171 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
