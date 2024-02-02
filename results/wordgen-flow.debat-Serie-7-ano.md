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
| Controle     | F    |        |          | dfs.media.debat |  67 | 3.495 |  3.556 | 2.333 | 4.889 | 0.520 | 0.064 | 0.127 | 0.667 |
| Controle     | M    |        |          | dfs.media.debat |  56 | 3.294 |  3.333 | 1.889 | 4.556 | 0.639 | 0.085 | 0.171 | 0.833 |
| Experimental | F    |        |          | dfs.media.debat |  83 | 3.475 |  3.444 | 2.222 | 4.556 | 0.526 | 0.058 | 0.115 | 0.667 |
| Experimental | M    |        |          | dfs.media.debat |  94 | 3.452 |  3.444 | 1.333 | 4.667 | 0.602 | 0.062 | 0.123 | 0.778 |
| Controle     | F    |        |          | fss.media.debat |  67 | 3.426 |  3.444 | 2.333 | 4.556 | 0.508 | 0.062 | 0.124 | 0.882 |
| Controle     | M    |        |          | fss.media.debat |  56 | 3.311 |  3.437 | 2.111 | 4.444 | 0.544 | 0.073 | 0.146 | 0.694 |
| Experimental | F    |        |          | fss.media.debat |  83 | 3.519 |  3.556 | 1.778 | 5.000 | 0.605 | 0.066 | 0.132 | 0.833 |
| Experimental | M    |        |          | fss.media.debat |  94 | 3.578 |  3.556 | 2.222 | 5.000 | 0.579 | 0.060 | 0.119 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.debat |  53 | 3.491 |  3.556 | 2.444 | 4.889 | 0.483 | 0.066 | 0.133 | 0.667 |
| Controle     |      | Urbana |          | dfs.media.debat |  54 | 3.346 |  3.333 | 1.889 | 4.667 | 0.630 | 0.086 | 0.172 | 0.889 |
| Controle     |      |        |          | dfs.media.debat |  16 | 3.309 |  3.111 | 2.333 | 4.444 | 0.714 | 0.178 | 0.380 | 1.299 |
| Experimental |      | Rural  |          | dfs.media.debat |  75 | 3.474 |  3.444 | 1.333 | 4.667 | 0.616 | 0.071 | 0.142 | 0.778 |
| Experimental |      | Urbana |          | dfs.media.debat |  76 | 3.487 |  3.444 | 2.333 | 4.667 | 0.487 | 0.056 | 0.111 | 0.608 |
| Experimental |      |        |          | dfs.media.debat |  26 | 3.359 |  3.444 | 2.000 | 4.333 | 0.637 | 0.125 | 0.257 | 1.000 |
| Controle     |      | Rural  |          | fss.media.debat |  53 | 3.401 |  3.444 | 2.333 | 4.333 | 0.462 | 0.064 | 0.127 | 0.778 |
| Controle     |      | Urbana |          | fss.media.debat |  54 | 3.376 |  3.389 | 2.111 | 4.556 | 0.590 | 0.080 | 0.161 | 0.889 |
| Controle     |      |        |          | fss.media.debat |  16 | 3.277 |  3.325 | 2.222 | 4.222 | 0.513 | 0.128 | 0.273 | 0.472 |
| Experimental |      | Rural  |          | fss.media.debat |  75 | 3.517 |  3.444 | 1.778 | 5.000 | 0.563 | 0.065 | 0.130 | 0.771 |
| Experimental |      | Urbana |          | fss.media.debat |  76 | 3.572 |  3.556 | 2.111 | 5.000 | 0.620 | 0.071 | 0.142 | 0.889 |
| Experimental |      |        |          | fss.media.debat |  26 | 3.586 |  3.556 | 2.222 | 4.889 | 0.600 | 0.118 | 0.242 | 0.639 |
| Controle     |      |        | Branca   | dfs.media.debat |  17 | 3.333 |  3.111 | 2.111 | 4.889 | 0.716 | 0.174 | 0.368 | 0.889 |
| Controle     |      |        | Indígena | dfs.media.debat |   4 | 3.833 |  3.889 | 3.667 | 3.889 | 0.111 | 0.056 | 0.177 | 0.056 |
| Controle     |      |        | Parda    | dfs.media.debat |  41 | 3.407 |  3.333 | 1.889 | 4.667 | 0.564 | 0.088 | 0.178 | 0.667 |
| Controle     |      |        |          | dfs.media.debat |  61 | 3.393 |  3.444 | 2.250 | 4.556 | 0.574 | 0.073 | 0.147 | 0.750 |
| Experimental |      |        | Branca   | dfs.media.debat |  11 | 3.465 |  3.444 | 2.333 | 4.222 | 0.566 | 0.171 | 0.380 | 0.778 |
| Experimental |      |        | Parda    | dfs.media.debat |  43 | 3.428 |  3.333 | 1.333 | 4.667 | 0.630 | 0.096 | 0.194 | 0.778 |
| Experimental |      |        |          | dfs.media.debat | 123 | 3.475 |  3.444 | 2.000 | 4.667 | 0.547 | 0.049 | 0.098 | 0.771 |
| Controle     |      |        | Branca   | fss.media.debat |  17 | 3.366 |  3.111 | 2.556 | 4.333 | 0.535 | 0.130 | 0.275 | 0.889 |
| Controle     |      |        | Indígena | fss.media.debat |   4 | 3.833 |  3.889 | 3.556 | 4.000 | 0.192 | 0.096 | 0.306 | 0.111 |
| Controle     |      |        | Parda    | fss.media.debat |  41 | 3.384 |  3.444 | 2.222 | 4.556 | 0.545 | 0.085 | 0.172 | 0.667 |
| Controle     |      |        |          | fss.media.debat |  61 | 3.339 |  3.429 | 2.111 | 4.333 | 0.520 | 0.067 | 0.133 | 0.778 |
| Experimental |      |        | Branca   | fss.media.debat |  11 | 3.352 |  3.333 | 2.222 | 4.333 | 0.642 | 0.194 | 0.431 | 0.889 |
| Experimental |      |        | Parda    | fss.media.debat |  43 | 3.572 |  3.500 | 2.778 | 5.000 | 0.579 | 0.088 | 0.178 | 0.722 |
| Experimental |      |        |          | fss.media.debat | 123 | 3.561 |  3.556 | 1.778 | 5.000 | 0.592 | 0.053 | 0.106 | 0.778 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var             |   n |   skewness |  kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------------|----:|-----------:|----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.debat | 300 | -0.0093831 | 0.0416927 | YES      | 0.1816599 | D’Agostino | 0.9131730 | ns       | \-        |
| fss.media.debat | 258 |  0.0665693 | 0.0384453 | YES      | 0.3793645 | D’Agostino | 0.8272220 | ns       | \-        |
| fss.media.debat | 116 |  0.3732385 | 0.0910147 | YES      | 3.3074920 | D’Agostino | 0.1913318 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var             | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 300 |       3 |     296 | 2.0645892 | 0.1049859 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 300 |       3 |     292 | 1.6710000 | 0.1730000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Zona`     | 258 |       3 |     254 | 3.1308216 | 0.0262520 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 258 |       3 |     250 | 1.1370000 | 0.3350000 | ns       |
| fss.media.debat | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 116 |       4 |     111 | 0.9839286 | 0.4194127 | ns       |
| fss.media.debat | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 116 |       4 |     106 | 2.0250000 | 0.0960000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect          | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 297 | 12.039 | 83.115 | 43.018 | \<0.001 | 0.127 | \*     |
| 2   | grupo           |   1 | 297 |  1.770 | 83.115 |  6.324 | 0.012   | 0.021 | \*     |
| 4   | Sexo            |   1 | 297 |  0.085 | 84.800 |  0.297 | 0.586   | 0.001 |        |
| 6   | Zona            |   1 | 255 |  0.126 | 69.501 |  0.461 | 0.498   | 0.002 |        |
| 8   | Cor.Raca        |   2 | 112 |  0.413 | 29.116 |  0.794 | 0.454   | 0.014 |        |

## ANCOVA tests for two factors

|     | Effect          | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.debat |   1 | 295 | 11.740 | 82.855 | 41.800 | \<0.001 | 0.124 | \*     |
| 4   | grupo:Sexo      |   1 | 295 |  0.225 | 82.855 |  0.802 | 0.371   | 0.003 |        |
| 8   | grupo:Zona      |   1 | 253 |  0.004 | 68.431 |  0.014 | 0.906   | 0.000 |        |
| 12  | grupo:Cor.Raca  |   1 | 110 |  0.303 | 28.410 |  1.175 | 0.281   | 0.011 |        |

## Pairwise comparisons for one factor: **grupo**

| var             | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | 123 |   3.404 |    0.053 |     3.374 |      0.047 |   3.386 |    0.048 |
| fss.media.debat | Experimental | 177 |   3.463 |    0.043 |     3.551 |      0.044 |   3.542 |    0.040 |

| .y.             | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat | Controle | Experimental |   -0.156 |   -0.279 |    -0.034 | 0.062 |    -2.515 | 0.012 | 0.012 | \*           |
| dfs.media.debat | Controle | Experimental |   -0.059 |   -0.191 |     0.074 | 0.067 |    -0.875 | 0.382 | 0.382 | ns           |

| .y.        | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | pre    | pos    |    0.030 |   -0.112 |     0.173 | 0.073 |     0.416 | 0.678 | 0.678 | ns           |
| flow.debat | Experimental | pre    | pos    |   -0.088 |   -0.207 |     0.031 | 0.061 |    -1.453 | 0.147 | 0.147 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var             | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | F    |  67 |   3.495 |    0.064 |     3.426 |      0.062 |   3.406 |    0.065 |
| fss.media.debat | Controle     | M    |  56 |   3.294 |    0.085 |     3.311 |      0.073 |   3.361 |    0.071 |
| fss.media.debat | Experimental | F    |  83 |   3.475 |    0.058 |     3.519 |      0.066 |   3.507 |    0.058 |
| fss.media.debat | Experimental | M    |  94 |   3.452 |    0.062 |     3.578 |      0.060 |   3.574 |    0.055 |

| .y.             | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | F    | Controle | Experimental |   -0.100 |   -0.272 |     0.071 | 0.087 |    -1.153 | 0.250 | 0.250 | ns           |
| fss.media.debat |              | M    | Controle | Experimental |   -0.212 |   -0.389 |    -0.036 | 0.090 |    -2.364 | 0.019 | 0.019 | \*           |
| dfs.media.debat |              | F    | Controle | Experimental |    0.021 |   -0.164 |     0.205 | 0.094 |     0.221 | 0.826 | 0.826 | ns           |
| dfs.media.debat |              | M    | Controle | Experimental |   -0.158 |   -0.348 |     0.032 | 0.096 |    -1.637 | 0.103 | 0.103 | ns           |
| fss.media.debat | Controle     |      | F        | M            |    0.045 |   -0.145 |     0.235 | 0.097 |     0.465 | 0.642 | 0.642 | ns           |
| fss.media.debat | Experimental |      | F        | M            |   -0.067 |   -0.224 |     0.090 | 0.080 |    -0.842 | 0.400 | 0.400 | ns           |
| dfs.media.debat | Controle     |      | F        | M            |    0.201 |   -0.002 |     0.405 | 0.103 |     1.945 | 0.053 | 0.053 | ns           |
| dfs.media.debat | Experimental |      | F        | M            |    0.023 |   -0.147 |     0.192 | 0.086 |     0.263 | 0.793 | 0.793 | ns           |

| .y.        | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | F    | pre    | pos    |    0.069 |   -0.123 |     0.262 | 0.098 |     0.707 | 0.480 | 0.480 | ns           |
| flow.debat | Controle     | M    | pre    | pos    |   -0.017 |   -0.228 |     0.194 | 0.107 |    -0.156 | 0.876 | 0.876 | ns           |
| flow.debat | Experimental | F    | pre    | pos    |   -0.044 |   -0.218 |     0.129 | 0.088 |    -0.503 | 0.615 | 0.615 | ns           |
| flow.debat | Experimental | M    | pre    | pos    |   -0.126 |   -0.289 |     0.036 | 0.083 |    -1.524 | 0.128 | 0.128 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var             | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Rural  |  53 |   3.491 |    0.066 |     3.401 |      0.064 |   3.386 |    0.071 |
| fss.media.debat | Controle     | Urbana |  54 |   3.346 |    0.086 |     3.376 |      0.080 |   3.420 |    0.071 |
| fss.media.debat | Experimental | Rural  |  75 |   3.474 |    0.071 |     3.517 |      0.065 |   3.508 |    0.060 |
| fss.media.debat | Experimental | Urbana |  76 |   3.487 |    0.056 |     3.572 |      0.071 |   3.559 |    0.060 |

| .y.             | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | Rural  | Controle | Experimental |   -0.123 |   -0.307 |     0.061 | 0.093 |    -1.316 | 0.189 | 0.189 | ns           |
| fss.media.debat |              | Urbana | Controle | Experimental |   -0.138 |   -0.321 |     0.045 | 0.093 |    -1.490 | 0.138 | 0.138 | ns           |
| dfs.media.debat |              | Rural  | Controle | Experimental |    0.017 |   -0.180 |     0.214 | 0.100 |     0.169 | 0.866 | 0.866 | ns           |
| dfs.media.debat |              | Urbana | Controle | Experimental |   -0.141 |   -0.336 |     0.055 | 0.099 |    -1.416 | 0.158 | 0.158 | ns           |
| fss.media.debat | Controle     |        | Rural    | Urbana       |   -0.035 |   -0.234 |     0.164 | 0.101 |    -0.345 | 0.730 | 0.730 | ns           |
| fss.media.debat | Experimental |        | Rural    | Urbana       |   -0.050 |   -0.217 |     0.116 | 0.085 |    -0.596 | 0.552 | 0.552 | ns           |
| dfs.media.debat | Controle     |        | Rural    | Urbana       |    0.145 |   -0.068 |     0.357 | 0.108 |     1.344 | 0.180 | 0.180 | ns           |
| dfs.media.debat | Experimental |        | Rural    | Urbana       |   -0.013 |   -0.191 |     0.166 | 0.091 |    -0.139 | 0.890 | 0.890 | ns           |

| .y.        | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Rural  | pre    | pos    |    0.090 |   -0.124 |     0.305 | 0.109 |     0.827 | 0.408 | 0.408 | ns           |
| flow.debat | Controle     | Urbana | pre    | pos    |   -0.030 |   -0.242 |     0.183 | 0.108 |    -0.273 | 0.785 | 0.785 | ns           |
| flow.debat | Experimental | Rural  | pre    | pos    |   -0.042 |   -0.223 |     0.138 | 0.092 |    -0.460 | 0.646 | 0.646 | ns           |
| flow.debat | Experimental | Urbana | pre    | pos    |   -0.085 |   -0.265 |     0.094 | 0.091 |    -0.935 | 0.350 | 0.350 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var             | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.debat | Controle     | Branca   |  17 |   3.333 |    0.174 |     3.366 |      0.130 |   3.396 |    0.125 |
| fss.media.debat | Controle     | Parda    |  41 |   3.407 |    0.088 |     3.384 |      0.085 |   3.385 |    0.080 |
| fss.media.debat | Experimental | Branca   |  11 |   3.465 |    0.171 |     3.352 |      0.194 |   3.331 |    0.155 |
| fss.media.debat | Experimental | Parda    |  43 |   3.428 |    0.096 |     3.572 |      0.088 |   3.564 |    0.078 |

| .y.             | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.debat |              | Branca   | Controle | Experimental |    0.066 |   -0.329 |     0.460 | 0.199 |     0.329 | 0.743 | 0.743 | ns           |
| fss.media.debat |              | Parda    | Controle | Experimental |   -0.180 |   -0.402 |     0.043 | 0.112 |    -1.600 | 0.113 | 0.113 | ns           |
| dfs.media.debat |              | Branca   | Controle | Experimental |   -0.131 |   -0.603 |     0.340 | 0.238 |    -0.552 | 0.582 | 0.582 | ns           |
| dfs.media.debat |              | Parda    | Controle | Experimental |   -0.021 |   -0.287 |     0.245 | 0.134 |    -0.159 | 0.874 | 0.874 | ns           |
| fss.media.debat | Controle     |          | Branca   | Parda        |    0.011 |   -0.283 |     0.305 | 0.148 |     0.076 | 0.940 | 0.940 | ns           |
| fss.media.debat | Experimental |          | Branca   | Parda        |   -0.234 |   -0.578 |     0.110 | 0.174 |    -1.346 | 0.181 | 0.181 | ns           |
| dfs.media.debat | Controle     |          | Branca   | Parda        |   -0.073 |   -0.425 |     0.278 | 0.177 |    -0.413 | 0.680 | 0.680 | ns           |
| dfs.media.debat | Experimental |          | Branca   | Parda        |    0.037 |   -0.375 |     0.448 | 0.208 |     0.177 | 0.860 | 0.860 | ns           |

| .y.        | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.debat | Controle     | Branca   | pre    | pos    |   -0.033 |   -0.432 |     0.367 | 0.203 |    -0.161 | 0.872 | 0.872 | ns           |
| flow.debat | Controle     | Parda    | pre    | pos    |    0.023 |   -0.234 |     0.280 | 0.131 |     0.175 | 0.862 | 0.862 | ns           |
| flow.debat | Experimental | Branca   | pre    | pos    |    0.112 |   -0.385 |     0.609 | 0.252 |     0.445 | 0.657 | 0.657 | ns           |
| flow.debat | Experimental | Parda    | pre    | pos    |   -0.144 |   -0.395 |     0.107 | 0.127 |    -1.128 | 0.260 | 0.260 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.debat-Serie-7-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
