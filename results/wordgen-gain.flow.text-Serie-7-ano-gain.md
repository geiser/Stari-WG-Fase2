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
| Controle     | F    |        |          | gain.flow.text |  70 | -0.062 | -0.007 | -1.889 | 1.444 | 0.598 | 0.071 | 0.143 | 0.726 |
| Controle     | M    |        |          | gain.flow.text |  60 |  0.037 |  0.111 | -2.000 | 0.889 | 0.589 | 0.076 | 0.152 | 0.694 |
| Experimental | F    |        |          | gain.flow.text |  82 | -0.032 |  0.000 | -2.111 | 1.556 | 0.674 | 0.074 | 0.148 | 0.667 |
| Experimental | M    |        |          | gain.flow.text |  93 |  0.069 |  0.000 | -1.333 | 1.333 | 0.634 | 0.066 | 0.130 | 0.889 |
| Controle     |      | Rural  |          | gain.flow.text |  53 | -0.074 | -0.111 | -1.222 | 1.444 | 0.520 | 0.071 | 0.143 | 0.444 |
| Controle     |      | Urbana |          | gain.flow.text |  58 |  0.069 |  0.111 | -1.889 | 1.444 | 0.593 | 0.078 | 0.156 | 0.642 |
| Controle     |      |        |          | gain.flow.text |  19 | -0.118 | -0.222 | -2.000 | 0.889 | 0.764 | 0.175 | 0.368 | 1.111 |
| Experimental |      | Rural  |          | gain.flow.text |  73 | -0.030 | -0.111 | -1.333 | 1.222 | 0.541 | 0.063 | 0.126 | 0.778 |
| Experimental |      | Urbana |          | gain.flow.text |  76 |  0.080 |  0.000 | -1.444 | 1.556 | 0.688 | 0.079 | 0.157 | 0.889 |
| Experimental |      |        |          | gain.flow.text |  26 | -0.004 |  0.167 | -2.111 | 1.333 | 0.828 | 0.162 | 0.335 | 0.972 |
| Controle     |      |        | Branca   | gain.flow.text |  17 | -0.203 | -0.222 | -1.000 | 0.889 | 0.496 | 0.120 | 0.255 | 0.667 |
| Controle     |      |        | Indígena | gain.flow.text |   4 | -0.333 | -0.111 | -1.444 | 0.333 | 0.775 | 0.388 | 1.233 | 0.611 |
| Controle     |      |        | Parda    | gain.flow.text |  39 |  0.043 |  0.111 | -1.000 | 1.444 | 0.507 | 0.081 | 0.164 | 0.667 |
| Controle     |      |        |          | gain.flow.text |  70 |  0.014 |  0.111 | -2.000 | 1.444 | 0.645 | 0.077 | 0.154 | 0.778 |
| Experimental |      |        | Branca   | gain.flow.text |  11 |  0.356 |  0.333 | -0.750 | 1.333 | 0.607 | 0.183 | 0.408 | 0.722 |
| Experimental |      |        | Parda    | gain.flow.text |  45 | -0.089 | -0.111 | -1.333 | 1.222 | 0.584 | 0.087 | 0.175 | 0.889 |
| Experimental |      |        |          | gain.flow.text | 119 |  0.033 |  0.000 | -2.111 | 1.556 | 0.675 | 0.062 | 0.123 | 0.778 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.text | 305 | -0.2009925 |  0.3952708 | YES      | 4.3537385 | D’Agostino | 0.1133960 | ns       | \-        |
| gain.flow.text | 260 | -0.0204481 |  0.2441909 | YES      | 1.0857590 | D’Agostino | 0.5810726 | ns       | \-        |
| gain.flow.text | 116 |  0.1168098 | -0.3114814 | YES      | 0.4611706 | D’Agostino | 0.7940687 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     | 305 |   3 | 301 | 0.7422322 | 0.5275931 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     | 260 |   3 | 256 | 1.7513323 | 0.1569874 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` | 116 |   4 | 111 | 0.4443404 | 0.7763083 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 | 303 | 0.109 | 119.654 | 0.276 | 0.600 | 0.001 |        |
| Sexo     |   1 | 303 | 0.791 | 118.972 | 2.014 | 0.157 | 0.007 |        |
| Zona     |   1 | 258 | 0.995 |  90.772 | 2.828 | 0.094 | 0.011 |        |
| Cor.Raca |   2 | 113 | 0.429 |  36.634 | 0.662 | 0.518 | 0.012 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 301 | 0.000 | 118.900 | 0.000 | 0.991 | 0.000 |        |
| 6   | grupo:Zona     |   1 | 256 | 0.018 |  90.708 | 0.049 | 0.824 | 0.000 |        |
| 9   | grupo:Cor.Raca |   1 | 111 | 2.418 |  34.182 | 7.852 | 0.006 | 0.066 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     | 130 | -0.016 | 0.052 |
| gain.flow.text | Experimental | 175 |  0.022 | 0.049 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |   p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|----:|------:|:-------------|
| gain.flow.text | Controle | Experimental |   -0.038 |   -0.181 |     0.105 | 0.073 |    -0.525 | 0.6 |   0.6 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.text | Controle     | F    |  70 | -0.062 | 0.071 |
| gain.flow.text | Controle     | M    |  60 |  0.037 | 0.076 |
| gain.flow.text | Experimental | F    |  82 | -0.032 | 0.074 |
| gain.flow.text | Experimental | M    |  93 |  0.069 | 0.066 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | F    | Controle | Experimental |   -0.030 |   -0.232 |     0.171 | 0.102 |    -0.298 | 0.766 | 0.766 | ns           |
| gain.flow.text |              | M    | Controle | Experimental |   -0.032 |   -0.237 |     0.173 | 0.104 |    -0.308 | 0.758 | 0.758 | ns           |
| gain.flow.text | Controle     |      | F        | M            |   -0.099 |   -0.316 |     0.119 | 0.111 |    -0.893 | 0.372 | 0.372 | ns           |
| gain.flow.text | Experimental |      | F        | M            |   -0.100 |   -0.288 |     0.087 | 0.095 |    -1.055 | 0.292 | 0.292 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.text | Controle     | Rural  |  53 | -0.074 | 0.071 |
| gain.flow.text | Controle     | Urbana |  58 |  0.069 | 0.078 |
| gain.flow.text | Experimental | Rural  |  73 | -0.030 | 0.063 |
| gain.flow.text | Experimental | Urbana |  76 |  0.080 | 0.079 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Rural  | Controle | Experimental |   -0.044 |   -0.256 |     0.168 | 0.107 |    -0.410 | 0.682 | 0.682 | ns           |
| gain.flow.text |              | Urbana | Controle | Experimental |   -0.011 |   -0.215 |     0.194 | 0.104 |    -0.104 | 0.917 | 0.917 | ns           |
| gain.flow.text | Controle     |        | Rural    | Urbana       |   -0.143 |   -0.366 |     0.080 | 0.113 |    -1.266 | 0.207 | 0.207 | ns           |
| gain.flow.text | Experimental |        | Rural    | Urbana       |   -0.110 |   -0.302 |     0.082 | 0.098 |    -1.127 | 0.261 | 0.261 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.text | Controle     | Branca   |  17 | -0.203 | 0.120 |
| gain.flow.text | Controle     | Parda    |  39 |  0.043 | 0.081 |
| gain.flow.text | Experimental | Branca   |  11 |  0.356 | 0.183 |
| gain.flow.text | Experimental | Parda    |  45 | -0.089 | 0.087 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Branca   | Controle | Experimental |   -0.559 |   -0.979 |    -0.139 | 0.212 |    -2.637 | 0.010 | 0.010 | \*\*         |
| gain.flow.text |              | Parda    | Controle | Experimental |    0.133 |   -0.105 |     0.370 | 0.120 |     1.106 | 0.271 | 0.271 | ns           |
| gain.flow.text | Controle     |          | Branca   | Parda        |   -0.246 |   -0.561 |     0.069 | 0.159 |    -1.546 | 0.125 | 0.125 | ns           |
| gain.flow.text | Experimental |          | Branca   | Parda        |    0.445 |    0.080 |     0.810 | 0.184 |     2.418 | 0.017 | 0.017 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
