ANCOVA in flow (debate) (flow (debate))
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
  flow (debate) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  flow (debate) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable        |   n |  mean | median |   min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:----------------|----:|------:|-------:|------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | dfs.media.debat |  41 | 3.415 |  3.333 | 2.333 | 4.667 | 0.480 | 0.075 | 0.151 | 0.556 |
| Controle     | M    |        |          | dfs.media.debat |  47 | 3.321 |  3.333 | 2.111 | 4.667 | 0.521 | 0.076 | 0.153 | 0.667 |
| Experimental | F    |        |          | dfs.media.debat |  11 | 3.121 |  3.111 | 2.444 | 3.889 | 0.480 | 0.145 | 0.323 | 0.778 |
| Experimental | M    |        |          | dfs.media.debat |  24 | 3.497 |  3.354 | 2.222 | 4.556 | 0.585 | 0.119 | 0.247 | 0.778 |
| Controle     | F    |        |          | fss.media.debat |  41 | 3.459 |  3.556 | 2.222 | 4.444 | 0.530 | 0.083 | 0.167 | 0.556 |
| Controle     | M    |        |          | fss.media.debat |  47 | 3.407 |  3.444 | 2.222 | 5.000 | 0.516 | 0.075 | 0.151 | 0.611 |
| Experimental | F    |        |          | fss.media.debat |  11 | 3.417 |  3.556 | 2.444 | 4.444 | 0.594 | 0.179 | 0.399 | 0.778 |
| Experimental | M    |        |          | fss.media.debat |  24 | 3.317 |  3.500 | 2.000 | 4.556 | 0.706 | 0.144 | 0.298 | 1.066 |
| Controle     |      | Rural  |          | dfs.media.debat |  54 | 3.316 |  3.292 | 2.111 | 4.667 | 0.543 | 0.074 | 0.148 | 0.667 |
| Controle     |      | Urbana |          | dfs.media.debat |   9 | 3.460 |  3.222 | 2.889 | 4.667 | 0.552 | 0.184 | 0.424 | 0.413 |
| Controle     |      |        |          | dfs.media.debat |  25 | 3.436 |  3.444 | 2.667 | 4.222 | 0.381 | 0.076 | 0.157 | 0.444 |
| Experimental |      | Rural  |          | dfs.media.debat |  29 | 3.388 |  3.333 | 2.222 | 4.556 | 0.570 | 0.106 | 0.217 | 0.444 |
| Experimental |      |        |          | dfs.media.debat |   6 | 3.333 |  3.167 | 2.667 | 4.333 | 0.652 | 0.266 | 0.684 | 0.861 |
| Controle     |      | Rural  |          | fss.media.debat |  54 | 3.402 |  3.444 | 2.222 | 4.444 | 0.492 | 0.067 | 0.134 | 0.556 |
| Controle     |      | Urbana |          | fss.media.debat |   9 | 3.674 |  3.556 | 2.889 | 5.000 | 0.751 | 0.250 | 0.577 | 1.222 |
| Controle     |      |        |          | fss.media.debat |  25 | 3.406 |  3.556 | 2.222 | 4.333 | 0.482 | 0.096 | 0.199 | 0.556 |
| Experimental |      | Rural  |          | fss.media.debat |  29 | 3.356 |  3.556 | 2.111 | 4.444 | 0.624 | 0.116 | 0.237 | 1.000 |
| Experimental |      |        |          | fss.media.debat |   6 | 3.312 |  3.222 | 2.000 | 4.556 | 0.913 | 0.373 | 0.958 | 1.010 |
| Controle     |      |        | Branca   | dfs.media.debat |   9 | 3.198 |  3.444 | 2.111 | 4.111 | 0.654 | 0.218 | 0.503 | 0.778 |
| Controle     |      |        | Parda    | dfs.media.debat |  46 | 3.453 |  3.333 | 2.222 | 4.667 | 0.514 | 0.076 | 0.153 | 0.639 |
| Controle     |      |        | Preta    | dfs.media.debat |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.debat |  32 | 3.289 |  3.333 | 2.556 | 4.111 | 0.432 | 0.076 | 0.156 | 0.500 |
| Experimental |      |        | Branca   | dfs.media.debat |   5 | 3.244 |  3.444 | 2.222 | 3.556 | 0.574 | 0.257 | 0.713 | 0.111 |
| Experimental |      |        | Indígena | dfs.media.debat |   5 | 3.475 |  3.444 | 2.556 | 4.333 | 0.638 | 0.285 | 0.793 | 0.292 |
| Experimental |      |        | Parda    | dfs.media.debat |  11 | 3.404 |  3.222 | 2.444 | 4.556 | 0.652 | 0.197 | 0.438 | 0.556 |
| Experimental |      |        |          | dfs.media.debat |  14 | 3.373 |  3.222 | 2.667 | 4.444 | 0.547 | 0.146 | 0.316 | 0.611 |
| Controle     |      |        | Branca   | fss.media.debat |   9 | 3.210 |  3.222 | 2.222 | 3.889 | 0.557 | 0.186 | 0.428 | 0.444 |
| Controle     |      |        | Parda    | fss.media.debat |  46 | 3.481 |  3.472 | 2.667 | 5.000 | 0.512 | 0.076 | 0.152 | 0.556 |
| Controle     |      |        | Preta    | fss.media.debat |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.debat |  32 | 3.421 |  3.500 | 2.222 | 4.444 | 0.528 | 0.093 | 0.190 | 0.667 |
| Experimental |      |        | Branca   | fss.media.debat |   5 | 3.022 |  3.111 | 2.111 | 3.889 | 0.743 | 0.332 | 0.922 | 1.111 |
| Experimental |      |        | Indígena | fss.media.debat |   5 | 3.778 |  3.556 | 2.889 | 4.556 | 0.707 | 0.316 | 0.878 | 1.000 |
| Experimental |      |        | Parda    | fss.media.debat |  11 | 3.253 |  3.111 | 2.556 | 3.889 | 0.456 | 0.137 | 0.306 | 0.722 |
| Experimental |      |        |          | fss.media.debat |  14 | 3.387 |  3.590 | 2.000 | 4.444 | 0.745 | 0.199 | 0.430 | 1.094 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |  skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------------|----:|----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.debat | 123 | 0.1390987 |  0.0373658 | YES      | 0.6965023 | D’Agostino | 0.7059215 | ns       | QQ        |
| fss.media.debat |  92 | 0.1569775 | -0.4212330 | YES      | 0.7811374 | D’Agostino | 0.6766719 | ns       | YES       |
| fss.media.debat |  77 | 0.3273607 |  0.0519664 | YES      | 1.9698715 | D’Agostino | 0.3734632 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var             | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 123 |       3 |     119 | 1.7232622 | 0.1659077 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 123 |       3 |     115 | 1.1990000 | 0.3140000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Zona`     |  92 |       2 |      89 | 1.2403564 | 0.2942326 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  92 |       2 |      86 | 0.0340000 | 0.9670000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  77 |       5 |      71 | 0.5613568 | 0.7292151 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  77 |       4 |      66 | 1.0320000 | 0.3970000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect          | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 120 | 5.366 | 33.213 | 19.387 | \<0.001 | 0.139 | \*     |
| 2   | grupo           |   1 | 120 | 0.196 | 33.213 |  0.709 | 0.401   | 0.006 |        |
| 4   | Sexo            |   1 | 120 | 0.218 | 33.191 |  0.788 | 0.376   | 0.007 |        |
| 6   | Zona            |   1 |  89 | 0.503 | 25.356 |  1.765 | 0.187   | 0.019 |        |
| 8   | Cor.Raca        |   3 |  72 | 1.154 | 18.421 |  1.503 | 0.221   | 0.059 |        |

## ANCOVA tests for two factors

|     | Effect          | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 118 | 5.724 | 32.719 | 20.644 | \<0.001 | 0.149 | \*     |
| 4   | grupo:Sexo      |   1 | 118 | 0.326 | 32.719 |  1.177 | 0.28    | 0.010 |        |
| 8   | grupo:Zona      |   0 |  88 |       | 25.263 |        |         |       |        |
| 12  | grupo:Cor.Raca  |   1 |  70 | 0.000 | 17.891 |  0.001 | 0.981   | 0.000 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     |  88 |   3.365 |    0.053 |     3.431 |      0.055 |   3.433 |    0.056 |
| fss.media.debat | Experimental |  35 |   3.379 |    0.097 |     3.348 |      0.113 |   3.344 |    0.089 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat | Controle | Experimental |    0.089 |   -0.120 |     0.297 | 0.105 |     0.842 | 0.401 | 0.401 | ns           |
| dfs.media.debat | Controle | Experimental |   -0.014 |   -0.221 |     0.193 | 0.105 |    -0.137 | 0.891 | 0.891 | ns           |

| .y.        | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | pre    | pos    |   -0.067 |   -0.228 |     0.095 | 0.082 |    -0.811 | 0.418 | 0.418 | ns           |
| flow.debat | Experimental | pre    | pos    |    0.031 |   -0.226 |     0.287 | 0.130 |     0.235 | 0.815 | 0.815 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | F    |  41 |   3.415 |    0.075 |     3.459 |      0.083 |   3.440 |    0.082 |
| fss.media.debat | Controle     | M    |  47 |   3.321 |    0.076 |     3.407 |      0.075 |   3.427 |    0.077 |
| fss.media.debat | Experimental | F    |  11 |   3.121 |    0.145 |     3.417 |      0.179 |   3.522 |    0.160 |
| fss.media.debat | Experimental | M    |  24 |   3.497 |    0.119 |     3.317 |      0.144 |   3.263 |    0.108 |

| .y.             | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | F    | Controle | Experimental |   -0.082 |   -0.440 |     0.277 | 0.181 |    -0.451 | 0.653 | 0.653 | ns           |
| fss.media.debat |              | M    | Controle | Experimental |    0.164 |   -0.100 |     0.428 | 0.133 |     1.233 | 0.220 | 0.220 | ns           |
| dfs.media.debat |              | F    | Controle | Experimental |    0.293 |   -0.055 |     0.641 | 0.176 |     1.670 | 0.098 | 0.098 | ns           |
| dfs.media.debat |              | M    | Controle | Experimental |   -0.176 |   -0.433 |     0.081 | 0.130 |    -1.356 | 0.178 | 0.178 | ns           |
| fss.media.debat | Controle     |      | F        | M            |    0.013 |   -0.210 |     0.237 | 0.113 |     0.116 | 0.908 | 0.908 | ns           |
| fss.media.debat | Experimental |      | F        | M            |    0.259 |   -0.127 |     0.645 | 0.195 |     1.328 | 0.187 | 0.187 | ns           |
| dfs.media.debat | Controle     |      | F        | M            |    0.094 |   -0.125 |     0.313 | 0.111 |     0.847 | 0.399 | 0.399 | ns           |
| dfs.media.debat | Experimental |      | F        | M            |   -0.376 |   -0.749 |    -0.003 | 0.188 |    -1.995 | 0.048 | 0.048 | \*           |

| .y.        | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | F    | pre    | pos    |   -0.045 |   -0.281 |     0.192 | 0.120 |    -0.372 | 0.710 | 0.710 | ns           |
| flow.debat | Controle     | M    | pre    | pos    |   -0.086 |   -0.307 |     0.135 | 0.112 |    -0.764 | 0.446 | 0.446 | ns           |
| flow.debat | Experimental | F    | pre    | pos    |   -0.295 |   -0.752 |     0.161 | 0.232 |    -1.275 | 0.204 | 0.204 | ns           |
| flow.debat | Experimental | M    | pre    | pos    |    0.180 |   -0.129 |     0.489 | 0.157 |     1.147 | 0.253 | 0.253 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var             | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Rural  |  54 |   3.316 |    0.074 |     3.402 |      0.067 |   3.414 |    0.073 |
| fss.media.debat | Controle     | Urbana |   9 |   3.460 |    0.184 |     3.674 |      0.250 |   3.639 |    0.179 |
| fss.media.debat | Experimental | Rural  |  29 |   3.388 |    0.106 |     3.356 |      0.116 |   3.344 |    0.100 |

|     | .y.             | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.debat |          | Rural | Controle | Experimental |    0.070 |   -0.175 |     0.316 | 0.124 |     0.570 | 0.570 | 0.570 | ns           |
| 3   | dfs.media.debat |          | Rural | Controle | Experimental |   -0.073 |   -0.325 |     0.180 | 0.127 |    -0.570 | 0.570 | 0.570 | ns           |
| 5   | fss.media.debat | Controle |       | Rural    | Urbana       |   -0.224 |   -0.609 |     0.160 | 0.193 |    -1.160 | 0.249 | 0.249 | ns           |
| 7   | dfs.media.debat | Controle |       | Rural    | Urbana       |   -0.144 |   -0.540 |     0.251 | 0.199 |    -0.726 | 0.470 | 0.470 | ns           |

| .y.        | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Rural  | pre    | pos    |   -0.086 |   -0.298 |     0.125 | 0.107 |    -0.805 | 0.422 | 0.422 | ns           |
| flow.debat | Controle     | Urbana | pre    | pos    |   -0.214 |   -0.733 |     0.305 | 0.263 |    -0.814 | 0.417 | 0.417 | ns           |
| flow.debat | Experimental | Rural  | pre    | pos    |    0.033 |   -0.257 |     0.322 | 0.147 |     0.222 | 0.824 | 0.824 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var             | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Branca   |   9 |   3.198 |    0.218 |     3.210 |      0.186 |   3.281 |    0.170 |
| fss.media.debat | Controle     | Parda    |  46 |   3.453 |    0.076 |     3.481 |      0.076 |   3.464 |    0.075 |
| fss.media.debat | Experimental | Branca   |   5 |   3.244 |    0.257 |     3.022 |      0.332 |   3.077 |    0.227 |
| fss.media.debat | Experimental | Indígena |   5 |   3.475 |    0.285 |     3.778 |      0.316 |   3.753 |    0.226 |
| fss.media.debat | Experimental | Parda    |  11 |   3.404 |    0.197 |     3.253 |      0.137 |   3.252 |    0.152 |

|     | .y.             | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.debat |              | Branca   | Controle | Experimental |    0.204 |   -0.359 |     0.766 | 0.282 |     0.723 | 0.472 | 0.472 | ns           |
| 3   | fss.media.debat |              | Parda    | Controle | Experimental |    0.212 |   -0.127 |     0.550 | 0.170 |     1.246 | 0.217 | 0.217 | ns           |
| 4   | dfs.media.debat |              | Branca   | Controle | Experimental |   -0.047 |   -0.673 |     0.579 | 0.314 |    -0.149 | 0.882 | 0.882 | ns           |
| 6   | dfs.media.debat |              | Parda    | Controle | Experimental |    0.049 |   -0.328 |     0.426 | 0.189 |     0.259 | 0.797 | 0.797 | ns           |
| 8   | fss.media.debat | Controle     |          | Branca   | Parda        |   -0.183 |   -0.554 |     0.189 | 0.186 |    -0.982 | 0.330 | 0.330 | ns           |
| 10  | fss.media.debat | Experimental |          | Branca   | Indígena     |   -0.676 |   -1.315 |    -0.036 | 0.321 |    -2.108 | 0.039 | 0.116 | ns           |
| 11  | fss.media.debat | Experimental |          | Branca   | Parda        |   -0.175 |   -0.720 |     0.370 | 0.273 |    -0.641 | 0.524 | 1.000 | ns           |
| 12  | fss.media.debat | Experimental |          | Indígena | Parda        |    0.501 |   -0.043 |     1.045 | 0.273 |     1.836 | 0.071 | 0.212 | ns           |
| 14  | dfs.media.debat | Controle     |          | Branca   | Parda        |   -0.255 |   -0.664 |     0.154 | 0.205 |    -1.245 | 0.217 | 0.217 | ns           |
| 16  | dfs.media.debat | Experimental |          | Branca   | Indígena     |   -0.231 |   -0.940 |     0.479 | 0.356 |    -0.648 | 0.519 | 1.000 | ns           |
| 17  | dfs.media.debat | Experimental |          | Branca   | Parda        |   -0.160 |   -0.765 |     0.446 | 0.304 |    -0.526 | 0.601 | 1.000 | ns           |
| 18  | dfs.media.debat | Experimental |          | Indígena | Parda        |    0.071 |   -0.534 |     0.676 | 0.304 |     0.234 | 0.816 | 1.000 | ns           |

| .y.        | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Branca   | pre    | pos    |   -0.012 |   -0.526 |     0.501 | 0.260 |    -0.048 | 0.962 | 0.962 | ns           |
| flow.debat | Controle     | Parda    | pre    | pos    |   -0.028 |   -0.255 |     0.199 | 0.115 |    -0.245 | 0.807 | 0.807 | ns           |
| flow.debat | Experimental | Branca   | pre    | pos    |    0.222 |   -0.466 |     0.911 | 0.348 |     0.638 | 0.525 | 0.525 | ns           |
| flow.debat | Experimental | Indígena | pre    | pos    |   -0.303 |   -0.991 |     0.386 | 0.348 |    -0.869 | 0.386 | 0.386 | ns           |
| flow.debat | Experimental | Parda    | pre    | pos    |    0.152 |   -0.313 |     0.616 | 0.235 |     0.645 | 0.520 | 0.520 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.debat_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
