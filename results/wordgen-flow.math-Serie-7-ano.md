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
| Controle     | F    |        |          | dfs.media.math |  74 | 3.360 |  3.333 | 1.889 | 4.444 | 0.545 | 0.063 | 0.126 | 0.667 |
| Controle     | M    |        |          | dfs.media.math |  62 | 3.185 |  3.111 | 1.333 | 4.667 | 0.688 | 0.087 | 0.175 | 0.889 |
| Experimental | F    |        |          | dfs.media.math |  95 | 3.360 |  3.333 | 2.222 | 5.000 | 0.529 | 0.054 | 0.108 | 0.778 |
| Experimental | M    |        |          | dfs.media.math | 103 | 3.568 |  3.556 | 2.111 | 4.667 | 0.565 | 0.056 | 0.110 | 0.667 |
| Controle     | F    |        |          | fss.media.math |  74 | 3.144 |  3.111 | 1.778 | 4.125 | 0.478 | 0.056 | 0.111 | 0.639 |
| Controle     | M    |        |          | fss.media.math |  62 | 3.169 |  3.111 | 1.778 | 4.625 | 0.605 | 0.077 | 0.154 | 0.889 |
| Experimental | F    |        |          | fss.media.math |  95 | 3.334 |  3.333 | 1.000 | 5.000 | 0.673 | 0.069 | 0.137 | 0.889 |
| Experimental | M    |        |          | fss.media.math | 103 | 3.494 |  3.444 | 2.000 | 5.000 | 0.569 | 0.056 | 0.111 | 0.611 |
| Controle     |      | Rural  |          | dfs.media.math |  58 | 3.314 |  3.236 | 2.333 | 4.444 | 0.518 | 0.068 | 0.136 | 0.778 |
| Controle     |      | Urbana |          | dfs.media.math |  60 | 3.262 |  3.389 | 1.333 | 4.667 | 0.686 | 0.089 | 0.177 | 1.000 |
| Controle     |      |        |          | dfs.media.math |  18 | 3.228 |  3.278 | 1.889 | 4.444 | 0.705 | 0.166 | 0.351 | 0.639 |
| Experimental |      | Rural  |          | dfs.media.math |  88 | 3.418 |  3.444 | 2.222 | 5.000 | 0.557 | 0.059 | 0.118 | 0.556 |
| Experimental |      | Urbana |          | dfs.media.math |  80 | 3.520 |  3.500 | 2.111 | 4.778 | 0.567 | 0.063 | 0.126 | 0.778 |
| Experimental |      |        |          | dfs.media.math |  30 | 3.476 |  3.354 | 2.667 | 4.444 | 0.531 | 0.097 | 0.198 | 0.889 |
| Controle     |      | Rural  |          | fss.media.math |  58 | 3.096 |  3.111 | 1.778 | 4.000 | 0.540 | 0.071 | 0.142 | 0.833 |
| Controle     |      | Urbana |          | fss.media.math |  60 | 3.206 |  3.174 | 2.143 | 4.333 | 0.495 | 0.064 | 0.128 | 0.684 |
| Controle     |      |        |          | fss.media.math |  18 | 3.177 |  3.222 | 1.889 | 4.625 | 0.667 | 0.157 | 0.332 | 0.861 |
| Experimental |      | Rural  |          | fss.media.math |  88 | 3.485 |  3.556 | 2.333 | 5.000 | 0.552 | 0.059 | 0.117 | 0.778 |
| Experimental |      | Urbana |          | fss.media.math |  80 | 3.371 |  3.333 | 1.000 | 5.000 | 0.708 | 0.079 | 0.158 | 0.694 |
| Experimental |      |        |          | fss.media.math |  30 | 3.343 |  3.500 | 2.111 | 4.444 | 0.588 | 0.107 | 0.220 | 0.833 |
| Controle     |      |        | Branca   | dfs.media.math |  18 | 3.208 |  3.222 | 1.333 | 4.111 | 0.693 | 0.163 | 0.345 | 0.778 |
| Controle     |      |        | Indígena | dfs.media.math |   4 | 3.556 |  3.722 | 2.778 | 4.000 | 0.552 | 0.276 | 0.878 | 0.556 |
| Controle     |      |        | Parda    | dfs.media.math |  43 | 3.356 |  3.333 | 2.111 | 4.667 | 0.591 | 0.090 | 0.182 | 0.889 |
| Controle     |      |        |          | dfs.media.math |  71 | 3.237 |  3.222 | 1.889 | 4.444 | 0.622 | 0.074 | 0.147 | 0.833 |
| Experimental |      |        | Branca   | dfs.media.math |  15 | 3.655 |  3.444 | 2.889 | 4.444 | 0.513 | 0.132 | 0.284 | 0.889 |
| Experimental |      |        | Parda    | dfs.media.math |  48 | 3.432 |  3.444 | 2.222 | 5.000 | 0.586 | 0.085 | 0.170 | 0.500 |
| Experimental |      |        |          | dfs.media.math | 135 | 3.461 |  3.444 | 2.111 | 4.778 | 0.551 | 0.047 | 0.094 | 0.667 |
| Controle     |      |        | Branca   | fss.media.math |  18 | 3.224 |  3.278 | 2.444 | 4.000 | 0.482 | 0.114 | 0.240 | 0.719 |
| Controle     |      |        | Indígena | fss.media.math |   4 | 3.472 |  3.611 | 2.778 | 3.889 | 0.500 | 0.250 | 0.796 | 0.528 |
| Controle     |      |        | Parda    | fss.media.math |  43 | 3.140 |  3.111 | 1.778 | 4.000 | 0.538 | 0.082 | 0.166 | 0.722 |
| Controle     |      |        |          | fss.media.math |  71 | 3.129 |  3.111 | 1.889 | 4.625 | 0.555 | 0.066 | 0.131 | 0.778 |
| Experimental |      |        | Branca   | fss.media.math |  15 | 3.140 |  3.000 | 2.000 | 4.667 | 0.665 | 0.172 | 0.368 | 0.833 |
| Experimental |      |        | Parda    | fss.media.math |  48 | 3.446 |  3.389 | 2.333 | 5.000 | 0.632 | 0.091 | 0.183 | 0.806 |
| Experimental |      |        |          | fss.media.math | 135 | 3.438 |  3.444 | 1.000 | 5.000 | 0.615 | 0.053 | 0.105 | 0.667 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry |  statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|-----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 334 | -0.4148528 |  1.1693517 | YES      | 19.6306447 | D’Agostino | 0.0000546 | \*\*\*   | \-        |
| fss.media.math | 286 | -0.4254403 |  1.3737807 | YES      | 19.5834097 | D’Agostino | 0.0000559 | \*\*\*   | \-        |
| fss.media.math | 128 | -0.1073710 | -0.0287737 | YES      |  0.3892724 | D’Agostino | 0.8231341 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 334 |       3 |     330 | 2.5282204 | 0.0572985 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 334 |       3 |     326 | 0.9630000 | 0.4100000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     | 286 |       3 |     282 | 3.2562579 | 0.0220851 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 286 |       3 |     278 | 0.2040000 | 0.8940000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 128 |       4 |     123 | 0.1731875 | 0.9517724 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 128 |       4 |     118 | 1.1410000 | 0.3410000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 331 | 22.069 | 93.880 | 77.809 | \<0.001 | 0.190 | \*     |
| 2   | grupo          |   1 | 331 |  2.515 | 93.880 |  8.869 | 0.003   | 0.026 | \*     |
| 4   | Sexo           |   1 | 331 |  0.694 | 95.702 |  2.399 | 0.122   | 0.007 |        |
| 6   | Zona           |   1 | 283 |  0.147 | 81.961 |  0.507 | 0.477   | 0.002 |        |
| 8   | Cor.Raca       |   2 | 124 |  0.424 | 31.724 |  0.829 | 0.439   | 0.013 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 329 | 21.369 | 93.299 | 75.354 | \<0.001 | 0.186 | \*     |
| 4   | grupo:Sexo     |   1 | 329 |  0.024 | 93.299 |  0.085 | 0.771   | 0.000 |        |
| 8   | grupo:Zona     |   1 | 281 |  1.482 | 77.815 |  5.352 | 0.021   | 0.019 | \*     |
| 12  | grupo:Cor.Raca |   1 | 122 |  2.051 | 29.275 |  8.547 | 0.004   | 0.065 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | 136 |   3.280 |    0.053 |     3.155 |      0.046 |   3.205 |    0.046 |
| fss.media.math | Experimental | 198 |   3.468 |    0.040 |     3.417 |      0.044 |   3.383 |    0.038 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |   -0.179 |   -0.297 |    -0.061 | 0.060 |    -2.978 | 0.003 | 0.003 | \*\*         |
| dfs.media.math | Controle | Experimental |   -0.188 |   -0.316 |    -0.061 | 0.065 |    -2.904 | 0.004 | 0.004 | \*\*         |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |    0.125 |   -0.015 |     0.265 | 0.071 |     1.755 | 0.080 | 0.080 | ns           |
| flow.math | Experimental | pre    | pos    |    0.051 |   -0.065 |     0.167 | 0.059 |     0.866 | 0.387 | 0.387 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  74 |   3.360 |    0.063 |     3.144 |      0.056 |   3.158 |    0.062 |
| fss.media.math | Controle     | M    |  62 |   3.185 |    0.087 |     3.169 |      0.077 |   3.260 |    0.068 |
| fss.media.math | Experimental | F    |  95 |   3.360 |    0.054 |     3.334 |      0.069 |   3.348 |    0.055 |
| fss.media.math | Experimental | M    | 103 |   3.568 |    0.056 |     3.494 |      0.056 |   3.416 |    0.053 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| fss.media.math |              | F    | Controle | Experimental |   -0.191 |   -0.353 |    -0.028 | 0.083 |    -2.309 | 0.022   | 0.022   | \*           |
| fss.media.math |              | M    | Controle | Experimental |   -0.156 |   -0.328 |     0.017 | 0.088 |    -1.772 | 0.077   | 0.077   | ns           |
| dfs.media.math |              | F    | Controle | Experimental |    0.000 |   -0.176 |     0.175 | 0.089 |    -0.003 | 0.997   | 0.997   | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.384 |   -0.566 |    -0.201 | 0.093 |    -4.142 | \<0.001 | \<0.001 | \*\*\*\*     |
| fss.media.math | Controle     |      | F        | M            |   -0.103 |   -0.284 |     0.079 | 0.092 |    -1.114 | 0.266   | 0.266   | ns           |
| fss.media.math | Experimental |      | F        | M            |   -0.068 |   -0.218 |     0.083 | 0.076 |    -0.883 | 0.378   | 0.378   | ns           |
| dfs.media.math | Controle     |      | F        | M            |    0.175 |   -0.020 |     0.370 | 0.099 |     1.764 | 0.079   | 0.079   | ns           |
| dfs.media.math | Experimental |      | F        | M            |   -0.208 |   -0.369 |    -0.047 | 0.082 |    -2.542 | 0.011   | 0.011   | \*           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.216 |    0.028 |     0.404 | 0.096 |     2.257 | 0.024 | 0.024 | \*           |
| flow.math | Controle     | M    | pre    | pos    |    0.016 |   -0.190 |     0.221 | 0.105 |     0.152 | 0.879 | 0.879 | ns           |
| flow.math | Experimental | F    | pre    | pos    |    0.026 |   -0.140 |     0.192 | 0.085 |     0.304 | 0.761 | 0.761 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.074 |   -0.085 |     0.234 | 0.081 |     0.917 | 0.360 | 0.360 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  |  58 |   3.314 |    0.068 |     3.096 |      0.071 |   3.131 |    0.069 |
| fss.media.math | Controle     | Urbana |  60 |   3.262 |    0.089 |     3.206 |      0.064 |   3.265 |    0.068 |
| fss.media.math | Experimental | Rural  |  88 |   3.418 |    0.059 |     3.485 |      0.059 |   3.473 |    0.056 |
| fss.media.math | Experimental | Urbana |  80 |   3.520 |    0.063 |     3.371 |      0.079 |   3.314 |    0.059 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |   -0.342 |   -0.518 |    -0.167 | 0.089 |    -3.837 | \<0.001 | \<0.001 | \*\*\*       |
| fss.media.math |              | Urbana | Controle | Experimental |   -0.049 |   -0.228 |     0.130 | 0.091 |    -0.538 | 0.591   | 0.591   | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |   -0.104 |   -0.298 |     0.090 | 0.098 |    -1.057 | 0.292   | 0.292   | ns           |
| dfs.media.math |              | Urbana | Controle | Experimental |   -0.258 |   -0.454 |    -0.063 | 0.099 |    -2.598 | 0.01    | 0.01    | \*\*         |
| fss.media.math | Controle     |        | Rural    | Urbana       |   -0.134 |   -0.324 |     0.057 | 0.097 |    -1.377 | 0.17    | 0.17    | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |    0.160 |   -0.001 |     0.320 | 0.081 |     1.960 | 0.051   | 0.051   | ns           |
| dfs.media.math | Controle     |        | Rural    | Urbana       |    0.052 |   -0.159 |     0.263 | 0.107 |     0.486 | 0.627   | 0.627   | ns           |
| dfs.media.math | Experimental |        | Rural    | Urbana       |   -0.102 |   -0.279 |     0.075 | 0.090 |    -1.136 | 0.257   | 0.257   | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |    0.219 |    0.005 |     0.432 | 0.109 |     2.014 | 0.044 | 0.044 | \*           |
| flow.math | Controle     | Urbana | pre    | pos    |    0.057 |   -0.153 |     0.266 | 0.107 |     0.530 | 0.597 | 0.597 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |   -0.066 |   -0.240 |     0.107 | 0.088 |    -0.754 | 0.451 | 0.451 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |    0.149 |   -0.032 |     0.331 | 0.092 |     1.615 | 0.107 | 0.107 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Branca   |  18 |   3.208 |    0.163 |     3.224 |      0.114 |   3.329 |    0.116 |
| fss.media.math | Controle     | Parda    |  43 |   3.356 |    0.090 |     3.140 |      0.082 |   3.163 |    0.074 |
| fss.media.math | Experimental | Branca   |  15 |   3.655 |    0.132 |     3.140 |      0.172 |   3.000 |    0.127 |
| fss.media.math | Experimental | Parda    |  48 |   3.432 |    0.085 |     3.446 |      0.091 |   3.429 |    0.070 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Branca   | Controle | Experimental |    0.329 |   -0.015 |     0.673 | 0.174 |     1.896 | 0.060 | 0.060 | ns           |
| fss.media.math |              | Parda    | Controle | Experimental |   -0.265 |   -0.468 |    -0.062 | 0.102 |    -2.587 | 0.011 | 0.011 | \*           |
| dfs.media.math |              | Branca   | Controle | Experimental |   -0.447 |   -0.860 |    -0.034 | 0.208 |    -2.145 | 0.034 | 0.034 | \*           |
| dfs.media.math |              | Parda    | Controle | Experimental |   -0.075 |   -0.323 |     0.172 | 0.125 |    -0.602 | 0.548 | 0.548 | ns           |
| fss.media.math | Controle     |          | Branca   | Parda        |    0.166 |   -0.106 |     0.437 | 0.137 |     1.208 | 0.229 | 0.229 | ns           |
| fss.media.math | Experimental |          | Branca   | Parda        |   -0.428 |   -0.715 |    -0.141 | 0.145 |    -2.953 | 0.004 | 0.004 | \*\*         |
| dfs.media.math | Controle     |          | Branca   | Parda        |   -0.149 |   -0.480 |     0.183 | 0.167 |    -0.889 | 0.376 | 0.376 | ns           |
| dfs.media.math | Experimental |          | Branca   | Parda        |    0.223 |   -0.126 |     0.572 | 0.176 |     1.264 | 0.209 | 0.209 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Branca   | pre    | pos    |   -0.016 |   -0.404 |     0.372 | 0.197 |    -0.082 | 0.934 | 0.934 | ns           |
| flow.math | Controle     | Parda    | pre    | pos    |    0.217 |   -0.034 |     0.468 | 0.127 |     1.702 | 0.090 | 0.090 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |    0.515 |    0.090 |     0.940 | 0.216 |     2.387 | 0.018 | 0.018 | \*           |
| flow.math | Experimental | Parda    | pre    | pos    |   -0.014 |   -0.252 |     0.223 | 0.121 |    -0.118 | 0.906 | 0.906 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-7-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
