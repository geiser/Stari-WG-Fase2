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
| Controle     | F    |        |          | dfs.media.read |  45 | 3.254 |  3.222 | 2.333 | 4.444 | 0.436 | 0.065 | 0.131 | 0.556 |
| Controle     | M    |        |          | dfs.media.read |  56 | 3.344 |  3.333 | 2.111 | 4.333 | 0.469 | 0.063 | 0.126 | 0.556 |
| Experimental | F    |        |          | dfs.media.read |  17 | 3.203 |  3.111 | 2.111 | 4.333 | 0.597 | 0.145 | 0.307 | 0.667 |
| Experimental | M    |        |          | dfs.media.read |  29 | 3.542 |  3.556 | 2.333 | 4.333 | 0.486 | 0.090 | 0.185 | 0.556 |
| Controle     | F    |        |          | fss.media.read |  45 | 3.500 |  3.444 | 2.444 | 4.778 | 0.481 | 0.072 | 0.145 | 0.444 |
| Controle     | M    |        |          | fss.media.read |  56 | 3.469 |  3.500 | 2.222 | 5.000 | 0.515 | 0.069 | 0.138 | 0.583 |
| Experimental | F    |        |          | fss.media.read |  17 | 3.439 |  3.556 | 2.444 | 4.125 | 0.568 | 0.138 | 0.292 | 1.000 |
| Experimental | M    |        |          | fss.media.read |  29 | 3.467 |  3.444 | 1.889 | 4.667 | 0.589 | 0.109 | 0.224 | 0.778 |
| Controle     |      | Rural  |          | dfs.media.read |  55 | 3.307 |  3.333 | 2.111 | 4.444 | 0.549 | 0.074 | 0.148 | 0.722 |
| Controle     |      | Urbana |          | dfs.media.read |  18 | 3.241 |  3.333 | 2.556 | 3.778 | 0.380 | 0.089 | 0.189 | 0.500 |
| Controle     |      |        |          | dfs.media.read |  28 | 3.338 |  3.278 | 2.889 | 3.778 | 0.262 | 0.050 | 0.102 | 0.434 |
| Experimental |      | Rural  |          | dfs.media.read |  29 | 3.531 |  3.556 | 2.333 | 4.333 | 0.550 | 0.102 | 0.209 | 0.778 |
| Experimental |      | Urbana |          | dfs.media.read |   8 | 3.042 |  3.167 | 2.111 | 3.556 | 0.493 | 0.174 | 0.412 | 0.472 |
| Experimental |      |        |          | dfs.media.read |   9 | 3.383 |  3.333 | 2.778 | 4.000 | 0.481 | 0.160 | 0.370 | 0.778 |
| Controle     |      | Rural  |          | fss.media.read |  55 | 3.528 |  3.444 | 2.556 | 4.778 | 0.446 | 0.060 | 0.121 | 0.500 |
| Controle     |      | Urbana |          | fss.media.read |  18 | 3.420 |  3.278 | 2.222 | 5.000 | 0.769 | 0.181 | 0.382 | 1.122 |
| Controle     |      |        |          | fss.media.read |  28 | 3.435 |  3.500 | 2.500 | 4.000 | 0.373 | 0.070 | 0.145 | 0.472 |
| Experimental |      | Rural  |          | fss.media.read |  29 | 3.472 |  3.556 | 1.889 | 4.667 | 0.630 | 0.117 | 0.239 | 0.889 |
| Experimental |      | Urbana |          | fss.media.read |   8 | 3.431 |  3.444 | 2.778 | 4.111 | 0.509 | 0.180 | 0.425 | 0.861 |
| Experimental |      |        |          | fss.media.read |   9 | 3.432 |  3.222 | 3.000 | 4.222 | 0.495 | 0.165 | 0.381 | 0.889 |
| Controle     |      |        | Branca   | dfs.media.read |  11 | 3.202 |  3.333 | 2.111 | 4.222 | 0.618 | 0.186 | 0.415 | 0.500 |
| Controle     |      |        | Parda    | dfs.media.read |  46 | 3.451 |  3.500 | 2.444 | 4.444 | 0.457 | 0.067 | 0.136 | 0.444 |
| Controle     |      |        | Preta    | dfs.media.read |   1 | 3.111 |  3.111 | 3.111 | 3.111 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.read |  43 | 3.176 |  3.222 | 2.333 | 3.778 | 0.365 | 0.056 | 0.112 | 0.444 |
| Experimental |      |        | Amarela  | dfs.media.read |   1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | dfs.media.read |   6 | 3.611 |  3.778 | 2.778 | 4.333 | 0.599 | 0.245 | 0.629 | 0.750 |
| Experimental |      |        | Indígena | dfs.media.read |   5 | 3.644 |  3.556 | 3.444 | 4.000 | 0.214 | 0.096 | 0.265 | 0.111 |
| Experimental |      |        | Parda    | dfs.media.read |  12 | 3.479 |  3.444 | 2.444 | 4.333 | 0.523 | 0.151 | 0.332 | 0.618 |
| Experimental |      |        |          | dfs.media.read |  22 | 3.297 |  3.333 | 2.111 | 4.333 | 0.599 | 0.128 | 0.266 | 0.882 |
| Controle     |      |        | Branca   | fss.media.read |  11 | 3.596 |  3.556 | 2.667 | 4.556 | 0.505 | 0.152 | 0.339 | 0.333 |
| Controle     |      |        | Parda    | fss.media.read |  46 | 3.514 |  3.444 | 2.444 | 5.000 | 0.530 | 0.078 | 0.157 | 0.628 |
| Controle     |      |        | Preta    | fss.media.read |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.read |  43 | 3.421 |  3.444 | 2.222 | 4.556 | 0.469 | 0.072 | 0.144 | 0.500 |
| Experimental |      |        | Amarela  | fss.media.read |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | fss.media.read |   6 | 3.556 |  3.556 | 3.000 | 4.222 | 0.410 | 0.167 | 0.430 | 0.306 |
| Experimental |      |        | Indígena | fss.media.read |   5 | 3.647 |  4.000 | 2.444 | 4.222 | 0.737 | 0.329 | 0.915 | 0.681 |
| Experimental |      |        | Parda    | fss.media.read |  12 | 3.278 |  3.278 | 1.889 | 4.444 | 0.650 | 0.188 | 0.413 | 0.722 |
| Experimental |      |        |          | fss.media.read |  22 | 3.495 |  3.556 | 2.667 | 4.667 | 0.557 | 0.119 | 0.247 | 1.000 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.read | 147 | -0.0983954 |  0.1352527 | YES      | 0.7650763 | D’Agostino | 0.6821279 | ns       | QQ        |
| fss.media.read | 110 | -0.0214487 | -0.0444140 | YES      | 0.1200042 | D’Agostino | 0.9417625 | ns       | QQ        |
| fss.media.read |  82 | -0.0321776 |  0.3780036 | YES      | 1.3185211 | D’Agostino | 0.5172337 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 147 |       3 |     143 | 1.1143678 | 0.3454050 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 147 |       3 |     139 | 0.3590000 | 0.7830000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Zona`     | 110 |       3 |     106 | 4.3228787 | 0.0064484 | \*       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 110 |       3 |     102 | 0.6650000 | 0.5760000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  82 |       6 |      75 | 0.5342276 | 0.7805839 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  82 |       4 |      70 | 1.0470000 | 0.3890000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 144 | 4.158 | 35.510 | 16.860 | \<0.001 | 0.105 | \*     |
| 2   | grupo          |   1 | 144 | 0.134 | 35.510 |  0.542 | 0.463   | 0.004 |        |
| 4   | Sexo           |   1 | 144 | 0.197 | 35.447 |  0.801 | 0.372   | 0.006 |        |
| 6   | Zona           |   1 | 107 | 0.006 | 30.390 |  0.020 | 0.887   | 0.000 |        |
| 8   | Cor.Raca       |   4 |  76 | 0.365 | 21.046 |  0.329 | 0.858   | 0.017 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 142 | 4.314 | 35.322 | 17.341 | \<0.001 | 0.109 | \*     |
| 4   | grupo:Sexo     |   1 | 142 | 0.007 | 35.322 |  0.029 | 0.864   | 0.000 |        |
| 8   | grupo:Zona     |   1 | 105 | 0.198 | 30.015 |  0.694 | 0.407   | 0.007 |        |
| 12  | grupo:Cor.Raca |   1 |  74 | 0.008 | 20.328 |  0.029 | 0.865   | 0.000 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | 101 |   3.303 |    0.045 |     3.483 |      0.050 |   3.495 |    0.050 |
| fss.media.read | Experimental |  46 |   3.417 |    0.081 |     3.457 |      0.085 |   3.430 |    0.074 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read | Controle | Experimental |    0.065 |   -0.110 |     0.241 | 0.089 |     0.737 | 0.463 | 0.463 | ns           |
| dfs.media.read | Controle | Experimental |   -0.113 |   -0.284 |     0.058 | 0.086 |    -1.310 | 0.192 | 0.192 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | pre    | pos    |   -0.179 |   -0.319 |    -0.040 | 0.071 |    -2.525 | 0.012 | 0.012 | \*           |
| flow.read | Experimental | pre    | pos    |   -0.040 |   -0.247 |     0.167 | 0.105 |    -0.382 | 0.703 | 0.703 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | F    |  45 |   3.254 |    0.065 |     3.500 |      0.072 |   3.531 |    0.075 |
| fss.media.read | Controle     | M    |  56 |   3.344 |    0.063 |     3.469 |      0.069 |   3.468 |    0.067 |
| fss.media.read | Experimental | F    |  17 |   3.203 |    0.145 |     3.439 |      0.138 |   3.488 |    0.122 |
| fss.media.read | Experimental | M    |  29 |   3.542 |    0.090 |     3.467 |      0.109 |   3.394 |    0.094 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | F    | Controle | Experimental |    0.042 |   -0.238 |     0.323 | 0.142 |     0.299 | 0.766 | 0.766 | ns           |
| fss.media.read |              | M    | Controle | Experimental |    0.074 |   -0.154 |     0.302 | 0.115 |     0.640 | 0.523 | 0.523 | ns           |
| dfs.media.read |              | F    | Controle | Experimental |    0.051 |   -0.218 |     0.320 | 0.136 |     0.375 | 0.708 | 0.708 | ns           |
| dfs.media.read |              | M    | Controle | Experimental |   -0.199 |   -0.415 |     0.018 | 0.110 |    -1.814 | 0.072 | 0.072 | ns           |
| fss.media.read | Controle     |      | F        | M            |    0.063 |   -0.135 |     0.261 | 0.100 |     0.629 | 0.530 | 0.530 | ns           |
| fss.media.read | Experimental |      | F        | M            |    0.094 |   -0.212 |     0.401 | 0.155 |     0.609 | 0.544 | 0.544 | ns           |
| dfs.media.read | Controle     |      | F        | M            |   -0.090 |   -0.279 |     0.100 | 0.096 |    -0.937 | 0.350 | 0.350 | ns           |
| dfs.media.read | Experimental |      | F        | M            |   -0.340 |   -0.629 |    -0.050 | 0.146 |    -2.322 | 0.022 | 0.022 | \*           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | F    | pre    | pos    |   -0.246 |   -0.455 |    -0.037 | 0.106 |    -2.319 | 0.021 | 0.021 | \*           |
| flow.read | Controle     | M    | pre    | pos    |   -0.126 |   -0.313 |     0.061 | 0.095 |    -1.322 | 0.187 | 0.187 | ns           |
| flow.read | Experimental | F    | pre    | pos    |   -0.236 |   -0.576 |     0.104 | 0.173 |    -1.368 | 0.172 | 0.172 | ns           |
| flow.read | Experimental | M    | pre    | pos    |    0.075 |   -0.185 |     0.335 | 0.132 |     0.565 | 0.572 | 0.572 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Rural  |  55 |   3.307 |    0.074 |     3.528 |      0.060 |   3.538 |    0.072 |
| fss.media.read | Controle     | Urbana |  18 |   3.241 |    0.089 |     3.420 |      0.181 |   3.454 |    0.126 |
| fss.media.read | Experimental | Rural  |  29 |   3.531 |    0.102 |     3.472 |      0.117 |   3.402 |    0.101 |
| fss.media.read | Experimental | Urbana |   8 |   3.042 |    0.174 |     3.431 |      0.180 |   3.535 |    0.191 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | Rural  | Controle | Experimental |    0.136 |   -0.111 |     0.383 | 0.125 |     1.092 | 0.277 | 0.277 | ns           |
| fss.media.read |              | Urbana | Controle | Experimental |   -0.082 |   -0.534 |     0.370 | 0.228 |    -0.359 | 0.721 | 0.721 | ns           |
| dfs.media.read |              | Rural  | Controle | Experimental |   -0.224 |   -0.462 |     0.013 | 0.120 |    -1.871 | 0.064 | 0.064 | ns           |
| dfs.media.read |              | Urbana | Controle | Experimental |    0.199 |   -0.241 |     0.639 | 0.222 |     0.898 | 0.371 | 0.371 | ns           |
| fss.media.read | Controle     |        | Rural    | Urbana       |    0.085 |   -0.203 |     0.373 | 0.145 |     0.584 | 0.561 | 0.561 | ns           |
| fss.media.read | Experimental |        | Rural    | Urbana       |   -0.133 |   -0.567 |     0.301 | 0.219 |    -0.608 | 0.545 | 0.545 | ns           |
| dfs.media.read | Controle     |        | Rural    | Urbana       |    0.066 |   -0.215 |     0.347 | 0.142 |     0.464 | 0.643 | 0.643 | ns           |
| dfs.media.read | Experimental |        | Rural    | Urbana       |    0.489 |    0.076 |     0.902 | 0.208 |     2.346 | 0.021 | 0.021 | \*           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Rural  | pre    | pos    |   -0.221 |   -0.426 |    -0.017 | 0.104 |    -2.138 | 0.034 | 0.034 | \*           |
| flow.read | Controle     | Urbana | pre    | pos    |   -0.179 |   -0.536 |     0.178 | 0.181 |    -0.989 | 0.324 | 0.324 | ns           |
| flow.read | Experimental | Rural  | pre    | pos    |    0.059 |   -0.222 |     0.340 | 0.143 |     0.413 | 0.680 | 0.680 | ns           |
| flow.read | Experimental | Urbana | pre    | pos    |   -0.389 |   -0.924 |     0.147 | 0.272 |    -1.432 | 0.154 | 0.154 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Branca   |  11 |   3.202 |    0.186 |     3.596 |      0.152 |   3.686 |    0.161 |
| fss.media.read | Controle     | Parda    |  46 |   3.451 |    0.067 |     3.514 |      0.078 |   3.512 |    0.077 |
| fss.media.read | Experimental | Branca   |   6 |   3.611 |    0.245 |     3.556 |      0.167 |   3.494 |    0.215 |
| fss.media.read | Experimental | Indígena |   5 |   3.644 |    0.096 |     3.647 |      0.329 |   3.573 |    0.236 |
| fss.media.read | Experimental | Parda    |  12 |   3.479 |    0.151 |     3.278 |      0.188 |   3.265 |    0.151 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.read |              | Branca   | Controle | Experimental |    0.193 |   -0.347 |     0.732 | 0.271 |     0.712 | 0.479 | 0.479 | ns           |
| 3   | fss.media.read |              | Parda    | Controle | Experimental |    0.247 |   -0.091 |     0.586 | 0.170 |     1.455 | 0.150 | 0.150 | ns           |
| 4   | dfs.media.read |              | Branca   | Controle | Experimental |   -0.409 |   -0.907 |     0.089 | 0.250 |    -1.637 | 0.106 | 0.106 | ns           |
| 6   | dfs.media.read |              | Parda    | Controle | Experimental |   -0.028 |   -0.346 |     0.290 | 0.160 |    -0.176 | 0.861 | 0.861 | ns           |
| 8   | fss.media.read | Controle     |          | Branca   | Parda        |    0.174 |   -0.182 |     0.530 | 0.179 |     0.975 | 0.333 | 0.333 | ns           |
| 10  | fss.media.read | Experimental |          | Branca   | Indígena     |   -0.079 |   -0.712 |     0.553 | 0.317 |    -0.250 | 0.803 | 1.000 | ns           |
| 11  | fss.media.read | Experimental |          | Branca   | Parda        |    0.229 |   -0.294 |     0.752 | 0.263 |     0.871 | 0.387 | 1.000 | ns           |
| 12  | fss.media.read | Experimental |          | Indígena | Parda        |    0.308 |   -0.249 |     0.865 | 0.280 |     1.101 | 0.275 | 0.824 | ns           |
| 14  | dfs.media.read | Controle     |          | Branca   | Parda        |   -0.249 |   -0.578 |     0.080 | 0.165 |    -1.507 | 0.136 | 0.136 | ns           |
| 16  | dfs.media.read | Experimental |          | Branca   | Indígena     |   -0.033 |   -0.627 |     0.561 | 0.298 |    -0.112 | 0.911 | 1.000 | ns           |
| 17  | dfs.media.read | Experimental |          | Branca   | Parda        |    0.132 |   -0.359 |     0.622 | 0.246 |     0.536 | 0.594 | 1.000 | ns           |
| 18  | dfs.media.read | Experimental |          | Indígena | Parda        |    0.165 |   -0.357 |     0.687 | 0.262 |     0.631 | 0.530 | 1.000 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Branca   | pre    | pos    |   -0.394 |   -0.835 |     0.047 | 0.223 |    -1.766 | 0.079 | 0.079 | ns           |
| flow.read | Controle     | Parda    | pre    | pos    |   -0.063 |   -0.279 |     0.152 | 0.109 |    -0.581 | 0.562 | 0.562 | ns           |
| flow.read | Experimental | Branca   | pre    | pos    |    0.056 |   -0.541 |     0.652 | 0.302 |     0.184 | 0.854 | 0.854 | ns           |
| flow.read | Experimental | Indígena | pre    | pos    |   -0.003 |   -0.656 |     0.651 | 0.331 |    -0.008 | 0.993 | 0.993 | ns           |
| flow.read | Experimental | Parda    | pre    | pos    |    0.201 |   -0.221 |     0.623 | 0.214 |     0.943 | 0.347 | 0.347 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
