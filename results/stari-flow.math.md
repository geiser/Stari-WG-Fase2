ANCOVA in flow (prob. matemática) (flow (prob. matemática))
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
  flow (prob. matemática) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (prob. matemática) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.math |  45 | 3.310 |  3.333 | 2.444 | 4.444 | 0.464 | 0.069 | 0.139 | 0.667 |
| Controle     | M    |        |          | dfs.media.math |  54 | 3.273 |  3.222 | 2.333 | 4.444 | 0.509 | 0.069 | 0.139 | 0.556 |
| Experimental | F    |        |          | dfs.media.math |  17 | 3.046 |  3.000 | 1.889 | 4.556 | 0.688 | 0.167 | 0.354 | 0.667 |
| Experimental | M    |        |          | dfs.media.math |  29 | 3.402 |  3.444 | 2.222 | 4.333 | 0.517 | 0.096 | 0.197 | 0.667 |
| Controle     | F    |        |          | fss.media.math |  45 | 3.389 |  3.333 | 2.444 | 4.556 | 0.507 | 0.076 | 0.152 | 0.667 |
| Controle     | M    |        |          | fss.media.math |  54 | 3.456 |  3.444 | 2.444 | 5.000 | 0.580 | 0.079 | 0.158 | 0.771 |
| Experimental | F    |        |          | fss.media.math |  17 | 3.218 |  3.333 | 2.000 | 4.556 | 0.777 | 0.188 | 0.399 | 1.000 |
| Experimental | M    |        |          | fss.media.math |  29 | 3.323 |  3.333 | 2.222 | 4.556 | 0.617 | 0.115 | 0.235 | 0.889 |
| Controle     |      | Rural  |          | dfs.media.math |  54 | 3.274 |  3.111 | 2.333 | 4.444 | 0.553 | 0.075 | 0.151 | 0.719 |
| Controle     |      | Urbana |          | dfs.media.math |  17 | 3.222 |  3.222 | 2.333 | 4.000 | 0.480 | 0.116 | 0.247 | 0.667 |
| Controle     |      |        |          | dfs.media.math |  28 | 3.361 |  3.333 | 2.667 | 4.222 | 0.340 | 0.064 | 0.132 | 0.444 |
| Experimental |      | Rural  |          | dfs.media.math |  29 | 3.360 |  3.333 | 2.222 | 4.556 | 0.524 | 0.097 | 0.199 | 0.556 |
| Experimental |      | Urbana |          | dfs.media.math |   8 | 2.819 |  2.667 | 1.889 | 4.111 | 0.732 | 0.259 | 0.612 | 0.694 |
| Experimental |      |        |          | dfs.media.math |   9 | 3.383 |  3.667 | 2.444 | 4.111 | 0.614 | 0.205 | 0.472 | 1.111 |
| Controle     |      | Rural  |          | fss.media.math |  54 | 3.406 |  3.444 | 2.444 | 4.667 | 0.528 | 0.072 | 0.144 | 0.556 |
| Controle     |      | Urbana |          | fss.media.math |  17 | 3.611 |  3.444 | 2.667 | 5.000 | 0.749 | 0.182 | 0.385 | 1.222 |
| Controle     |      |        |          | fss.media.math |  28 | 3.352 |  3.333 | 2.778 | 4.000 | 0.420 | 0.079 | 0.163 | 0.750 |
| Experimental |      | Rural  |          | fss.media.math |  29 | 3.280 |  3.333 | 2.000 | 4.556 | 0.653 | 0.121 | 0.248 | 0.778 |
| Experimental |      | Urbana |          | fss.media.math |   8 | 3.184 |  2.889 | 2.444 | 4.333 | 0.735 | 0.260 | 0.615 | 0.840 |
| Experimental |      |        |          | fss.media.math |   9 | 3.387 |  3.333 | 2.111 | 4.556 | 0.752 | 0.251 | 0.578 | 1.111 |
| Controle     |      |        | Branca   | dfs.media.math |   9 | 3.395 |  3.333 | 2.889 | 4.444 | 0.553 | 0.184 | 0.425 | 0.444 |
| Controle     |      |        | Parda    | dfs.media.math |  46 | 3.346 |  3.333 | 2.333 | 4.444 | 0.552 | 0.081 | 0.164 | 0.750 |
| Controle     |      |        | Preta    | dfs.media.math |   1 | 2.889 |  2.889 | 2.889 | 2.889 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.math |  43 | 3.217 |  3.222 | 2.333 | 4.111 | 0.392 | 0.060 | 0.121 | 0.444 |
| Experimental |      |        | Amarela  | dfs.media.math |   1 | 3.778 |  3.778 | 3.778 | 3.778 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | dfs.media.math |   6 | 3.093 |  3.333 | 2.222 | 3.667 | 0.568 | 0.232 | 0.596 | 0.667 |
| Experimental |      |        | Indígena | dfs.media.math |   5 | 3.422 |  3.556 | 2.667 | 4.111 | 0.552 | 0.247 | 0.686 | 0.556 |
| Experimental |      |        | Parda    | dfs.media.math |  12 | 3.315 |  3.333 | 2.444 | 4.222 | 0.540 | 0.156 | 0.343 | 0.750 |
| Experimental |      |        |          | dfs.media.math |  22 | 3.237 |  3.111 | 1.889 | 4.556 | 0.683 | 0.146 | 0.303 | 1.056 |
| Controle     |      |        | Branca   | fss.media.math |   9 | 3.481 |  3.556 | 2.444 | 4.667 | 0.603 | 0.201 | 0.464 | 0.444 |
| Controle     |      |        | Parda    | fss.media.math |  46 | 3.478 |  3.444 | 2.444 | 5.000 | 0.552 | 0.081 | 0.164 | 0.750 |
| Controle     |      |        | Preta    | fss.media.math |   1 | 3.333 |  3.333 | 3.333 | 3.333 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.math |  43 | 3.361 |  3.222 | 2.667 | 5.000 | 0.540 | 0.082 | 0.166 | 0.778 |
| Experimental |      |        | Amarela  | fss.media.math |   1 | 3.375 |  3.375 | 3.375 | 3.375 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | fss.media.math |   6 | 3.319 |  3.333 | 2.667 | 4.250 | 0.577 | 0.236 | 0.606 | 0.639 |
| Experimental |      |        | Indígena | fss.media.math |   5 | 3.778 |  4.111 | 2.556 | 4.556 | 0.793 | 0.355 | 0.985 | 0.778 |
| Experimental |      |        | Parda    | fss.media.math |  12 | 3.259 |  3.278 | 2.111 | 4.333 | 0.589 | 0.170 | 0.374 | 0.722 |
| Experimental |      |        |          | fss.media.math |  22 | 3.172 |  3.111 | 2.000 | 4.556 | 0.721 | 0.154 | 0.320 | 0.722 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |  skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 145 | 0.4599732 |  0.1112853 | YES      |  5.676768 | D’Agostino | 0.0585202 | ns       | QQ        |
| fss.media.math | 108 | 0.3673489 | -0.3318141 | YES      |  2.836483 | D’Agostino | 0.2421394 | ns       | QQ        |
| fss.media.math |  80 | 0.2522187 | -0.5172769 | YES      |  1.588099 | D’Agostino | 0.4520106 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 145 |       3 |     141 | 0.0988068 | 0.9605625 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 145 |       3 |     137 | 2.3180000 | 0.0780000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     | 108 |       3 |     104 | 1.8291200 | 0.1464357 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 108 |       3 |     100 | 0.9370000 | 0.4260000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  80 |       6 |      73 | 0.6948926 | 0.6544635 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  80 |       4 |      68 | 1.5760000 | 0.1910000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 142 | 10.207 | 39.460 | 36.730 | \<0.001 | 0.206 | \*     |
| 2   | grupo          |   1 | 142 |  0.544 | 39.460 |  1.959 | 0.164   | 0.014 |        |
| 4   | Sexo           |   1 | 142 |  0.025 | 39.980 |  0.089 | 0.766   | 0.001 |        |
| 6   | Zona           |   1 | 105 |  0.957 | 31.407 |  3.201 | 0.076   | 0.030 |        |
| 8   | Cor.Raca       |   4 |  74 |  0.522 | 20.554 |  0.470 | 0.758   | 0.025 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 140 | 10.226 | 39.213 | 36.509 | \<0.001 | 0.207 | \*     |
| 4   | grupo:Sexo     |   1 | 140 |  0.200 | 39.213 |  0.713 | 0.4     | 0.005 |        |
| 8   | grupo:Zona     |   1 | 103 |  0.007 | 30.605 |  0.024 | 0.878   | 0.000 |        |
| 12  | grupo:Cor.Raca |   1 |  72 |  0.082 | 20.155 |  0.294 | 0.59    | 0.004 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     |  99 |   3.290 |    0.049 |     3.426 |      0.055 |   3.423 |    0.053 |
| fss.media.math | Experimental |  46 |   3.271 |    0.089 |     3.284 |      0.099 |   3.291 |    0.078 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.132 |   -0.054 |     0.318 | 0.094 |     1.400 | 0.164 | 0.164 | ns           |
| dfs.media.math | Controle | Experimental |    0.019 |   -0.166 |     0.205 | 0.094 |     0.207 | 0.836 | 0.836 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |   -0.136 |   -0.292 |     0.021 | 0.079 |    -1.708 | 0.089 | 0.089 | ns           |
| flow.math | Experimental | pre    | pos    |   -0.014 |   -0.243 |     0.216 | 0.117 |    -0.117 | 0.907 | 0.907 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  45 |   3.310 |    0.069 |     3.389 |      0.076 |   3.375 |    0.079 |
| fss.media.math | Controle     | M    |  54 |   3.273 |    0.069 |     3.456 |      0.079 |   3.462 |    0.072 |
| fss.media.math | Experimental | F    |  17 |   3.046 |    0.167 |     3.218 |      0.188 |   3.341 |    0.130 |
| fss.media.math | Experimental | M    |  29 |   3.402 |    0.096 |     3.323 |      0.115 |   3.262 |    0.099 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |    0.034 |   -0.267 |     0.335 | 0.152 |     0.224 | 0.823 | 0.823 | ns           |
| fss.media.math |              | M    | Controle | Experimental |    0.200 |   -0.042 |     0.442 | 0.122 |     1.637 | 0.104 | 0.104 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |    0.264 |   -0.029 |     0.558 | 0.148 |     1.782 | 0.077 | 0.077 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.129 |   -0.366 |     0.108 | 0.120 |    -1.076 | 0.284 | 0.284 | ns           |
| fss.media.math | Controle     |      | F        | M            |   -0.086 |   -0.298 |     0.125 | 0.107 |    -0.809 | 0.420 | 0.420 | ns           |
| fss.media.math | Experimental |      | F        | M            |    0.080 |   -0.246 |     0.405 | 0.165 |     0.484 | 0.629 | 0.629 | ns           |
| dfs.media.math | Controle     |      | F        | M            |    0.037 |   -0.171 |     0.245 | 0.105 |     0.352 | 0.725 | 0.725 | ns           |
| dfs.media.math | Experimental |      | F        | M            |   -0.357 |   -0.671 |    -0.042 | 0.159 |    -2.240 | 0.027 | 0.027 | \*           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |   -0.079 |   -0.310 |     0.153 | 0.118 |    -0.670 | 0.504 | 0.504 | ns           |
| flow.math | Controle     | M    | pre    | pos    |   -0.183 |   -0.394 |     0.028 | 0.107 |    -1.706 | 0.089 | 0.089 | ns           |
| flow.math | Experimental | F    | pre    | pos    |   -0.172 |   -0.549 |     0.204 | 0.191 |    -0.901 | 0.368 | 0.368 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.080 |   -0.209 |     0.368 | 0.146 |     0.543 | 0.588 | 0.588 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  |  54 |   3.274 |    0.075 |     3.406 |      0.072 |   3.396 |    0.074 |
| fss.media.math | Controle     | Urbana |  17 |   3.222 |    0.116 |     3.611 |      0.182 |   3.629 |    0.132 |
| fss.media.math | Experimental | Rural  |  29 |   3.360 |    0.097 |     3.280 |      0.121 |   3.224 |    0.102 |
| fss.media.math | Experimental | Urbana |   8 |   2.819 |    0.259 |     3.184 |      0.260 |   3.416 |    0.197 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |    0.172 |   -0.078 |     0.421 | 0.126 |     1.364 | 0.175 | 0.175 | ns           |
| fss.media.math |              | Urbana | Controle | Experimental |    0.213 |   -0.257 |     0.683 | 0.237 |     0.899 | 0.371 | 0.371 | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |   -0.086 |   -0.336 |     0.165 | 0.126 |    -0.678 | 0.499 | 0.499 | ns           |
| dfs.media.math |              | Urbana | Controle | Experimental |    0.403 |   -0.064 |     0.869 | 0.235 |     1.711 | 0.090 | 0.090 | ns           |
| fss.media.math | Controle     |        | Rural    | Urbana       |   -0.233 |   -0.534 |     0.068 | 0.152 |    -1.537 | 0.127 | 0.127 | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |   -0.192 |   -0.636 |     0.252 | 0.224 |    -0.856 | 0.394 | 0.394 | ns           |
| dfs.media.math | Controle     |        | Rural    | Urbana       |    0.052 |   -0.251 |     0.355 | 0.153 |     0.342 | 0.733 | 0.733 | ns           |
| dfs.media.math | Experimental |        | Rural    | Urbana       |    0.541 |    0.106 |     0.975 | 0.219 |     2.466 | 0.015 | 0.015 | \*           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |   -0.131 |   -0.353 |     0.090 | 0.112 |    -1.169 | 0.244 | 0.244 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |   -0.389 |   -0.783 |     0.006 | 0.200 |    -1.943 | 0.053 | 0.053 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |    0.080 |   -0.222 |     0.383 | 0.153 |     0.525 | 0.600 | 0.600 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |   -0.365 |   -0.940 |     0.210 | 0.292 |    -1.250 | 0.213 | 0.213 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Branca   |   9 |   3.395 |    0.184 |     3.481 |      0.201 |   3.453 |    0.177 |
| fss.media.math | Controle     | Parda    |  46 |   3.346 |    0.081 |     3.478 |      0.081 |   3.471 |    0.078 |
| fss.media.math | Experimental | Branca   |   6 |   3.093 |    0.232 |     3.319 |      0.236 |   3.427 |    0.218 |
| fss.media.math | Experimental | Indígena |   5 |   3.422 |    0.247 |     3.778 |      0.355 |   3.737 |    0.237 |
| fss.media.math | Experimental | Parda    |  12 |   3.315 |    0.156 |     3.259 |      0.170 |   3.267 |    0.153 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.math |              | Branca   | Controle | Experimental |    0.026 |   -0.534 |     0.586 | 0.281 |     0.093 | 0.926 | 0.926 | ns           |
| 3   | fss.media.math |              | Parda    | Controle | Experimental |    0.204 |   -0.138 |     0.546 | 0.172 |     1.191 | 0.238 | 0.238 | ns           |
| 4   | dfs.media.math |              | Branca   | Controle | Experimental |    0.302 |   -0.277 |     0.882 | 0.291 |     1.040 | 0.302 | 0.302 | ns           |
| 6   | dfs.media.math |              | Parda    | Controle | Experimental |    0.032 |   -0.325 |     0.388 | 0.179 |     0.176 | 0.861 | 0.861 | ns           |
| 8   | fss.media.math | Controle     |          | Branca   | Parda        |   -0.018 |   -0.403 |     0.366 | 0.193 |    -0.094 | 0.926 | 0.926 | ns           |
| 10  | fss.media.math | Experimental |          | Branca   | Indígena     |   -0.310 |   -0.953 |     0.333 | 0.323 |    -0.962 | 0.339 | 1.000 | ns           |
| 11  | fss.media.math | Experimental |          | Branca   | Parda        |    0.160 |   -0.370 |     0.690 | 0.266 |     0.602 | 0.549 | 1.000 | ns           |
| 12  | fss.media.math | Experimental |          | Indígena | Parda        |    0.470 |   -0.092 |     1.032 | 0.282 |     1.668 | 0.100 | 0.299 | ns           |
| 14  | dfs.media.math | Controle     |          | Branca   | Parda        |    0.049 |   -0.352 |     0.449 | 0.201 |     0.242 | 0.809 | 0.809 | ns           |
| 16  | dfs.media.math | Experimental |          | Branca   | Indígena     |   -0.330 |   -0.995 |     0.336 | 0.334 |    -0.987 | 0.327 | 0.981 | ns           |
| 17  | dfs.media.math | Experimental |          | Branca   | Parda        |   -0.222 |   -0.772 |     0.327 | 0.276 |    -0.806 | 0.423 | 1.000 | ns           |
| 18  | dfs.media.math | Experimental |          | Indígena | Parda        |    0.107 |   -0.478 |     0.693 | 0.294 |     0.366 | 0.716 | 1.000 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Branca   | pre    | pos    |   -0.086 |   -0.614 |     0.441 | 0.267 |    -0.324 | 0.747 | 0.747 | ns           |
| flow.math | Controle     | Parda    | pre    | pos    |   -0.131 |   -0.365 |     0.102 | 0.118 |    -1.112 | 0.268 | 0.268 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |   -0.227 |   -0.873 |     0.420 | 0.327 |    -0.694 | 0.489 | 0.489 | ns           |
| flow.math | Experimental | Indígena | pre    | pos    |   -0.356 |   -1.064 |     0.353 | 0.358 |    -0.992 | 0.323 | 0.323 | ns           |
| flow.math | Experimental | Parda    | pre    | pos    |    0.056 |   -0.402 |     0.513 | 0.231 |     0.240 | 0.811 | 0.811 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
