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
| Controle     | F    |        |          | dfs.media.text |  41 | 3.569 |  3.556 | 2.556 | 4.667 | 0.493 | 0.077 | 0.156 | 0.444 |
| Controle     | M    |        |          | dfs.media.text |  35 | 3.469 |  3.444 | 2.556 | 5.000 | 0.554 | 0.094 | 0.190 | 0.833 |
| Experimental | F    |        |          | dfs.media.text |  90 | 3.481 |  3.444 | 2.222 | 4.556 | 0.511 | 0.054 | 0.107 | 0.750 |
| Experimental | M    |        |          | dfs.media.text |  67 | 3.433 |  3.444 | 1.889 | 4.667 | 0.525 | 0.064 | 0.128 | 0.667 |
| Controle     | F    |        |          | fss.media.text |  41 | 3.594 |  3.556 | 2.111 | 5.000 | 0.685 | 0.107 | 0.216 | 0.889 |
| Controle     | M    |        |          | fss.media.text |  35 | 3.414 |  3.444 | 2.333 | 4.556 | 0.497 | 0.084 | 0.171 | 0.889 |
| Experimental | F    |        |          | fss.media.text |  90 | 3.438 |  3.333 | 1.778 | 4.778 | 0.574 | 0.061 | 0.120 | 0.667 |
| Experimental | M    |        |          | fss.media.text |  67 | 3.415 |  3.333 | 1.667 | 5.000 | 0.634 | 0.078 | 0.155 | 0.778 |
| Controle     |      | Rural  |          | dfs.media.text |  29 | 3.424 |  3.333 | 2.750 | 4.333 | 0.486 | 0.090 | 0.185 | 0.778 |
| Controle     |      | Urbana |          | dfs.media.text |  13 | 3.650 |  3.667 | 2.889 | 4.444 | 0.456 | 0.126 | 0.275 | 0.444 |
| Controle     |      |        |          | dfs.media.text |  34 | 3.559 |  3.444 | 2.556 | 5.000 | 0.570 | 0.098 | 0.199 | 0.528 |
| Experimental |      | Rural  |          | dfs.media.text |  47 | 3.526 |  3.556 | 2.333 | 4.556 | 0.527 | 0.077 | 0.155 | 0.771 |
| Experimental |      | Urbana |          | dfs.media.text |  26 | 3.557 |  3.556 | 1.889 | 4.556 | 0.597 | 0.117 | 0.241 | 0.528 |
| Experimental |      |        |          | dfs.media.text |  84 | 3.394 |  3.333 | 2.222 | 4.667 | 0.479 | 0.052 | 0.104 | 0.556 |
| Controle     |      | Rural  |          | fss.media.text |  29 | 3.431 |  3.444 | 2.111 | 4.556 | 0.587 | 0.109 | 0.223 | 0.889 |
| Controle     |      | Urbana |          | fss.media.text |  13 | 3.734 |  3.778 | 2.889 | 4.889 | 0.554 | 0.154 | 0.335 | 0.556 |
| Controle     |      |        |          | fss.media.text |  34 | 3.494 |  3.444 | 2.333 | 5.000 | 0.642 | 0.110 | 0.224 | 0.861 |
| Experimental |      | Rural  |          | fss.media.text |  47 | 3.511 |  3.556 | 2.556 | 4.778 | 0.546 | 0.080 | 0.160 | 0.778 |
| Experimental |      | Urbana |          | fss.media.text |  26 | 3.367 |  3.333 | 2.222 | 4.778 | 0.629 | 0.123 | 0.254 | 0.667 |
| Experimental |      |        |          | fss.media.text |  84 | 3.401 |  3.389 | 1.667 | 5.000 | 0.620 | 0.068 | 0.134 | 0.778 |
| Controle     |      |        | Branca   | dfs.media.text |   2 | 3.833 |  3.833 | 3.444 | 4.222 | 0.550 | 0.389 | 4.941 | 0.389 |
| Controle     |      |        | Parda    | dfs.media.text |  30 | 3.370 |  3.333 | 2.556 | 4.333 | 0.483 | 0.088 | 0.180 | 0.750 |
| Controle     |      |        |          | dfs.media.text |  44 | 3.613 |  3.556 | 2.556 | 5.000 | 0.529 | 0.080 | 0.161 | 0.583 |
| Experimental |      |        | Branca   | dfs.media.text |  16 | 3.490 |  3.500 | 1.889 | 4.500 | 0.595 | 0.149 | 0.317 | 0.778 |
| Experimental |      |        | Parda    | dfs.media.text |  43 | 3.472 |  3.444 | 2.222 | 4.556 | 0.535 | 0.082 | 0.165 | 0.715 |
| Experimental |      |        |          | dfs.media.text |  98 | 3.450 |  3.444 | 2.333 | 4.667 | 0.499 | 0.050 | 0.100 | 0.667 |
| Controle     |      |        | Branca   | fss.media.text |   2 | 4.056 |  4.056 | 3.444 | 4.667 | 0.864 | 0.611 | 7.765 | 0.611 |
| Controle     |      |        | Parda    | fss.media.text |  30 | 3.519 |  3.500 | 2.333 | 4.556 | 0.612 | 0.112 | 0.229 | 1.056 |
| Controle     |      |        |          | fss.media.text |  44 | 3.481 |  3.528 | 2.111 | 5.000 | 0.601 | 0.091 | 0.183 | 0.795 |
| Experimental |      |        | Branca   | fss.media.text |  16 | 3.361 |  3.389 | 2.222 | 4.000 | 0.479 | 0.120 | 0.255 | 0.667 |
| Experimental |      |        | Parda    | fss.media.text |  43 | 3.473 |  3.333 | 2.556 | 4.778 | 0.530 | 0.081 | 0.163 | 0.678 |
| Experimental |      |        |          | fss.media.text |  98 | 3.419 |  3.333 | 1.667 | 5.000 | 0.646 | 0.065 | 0.130 | 0.778 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.text | 233 | -0.0259113 |  0.1770740 | YES      | 0.7191335 | D’Agostino | 0.6979787 | ns       | \-        |
| fss.media.text | 115 |  0.0602333 | -0.4246637 | YES      | 0.6603589 | D’Agostino | 0.7187947 | ns       | QQ        |
| fss.media.text |  91 |  0.0555054 | -0.6404406 | YES      | 1.8174430 | D’Agostino | 0.4030392 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 233 |       3 |     229 | 0.3277252 | 0.8053149 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 233 |       3 |     225 | 3.0030000 | 0.0310000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Zona`     | 115 |       3 |     111 | 1.6429097 | 0.1835830 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 115 |       3 |     107 | 2.6820000 | 0.0500000 | ns       |
| fss.media.text | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  91 |       3 |      87 | 1.5770296 | 0.2007154 | ns       |
| fss.media.text | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  91 |       3 |      83 | 2.4190000 | 0.0720000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 230 | 9.406 | 74.322 | 29.107 | \<0.001 | 0.112 | \*     |
| 2   | grupo          |   1 | 230 | 0.174 | 74.322 |  0.539 | 0.464   | 0.002 |        |
| 4   | Sexo           |   1 | 230 | 0.131 | 74.365 |  0.406 | 0.525   | 0.002 |        |
| 6   | Zona           |   1 | 112 | 0.037 | 31.290 |  0.134 | 0.715   | 0.001 |        |
| 8   | Cor.Raca       |   1 |  88 | 0.095 | 25.769 |  0.325 | 0.57    | 0.004 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.text |   1 | 228 | 9.149 | 73.946 | 28.210 | \<0.001 | 0.110 | \*     |
| 4   | grupo:Sexo     |   1 | 228 | 0.234 | 73.946 |  0.722 | 0.396   | 0.003 |        |
| 8   | grupo:Zona     |   1 | 110 | 0.740 | 30.364 |  2.679 | 0.105   | 0.024 |        |
| 12  | grupo:Cor.Raca |   1 |  86 | 0.444 | 25.037 |  1.525 | 0.22    | 0.017 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     |  76 |   3.523 |    0.060 |     3.511 |      0.070 |   3.495 |    0.065 |
| fss.media.text | Experimental | 157 |   3.460 |    0.041 |     3.428 |      0.048 |   3.436 |    0.045 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text | Controle | Experimental |    0.058 |   -0.098 |     0.215 | 0.080 |     0.734 | 0.464 | 0.464 | ns           |
| dfs.media.text | Controle | Experimental |    0.063 |   -0.080 |     0.205 | 0.072 |     0.866 | 0.387 | 0.387 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | pre    | pos    |    0.012 |   -0.167 |     0.191 | 0.091 |     0.130 | 0.896 | 0.896 | ns           |
| flow.text | Experimental | pre    | pos    |    0.032 |   -0.092 |     0.157 | 0.063 |     0.506 | 0.613 | 0.613 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | F    |  41 |   3.569 |    0.077 |     3.594 |      0.107 |   3.560 |    0.089 |
| fss.media.text | Controle     | M    |  35 |   3.469 |    0.094 |     3.414 |      0.084 |   3.419 |    0.096 |
| fss.media.text | Experimental | F    |  90 |   3.481 |    0.054 |     3.438 |      0.061 |   3.438 |    0.060 |
| fss.media.text | Experimental | M    |  67 |   3.433 |    0.064 |     3.415 |      0.078 |   3.433 |    0.070 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | F    | Controle | Experimental |    0.122 |   -0.090 |     0.333 | 0.107 |     1.130 | 0.260 | 0.260 | ns           |
| fss.media.text |              | M    | Controle | Experimental |   -0.015 |   -0.249 |     0.220 | 0.119 |    -0.122 | 0.903 | 0.903 | ns           |
| dfs.media.text |              | F    | Controle | Experimental |    0.089 |   -0.104 |     0.281 | 0.098 |     0.906 | 0.366 | 0.366 | ns           |
| dfs.media.text |              | M    | Controle | Experimental |    0.036 |   -0.177 |     0.249 | 0.108 |     0.331 | 0.741 | 0.741 | ns           |
| fss.media.text | Controle     |      | F        | M            |    0.141 |   -0.117 |     0.400 | 0.131 |     1.076 | 0.283 | 0.283 | ns           |
| fss.media.text | Experimental |      | F        | M            |    0.005 |   -0.176 |     0.186 | 0.092 |     0.057 | 0.955 | 0.955 | ns           |
| dfs.media.text | Controle     |      | F        | M            |    0.100 |   -0.135 |     0.336 | 0.119 |     0.842 | 0.401 | 0.401 | ns           |
| dfs.media.text | Experimental |      | F        | M            |    0.048 |   -0.117 |     0.213 | 0.084 |     0.570 | 0.569 | 0.569 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | F    | pre    | pos    |   -0.025 |   -0.269 |     0.219 | 0.124 |    -0.199 | 0.842 | 0.842 | ns           |
| flow.text | Controle     | M    | pre    | pos    |    0.055 |   -0.209 |     0.319 | 0.134 |     0.408 | 0.684 | 0.684 | ns           |
| flow.text | Experimental | F    | pre    | pos    |    0.042 |   -0.122 |     0.207 | 0.084 |     0.505 | 0.614 | 0.614 | ns           |
| flow.text | Experimental | M    | pre    | pos    |    0.018 |   -0.173 |     0.209 | 0.097 |     0.188 | 0.851 | 0.851 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Rural  |  29 |   3.424 |    0.090 |     3.431 |      0.109 |   3.475 |    0.098 |
| fss.media.text | Controle     | Urbana |  13 |   3.650 |    0.126 |     3.734 |      0.154 |   3.675 |    0.146 |
| fss.media.text | Experimental | Rural  |  47 |   3.526 |    0.077 |     3.511 |      0.080 |   3.508 |    0.077 |
| fss.media.text | Experimental | Urbana |  26 |   3.557 |    0.117 |     3.367 |      0.123 |   3.351 |    0.103 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.text |              | Rural  | Controle | Experimental |   -0.033 |   -0.280 |     0.214 | 0.124 |    -0.265 | 0.792 | 0.792 | ns           |
| fss.media.text |              | Urbana | Controle | Experimental |    0.324 |   -0.030 |     0.678 | 0.179 |     1.814 | 0.072 | 0.072 | ns           |
| dfs.media.text |              | Rural  | Controle | Experimental |   -0.102 |   -0.349 |     0.144 | 0.124 |    -0.821 | 0.413 | 0.413 | ns           |
| dfs.media.text |              | Urbana | Controle | Experimental |    0.093 |   -0.262 |     0.448 | 0.179 |     0.519 | 0.604 | 0.604 | ns           |
| fss.media.text | Controle     |        | Rural    | Urbana       |   -0.199 |   -0.549 |     0.151 | 0.177 |    -1.128 | 0.262 | 0.262 | ns           |
| fss.media.text | Experimental |        | Rural    | Urbana       |    0.158 |   -0.097 |     0.412 | 0.128 |     1.228 | 0.222 | 0.222 | ns           |
| dfs.media.text | Controle     |        | Rural    | Urbana       |   -0.226 |   -0.574 |     0.123 | 0.176 |    -1.284 | 0.202 | 0.202 | ns           |
| dfs.media.text | Experimental |        | Rural    | Urbana       |   -0.031 |   -0.286 |     0.225 | 0.129 |    -0.238 | 0.812 | 0.812 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Rural  | pre    | pos    |   -0.007 |   -0.293 |     0.279 | 0.145 |    -0.046 | 0.963 | 0.963 | ns           |
| flow.text | Controle     | Urbana | pre    | pos    |   -0.084 |   -0.511 |     0.343 | 0.217 |    -0.390 | 0.697 | 0.697 | ns           |
| flow.text | Experimental | Rural  | pre    | pos    |    0.015 |   -0.209 |     0.240 | 0.114 |     0.135 | 0.893 | 0.893 | ns           |
| flow.text | Experimental | Urbana | pre    | pos    |    0.190 |   -0.112 |     0.492 | 0.153 |     1.238 | 0.217 | 0.217 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.text | Controle     | Parda    |  30 |   3.370 |    0.088 |     3.519 |      0.112 |   3.537 |    0.098 |
| fss.media.text | Experimental | Branca   |  16 |   3.490 |    0.149 |     3.361 |      0.120 |   3.349 |    0.134 |
| fss.media.text | Experimental | Parda    |  43 |   3.472 |    0.082 |     3.473 |      0.081 |   3.465 |    0.082 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.text |              | Parda    | Controle | Experimental |    0.071 |   -0.184 |     0.326 | 0.128 |     0.556 | 0.580 | 0.580 | ns           |
| 4   | dfs.media.text |              | Parda    | Controle | Experimental |   -0.102 |   -0.352 |     0.149 | 0.126 |    -0.807 | 0.422 | 0.422 | ns           |
| 6   | fss.media.text | Experimental |          | Branca   | Parda        |   -0.117 |   -0.430 |     0.196 | 0.157 |    -0.743 | 0.459 | 0.459 | ns           |
| 8   | dfs.media.text | Experimental |          | Branca   | Parda        |    0.018 |   -0.290 |     0.326 | 0.155 |     0.116 | 0.908 | 0.908 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.text | Controle     | Parda    | pre    | pos    |   -0.149 |   -0.424 |     0.127 | 0.140 |    -1.065 | 0.288 | 0.288 | ns           |
| flow.text | Experimental | Branca   | pre    | pos    |    0.128 |   -0.249 |     0.506 | 0.191 |     0.672 | 0.502 | 0.502 | ns           |
| flow.text | Experimental | Parda    | pre    | pos    |   -0.002 |   -0.232 |     0.228 | 0.117 |    -0.016 | 0.988 | 0.988 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.text-Serie-8-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
