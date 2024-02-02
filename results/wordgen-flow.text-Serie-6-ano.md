ANCOVA in flow (prod. textual) (flow (prod. textual))
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

- Teste ANCOVA para determinar se houve diferenças significativas no
  flow (prod. textual) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prod. textual) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.text |  69 | 3.619 |  3.556 | 1.889 | 4.778 | 0.625 | 0.075 | 0.150 | 0.778 |
| Controle     | M    |        |          | dfs.media.text |  80 | 3.383 |  3.444 | 1.444 | 5.000 | 0.620 | 0.069 | 0.138 | 0.688 |
| Experimental | F    |        |          | dfs.media.text |  91 | 3.466 |  3.444 | 2.222 | 5.000 | 0.540 | 0.057 | 0.112 | 0.722 |
| Experimental | M    |        |          | dfs.media.text |  80 | 3.332 |  3.354 | 2.222 | 4.778 | 0.606 | 0.068 | 0.135 | 0.778 |
| Controle     | F    |        |          | fss.media.text |  69 | 3.586 |  3.444 | 2.222 | 4.667 | 0.562 | 0.068 | 0.135 | 0.778 |
| Controle     | M    |        |          | fss.media.text |  80 | 3.336 |  3.222 | 1.000 | 5.000 | 0.633 | 0.071 | 0.141 | 0.889 |
| Experimental | F    |        |          | fss.media.text |  91 | 3.450 |  3.444 | 1.889 | 5.000 | 0.618 | 0.065 | 0.129 | 0.833 |
| Experimental | M    |        |          | fss.media.text |  80 | 3.446 |  3.410 | 2.375 | 4.556 | 0.515 | 0.058 | 0.115 | 0.694 |
| Controle     |      | Rural  |          | dfs.media.text |  98 | 3.592 |  3.528 | 2.222 | 4.778 | 0.595 | 0.060 | 0.119 | 1.000 |
| Controle     |      | Urbana |          | dfs.media.text |  30 | 3.344 |  3.333 | 1.444 | 5.000 | 0.727 | 0.133 | 0.271 | 0.556 |
| Controle     |      |        |          | dfs.media.text |  21 | 3.240 |  3.222 | 1.889 | 4.333 | 0.564 | 0.123 | 0.257 | 0.556 |
| Experimental |      | Rural  |          | dfs.media.text |  85 | 3.384 |  3.444 | 2.222 | 5.000 | 0.576 | 0.062 | 0.124 | 0.778 |
| Experimental |      | Urbana |          | dfs.media.text |  41 | 3.360 |  3.250 | 2.333 | 4.556 | 0.485 | 0.076 | 0.153 | 0.444 |
| Experimental |      |        |          | dfs.media.text |  45 | 3.479 |  3.556 | 2.222 | 4.778 | 0.647 | 0.096 | 0.194 | 1.000 |
| Controle     |      | Rural  |          | fss.media.text |  98 | 3.520 |  3.444 | 1.000 | 4.667 | 0.627 | 0.063 | 0.126 | 0.823 |
| Controle     |      | Urbana |          | fss.media.text |  30 | 3.385 |  3.278 | 2.222 | 5.000 | 0.599 | 0.109 | 0.224 | 0.750 |
| Controle     |      |        |          | fss.media.text |  21 | 3.226 |  3.222 | 2.444 | 4.556 | 0.513 | 0.112 | 0.234 | 0.444 |
| Experimental |      | Rural  |          | fss.media.text |  85 | 3.474 |  3.444 | 2.333 | 4.667 | 0.545 | 0.059 | 0.118 | 0.778 |
| Experimental |      | Urbana |          | fss.media.text |  41 | 3.320 |  3.333 | 2.375 | 4.556 | 0.568 | 0.089 | 0.179 | 0.778 |
| Experimental |      |        |          | fss.media.text |  45 | 3.517 |  3.444 | 1.889 | 5.000 | 0.612 | 0.091 | 0.184 | 0.889 |
| Controle     |      |        | Branca   | dfs.media.text |  20 | 3.506 |  3.444 | 2.750 | 4.444 | 0.533 | 0.119 | 0.250 | 0.917 |
| Controle     |      |        | Indígena | dfs.media.text |   3 | 3.704 |  4.222 | 2.667 | 4.222 | 0.898 | 0.519 | 2.231 | 0.778 |
| Controle     |      |        | Parda    | dfs.media.text |  42 | 3.669 |  3.625 | 2.222 | 5.000 | 0.624 | 0.096 | 0.194 | 0.889 |
| Controle     |      |        | Preta    | dfs.media.text |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.text |  83 | 3.394 |  3.444 | 1.444 | 4.778 | 0.642 | 0.070 | 0.140 | 0.778 |
| Experimental |      |        | Branca   | dfs.media.text |  17 | 3.399 |  3.444 | 2.222 | 4.111 | 0.563 | 0.136 | 0.289 | 0.667 |
| Experimental |      |        | Indígena | dfs.media.text |  12 | 3.337 |  3.465 | 2.667 | 4.222 | 0.488 | 0.141 | 0.310 | 0.806 |
| Experimental |      |        | Parda    | dfs.media.text |  44 | 3.217 |  3.222 | 2.222 | 4.444 | 0.520 | 0.078 | 0.158 | 0.694 |
| Experimental |      |        | Preta    | dfs.media.text |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.text |  97 | 3.498 |  3.556 | 2.222 | 5.000 | 0.597 | 0.061 | 0.120 | 0.778 |
| Controle     |      |        | Branca   | fss.media.text |  20 | 3.568 |  3.389 | 2.667 | 4.556 | 0.481 | 0.108 | 0.225 | 0.576 |
| Controle     |      |        | Indígena | fss.media.text |   3 | 3.852 |  4.222 | 2.889 | 4.444 | 0.841 | 0.486 | 2.090 | 0.778 |
| Controle     |      |        | Parda    | fss.media.text |  42 | 3.558 |  3.556 | 2.222 | 5.000 | 0.627 | 0.097 | 0.195 | 0.823 |
| Controle     |      |        | Preta    | fss.media.text |   1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.text |  83 | 3.360 |  3.333 | 1.000 | 4.667 | 0.619 | 0.068 | 0.135 | 0.833 |
| Experimental |      |        | Branca   | fss.media.text |  17 | 3.358 |  3.333 | 2.375 | 4.444 | 0.665 | 0.161 | 0.342 | 1.111 |
| Experimental |      |        | Indígena | fss.media.text |  12 | 3.471 |  3.444 | 2.778 | 4.667 | 0.576 | 0.166 | 0.366 | 0.809 |
| Experimental |      |        | Parda    | fss.media.text |  44 | 3.482 |  3.444 | 2.375 | 4.667 | 0.521 | 0.079 | 0.159 | 0.667 |
| Experimental |      |        | Preta    | fss.media.text |   1 | 4.333 |  4.333 | 4.333 | 4.333 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.text |  97 | 3.437 |  3.444 | 1.889 | 5.000 | 0.576 | 0.059 | 0.116 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |  kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.text | 320 | -0.1820030 | 0.9529157 | YES      |  9.491250 | D’Agostino | 0.0086896 | \*       | \-        |
| fss.media.text | 254 | -0.3302526 | 1.4431918 | YES      | 15.486358 | D’Agostino | 0.0004337 | \*\*     | \-        |
| fss.media.text | 140 |  0.2109117 | 0.1569261 | YES      |  1.716177 | D’Agostino | 0.4239717 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 320 |       3 |     316 | 1.4007152 | 0.2425670 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 320 |       3 |     312 | 0.7510000 | 0.5230000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Zona`     | 254 |       3 |     250 | 0.0958010 | 0.9623043 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 254 |       3 |     246 | 2.1450000 | 0.0950000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 140 |       7 |     132 | 0.7346601 | 0.6429214 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 140 |       5 |     126 | 3.0720000 | 0.0120000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 317 | 17.253 | 93.496 | 58.498 | \<0.001 | 0.156 | \*     |
| 2   | grupo          |   1 | 317 |  0.077 | 93.496 |  0.261 | 0.609   | 0.001 |        |
| 4   | Sexo           |   1 | 317 |  0.207 | 93.367 |  0.702 | 0.403   | 0.002 |        |
| 6   | Zona           |   1 | 251 |  0.467 | 73.071 |  1.604 | 0.207   | 0.006 |        |
| 8   | Cor.Raca       |   3 | 135 |  0.204 | 37.570 |  0.244 | 0.865   | 0.005 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 315 | 15.980 | 92.454 | 54.446 | \<0.001 | 0.147 | \*     |
| 4   | grupo:Sexo     |   1 | 315 |  0.854 | 92.454 |  2.909 | 0.089   | 0.009 |        |
| 8   | grupo:Zona     |   1 | 249 |  0.140 | 72.929 |  0.479 | 0.49    | 0.002 |        |
| 12  | grupo:Cor.Raca |   3 | 131 |  1.523 | 36.008 |  1.846 | 0.142   | 0.041 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | 149 |   3.492 |    0.052 |     3.451 |      0.050 |   3.433 |    0.045 |
| fss.media.text | Experimental | 171 |   3.404 |    0.044 |     3.448 |      0.044 |   3.464 |    0.042 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text | Controle | Experimental |   -0.031 |   -0.151 |     0.089 | 0.061 |    -0.511 | 0.609 | 0.609 | ns           |
| dfs.media.text | Controle | Experimental |    0.089 |   -0.044 |     0.221 | 0.067 |     1.317 | 0.189 | 0.189 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | pre    | pos    |    0.041 |   -0.095 |     0.177 | 0.069 |     0.594 | 0.553 | 0.553 | ns           |
| flow.text | Experimental | pre    | pos    |   -0.045 |   -0.171 |     0.082 | 0.064 |    -0.692 | 0.489 | 0.489 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | F    |  69 |   3.619 |    0.075 |     3.586 |      0.068 |   3.520 |    0.066 |
| fss.media.text | Controle     | M    |  80 |   3.383 |    0.069 |     3.336 |      0.071 |   3.359 |    0.061 |
| fss.media.text | Experimental | F    |  91 |   3.466 |    0.057 |     3.450 |      0.065 |   3.442 |    0.057 |
| fss.media.text | Experimental | M    |  80 |   3.332 |    0.068 |     3.446 |      0.058 |   3.489 |    0.061 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | F    | Controle | Experimental |    0.078 |   -0.093 |     0.249 | 0.087 |     0.898 | 0.370 | 0.370 | ns           |
| fss.media.text |              | M    | Controle | Experimental |   -0.130 |   -0.298 |     0.039 | 0.086 |    -1.514 | 0.131 | 0.131 | ns           |
| dfs.media.text |              | F    | Controle | Experimental |    0.153 |   -0.034 |     0.340 | 0.095 |     1.605 | 0.109 | 0.109 | ns           |
| dfs.media.text |              | M    | Controle | Experimental |    0.051 |   -0.134 |     0.236 | 0.094 |     0.540 | 0.590 | 0.590 | ns           |
| fss.media.text | Controle     |      | F        | M            |    0.161 |   -0.016 |     0.338 | 0.090 |     1.792 | 0.074 | 0.074 | ns           |
| fss.media.text | Experimental |      | F        | M            |   -0.047 |   -0.211 |     0.117 | 0.083 |    -0.562 | 0.574 | 0.574 | ns           |
| dfs.media.text | Controle     |      | F        | M            |    0.236 |    0.043 |     0.428 | 0.098 |     2.409 | 0.017 | 0.017 | \*           |
| dfs.media.text | Experimental |      | F        | M            |    0.134 |   -0.046 |     0.314 | 0.091 |     1.467 | 0.143 | 0.143 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | F    | pre    | pos    |    0.033 |   -0.164 |     0.231 | 0.101 |     0.332 | 0.740 | 0.740 | ns           |
| flow.text | Controle     | M    | pre    | pos    |    0.048 |   -0.136 |     0.231 | 0.093 |     0.509 | 0.611 | 0.611 | ns           |
| flow.text | Experimental | F    | pre    | pos    |    0.016 |   -0.156 |     0.188 | 0.088 |     0.187 | 0.852 | 0.852 | ns           |
| flow.text | Experimental | M    | pre    | pos    |   -0.114 |   -0.297 |     0.070 | 0.093 |    -1.219 | 0.223 | 0.223 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Rural  |  98 |   3.592 |    0.060 |     3.520 |      0.063 |   3.467 |    0.055 |
| fss.media.text | Controle     | Urbana |  30 |   3.344 |    0.133 |     3.385 |      0.109 |   3.429 |    0.099 |
| fss.media.text | Experimental | Rural  |  85 |   3.384 |    0.062 |     3.474 |      0.059 |   3.502 |    0.059 |
| fss.media.text | Experimental | Urbana |  41 |   3.360 |    0.076 |     3.320 |      0.089 |   3.357 |    0.085 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | Rural  | Controle | Experimental |   -0.035 |   -0.195 |     0.125 | 0.081 |    -0.430 | 0.668 | 0.668 | ns           |
| fss.media.text |              | Urbana | Controle | Experimental |    0.071 |   -0.185 |     0.327 | 0.130 |     0.548 | 0.584 | 0.584 | ns           |
| dfs.media.text |              | Rural  | Controle | Experimental |    0.207 |    0.035 |     0.379 | 0.087 |     2.371 | 0.018 | 0.018 | \*           |
| dfs.media.text |              | Urbana | Controle | Experimental |   -0.016 |   -0.295 |     0.263 | 0.142 |    -0.113 | 0.910 | 0.910 | ns           |
| fss.media.text | Controle     |        | Rural    | Urbana       |    0.038 |   -0.186 |     0.262 | 0.114 |     0.336 | 0.737 | 0.737 | ns           |
| fss.media.text | Experimental |        | Rural    | Urbana       |    0.144 |   -0.058 |     0.347 | 0.103 |     1.402 | 0.162 | 0.162 | ns           |
| dfs.media.text | Controle     |        | Rural    | Urbana       |    0.247 |    0.005 |     0.490 | 0.123 |     2.010 | 0.046 | 0.046 | \*           |
| dfs.media.text | Experimental |        | Rural    | Urbana       |    0.024 |   -0.197 |     0.245 | 0.112 |     0.214 | 0.830 | 0.830 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Rural  | pre    | pos    |    0.072 |   -0.094 |     0.237 | 0.084 |     0.851 | 0.395 | 0.395 | ns           |
| flow.text | Controle     | Urbana | pre    | pos    |   -0.040 |   -0.339 |     0.258 | 0.152 |    -0.265 | 0.791 | 0.791 | ns           |
| flow.text | Experimental | Rural  | pre    | pos    |   -0.089 |   -0.266 |     0.088 | 0.090 |    -0.986 | 0.325 | 0.325 | ns           |
| flow.text | Experimental | Urbana | pre    | pos    |    0.041 |   -0.215 |     0.296 | 0.130 |     0.313 | 0.755 | 0.755 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Branca   |  20 |   3.506 |    0.119 |     3.568 |      0.108 |   3.538 |    0.118 |
| fss.media.text | Controle     | Parda    |  42 |   3.669 |    0.096 |     3.558 |      0.097 |   3.458 |    0.083 |
| fss.media.text | Experimental | Branca   |  17 |   3.399 |    0.136 |     3.358 |      0.161 |   3.373 |    0.127 |
| fss.media.text | Experimental | Indígena |  12 |   3.337 |    0.141 |     3.471 |      0.166 |   3.512 |    0.152 |
| fss.media.text | Experimental | Parda    |  44 |   3.217 |    0.078 |     3.482 |      0.079 |   3.574 |    0.081 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| 1   | fss.media.text |              | Branca   | Controle | Experimental |    0.165 |   -0.178 |     0.508 | 0.173 |     0.950 | 0.344   | 0.344   | ns           |
| 3   | fss.media.text |              | Parda    | Controle | Experimental |   -0.116 |   -0.352 |     0.120 | 0.119 |    -0.969 | 0.334   | 0.334   | ns           |
| 4   | dfs.media.text |              | Branca   | Controle | Experimental |    0.107 |   -0.258 |     0.472 | 0.184 |     0.579 | 0.563   | 0.563   | ns           |
| 6   | dfs.media.text |              | Parda    | Controle | Experimental |    0.451 |    0.213 |     0.690 | 0.121 |     3.742 | \<0.001 | \<0.001 | \*\*\*       |
| 8   | fss.media.text | Controle     |          | Branca   | Parda        |    0.079 |   -0.204 |     0.363 | 0.143 |     0.552 | 0.582   | 0.582   | ns           |
| 10  | fss.media.text | Experimental |          | Branca   | Indígena     |   -0.140 |   -0.531 |     0.252 | 0.198 |    -0.704 | 0.483   | 1       | ns           |
| 11  | fss.media.text | Experimental |          | Branca   | Parda        |   -0.201 |   -0.500 |     0.097 | 0.151 |    -1.335 | 0.184   | 0.552   | ns           |
| 12  | fss.media.text | Experimental |          | Indígena | Parda        |   -0.062 |   -0.401 |     0.277 | 0.171 |    -0.360 | 0.719   | 1       | ns           |
| 14  | dfs.media.text | Controle     |          | Branca   | Parda        |   -0.163 |   -0.464 |     0.137 | 0.152 |    -1.073 | 0.285   | 0.285   | ns           |
| 16  | dfs.media.text | Experimental |          | Branca   | Indígena     |    0.062 |   -0.355 |     0.479 | 0.211 |     0.294 | 0.77    | 1       | ns           |
| 17  | dfs.media.text | Experimental |          | Branca   | Parda        |    0.182 |   -0.134 |     0.497 | 0.160 |     1.137 | 0.258   | 0.773   | ns           |
| 18  | dfs.media.text | Experimental |          | Indígena | Parda        |    0.120 |   -0.241 |     0.480 | 0.182 |     0.657 | 0.512   | 1       | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Branca   | pre    | pos    |   -0.062 |   -0.416 |     0.291 | 0.179 |    -0.349 | 0.728 | 0.728 | ns           |
| flow.text | Controle     | Parda    | pre    | pos    |    0.110 |   -0.133 |     0.354 | 0.124 |     0.893 | 0.373 | 0.373 | ns           |
| flow.text | Experimental | Branca   | pre    | pos    |    0.041 |   -0.342 |     0.424 | 0.194 |     0.210 | 0.834 | 0.834 | ns           |
| flow.text | Experimental | Indígena | pre    | pos    |   -0.134 |   -0.590 |     0.322 | 0.231 |    -0.580 | 0.562 | 0.562 | ns           |
| flow.text | Experimental | Parda    | pre    | pos    |   -0.265 |   -0.503 |    -0.027 | 0.121 |    -2.191 | 0.029 | 0.029 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-6-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
