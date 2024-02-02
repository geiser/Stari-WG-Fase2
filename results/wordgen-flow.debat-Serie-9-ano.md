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
| Controle     | F    |        |          | dfs.media.debat |  47 | 3.516 |  3.556 | 2.222 | 4.556 | 0.485 | 0.071 | 0.142 | 0.556 |
| Controle     | M    |        |          | dfs.media.debat |  57 | 3.324 |  3.333 | 1.000 | 4.667 | 0.665 | 0.088 | 0.176 | 0.778 |
| Experimental | F    |        |          | dfs.media.debat |  69 | 3.547 |  3.556 | 2.444 | 5.000 | 0.515 | 0.062 | 0.124 | 0.667 |
| Experimental | M    |        |          | dfs.media.debat |  73 | 3.422 |  3.556 | 1.000 | 5.000 | 0.647 | 0.076 | 0.151 | 0.556 |
| Controle     | F    |        |          | fss.media.debat |  47 | 3.473 |  3.556 | 1.889 | 4.444 | 0.619 | 0.090 | 0.182 | 0.778 |
| Controle     | M    |        |          | fss.media.debat |  57 | 3.469 |  3.556 | 1.000 | 5.000 | 0.782 | 0.104 | 0.208 | 1.000 |
| Experimental | F    |        |          | fss.media.debat |  69 | 3.627 |  3.667 | 2.556 | 5.000 | 0.554 | 0.067 | 0.133 | 0.778 |
| Experimental | M    |        |          | fss.media.debat |  73 | 3.480 |  3.556 | 2.000 | 4.889 | 0.535 | 0.063 | 0.125 | 0.778 |
| Controle     |      | Rural  |          | dfs.media.debat |  39 | 3.597 |  3.556 | 2.333 | 4.556 | 0.478 | 0.077 | 0.155 | 0.667 |
| Controle     |      | Urbana |          | dfs.media.debat |  16 | 3.229 |  3.278 | 2.333 | 4.222 | 0.536 | 0.134 | 0.286 | 0.889 |
| Controle     |      |        |          | dfs.media.debat |  49 | 3.322 |  3.222 | 1.000 | 4.667 | 0.666 | 0.095 | 0.191 | 0.778 |
| Experimental |      | Rural  |          | dfs.media.debat |  51 | 3.486 |  3.556 | 2.333 | 4.667 | 0.478 | 0.067 | 0.134 | 0.722 |
| Experimental |      | Urbana |          | dfs.media.debat |  29 | 3.475 |  3.556 | 1.889 | 5.000 | 0.712 | 0.132 | 0.271 | 0.667 |
| Experimental |      |        |          | dfs.media.debat |  62 | 3.483 |  3.556 | 1.000 | 5.000 | 0.615 | 0.078 | 0.156 | 0.667 |
| Controle     |      | Rural  |          | fss.media.debat |  39 | 3.642 |  3.667 | 2.556 | 5.000 | 0.604 | 0.097 | 0.196 | 0.667 |
| Controle     |      | Urbana |          | fss.media.debat |  16 | 3.389 |  3.611 | 2.111 | 4.333 | 0.696 | 0.174 | 0.371 | 0.972 |
| Controle     |      |        |          | fss.media.debat |  49 | 3.361 |  3.556 | 1.000 | 4.444 | 0.777 | 0.111 | 0.223 | 1.000 |
| Experimental |      | Rural  |          | fss.media.debat |  51 | 3.575 |  3.667 | 2.667 | 4.444 | 0.459 | 0.064 | 0.129 | 0.771 |
| Experimental |      | Urbana |          | fss.media.debat |  29 | 3.479 |  3.556 | 2.000 | 4.444 | 0.554 | 0.103 | 0.211 | 0.778 |
| Experimental |      |        |          | fss.media.debat |  62 | 3.566 |  3.556 | 2.556 | 5.000 | 0.613 | 0.078 | 0.156 | 0.889 |
| Controle     |      |        | Branca   | dfs.media.debat |   7 | 3.778 |  3.667 | 3.222 | 4.667 | 0.574 | 0.217 | 0.531 | 0.889 |
| Controle     |      |        | Indígena | dfs.media.debat |   3 | 3.444 |  3.444 | 3.333 | 3.556 | 0.111 | 0.064 | 0.276 | 0.111 |
| Controle     |      |        | Parda    | dfs.media.debat |  43 | 3.328 |  3.444 | 1.000 | 4.556 | 0.683 | 0.104 | 0.210 | 0.722 |
| Controle     |      |        |          | dfs.media.debat |  51 | 3.429 |  3.444 | 2.222 | 4.444 | 0.523 | 0.073 | 0.147 | 0.667 |
| Experimental |      |        | Branca   | dfs.media.debat |  13 | 3.538 |  3.556 | 2.889 | 4.333 | 0.382 | 0.106 | 0.231 | 0.444 |
| Experimental |      |        | Indígena | dfs.media.debat |   3 | 3.148 |  3.000 | 3.000 | 3.444 | 0.257 | 0.148 | 0.637 | 0.222 |
| Experimental |      |        | Parda    | dfs.media.debat |  42 | 3.421 |  3.444 | 1.889 | 4.667 | 0.537 | 0.083 | 0.167 | 0.556 |
| Experimental |      |        |          | dfs.media.debat |  84 | 3.517 |  3.556 | 1.000 | 5.000 | 0.643 | 0.070 | 0.140 | 0.667 |
| Controle     |      |        | Branca   | fss.media.debat |   7 | 3.905 |  3.889 | 3.000 | 5.000 | 0.724 | 0.274 | 0.670 | 1.056 |
| Controle     |      |        | Indígena | fss.media.debat |   3 | 3.704 |  3.667 | 3.222 | 4.222 | 0.501 | 0.289 | 1.245 | 0.500 |
| Controle     |      |        | Parda    | fss.media.debat |  43 | 3.457 |  3.444 | 1.000 | 4.444 | 0.675 | 0.103 | 0.208 | 0.778 |
| Controle     |      |        |          | fss.media.debat |  51 | 3.409 |  3.556 | 1.333 | 4.889 | 0.741 | 0.104 | 0.208 | 0.944 |
| Experimental |      |        | Branca   | fss.media.debat |  13 | 3.906 |  3.778 | 3.333 | 4.444 | 0.360 | 0.100 | 0.217 | 0.444 |
| Experimental |      |        | Indígena | fss.media.debat |   3 | 3.185 |  2.889 | 2.778 | 3.889 | 0.612 | 0.353 | 1.520 | 0.556 |
| Experimental |      |        | Parda    | fss.media.debat |  42 | 3.516 |  3.611 | 2.778 | 4.222 | 0.431 | 0.067 | 0.134 | 0.667 |
| Experimental |      |        |          | fss.media.debat |  84 | 3.528 |  3.528 | 2.000 | 5.000 | 0.603 | 0.066 | 0.131 | 0.889 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.debat | 246 | -0.3770677 |  0.2311334 | YES      | 6.8419503 | D’Agostino | 0.0326806 | ns       | \-        |
| fss.media.debat | 135 | -0.0523246 | -0.6426353 | YES      | 3.4160513 | D’Agostino | 0.1812232 | ns       | QQ        |
| fss.media.debat | 111 |  0.0019153 |  0.0641602 | YES      | 0.3275546 | D’Agostino | 0.8489311 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var             | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 246 |       3 |     242 | 0.2776682 | 0.8414893 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 246 |       3 |     238 | 7.9310000 | 0.0000461 | \*\*\*   |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Zona`     | 135 |       3 |     131 | 0.3701447 | 0.7746707 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 135 |       3 |     127 | 2.5320000 | 0.0600000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 111 |       5 |     105 | 0.1209690 | 0.9874625 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 111 |       5 |      99 | 4.0490000 | 0.0020000 | \*       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect          | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 243 | 18.147 | 76.008 | 58.017 | \<0.001 | 0.193 | \*     |
| 2   | grupo           |   1 | 243 |  0.137 | 76.008 |  0.437 | 0.509   | 0.002 |        |
| 4   | Sexo            |   1 | 243 |  0.018 | 76.126 |  0.058 | 0.81    | 0.000 |        |
| 6   | Zona            |   1 | 132 |  0.237 | 31.848 |  0.981 | 0.324   | 0.007 |        |
| 8   | Cor.Raca        |   2 | 107 |  1.241 | 21.785 |  3.049 | 0.052   | 0.054 |        |

## ANCOVA tests for two factors

|     | Effect          | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 241 | 17.849 | 75.539 | 56.944 | \<0.001 | 0.191 | \*     |
| 4   | grupo:Sexo      |   1 | 241 |  0.453 | 75.539 |  1.445 | 0.231   | 0.006 |        |
| 8   | grupo:Zona      |   1 | 130 |  0.001 | 31.837 |  0.002 | 0.962   | 0.000 |        |
| 12  | grupo:Cor.Raca  |   2 | 104 |  0.269 | 21.515 |  0.649 | 0.524   | 0.012 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | 104 |   3.411 |    0.058 |     3.471 |      0.070 |   3.490 |    0.055 |
| fss.media.debat | Experimental | 142 |   3.482 |    0.049 |     3.552 |      0.046 |   3.538 |    0.047 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat | Controle | Experimental |   -0.048 |   -0.190 |     0.095 | 0.072 |    -0.661 | 0.509 | 0.509 | ns           |
| dfs.media.debat | Controle | Experimental |   -0.072 |   -0.222 |     0.079 | 0.076 |    -0.940 | 0.348 | 0.348 | ns           |

| .y.        | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | pre    | pos    |   -0.060 |   -0.225 |     0.105 | 0.084 |    -0.713 | 0.476 | 0.476 | ns           |
| flow.debat | Experimental | pre    | pos    |   -0.069 |   -0.211 |     0.072 | 0.072 |    -0.961 | 0.337 | 0.337 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | F    |  47 |   3.516 |    0.071 |     3.473 |      0.090 |   3.443 |    0.082 |
| fss.media.debat | Controle     | M    |  57 |   3.324 |    0.088 |     3.469 |      0.104 |   3.528 |    0.075 |
| fss.media.debat | Experimental | F    |  69 |   3.547 |    0.062 |     3.627 |      0.067 |   3.583 |    0.068 |
| fss.media.debat | Experimental | M    |  73 |   3.422 |    0.076 |     3.480 |      0.063 |   3.494 |    0.066 |

| .y.             | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | F    | Controle | Experimental |   -0.140 |   -0.349 |     0.068 | 0.106 |    -1.325 | 0.187 | 0.187 | ns           |
| fss.media.debat |              | M    | Controle | Experimental |    0.034 |   -0.161 |     0.229 | 0.099 |     0.343 | 0.732 | 0.732 | ns           |
| dfs.media.debat |              | F    | Controle | Experimental |   -0.031 |   -0.250 |     0.189 | 0.111 |    -0.275 | 0.783 | 0.783 | ns           |
| dfs.media.debat |              | M    | Controle | Experimental |   -0.098 |   -0.303 |     0.107 | 0.104 |    -0.940 | 0.348 | 0.348 | ns           |
| fss.media.debat | Controle     |      | F        | M            |   -0.085 |   -0.304 |     0.133 | 0.111 |    -0.767 | 0.444 | 0.444 | ns           |
| fss.media.debat | Experimental |      | F        | M            |    0.089 |   -0.097 |     0.275 | 0.094 |     0.945 | 0.345 | 0.345 | ns           |
| dfs.media.debat | Controle     |      | F        | M            |    0.192 |   -0.036 |     0.421 | 0.116 |     1.661 | 0.098 | 0.098 | ns           |
| dfs.media.debat | Experimental |      | F        | M            |    0.125 |   -0.069 |     0.320 | 0.099 |     1.268 | 0.206 | 0.206 | ns           |

| .y.        | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | F    | pre    | pos    |    0.043 |   -0.202 |     0.289 | 0.125 |     0.348 | 0.728 | 0.728 | ns           |
| flow.debat | Controle     | M    | pre    | pos    |   -0.145 |   -0.368 |     0.077 | 0.113 |    -1.282 | 0.201 | 0.201 | ns           |
| flow.debat | Experimental | F    | pre    | pos    |   -0.080 |   -0.283 |     0.122 | 0.103 |    -0.780 | 0.436 | 0.436 | ns           |
| flow.debat | Experimental | M    | pre    | pos    |   -0.059 |   -0.255 |     0.138 | 0.100 |    -0.585 | 0.559 | 0.559 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var             | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Rural  |  39 |   3.597 |    0.077 |     3.642 |      0.097 |   3.591 |    0.080 |
| fss.media.debat | Controle     | Urbana |  16 |   3.229 |    0.134 |     3.389 |      0.174 |   3.508 |    0.125 |
| fss.media.debat | Experimental | Rural  |  51 |   3.486 |    0.067 |     3.575 |      0.064 |   3.575 |    0.069 |
| fss.media.debat | Experimental | Urbana |  29 |   3.475 |    0.132 |     3.479 |      0.103 |   3.484 |    0.092 |

| .y.             | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | Rural  | Controle | Experimental |    0.015 |   -0.194 |     0.224 | 0.106 |     0.146 | 0.884 | 0.884 | ns           |
| fss.media.debat |              | Urbana | Controle | Experimental |    0.025 |   -0.283 |     0.332 | 0.155 |     0.158 | 0.875 | 0.875 | ns           |
| dfs.media.debat |              | Rural  | Controle | Experimental |    0.111 |   -0.118 |     0.339 | 0.116 |     0.959 | 0.340 | 0.340 | ns           |
| dfs.media.debat |              | Urbana | Controle | Experimental |   -0.246 |   -0.580 |     0.089 | 0.169 |    -1.454 | 0.148 | 0.148 | ns           |
| fss.media.debat | Controle     |        | Rural    | Urbana       |    0.082 |   -0.214 |     0.379 | 0.150 |     0.550 | 0.583 | 0.583 | ns           |
| fss.media.debat | Experimental |        | Rural    | Urbana       |    0.092 |   -0.136 |     0.319 | 0.115 |     0.795 | 0.428 | 0.428 | ns           |
| dfs.media.debat | Controle     |        | Rural    | Urbana       |    0.367 |    0.048 |     0.686 | 0.161 |     2.279 | 0.024 | 0.024 | \*           |
| dfs.media.debat | Experimental |        | Rural    | Urbana       |    0.011 |   -0.239 |     0.261 | 0.126 |     0.085 | 0.932 | 0.932 | ns           |

| .y.        | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Rural  | pre    | pos    |   -0.046 |   -0.291 |     0.199 | 0.124 |    -0.369 | 0.712 | 0.712 | ns           |
| flow.debat | Controle     | Urbana | pre    | pos    |   -0.160 |   -0.542 |     0.222 | 0.194 |    -0.823 | 0.411 | 0.411 | ns           |
| flow.debat | Experimental | Rural  | pre    | pos    |   -0.090 |   -0.304 |     0.124 | 0.109 |    -0.825 | 0.410 | 0.410 | ns           |
| flow.debat | Experimental | Urbana | pre    | pos    |   -0.004 |   -0.288 |     0.280 | 0.144 |    -0.027 | 0.979 | 0.979 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var             | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Branca   |   7 |   3.778 |    0.217 |     3.905 |      0.274 |   3.707 |    0.174 |
| fss.media.debat | Controle     | Parda    |  43 |   3.328 |    0.104 |     3.457 |      0.103 |   3.509 |    0.070 |
| fss.media.debat | Experimental | Branca   |  13 |   3.538 |    0.106 |     3.906 |      0.100 |   3.841 |    0.126 |
| fss.media.debat | Experimental | Parda    |  42 |   3.421 |    0.083 |     3.516 |      0.067 |   3.516 |    0.070 |

| .y.             | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | Branca   | Controle | Experimental |   -0.134 |   -0.558 |     0.290 | 0.214 |    -0.626 | 0.533 | 0.533 | ns           |
| fss.media.debat |              | Parda    | Controle | Experimental |   -0.007 |   -0.203 |     0.189 | 0.099 |    -0.070 | 0.944 | 0.944 | ns           |
| dfs.media.debat |              | Branca   | Controle | Experimental |    0.239 |   -0.310 |     0.788 | 0.277 |     0.865 | 0.389 | 0.389 | ns           |
| dfs.media.debat |              | Parda    | Controle | Experimental |   -0.093 |   -0.347 |     0.161 | 0.128 |    -0.727 | 0.469 | 0.469 | ns           |
| fss.media.debat | Controle     |          | Branca   | Parda        |    0.198 |   -0.176 |     0.571 | 0.188 |     1.051 | 0.296 | 0.296 | ns           |
| fss.media.debat | Experimental |          | Branca   | Parda        |    0.325 |    0.038 |     0.611 | 0.144 |     2.249 | 0.027 | 0.027 | \*           |
| dfs.media.debat | Controle     |          | Branca   | Parda        |    0.450 |   -0.027 |     0.927 | 0.241 |     1.872 | 0.064 | 0.064 | ns           |
| dfs.media.debat | Experimental |          | Branca   | Parda        |    0.118 |   -0.254 |     0.489 | 0.187 |     0.629 | 0.531 | 0.531 | ns           |

| .y.        | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Branca   | pre    | pos    |   -0.127 |   -0.732 |     0.478 | 0.307 |    -0.414 | 0.680 | 0.680 | ns           |
| flow.debat | Controle     | Parda    | pre    | pos    |   -0.130 |   -0.374 |     0.114 | 0.124 |    -1.048 | 0.296 | 0.296 | ns           |
| flow.debat | Experimental | Branca   | pre    | pos    |   -0.368 |   -0.812 |     0.077 | 0.225 |    -1.632 | 0.104 | 0.104 | ns           |
| flow.debat | Experimental | Parda    | pre    | pos    |   -0.095 |   -0.342 |     0.152 | 0.125 |    -0.760 | 0.448 | 0.448 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-9-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
