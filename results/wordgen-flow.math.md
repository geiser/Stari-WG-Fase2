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
| Controle     | F    |        |          | dfs.media.math | 246 | 3.422 |  3.444 | 1.889 | 4.667 | 0.556 | 0.035 | 0.070 | 0.889 |
| Controle     | M    |        |          | dfs.media.math | 249 | 3.388 |  3.333 | 1.333 | 5.000 | 0.630 | 0.040 | 0.079 | 0.778 |
| Experimental | F    |        |          | dfs.media.math | 370 | 3.417 |  3.444 | 1.667 | 5.000 | 0.526 | 0.027 | 0.054 | 0.667 |
| Experimental | M    |        |          | dfs.media.math | 342 | 3.493 |  3.472 | 1.444 | 5.000 | 0.567 | 0.031 | 0.060 | 0.778 |
| Controle     | F    |        |          | fss.media.math | 246 | 3.326 |  3.333 | 1.556 | 4.667 | 0.596 | 0.038 | 0.075 | 0.750 |
| Controle     | M    |        |          | fss.media.math | 249 | 3.387 |  3.333 | 1.333 | 5.000 | 0.625 | 0.040 | 0.078 | 0.778 |
| Experimental | F    |        |          | fss.media.math | 370 | 3.357 |  3.333 | 1.000 | 5.000 | 0.607 | 0.032 | 0.062 | 0.778 |
| Experimental | M    |        |          | fss.media.math | 342 | 3.442 |  3.444 | 1.111 | 5.000 | 0.573 | 0.031 | 0.061 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.math | 231 | 3.490 |  3.444 | 2.333 | 5.000 | 0.562 | 0.037 | 0.073 | 0.778 |
| Controle     |      | Urbana |          | dfs.media.math | 137 | 3.377 |  3.444 | 1.333 | 4.778 | 0.651 | 0.056 | 0.110 | 0.889 |
| Controle     |      |        |          | dfs.media.math | 127 | 3.281 |  3.333 | 1.444 | 5.000 | 0.567 | 0.050 | 0.100 | 0.778 |
| Experimental |      | Rural  |          | dfs.media.math | 283 | 3.412 |  3.444 | 1.444 | 5.000 | 0.558 | 0.033 | 0.065 | 0.667 |
| Experimental |      | Urbana |          | dfs.media.math | 192 | 3.514 |  3.528 | 2.111 | 4.778 | 0.540 | 0.039 | 0.077 | 0.778 |
| Experimental |      |        |          | dfs.media.math | 237 | 3.453 |  3.444 | 1.667 | 5.000 | 0.536 | 0.035 | 0.069 | 0.667 |
| Controle     |      | Rural  |          | fss.media.math | 231 | 3.394 |  3.333 | 1.778 | 5.000 | 0.610 | 0.040 | 0.079 | 0.778 |
| Controle     |      | Urbana |          | fss.media.math | 137 | 3.351 |  3.375 | 1.889 | 5.000 | 0.590 | 0.050 | 0.100 | 0.778 |
| Controle     |      |        |          | fss.media.math | 127 | 3.296 |  3.333 | 1.333 | 4.778 | 0.634 | 0.056 | 0.111 | 0.889 |
| Experimental |      | Rural  |          | fss.media.math | 283 | 3.456 |  3.444 | 2.222 | 5.000 | 0.511 | 0.030 | 0.060 | 0.722 |
| Experimental |      | Urbana |          | fss.media.math | 192 | 3.349 |  3.333 | 1.000 | 5.000 | 0.682 | 0.049 | 0.097 | 0.778 |
| Experimental |      |        |          | fss.media.math | 237 | 3.368 |  3.333 | 2.000 | 5.000 | 0.601 | 0.039 | 0.077 | 0.778 |
| Controle     |      |        | Branca   | dfs.media.math |  49 | 3.471 |  3.444 | 1.333 | 5.000 | 0.694 | 0.099 | 0.199 | 0.889 |
| Controle     |      |        | Indígena | dfs.media.math |  10 | 3.567 |  3.500 | 2.778 | 4.000 | 0.407 | 0.129 | 0.291 | 0.611 |
| Controle     |      |        | Parda    | dfs.media.math | 166 | 3.362 |  3.333 | 1.444 | 4.778 | 0.578 | 0.045 | 0.089 | 0.889 |
| Controle     |      |        | Preta    | dfs.media.math |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.math | 269 | 3.413 |  3.444 | 1.889 | 5.000 | 0.592 | 0.036 | 0.071 | 0.778 |
| Experimental |      |        | Amarela  | dfs.media.math |   2 | 3.000 |  3.000 | 2.444 | 3.556 | 0.786 | 0.556 | 7.059 | 0.556 |
| Experimental |      |        | Branca   | dfs.media.math |  62 | 3.526 |  3.444 | 2.667 | 4.444 | 0.445 | 0.057 | 0.113 | 0.667 |
| Experimental |      |        | Indígena | dfs.media.math |  16 | 3.546 |  3.590 | 2.778 | 4.000 | 0.352 | 0.088 | 0.187 | 0.472 |
| Experimental |      |        | Parda    | dfs.media.math | 181 | 3.419 |  3.444 | 2.222 | 5.000 | 0.538 | 0.040 | 0.079 | 0.667 |
| Experimental |      |        | Preta    | dfs.media.math |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.math | 450 | 3.457 |  3.444 | 1.444 | 5.000 | 0.568 | 0.027 | 0.053 | 0.778 |
| Controle     |      |        | Branca   | fss.media.math |  49 | 3.509 |  3.556 | 2.444 | 5.000 | 0.595 | 0.085 | 0.171 | 0.667 |
| Controle     |      |        | Indígena | fss.media.math |  10 | 3.600 |  3.611 | 2.778 | 4.556 | 0.584 | 0.185 | 0.418 | 0.750 |
| Controle     |      |        | Parda    | fss.media.math | 166 | 3.328 |  3.333 | 1.778 | 5.000 | 0.564 | 0.044 | 0.086 | 0.667 |
| Controle     |      |        | Preta    | fss.media.math |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.math | 269 | 3.339 |  3.333 | 1.333 | 5.000 | 0.640 | 0.039 | 0.077 | 0.889 |
| Experimental |      |        | Amarela  | fss.media.math |   2 | 3.167 |  3.167 | 2.889 | 3.444 | 0.393 | 0.278 | 3.530 | 0.278 |
| Experimental |      |        | Branca   | fss.media.math |  62 | 3.433 |  3.444 | 2.000 | 4.667 | 0.631 | 0.080 | 0.160 | 0.847 |
| Experimental |      |        | Indígena | fss.media.math |  16 | 3.250 |  3.278 | 2.778 | 3.889 | 0.359 | 0.090 | 0.192 | 0.500 |
| Experimental |      |        | Parda    | fss.media.math | 181 | 3.404 |  3.333 | 2.222 | 5.000 | 0.549 | 0.041 | 0.080 | 0.778 |
| Experimental |      |        | Preta    | fss.media.math |   1 | 3.889 |  3.889 | 3.889 | 3.889 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.math | 450 | 3.396 |  3.444 | 1.000 | 5.000 | 0.612 | 0.029 | 0.057 | 0.778 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |    n |   skewness |  kurtosis | symmetry |  statistic | method     |         p | p.signif | normality |
|:---------------|-----:|-----------:|----------:|:---------|-----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 1207 | -0.2090676 | 0.6885996 | YES      | 23.5921726 | D’Agostino | 0.0000075 | \*\*\*\* | \-        |
| fss.media.math |  843 | -0.1862832 | 0.8847281 | YES      | 20.3058337 | D’Agostino | 0.0000390 | \*\*\*   | \-        |
| fss.media.math |  488 |  0.0056206 | 0.0711480 | YES      |  0.2847264 | D’Agostino | 0.8673062 | ns       | \-        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |    n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|-----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 1207 |       3 |    1203 | 0.6529088 | 0.5811808 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 1207 |       3 |    1199 | 2.1470000 | 0.0930000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     |  843 |       3 |     839 | 3.4864179 | 0.0154493 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  843 |       3 |     835 | 2.3040000 | 0.0760000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  488 |       8 |     479 | 1.2750301 | 0.2542372 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  488 |       6 |     472 | 0.4410000 | 0.8510000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn |  DFd |    SSn |     SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|-----:|-------:|--------:|--------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 1204 | 77.202 | 356.625 | 260.643 | \<0.001 | 0.178 | \*     |
| 2   | grupo          |   1 | 1204 |  0.109 | 356.625 |   0.368 | 0.544   | 0.000 |        |
| 4   | Sexo           |   1 | 1204 |  1.135 | 355.598 |   3.844 | 0.05    | 0.003 |        |
| 6   | Zona           |   1 |  840 |  1.387 | 238.384 |   4.888 | 0.027   | 0.006 | \*     |
| 8   | Cor.Raca       |   4 |  482 |  0.397 | 122.404 |   0.391 | 0.815   | 0.003 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn |  DFd |    SSn |     SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|-----:|-------:|--------:|--------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 1202 | 76.634 | 355.430 | 259.163 | \<0.001 | 0.177 | \*     |
| 4   | grupo:Sexo     |   1 | 1202 |  0.042 | 355.430 |   0.142 | 0.707   | 0.000 |        |
| 8   | grupo:Zona     |   1 |  838 |  1.294 | 236.835 |   4.578 | 0.033   | 0.005 | \*     |
| 12  | grupo:Cor.Raca |   3 |  478 |  1.499 | 120.905 |   1.975 | 0.117   | 0.012 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | 495 |   3.405 |    0.027 |     3.357 |      0.027 |   3.370 |    0.024 |
| fss.media.math | Experimental | 712 |   3.453 |    0.020 |     3.398 |      0.022 |   3.389 |    0.020 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |   -0.019 |   -0.082 |     0.043 | 0.032 |    -0.607 | 0.544 | 0.544 | ns           |
| dfs.media.math | Controle | Experimental |   -0.049 |   -0.114 |     0.016 | 0.033 |    -1.467 | 0.143 | 0.143 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |    0.048 |   -0.025 |     0.121 | 0.037 |     1.292 | 0.196 | 0.196 | ns           |
| flow.math | Experimental | pre    | pos    |    0.056 |   -0.005 |     0.116 | 0.031 |     1.795 | 0.073 | 0.073 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    | 246 |   3.422 |    0.035 |     3.326 |      0.038 |   3.331 |    0.035 |
| fss.media.math | Controle     | M    | 249 |   3.388 |    0.040 |     3.387 |      0.040 |   3.407 |    0.034 |
| fss.media.math | Experimental | F    | 370 |   3.417 |    0.027 |     3.357 |      0.032 |   3.364 |    0.028 |
| fss.media.math | Experimental | M    | 342 |   3.493 |    0.031 |     3.442 |      0.031 |   3.416 |    0.029 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |   -0.033 |   -0.120 |     0.055 | 0.045 |    -0.730 | 0.466 | 0.466 | ns           |
| fss.media.math |              | M    | Controle | Experimental |   -0.009 |   -0.098 |     0.080 | 0.045 |    -0.190 | 0.849 | 0.849 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |    0.004 |   -0.087 |     0.096 | 0.047 |     0.093 | 0.926 | 0.926 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.104 |   -0.197 |    -0.012 | 0.047 |    -2.213 | 0.027 | 0.027 | \*           |
| fss.media.math | Controle     |      | F        | M            |   -0.076 |   -0.172 |     0.020 | 0.049 |    -1.554 | 0.120 | 0.120 | ns           |
| fss.media.math | Experimental |      | F        | M            |   -0.052 |   -0.132 |     0.028 | 0.041 |    -1.273 | 0.203 | 0.203 | ns           |
| dfs.media.math | Controle     |      | F        | M            |    0.033 |   -0.066 |     0.133 | 0.051 |     0.656 | 0.512 | 0.512 | ns           |
| dfs.media.math | Experimental |      | F        | M            |   -0.075 |   -0.159 |     0.008 | 0.042 |    -1.773 | 0.077 | 0.077 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.095 |   -0.008 |     0.199 | 0.053 |     1.816 | 0.069 | 0.069 | ns           |
| flow.math | Controle     | M    | pre    | pos    |    0.001 |   -0.101 |     0.103 | 0.052 |     0.019 | 0.985 | 0.985 | ns           |
| flow.math | Experimental | F    | pre    | pos    |    0.060 |   -0.024 |     0.144 | 0.043 |     1.410 | 0.159 | 0.159 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.050 |   -0.037 |     0.138 | 0.045 |     1.126 | 0.260 | 0.260 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  | 231 |   3.490 |    0.037 |     3.394 |      0.040 |   3.376 |    0.035 |
| fss.media.math | Controle     | Urbana | 137 |   3.377 |    0.056 |     3.351 |      0.050 |   3.385 |    0.045 |
| fss.media.math | Experimental | Rural  | 283 |   3.412 |    0.033 |     3.456 |      0.030 |   3.474 |    0.032 |
| fss.media.math | Experimental | Urbana | 192 |   3.514 |    0.039 |     3.349 |      0.049 |   3.320 |    0.038 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |   -0.098 |   -0.191 |    -0.005 | 0.047 |    -2.077 | 0.038 | 0.038 | \*           |
| fss.media.math |              | Urbana | Controle | Experimental |    0.065 |   -0.052 |     0.182 | 0.060 |     1.090 | 0.276 | 0.276 | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |    0.077 |   -0.022 |     0.177 | 0.051 |     1.527 | 0.127 | 0.127 | ns           |
| dfs.media.math |              | Urbana | Controle | Experimental |   -0.137 |   -0.262 |    -0.012 | 0.064 |    -2.146 | 0.032 | 0.032 | \*           |
| fss.media.math | Controle     |        | Rural    | Urbana       |   -0.009 |   -0.121 |     0.104 | 0.057 |    -0.151 | 0.880 | 0.880 | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |    0.154 |    0.057 |     0.252 | 0.050 |     3.098 | 0.002 | 0.002 | \*\*         |
| dfs.media.math | Controle     |        | Rural    | Urbana       |    0.113 |   -0.008 |     0.234 | 0.062 |     1.828 | 0.068 | 0.068 | ns           |
| dfs.media.math | Experimental |        | Rural    | Urbana       |   -0.102 |   -0.207 |     0.003 | 0.053 |    -1.905 | 0.057 | 0.057 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |    0.096 |   -0.011 |     0.202 | 0.054 |     1.764 | 0.078 | 0.078 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |    0.026 |   -0.112 |     0.164 | 0.070 |     0.375 | 0.708 | 0.708 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |   -0.044 |   -0.140 |     0.052 | 0.049 |    -0.899 | 0.369 | 0.369 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |    0.165 |    0.048 |     0.282 | 0.059 |     2.776 | 0.006 | 0.006 | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Branca   |  49 |   3.471 |    0.099 |     3.509 |      0.085 |   3.487 |    0.072 |
| fss.media.math | Controle     | Indígena |  10 |   3.567 |    0.129 |     3.600 |      0.185 |   3.534 |    0.159 |
| fss.media.math | Controle     | Parda    | 166 |   3.362 |    0.045 |     3.328 |      0.044 |   3.358 |    0.039 |
| fss.media.math | Experimental | Branca   |  62 |   3.526 |    0.057 |     3.433 |      0.080 |   3.386 |    0.064 |
| fss.media.math | Experimental | Indígena |  16 |   3.546 |    0.088 |     3.250 |      0.090 |   3.193 |    0.126 |
| fss.media.math | Experimental | Parda    | 181 |   3.419 |    0.040 |     3.404 |      0.041 |   3.407 |    0.037 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Branca   | Controle | Experimental |    0.101 |   -0.088 |     0.290 | 0.096 |     1.048 | 0.295 | 0.295 | ns           |
| fss.media.math |              | Indígena | Controle | Experimental |    0.340 |   -0.058 |     0.739 | 0.203 |     1.677 | 0.094 | 0.094 | ns           |
| fss.media.math |              | Parda    | Controle | Experimental |   -0.049 |   -0.156 |     0.057 | 0.054 |    -0.911 | 0.363 | 0.363 | ns           |
| dfs.media.math |              | Branca   | Controle | Experimental |   -0.055 |   -0.262 |     0.152 | 0.105 |    -0.521 | 0.603 | 0.603 | ns           |
| dfs.media.math |              | Indígena | Controle | Experimental |    0.021 |   -0.417 |     0.458 | 0.222 |     0.093 | 0.926 | 0.926 | ns           |
| dfs.media.math |              | Parda    | Controle | Experimental |   -0.058 |   -0.174 |     0.059 | 0.059 |    -0.970 | 0.333 | 0.333 | ns           |
| fss.media.math | Controle     |          | Branca   | Indígena     |   -0.046 |   -0.390 |     0.297 | 0.175 |    -0.266 | 0.790 | 1.000 | ns           |
| fss.media.math | Controle     |          | Branca   | Parda        |    0.129 |   -0.032 |     0.290 | 0.082 |     1.576 | 0.116 | 0.347 | ns           |
| fss.media.math | Controle     |          | Indígena | Parda        |    0.176 |   -0.147 |     0.498 | 0.164 |     1.070 | 0.285 | 0.856 | ns           |
| fss.media.math | Experimental |          | Branca   | Indígena     |    0.193 |   -0.084 |     0.470 | 0.141 |     1.367 | 0.172 | 0.517 | ns           |
| fss.media.math | Experimental |          | Branca   | Parda        |   -0.021 |   -0.167 |     0.125 | 0.074 |    -0.283 | 0.777 | 1.000 | ns           |
| fss.media.math | Experimental |          | Indígena | Parda        |   -0.214 |   -0.472 |     0.044 | 0.131 |    -1.628 | 0.104 | 0.312 | ns           |
| dfs.media.math | Controle     |          | Branca   | Indígena     |   -0.096 |   -0.472 |     0.280 | 0.192 |    -0.501 | 0.617 | 1.000 | ns           |
| dfs.media.math | Controle     |          | Branca   | Parda        |    0.109 |   -0.067 |     0.286 | 0.090 |     1.218 | 0.224 | 0.672 | ns           |
| dfs.media.math | Controle     |          | Indígena | Parda        |    0.205 |   -0.148 |     0.558 | 0.180 |     1.141 | 0.254 | 0.763 | ns           |
| dfs.media.math | Experimental |          | Branca   | Indígena     |   -0.020 |   -0.324 |     0.284 | 0.155 |    -0.131 | 0.896 | 1.000 | ns           |
| dfs.media.math | Experimental |          | Branca   | Parda        |    0.107 |   -0.053 |     0.266 | 0.081 |     1.314 | 0.189 | 0.568 | ns           |
| dfs.media.math | Experimental |          | Indígena | Parda        |    0.127 |   -0.156 |     0.410 | 0.144 |     0.882 | 0.378 | 1.000 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Branca   | pre    | pos    |   -0.038 |   -0.259 |     0.184 | 0.113 |    -0.334 | 0.739 | 0.739 | ns           |
| flow.math | Controle     | Indígena | pre    | pos    |   -0.033 |   -0.524 |     0.457 | 0.250 |    -0.133 | 0.894 | 0.894 | ns           |
| flow.math | Controle     | Parda    | pre    | pos    |    0.034 |   -0.087 |     0.154 | 0.061 |     0.546 | 0.585 | 0.585 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |    0.092 |   -0.105 |     0.289 | 0.100 |     0.919 | 0.358 | 0.358 | ns           |
| flow.math | Experimental | Indígena | pre    | pos    |    0.296 |   -0.092 |     0.684 | 0.198 |     1.498 | 0.134 | 0.134 | ns           |
| flow.math | Experimental | Parda    | pre    | pos    |    0.015 |   -0.101 |     0.130 | 0.059 |     0.250 | 0.803 | 0.803 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
