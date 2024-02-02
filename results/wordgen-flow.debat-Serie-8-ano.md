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
| Controle     | F    |        |          | dfs.media.debat |  44 | 3.557 |  3.667 | 2.500 | 4.333 | 0.459 | 0.069 | 0.140 | 0.556 |
| Controle     | M    |        |          | dfs.media.debat |  36 | 3.325 |  3.222 | 2.500 | 5.000 | 0.537 | 0.089 | 0.182 | 0.889 |
| Experimental | F    |        |          | dfs.media.debat |  88 | 3.547 |  3.500 | 2.444 | 4.778 | 0.551 | 0.059 | 0.117 | 0.778 |
| Experimental | M    |        |          | dfs.media.debat |  65 | 3.410 |  3.444 | 2.111 | 4.556 | 0.591 | 0.073 | 0.146 | 0.778 |
| Controle     | F    |        |          | fss.media.debat |  44 | 3.550 |  3.556 | 2.000 | 5.000 | 0.681 | 0.103 | 0.207 | 0.944 |
| Controle     | M    |        |          | fss.media.debat |  36 | 3.277 |  3.278 | 2.000 | 4.333 | 0.591 | 0.098 | 0.200 | 0.799 |
| Experimental | F    |        |          | fss.media.debat |  88 | 3.390 |  3.333 | 1.000 | 5.000 | 0.689 | 0.073 | 0.146 | 0.778 |
| Experimental | M    |        |          | fss.media.debat |  65 | 3.370 |  3.333 | 2.000 | 4.556 | 0.564 | 0.070 | 0.140 | 0.778 |
| Controle     |      | Rural  |          | dfs.media.debat |  31 | 3.342 |  3.444 | 2.500 | 4.111 | 0.459 | 0.082 | 0.168 | 0.722 |
| Controle     |      | Urbana |          | dfs.media.debat |  16 | 3.625 |  3.722 | 2.889 | 4.333 | 0.487 | 0.122 | 0.259 | 0.806 |
| Controle     |      |        |          | dfs.media.debat |  33 | 3.473 |  3.444 | 2.500 | 5.000 | 0.544 | 0.095 | 0.193 | 0.667 |
| Experimental |      | Rural  |          | dfs.media.debat |  44 | 3.406 |  3.444 | 2.333 | 4.778 | 0.583 | 0.088 | 0.177 | 0.833 |
| Experimental |      | Urbana |          | dfs.media.debat |  26 | 3.696 |  3.667 | 2.111 | 4.556 | 0.587 | 0.115 | 0.237 | 0.750 |
| Experimental |      |        |          | dfs.media.debat |  83 | 3.469 |  3.444 | 2.444 | 4.556 | 0.550 | 0.060 | 0.120 | 0.778 |
| Controle     |      | Rural  |          | fss.media.debat |  31 | 3.301 |  3.556 | 2.000 | 4.333 | 0.569 | 0.102 | 0.209 | 0.778 |
| Controle     |      | Urbana |          | fss.media.debat |  16 | 3.720 |  3.708 | 2.667 | 4.667 | 0.533 | 0.133 | 0.284 | 0.694 |
| Controle     |      |        |          | fss.media.debat |  33 | 3.404 |  3.333 | 2.000 | 5.000 | 0.745 | 0.130 | 0.264 | 1.111 |
| Experimental |      | Rural  |          | fss.media.debat |  44 | 3.402 |  3.444 | 1.000 | 4.667 | 0.763 | 0.115 | 0.232 | 0.806 |
| Experimental |      | Urbana |          | fss.media.debat |  26 | 3.410 |  3.222 | 2.444 | 5.000 | 0.621 | 0.122 | 0.251 | 0.861 |
| Experimental |      |        |          | fss.media.debat |  83 | 3.362 |  3.333 | 2.000 | 4.556 | 0.573 | 0.063 | 0.125 | 0.778 |
| Controle     |      |        | Branca   | dfs.media.debat |   3 | 3.444 |  3.444 | 3.000 | 3.889 | 0.444 | 0.257 | 1.104 | 0.444 |
| Controle     |      |        | Parda    | dfs.media.debat |  31 | 3.297 |  3.333 | 2.556 | 4.111 | 0.457 | 0.082 | 0.168 | 0.778 |
| Controle     |      |        |          | dfs.media.debat |  46 | 3.558 |  3.667 | 2.500 | 5.000 | 0.523 | 0.077 | 0.155 | 0.556 |
| Experimental |      |        | Amarela  | dfs.media.debat |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | dfs.media.debat |  16 | 3.410 |  3.500 | 2.111 | 4.222 | 0.611 | 0.153 | 0.326 | 0.583 |
| Experimental |      |        | Parda    | dfs.media.debat |  41 | 3.419 |  3.444 | 2.444 | 4.778 | 0.565 | 0.088 | 0.178 | 0.667 |
| Experimental |      |        |          | dfs.media.debat |  95 | 3.533 |  3.556 | 2.333 | 4.556 | 0.571 | 0.059 | 0.116 | 0.778 |
| Controle     |      |        | Branca   | fss.media.debat |   3 | 3.667 |  3.556 | 2.778 | 4.667 | 0.949 | 0.548 | 2.358 | 0.944 |
| Controle     |      |        | Parda    | fss.media.debat |  31 | 3.351 |  3.333 | 2.000 | 5.000 | 0.719 | 0.129 | 0.264 | 1.000 |
| Controle     |      |        |          | fss.media.debat |  46 | 3.462 |  3.528 | 2.000 | 4.667 | 0.594 | 0.088 | 0.176 | 0.774 |
| Experimental |      |        | Amarela  | fss.media.debat |   1 | 3.556 |  3.556 | 3.556 | 3.556 |       |       |       | 0.000 |
| Experimental |      |        | Branca   | fss.media.debat |  16 | 3.385 |  3.410 | 2.333 | 4.111 | 0.476 | 0.119 | 0.254 | 0.500 |
| Experimental |      |        | Parda    | fss.media.debat |  41 | 3.469 |  3.444 | 1.778 | 4.667 | 0.661 | 0.103 | 0.209 | 1.000 |
| Experimental |      |        |          | fss.media.debat |  95 | 3.342 |  3.333 | 1.000 | 5.000 | 0.655 | 0.067 | 0.133 | 0.833 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.debat | 233 | -0.3808027 |  0.5951475 | YES      |  8.986049 | D’Agostino | 0.0111868 | ns       | \-        |
| fss.media.debat | 117 | -0.5582561 |  1.3494793 | NO       | 12.254874 | D’Agostino | 0.0021822 | \*       | QQ        |
| fss.media.debat |  92 | -0.1548438 | -0.4512671 | YES      |  0.886125 | D’Agostino | 0.6420671 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var             | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 233 |       3 |     229 | 0.0374615 | 0.9902834 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 233 |       3 |     225 | 3.8900000 | 0.0100000 | \*       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Zona`     | 117 |       3 |     113 | 0.3385588 | 0.7974789 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 117 |       3 |     109 | 1.2840000 | 0.2840000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  92 |       4 |      87 | 0.8731826 | 0.4834575 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  92 |       3 |      83 | 1.6610000 | 0.1820000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect          | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 230 | 7.757 | 87.578 | 20.372 | \<0.001 | 0.081 | \*     |
| 2   | grupo           |   1 | 230 | 0.173 | 87.578 |  0.453 | 0.501   | 0.002 |        |
| 4   | Sexo            |   1 | 230 | 0.144 | 87.606 |  0.379 | 0.539   | 0.002 |        |
| 6   | Zona            |   1 | 114 | 0.148 | 46.519 |  0.363 | 0.548   | 0.003 |        |
| 8   | Cor.Raca        |   2 |  88 | 0.013 | 34.394 |  0.016 | 0.984   | 0.000 |        |

## ANCOVA tests for two factors

|     | Effect          | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 228 | 7.061 | 86.791 | 18.548 | \<0.001 | 0.075 | \*     |
| 4   | grupo:Sexo      |   1 | 228 | 0.636 | 86.791 |  1.670 | 0.198   | 0.007 |        |
| 8   | grupo:Zona      |   1 | 112 | 1.096 | 45.308 |  2.710 | 0.103   | 0.024 |        |
| 12  | grupo:Cor.Raca  |   1 |  86 | 0.250 | 34.131 |  0.630 | 0.43    | 0.007 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     |  80 |   3.453 |    0.057 |     3.427 |      0.073 |   3.435 |    0.069 |
| fss.media.debat | Experimental | 153 |   3.489 |    0.046 |     3.382 |      0.052 |   3.378 |    0.050 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat | Controle | Experimental |    0.057 |   -0.110 |     0.225 | 0.085 |     0.673 | 0.501 | 0.501 | ns           |
| dfs.media.debat | Controle | Experimental |   -0.037 |   -0.186 |     0.113 | 0.076 |    -0.482 | 0.631 | 0.631 | ns           |

| .y.        | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | pre    | pos    |    0.026 |   -0.160 |     0.211 | 0.094 |     0.271 | 0.786 | 0.786 | ns           |
| flow.debat | Experimental | pre    | pos    |    0.107 |   -0.027 |     0.242 | 0.068 |     1.570 | 0.117 | 0.117 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | F    |  44 |   3.557 |    0.069 |     3.550 |      0.103 |   3.524 |    0.093 |
| fss.media.debat | Controle     | M    |  36 |   3.325 |    0.089 |     3.277 |      0.098 |   3.326 |    0.103 |
| fss.media.debat | Experimental | F    |  88 |   3.547 |    0.059 |     3.390 |      0.073 |   3.367 |    0.066 |
| fss.media.debat | Experimental | M    |  65 |   3.410 |    0.073 |     3.370 |      0.070 |   3.392 |    0.077 |

| .y.             | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | F    | Controle | Experimental |    0.156 |   -0.068 |     0.381 | 0.114 |     1.371 | 0.172 | 0.172 | ns           |
| fss.media.debat |              | M    | Controle | Experimental |   -0.066 |   -0.319 |     0.187 | 0.128 |    -0.512 | 0.609 | 0.609 | ns           |
| dfs.media.debat |              | F    | Controle | Experimental |    0.009 |   -0.189 |     0.208 | 0.101 |     0.094 | 0.925 | 0.925 | ns           |
| dfs.media.debat |              | M    | Controle | Experimental |   -0.085 |   -0.308 |     0.138 | 0.113 |    -0.751 | 0.453 | 0.453 | ns           |
| fss.media.debat | Controle     |      | F        | M            |    0.198 |   -0.078 |     0.473 | 0.140 |     1.414 | 0.159 | 0.159 | ns           |
| fss.media.debat | Experimental |      | F        | M            |   -0.024 |   -0.224 |     0.176 | 0.101 |    -0.238 | 0.812 | 0.812 | ns           |
| dfs.media.debat | Controle     |      | F        | M            |    0.232 |   -0.010 |     0.473 | 0.122 |     1.892 | 0.060 | 0.060 | ns           |
| dfs.media.debat | Experimental |      | F        | M            |    0.137 |   -0.038 |     0.313 | 0.089 |     1.539 | 0.125 | 0.125 | ns           |

| .y.        | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | F    | pre    | pos    |    0.007 |   -0.242 |     0.256 | 0.127 |     0.058 | 0.954 | 0.954 | ns           |
| flow.debat | Controle     | M    | pre    | pos    |    0.048 |   -0.227 |     0.323 | 0.140 |     0.343 | 0.732 | 0.732 | ns           |
| flow.debat | Experimental | F    | pre    | pos    |    0.157 |   -0.019 |     0.333 | 0.090 |     1.753 | 0.080 | 0.080 | ns           |
| flow.debat | Experimental | M    | pre    | pos    |    0.040 |   -0.165 |     0.245 | 0.104 |     0.383 | 0.702 | 0.702 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var             | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Rural  |  31 |   3.342 |    0.082 |     3.301 |      0.102 |   3.346 |    0.115 |
| fss.media.debat | Controle     | Urbana |  16 |   3.625 |    0.122 |     3.720 |      0.133 |   3.674 |    0.160 |
| fss.media.debat | Experimental | Rural  |  44 |   3.406 |    0.088 |     3.402 |      0.115 |   3.427 |    0.096 |
| fss.media.debat | Experimental | Urbana |  26 |   3.696 |    0.115 |     3.410 |      0.122 |   3.342 |    0.127 |

| .y.             | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | Rural  | Controle | Experimental |   -0.082 |   -0.377 |     0.214 | 0.149 |    -0.546 | 0.586 | 0.586 | ns           |
| fss.media.debat |              | Urbana | Controle | Experimental |    0.332 |   -0.069 |     0.733 | 0.202 |     1.641 | 0.104 | 0.104 | ns           |
| dfs.media.debat |              | Rural  | Controle | Experimental |   -0.064 |   -0.315 |     0.188 | 0.127 |    -0.501 | 0.617 | 0.617 | ns           |
| dfs.media.debat |              | Urbana | Controle | Experimental |   -0.071 |   -0.411 |     0.270 | 0.172 |    -0.410 | 0.683 | 0.683 | ns           |
| fss.media.debat | Controle     |        | Rural    | Urbana       |   -0.329 |   -0.722 |     0.064 | 0.198 |    -1.658 | 0.100 | 0.100 | ns           |
| fss.media.debat | Experimental |        | Rural    | Urbana       |    0.085 |   -0.233 |     0.403 | 0.161 |     0.528 | 0.599 | 0.599 | ns           |
| dfs.media.debat | Controle     |        | Rural    | Urbana       |   -0.283 |   -0.613 |     0.047 | 0.167 |    -1.697 | 0.092 | 0.092 | ns           |
| dfs.media.debat | Experimental |        | Rural    | Urbana       |   -0.290 |   -0.555 |    -0.024 | 0.134 |    -2.163 | 0.033 | 0.033 | \*           |

| .y.        | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Rural  | pre    | pos    |    0.042 |   -0.259 |     0.343 | 0.153 |     0.273 | 0.785 | 0.785 | ns           |
| flow.debat | Controle     | Urbana | pre    | pos    |   -0.095 |   -0.514 |     0.324 | 0.213 |    -0.445 | 0.657 | 0.657 | ns           |
| flow.debat | Experimental | Rural  | pre    | pos    |    0.003 |   -0.249 |     0.256 | 0.128 |     0.027 | 0.978 | 0.978 | ns           |
| flow.debat | Experimental | Urbana | pre    | pos    |    0.285 |   -0.044 |     0.614 | 0.167 |     1.710 | 0.089 | 0.089 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var             | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Parda    |  31 |   3.297 |    0.082 |     3.351 |      0.129 |   3.382 |    0.112 |
| fss.media.debat | Experimental | Branca   |  16 |   3.410 |    0.153 |     3.385 |      0.119 |   3.371 |    0.156 |
| fss.media.debat | Experimental | Parda    |  41 |   3.419 |    0.088 |     3.469 |      0.103 |   3.451 |    0.097 |

|     | .y.             | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.debat |              | Parda    | Controle | Experimental |   -0.069 |   -0.366 |     0.227 | 0.149 |    -0.466 | 0.642 | 0.642 | ns           |
| 4   | dfs.media.debat |              | Parda    | Controle | Experimental |   -0.122 |   -0.377 |     0.133 | 0.128 |    -0.951 | 0.344 | 0.344 | ns           |
| 6   | fss.media.debat | Experimental |          | Branca   | Parda        |   -0.080 |   -0.445 |     0.284 | 0.183 |    -0.439 | 0.662 | 0.662 | ns           |
| 8   | dfs.media.debat | Experimental |          | Branca   | Parda        |   -0.010 |   -0.325 |     0.306 | 0.159 |    -0.061 | 0.952 | 0.952 | ns           |

| .y.        | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Parda    | pre    | pos    |   -0.054 |   -0.354 |     0.247 | 0.152 |    -0.353 | 0.724 | 0.724 | ns           |
| flow.debat | Experimental | Branca   | pre    | pos    |    0.025 |   -0.393 |     0.443 | 0.212 |     0.119 | 0.906 | 0.906 | ns           |
| flow.debat | Experimental | Parda    | pre    | pos    |   -0.049 |   -0.311 |     0.212 | 0.132 |    -0.374 | 0.709 | 0.709 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-8-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
