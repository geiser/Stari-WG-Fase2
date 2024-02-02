ANCOVA in flow (ativ. leitura) (flow (ativ. leitura))
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
  flow (ativ. leitura) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (ativ. leitura) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.read |  47 | 3.520 |  3.667 | 2.556 | 4.556 | 0.453 | 0.066 | 0.133 | 0.556 |
| Controle     | M    |        |          | dfs.media.read |  41 | 3.396 |  3.333 | 2.556 | 4.222 | 0.440 | 0.069 | 0.139 | 0.667 |
| Experimental | F    |        |          | dfs.media.read | 101 | 3.527 |  3.556 | 1.889 | 4.667 | 0.508 | 0.051 | 0.100 | 0.667 |
| Experimental | M    |        |          | dfs.media.read |  75 | 3.335 |  3.333 | 2.250 | 4.333 | 0.447 | 0.052 | 0.103 | 0.611 |
| Controle     | F    |        |          | fss.media.read |  47 | 3.527 |  3.556 | 2.333 | 4.778 | 0.567 | 0.083 | 0.167 | 0.556 |
| Controle     | M    |        |          | fss.media.read |  41 | 3.286 |  3.222 | 2.000 | 4.556 | 0.503 | 0.079 | 0.159 | 0.667 |
| Experimental | F    |        |          | fss.media.read | 101 | 3.408 |  3.444 | 2.444 | 4.667 | 0.497 | 0.049 | 0.098 | 0.667 |
| Experimental | M    |        |          | fss.media.read |  75 | 3.403 |  3.444 | 1.000 | 4.667 | 0.600 | 0.069 | 0.138 | 0.778 |
| Controle     |      | Rural  |          | dfs.media.read |  31 | 3.380 |  3.444 | 2.556 | 4.222 | 0.468 | 0.084 | 0.172 | 0.722 |
| Controle     |      | Urbana |          | dfs.media.read |  22 | 3.510 |  3.500 | 2.778 | 4.556 | 0.461 | 0.098 | 0.204 | 0.639 |
| Controle     |      |        |          | dfs.media.read |  35 | 3.505 |  3.444 | 2.556 | 4.222 | 0.426 | 0.072 | 0.146 | 0.500 |
| Experimental |      | Rural  |          | dfs.media.read |  54 | 3.405 |  3.410 | 1.889 | 4.444 | 0.503 | 0.069 | 0.137 | 0.528 |
| Experimental |      | Urbana |          | dfs.media.read |  30 | 3.644 |  3.667 | 2.667 | 4.667 | 0.430 | 0.079 | 0.161 | 0.500 |
| Experimental |      |        |          | dfs.media.read |  92 | 3.404 |  3.333 | 2.333 | 4.444 | 0.491 | 0.051 | 0.102 | 0.757 |
| Controle     |      | Rural  |          | fss.media.read |  31 | 3.430 |  3.444 | 2.333 | 4.556 | 0.537 | 0.096 | 0.197 | 0.722 |
| Controle     |      | Urbana |          | fss.media.read |  22 | 3.415 |  3.444 | 2.556 | 4.778 | 0.485 | 0.103 | 0.215 | 0.639 |
| Controle     |      |        |          | fss.media.read |  35 | 3.401 |  3.444 | 2.000 | 4.667 | 0.609 | 0.103 | 0.209 | 0.778 |
| Experimental |      | Rural  |          | fss.media.read |  54 | 3.466 |  3.444 | 2.333 | 4.667 | 0.520 | 0.071 | 0.142 | 0.667 |
| Experimental |      | Urbana |          | fss.media.read |  30 | 3.379 |  3.278 | 2.444 | 4.667 | 0.605 | 0.110 | 0.226 | 0.944 |
| Experimental |      |        |          | fss.media.read |  92 | 3.380 |  3.389 | 1.000 | 4.556 | 0.536 | 0.056 | 0.111 | 0.667 |
| Controle     |      |        | Branca   | dfs.media.read |   4 | 3.528 |  3.611 | 2.889 | 4.000 | 0.483 | 0.242 | 0.769 | 0.528 |
| Controle     |      |        | Parda    | dfs.media.read |  32 | 3.309 |  3.389 | 2.556 | 4.222 | 0.454 | 0.080 | 0.164 | 0.694 |
| Controle     |      |        |          | dfs.media.read |  52 | 3.551 |  3.556 | 2.667 | 4.556 | 0.426 | 0.059 | 0.119 | 0.583 |
| Experimental |      |        | Amarela  | dfs.media.read |   2 | 2.889 |  2.889 | 2.444 | 3.333 | 0.629 | 0.444 | 5.647 | 0.444 |
| Experimental |      |        | Branca   | dfs.media.read |  17 | 3.418 |  3.333 | 2.778 | 4.222 | 0.413 | 0.100 | 0.212 | 0.444 |
| Experimental |      |        | Parda    | dfs.media.read |  45 | 3.514 |  3.444 | 2.333 | 4.444 | 0.447 | 0.067 | 0.134 | 0.556 |
| Experimental |      |        |          | dfs.media.read | 112 | 3.432 |  3.444 | 1.889 | 4.667 | 0.514 | 0.049 | 0.096 | 0.667 |
| Controle     |      |        | Branca   | fss.media.read |   4 | 3.806 |  3.611 | 3.333 | 4.667 | 0.604 | 0.302 | 0.962 | 0.583 |
| Controle     |      |        | Parda    | fss.media.read |  32 | 3.375 |  3.333 | 2.333 | 4.556 | 0.549 | 0.097 | 0.198 | 0.694 |
| Controle     |      |        |          | fss.media.read |  52 | 3.409 |  3.444 | 2.000 | 4.778 | 0.544 | 0.075 | 0.151 | 0.778 |
| Experimental |      |        | Amarela  | fss.media.read |   2 | 3.278 |  3.278 | 3.222 | 3.333 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        | Branca   | fss.media.read |  17 | 3.503 |  3.444 | 2.778 | 4.111 | 0.401 | 0.097 | 0.206 | 0.556 |
| Experimental |      |        | Parda    | fss.media.read |  45 | 3.426 |  3.444 | 2.444 | 4.667 | 0.523 | 0.078 | 0.157 | 0.667 |
| Experimental |      |        |          | fss.media.read | 112 | 3.385 |  3.389 | 1.000 | 4.667 | 0.573 | 0.054 | 0.107 | 0.730 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.read | 264 | -0.2308453 |  1.0894145 | YES      | 10.325147 | D’Agostino | 0.0057269 | \*       | \-        |
| fss.media.read | 137 |  0.1499184 | -0.4118580 | YES      |  1.301995 | D’Agostino | 0.5215252 | ns       | QQ        |
| fss.media.read | 100 |  0.4655171 | -0.4566124 | YES      |  4.458148 | D’Agostino | 0.1076280 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 264 |       3 |     260 | 0.7132038 | 0.5448758 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 264 |       3 |     256 | 0.8830000 | 0.4500000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Zona`     | 137 |       3 |     133 | 1.3627505 | 0.2569933 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 137 |       3 |     129 | 0.4040000 | 0.7510000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 100 |       4 |      95 | 0.3634719 | 0.8340605 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 100 |       4 |      90 | 0.6350000 | 0.6390000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 261 | 7.917 | 69.620 | 29.682 | \<0.001 | 0.102 | \*     |
| 2   | grupo          |   1 | 261 | 0.000 | 69.620 |  0.001 | 0.971   | 0.000 |        |
| 4   | Sexo           |   1 | 261 | 0.034 | 69.586 |  0.128 | 0.721   | 0.000 |        |
| 6   | Zona           |   1 | 134 | 0.596 | 33.322 |  2.395 | 0.124   | 0.018 |        |
| 8   | Cor.Raca       |   2 |  96 | 0.390 | 21.476 |  0.871 | 0.422   | 0.018 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 259 | 7.666 | 68.606 | 28.940 | \<0.001 | 0.101 | \*     |
| 4   | grupo:Sexo     |   1 | 259 | 0.980 | 68.606 |  3.700 | 0.056   | 0.014 |        |
| 8   | grupo:Zona     |   1 | 132 | 0.106 | 33.202 |  0.423 | 0.517   | 0.003 |        |
| 12  | grupo:Cor.Raca |   1 |  94 | 0.124 | 21.238 |  0.548 | 0.461   | 0.006 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     |  88 |   3.462 |    0.048 |     3.415 |      0.058 |   3.411 |    0.055 |
| fss.media.read | Experimental | 176 |   3.445 |    0.037 |     3.406 |      0.041 |   3.408 |    0.039 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read | Controle | Experimental |    0.002 |   -0.130 |     0.135 | 0.067 |     0.037 | 0.971 | 0.971 | ns           |
| dfs.media.read | Controle | Experimental |    0.017 |   -0.106 |     0.140 | 0.062 |     0.271 | 0.787 | 0.787 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | pre    | pos    |    0.048 |   -0.104 |     0.199 | 0.077 |     0.616 | 0.538 | 0.538 | ns           |
| flow.read | Experimental | pre    | pos    |    0.039 |   -0.068 |     0.146 | 0.055 |     0.720 | 0.472 | 0.472 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | F    |  47 |   3.520 |    0.066 |     3.527 |      0.083 |   3.501 |    0.075 |
| fss.media.read | Controle     | M    |  41 |   3.396 |    0.069 |     3.286 |      0.079 |   3.306 |    0.080 |
| fss.media.read | Experimental | F    | 101 |   3.527 |    0.051 |     3.408 |      0.049 |   3.380 |    0.051 |
| fss.media.read | Experimental | M    |  75 |   3.335 |    0.052 |     3.403 |      0.069 |   3.445 |    0.060 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | F    | Controle | Experimental |    0.121 |   -0.058 |     0.300 | 0.091 |     1.332 | 0.184 | 0.184 | ns           |
| fss.media.read |              | M    | Controle | Experimental |   -0.139 |   -0.336 |     0.058 | 0.100 |    -1.389 | 0.166 | 0.166 | ns           |
| dfs.media.read |              | F    | Controle | Experimental |   -0.007 |   -0.171 |     0.157 | 0.083 |    -0.087 | 0.930 | 0.930 | ns           |
| dfs.media.read |              | M    | Controle | Experimental |    0.061 |   -0.119 |     0.241 | 0.092 |     0.667 | 0.505 | 0.505 | ns           |
| fss.media.read | Controle     |      | F        | M            |    0.195 |   -0.022 |     0.412 | 0.110 |     1.768 | 0.078 | 0.078 | ns           |
| fss.media.read | Experimental |      | F        | M            |   -0.065 |   -0.222 |     0.092 | 0.080 |    -0.817 | 0.415 | 0.415 | ns           |
| dfs.media.read | Controle     |      | F        | M            |    0.124 |   -0.074 |     0.323 | 0.101 |     1.236 | 0.218 | 0.218 | ns           |
| dfs.media.read | Experimental |      | F        | M            |    0.193 |    0.051 |     0.334 | 0.072 |     2.684 | 0.008 | 0.008 | \*\*         |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | F    | pre    | pos    |   -0.007 |   -0.212 |     0.199 | 0.105 |    -0.062 | 0.951 | 0.951 | ns           |
| flow.read | Controle     | M    | pre    | pos    |    0.109 |   -0.111 |     0.330 | 0.112 |     0.976 | 0.330 | 0.330 | ns           |
| flow.read | Experimental | F    | pre    | pos    |    0.119 |   -0.021 |     0.259 | 0.071 |     1.668 | 0.096 | 0.096 | ns           |
| flow.read | Experimental | M    | pre    | pos    |   -0.068 |   -0.231 |     0.095 | 0.083 |    -0.824 | 0.410 | 0.410 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Rural  |  31 |   3.380 |    0.084 |     3.430 |      0.096 |   3.467 |    0.090 |
| fss.media.read | Controle     | Urbana |  22 |   3.510 |    0.098 |     3.415 |      0.103 |   3.397 |    0.107 |
| fss.media.read | Experimental | Rural  |  54 |   3.405 |    0.069 |     3.466 |      0.071 |   3.492 |    0.068 |
| fss.media.read | Experimental | Urbana |  30 |   3.644 |    0.079 |     3.379 |      0.110 |   3.305 |    0.093 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | Rural  | Controle | Experimental |   -0.025 |   -0.249 |     0.199 | 0.113 |    -0.221 | 0.826 | 0.826 | ns           |
| fss.media.read |              | Urbana | Controle | Experimental |    0.093 |   -0.187 |     0.372 | 0.141 |     0.656 | 0.513 | 0.513 | ns           |
| dfs.media.read |              | Rural  | Controle | Experimental |   -0.025 |   -0.236 |     0.186 | 0.107 |    -0.236 | 0.814 | 0.814 | ns           |
| dfs.media.read |              | Urbana | Controle | Experimental |   -0.134 |   -0.397 |     0.129 | 0.133 |    -1.011 | 0.314 | 0.314 | ns           |
| fss.media.read | Controle     |        | Rural    | Urbana       |    0.070 |   -0.207 |     0.348 | 0.140 |     0.500 | 0.618 | 0.618 | ns           |
| fss.media.read | Experimental |        | Rural    | Urbana       |    0.188 |   -0.042 |     0.418 | 0.116 |     1.614 | 0.109 | 0.109 | ns           |
| dfs.media.read | Controle     |        | Rural    | Urbana       |   -0.130 |   -0.391 |     0.131 | 0.132 |    -0.986 | 0.326 | 0.326 | ns           |
| dfs.media.read | Experimental |        | Rural    | Urbana       |   -0.239 |   -0.453 |    -0.026 | 0.108 |    -2.220 | 0.028 | 0.028 | \*           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Rural  | pre    | pos    |   -0.050 |   -0.304 |     0.203 | 0.129 |    -0.390 | 0.697 | 0.697 | ns           |
| flow.read | Controle     | Urbana | pre    | pos    |    0.095 |   -0.206 |     0.396 | 0.153 |     0.624 | 0.533 | 0.533 | ns           |
| flow.read | Experimental | Rural  | pre    | pos    |   -0.061 |   -0.253 |     0.131 | 0.098 |    -0.621 | 0.535 | 0.535 | ns           |
| flow.read | Experimental | Urbana | pre    | pos    |    0.266 |    0.008 |     0.523 | 0.131 |     2.031 | 0.043 | 0.043 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Parda    |  32 |   3.309 |    0.080 |     3.375 |      0.097 |   3.430 |    0.084 |
| fss.media.read | Experimental | Branca   |  17 |   3.418 |    0.100 |     3.503 |      0.097 |   3.507 |    0.114 |
| fss.media.read | Experimental | Parda    |  45 |   3.514 |    0.067 |     3.426 |      0.078 |   3.385 |    0.071 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.read |              | Parda    | Controle | Experimental |    0.045 |   -0.176 |     0.266 | 0.111 |     0.403 | 0.688 | 0.688 | ns           |
| 4   | dfs.media.read |              | Parda    | Controle | Experimental |   -0.205 |   -0.408 |    -0.001 | 0.103 |    -1.994 | 0.049 | 0.049 | \*           |
| 6   | fss.media.read | Experimental |          | Branca   | Parda        |    0.122 |   -0.145 |     0.389 | 0.135 |     0.905 | 0.368 | 0.368 | ns           |
| 8   | dfs.media.read | Experimental |          | Branca   | Parda        |   -0.095 |   -0.346 |     0.156 | 0.126 |    -0.755 | 0.452 | 0.452 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Parda    | pre    | pos    |   -0.066 |   -0.302 |     0.171 | 0.120 |    -0.550 | 0.583 | 0.583 | ns           |
| flow.read | Experimental | Branca   | pre    | pos    |   -0.085 |   -0.409 |     0.239 | 0.164 |    -0.517 | 0.606 | 0.606 | ns           |
| flow.read | Experimental | Parda    | pre    | pos    |    0.087 |   -0.112 |     0.287 | 0.101 |     0.864 | 0.389 | 0.389 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read-Serie-8-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
