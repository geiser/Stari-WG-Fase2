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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.text |  41 |  0.025 |  0.000 | -1.000 | 1.778 | 0.614 | 0.096 | 0.194 | 0.778 |
| Controle     | M    |        |          | gain.flow.text |  35 | -0.055 | -0.111 | -2.000 | 1.681 | 0.754 | 0.127 | 0.259 | 0.944 |
| Experimental | F    |        |          | gain.flow.text |  90 | -0.042 | -0.111 | -1.583 | 1.578 | 0.633 | 0.067 | 0.133 | 0.778 |
| Experimental | M    |        |          | gain.flow.text |  67 | -0.018 |  0.000 | -1.778 | 2.000 | 0.641 | 0.078 | 0.156 | 0.889 |
| Controle     |      | Rural  |          | gain.flow.text |  29 |  0.007 |  0.000 | -1.333 | 1.681 | 0.769 | 0.143 | 0.293 | 1.000 |
| Controle     |      | Urbana |          | gain.flow.text |  13 |  0.084 |  0.222 | -0.778 | 0.667 | 0.460 | 0.127 | 0.278 | 0.778 |
| Controle     |      |        |          | gain.flow.text |  34 | -0.065 | -0.167 | -2.000 | 1.778 | 0.679 | 0.116 | 0.237 | 0.861 |
| Experimental |      | Rural  |          | gain.flow.text |  47 | -0.015 |  0.111 | -1.333 | 0.778 | 0.473 | 0.069 | 0.139 | 0.778 |
| Experimental |      | Urbana |          | gain.flow.text |  26 | -0.190 | -0.181 | -1.583 | 1.111 | 0.630 | 0.123 | 0.254 | 0.885 |
| Experimental |      |        |          | gain.flow.text |  84 |  0.007 | -0.028 | -1.778 | 2.000 | 0.710 | 0.077 | 0.154 | 0.889 |
| Controle     |      |        | Branca   | gain.flow.text |   2 |  0.222 |  0.222 |  0.000 | 0.444 | 0.314 | 0.222 | 2.824 | 0.222 |
| Controle     |      |        | Parda    | gain.flow.text |  30 |  0.149 |  0.111 | -1.333 | 1.778 | 0.811 | 0.148 | 0.303 | 1.139 |
| Controle     |      |        |          | gain.flow.text |  44 | -0.132 | -0.167 | -2.000 | 0.889 | 0.567 | 0.086 | 0.172 | 0.778 |
| Experimental |      |        | Branca   | gain.flow.text |  16 | -0.128 |  0.111 | -1.500 | 0.778 | 0.655 | 0.164 | 0.349 | 0.778 |
| Experimental |      |        | Parda    | gain.flow.text |  43 |  0.002 | -0.111 | -1.111 | 1.578 | 0.541 | 0.083 | 0.167 | 0.611 |
| Experimental |      |        |          | gain.flow.text |  98 | -0.031 | -0.083 | -1.778 | 2.000 | 0.673 | 0.068 | 0.135 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.text | 233 |  0.0220616 |  0.4760305 | YES      | 2.4697250 | D’Agostino | 0.2908748 | ns       | \-        |
| gain.flow.text | 115 | -0.0685683 | -0.0662411 | YES      | 0.1755519 | D’Agostino | 0.9159661 | ns       | QQ        |
| gain.flow.text |  91 |  0.0714954 | -0.0504939 | YES      | 0.2255446 | D’Agostino | 0.8933540 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     | 233 |   3 | 229 | 0.4704066 | 0.7032031 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     | 115 |   3 | 111 | 2.8118728 | 0.0426891 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` |  91 |   3 |  87 | 2.3880069 | 0.0743788 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 | 231 | 0.021 | 97.367 | 0.049 | 0.824 | 0.000 |        |
| Sexo     |   1 | 231 | 0.005 | 97.382 | 0.012 | 0.913 | 0.000 |        |
| Zona     |   1 | 113 | 0.215 | 39.959 | 0.608 | 0.437 | 0.005 |        |
| Cor.Raca |   1 |  89 | 0.332 | 38.541 | 0.767 | 0.384 | 0.009 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 229 | 0.136 | 97.225 | 0.320 | 0.572 | 0.001 |        |
| 6   | grupo:Zona     |   1 | 111 | 0.371 | 39.300 | 1.048 | 0.308 | 0.009 |        |
| 9   | grupo:Cor.Raca |   1 |  87 | 0.067 | 37.941 | 0.154 | 0.696 | 0.002 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     |  76 | -0.012 | 0.078 |
| gain.flow.text | Experimental | 157 | -0.032 | 0.051 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text | Controle | Experimental |     0.02 |   -0.159 |     0.199 | 0.091 |     0.222 | 0.824 | 0.824 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.text | Controle     | F    |  41 |  0.025 | 0.096 |
| gain.flow.text | Controle     | M    |  35 | -0.055 | 0.127 |
| gain.flow.text | Experimental | F    |  90 | -0.042 | 0.067 |
| gain.flow.text | Experimental | M    |  67 | -0.018 | 0.078 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | F    | Controle | Experimental |    0.067 |   -0.175 |     0.309 | 0.123 |     0.546 | 0.585 | 0.585 | ns           |
| gain.flow.text |              | M    | Controle | Experimental |   -0.037 |   -0.304 |     0.231 | 0.136 |    -0.269 | 0.788 | 0.788 | ns           |
| gain.flow.text | Controle     |      | F        | M            |    0.079 |   -0.216 |     0.375 | 0.150 |     0.530 | 0.597 | 0.597 | ns           |
| gain.flow.text | Experimental |      | F        | M            |   -0.024 |   -0.231 |     0.183 | 0.105 |    -0.230 | 0.819 | 0.819 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.text | Controle     | Rural  |  29 |  0.007 | 0.143 |
| gain.flow.text | Controle     | Urbana |  13 |  0.084 | 0.127 |
| gain.flow.text | Experimental | Rural  |  47 | -0.015 | 0.069 |
| gain.flow.text | Experimental | Urbana |  26 | -0.190 | 0.123 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Rural  | Controle | Experimental |    0.022 |   -0.256 |     0.300 | 0.141 |     0.157 | 0.875 | 0.875 | ns           |
| gain.flow.text |              | Urbana | Controle | Experimental |    0.274 |   -0.126 |     0.675 | 0.202 |     1.356 | 0.178 | 0.178 | ns           |
| gain.flow.text | Controle     |        | Rural    | Urbana       |   -0.078 |   -0.471 |     0.316 | 0.199 |    -0.391 | 0.696 | 0.696 | ns           |
| gain.flow.text | Experimental |        | Rural    | Urbana       |    0.174 |   -0.114 |     0.462 | 0.145 |     1.198 | 0.233 | 0.233 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.text | Controle     | Parda    |  30 |  0.149 | 0.148 |
| gain.flow.text | Experimental | Branca   |  16 | -0.128 | 0.164 |
| gain.flow.text | Experimental | Parda    |  43 |  0.002 | 0.083 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.text |              | Parda    | Controle | Experimental |    0.147 |   -0.167 |     0.460 | 0.158 |     0.930 | 0.355 | 0.355 | ns           |
| 4   | gain.flow.text | Experimental |          | Branca   | Parda        |   -0.130 |   -0.516 |     0.256 | 0.194 |    -0.671 | 0.504 | 0.504 | ns           |
