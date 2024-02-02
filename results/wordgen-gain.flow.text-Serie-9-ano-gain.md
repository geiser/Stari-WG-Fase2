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
| Controle     | F    |        |          | gain.flow.text |  46 | -0.096 |  0.000 | -1.444 | 1.111 | 0.618 | 0.091 | 0.184 | 0.861 |
| Controle     | M    |        |          | gain.flow.text |  54 |  0.057 |  0.146 | -1.778 | 1.778 | 0.721 | 0.098 | 0.197 | 0.889 |
| Experimental | F    |        |          | gain.flow.text |  72 |  0.028 |  0.111 | -1.444 | 1.556 | 0.571 | 0.067 | 0.134 | 0.583 |
| Experimental | M    |        |          | gain.flow.text |  74 |  0.006 |  0.000 | -1.444 | 1.778 | 0.634 | 0.074 | 0.147 | 0.667 |
| Controle     |      | Rural  |          | gain.flow.text |  37 | -0.079 |  0.000 | -1.361 | 1.111 | 0.701 | 0.115 | 0.234 | 1.000 |
| Controle     |      | Urbana |          | gain.flow.text |  15 |  0.163 |  0.000 | -1.444 | 1.778 | 0.739 | 0.191 | 0.409 | 0.611 |
| Controle     |      |        |          | gain.flow.text |  48 | -0.019 |  0.111 | -1.778 | 1.444 | 0.641 | 0.093 | 0.186 | 0.778 |
| Experimental |      | Rural  |          | gain.flow.text |  50 | -0.011 |  0.000 | -1.333 | 1.111 | 0.536 | 0.076 | 0.152 | 0.639 |
| Experimental |      | Urbana |          | gain.flow.text |  31 | -0.057 | -0.111 | -1.000 | 1.778 | 0.640 | 0.115 | 0.235 | 0.722 |
| Experimental |      |        |          | gain.flow.text |  65 |  0.074 |  0.153 | -1.444 | 1.556 | 0.633 | 0.079 | 0.157 | 0.667 |
| Controle     |      |        | Branca   | gain.flow.text |   7 | -0.349 | -0.111 | -1.111 | 0.222 | 0.490 | 0.185 | 0.454 | 0.611 |
| Controle     |      |        | Indígena | gain.flow.text |   2 |  0.778 |  0.778 |  0.556 | 1.000 | 0.314 | 0.222 | 2.824 | 0.222 |
| Controle     |      |        | Parda    | gain.flow.text |  41 |  0.050 |  0.111 | -1.444 | 1.778 | 0.674 | 0.105 | 0.213 | 0.694 |
| Controle     |      |        |          | gain.flow.text |  50 | -0.050 |  0.111 | -1.778 | 1.111 | 0.689 | 0.097 | 0.196 | 0.944 |
| Experimental |      |        | Branca   | gain.flow.text |  13 | -0.001 |  0.319 | -1.111 | 1.111 | 0.639 | 0.177 | 0.386 | 0.889 |
| Experimental |      |        | Indígena | gain.flow.text |   3 |  0.148 |  0.333 | -0.444 | 0.556 | 0.525 | 0.303 | 1.304 | 0.500 |
| Experimental |      |        | Parda    | gain.flow.text |  44 |  0.057 | -0.007 | -0.778 | 1.778 | 0.560 | 0.084 | 0.170 | 0.583 |
| Experimental |      |        |          | gain.flow.text |  86 | -0.006 |  0.056 | -1.444 | 1.778 | 0.627 | 0.068 | 0.134 | 0.649 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |  kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.flow.text | 246 | -0.1282880 | 0.2830240 | YES      |  1.978962 | D’Agostino | 0.3717695 | ns       | \-        |
| gain.flow.text | 133 |  0.1597373 | 0.3694647 | YES      |  2.028062 | D’Agostino | 0.3627537 | ns       | QQ        |
| gain.flow.text | 110 |  0.3866870 | 0.7360108 | YES      |  5.905866 | D’Agostino | 0.0521864 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     | 246 |   3 | 242 | 0.6762101 | 0.5673706 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     | 133 |   3 | 129 | 1.0878678 | 0.3567313 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` | 110 |   5 | 104 | 0.4064411 | 0.8433838 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 | 244 | 0.055 | 97.760 | 0.137 | 0.711 | 0.001 |        |
| Sexo     |   1 | 244 | 0.140 | 97.676 | 0.349 | 0.555 | 0.001 |        |
| Zona     |   1 | 131 | 0.089 | 52.300 | 0.222 | 0.638 | 0.002 |        |
| Cor.Raca |   2 | 107 | 1.194 | 39.683 | 1.609 | 0.205 | 0.029 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 242 | 0.450 | 97.164 | 1.122 | 0.291 | 0.005 |        |
| 6   | grupo:Zona     |   1 | 129 | 0.570 | 51.711 | 1.421 | 0.235 | 0.011 |        |
| 9   | grupo:Cor.Raca |   2 | 104 | 0.992 | 38.655 | 1.335 | 0.268 | 0.025 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     | 100 | -0.014 | 0.068 |
| gain.flow.text | Experimental | 146 |  0.017 | 0.050 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text | Controle | Experimental |    -0.03 |   -0.192 |     0.131 | 0.082 |    -0.371 | 0.711 | 0.711 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.text | Controle     | F    |  46 | -0.096 | 0.091 |
| gain.flow.text | Controle     | M    |  54 |  0.057 | 0.098 |
| gain.flow.text | Experimental | F    |  72 |  0.028 | 0.067 |
| gain.flow.text | Experimental | M    |  74 |  0.006 | 0.074 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | F    | Controle | Experimental |   -0.124 |   -0.360 |     0.112 | 0.120 |    -1.037 | 0.301 | 0.301 | ns           |
| gain.flow.text |              | M    | Controle | Experimental |    0.051 |   -0.173 |     0.274 | 0.113 |     0.446 | 0.656 | 0.656 | ns           |
| gain.flow.text | Controle     |      | F        | M            |   -0.153 |   -0.403 |     0.098 | 0.127 |    -1.200 | 0.231 | 0.231 | ns           |
| gain.flow.text | Experimental |      | F        | M            |    0.022 |   -0.185 |     0.229 | 0.105 |     0.209 | 0.834 | 0.834 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.flow.text | Controle     | Rural  |  37 | -0.079 | 0.115 |
| gain.flow.text | Controle     | Urbana |  15 |  0.163 | 0.191 |
| gain.flow.text | Experimental | Rural  |  50 | -0.011 | 0.076 |
| gain.flow.text | Experimental | Urbana |  31 | -0.057 | 0.115 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Rural  | Controle | Experimental |   -0.068 |   -0.340 |     0.204 | 0.137 |    -0.495 | 0.621 | 0.621 | ns           |
| gain.flow.text |              | Urbana | Controle | Experimental |    0.220 |   -0.174 |     0.614 | 0.199 |     1.106 | 0.271 | 0.271 | ns           |
| gain.flow.text | Controle     |        | Rural    | Urbana       |   -0.242 |   -0.625 |     0.142 | 0.194 |    -1.248 | 0.214 | 0.214 | ns           |
| gain.flow.text | Experimental |        | Rural    | Urbana       |    0.047 |   -0.240 |     0.333 | 0.145 |     0.321 | 0.748 | 0.748 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.flow.text | Controle     | Branca   |   7 | -0.349 | 0.185 |
| gain.flow.text | Controle     | Parda    |  41 |  0.050 | 0.105 |
| gain.flow.text | Experimental | Branca   |  13 | -0.001 | 0.177 |
| gain.flow.text | Experimental | Parda    |  44 |  0.057 | 0.084 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.text |              | Branca   | Controle | Experimental |   -0.348 |   -0.919 |     0.222 | 0.288 |    -1.211 | 0.229 | 0.229 | ns           |
| gain.flow.text |              | Parda    | Controle | Experimental |   -0.007 |   -0.271 |     0.257 | 0.133 |    -0.055 | 0.956 | 0.956 | ns           |
| gain.flow.text | Controle     |          | Branca   | Parda        |   -0.399 |   -0.897 |     0.099 | 0.251 |    -1.591 | 0.115 | 0.115 | ns           |
| gain.flow.text | Experimental |          | Branca   | Parda        |   -0.058 |   -0.442 |     0.326 | 0.194 |    -0.301 | 0.764 | 0.764 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.flow.text-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
