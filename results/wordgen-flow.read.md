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
| Controle     | F    |        |          | dfs.media.read | 248 | 3.555 |  3.556 | 1.667 | 4.778 | 0.507 | 0.032 | 0.063 | 0.667 |
| Controle     | M    |        |          | dfs.media.read | 256 | 3.407 |  3.444 | 2.000 | 4.778 | 0.562 | 0.035 | 0.069 | 0.778 |
| Experimental | F    |        |          | dfs.media.read | 365 | 3.518 |  3.556 | 1.889 | 4.667 | 0.444 | 0.023 | 0.046 | 0.653 |
| Experimental | M    |        |          | dfs.media.read | 345 | 3.447 |  3.444 | 1.889 | 5.000 | 0.509 | 0.027 | 0.054 | 0.667 |
| Controle     | F    |        |          | fss.media.read | 248 | 3.511 |  3.556 | 1.667 | 4.889 | 0.551 | 0.035 | 0.069 | 0.778 |
| Controle     | M    |        |          | fss.media.read | 256 | 3.399 |  3.333 | 1.556 | 4.889 | 0.581 | 0.036 | 0.072 | 0.778 |
| Experimental | F    |        |          | fss.media.read | 365 | 3.452 |  3.444 | 1.556 | 5.000 | 0.515 | 0.027 | 0.053 | 0.667 |
| Experimental | M    |        |          | fss.media.read | 345 | 3.464 |  3.444 | 1.000 | 5.000 | 0.533 | 0.029 | 0.056 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.read | 235 | 3.534 |  3.556 | 2.111 | 4.778 | 0.544 | 0.035 | 0.070 | 0.778 |
| Controle     |      | Urbana |          | dfs.media.read | 136 | 3.467 |  3.528 | 2.000 | 4.778 | 0.561 | 0.048 | 0.095 | 0.778 |
| Controle     |      |        |          | dfs.media.read | 133 | 3.399 |  3.444 | 1.667 | 4.778 | 0.504 | 0.044 | 0.086 | 0.556 |
| Experimental |      | Rural  |          | dfs.media.read | 269 | 3.456 |  3.444 | 1.889 | 4.625 | 0.478 | 0.029 | 0.057 | 0.667 |
| Experimental |      | Urbana |          | dfs.media.read | 199 | 3.554 |  3.556 | 2.222 | 5.000 | 0.459 | 0.033 | 0.064 | 0.667 |
| Experimental |      |        |          | dfs.media.read | 242 | 3.456 |  3.444 | 1.889 | 4.556 | 0.488 | 0.031 | 0.062 | 0.667 |
| Controle     |      | Rural  |          | fss.media.read | 235 | 3.499 |  3.556 | 1.778 | 4.889 | 0.554 | 0.036 | 0.071 | 0.778 |
| Controle     |      | Urbana |          | fss.media.read | 136 | 3.432 |  3.444 | 1.778 | 4.889 | 0.567 | 0.049 | 0.096 | 0.778 |
| Controle     |      |        |          | fss.media.read | 133 | 3.399 |  3.444 | 1.556 | 4.667 | 0.594 | 0.051 | 0.102 | 0.778 |
| Experimental |      | Rural  |          | fss.media.read | 269 | 3.456 |  3.444 | 1.556 | 5.000 | 0.505 | 0.031 | 0.061 | 0.667 |
| Experimental |      | Urbana |          | fss.media.read | 199 | 3.440 |  3.444 | 2.000 | 5.000 | 0.549 | 0.039 | 0.077 | 0.778 |
| Experimental |      |        |          | fss.media.read | 242 | 3.475 |  3.444 | 1.000 | 5.000 | 0.524 | 0.034 | 0.066 | 0.736 |
| Controle     |      |        | Branca   | dfs.media.read |  49 | 3.602 |  3.556 | 2.444 | 4.778 | 0.606 | 0.087 | 0.174 | 0.911 |
| Controle     |      |        | Indígena | dfs.media.read |  10 | 3.489 |  3.667 | 2.556 | 4.333 | 0.540 | 0.171 | 0.386 | 0.722 |
| Controle     |      |        | Parda    | dfs.media.read | 167 | 3.445 |  3.444 | 2.222 | 4.778 | 0.533 | 0.041 | 0.081 | 0.778 |
| Controle     |      |        | Preta    | dfs.media.read |   1 | 3.667 |  3.667 | 3.667 | 3.667 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.read | 277 | 3.479 |  3.500 | 1.667 | 4.778 | 0.533 | 0.032 | 0.063 | 0.667 |
| Experimental |      |        | Amarela  | dfs.media.read |   2 | 2.889 |  2.889 | 2.444 | 3.333 | 0.629 | 0.444 | 5.647 | 0.444 |
| Experimental |      |        | Branca   | dfs.media.read |  59 | 3.519 |  3.556 | 2.556 | 4.333 | 0.420 | 0.055 | 0.109 | 0.556 |
| Experimental |      |        | Indígena | dfs.media.read |  14 | 3.411 |  3.333 | 2.667 | 3.889 | 0.410 | 0.109 | 0.236 | 0.628 |
| Experimental |      |        | Parda    | dfs.media.read | 183 | 3.455 |  3.444 | 2.222 | 4.556 | 0.455 | 0.034 | 0.066 | 0.604 |
| Experimental |      |        | Preta    | dfs.media.read |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.read | 451 | 3.496 |  3.556 | 1.889 | 5.000 | 0.495 | 0.023 | 0.046 | 0.660 |
| Controle     |      |        | Branca   | fss.media.read |  49 | 3.630 |  3.667 | 2.222 | 4.889 | 0.585 | 0.084 | 0.168 | 0.778 |
| Controle     |      |        | Indígena | fss.media.read |  10 | 3.833 |  3.833 | 3.222 | 4.444 | 0.368 | 0.116 | 0.263 | 0.389 |
| Controle     |      |        | Parda    | fss.media.read | 167 | 3.392 |  3.444 | 1.778 | 4.556 | 0.528 | 0.041 | 0.081 | 0.778 |
| Controle     |      |        | Preta    | fss.media.read |   1 | 3.667 |  3.667 | 3.667 | 3.667 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.read | 277 | 3.446 |  3.444 | 1.556 | 4.889 | 0.587 | 0.035 | 0.069 | 0.875 |
| Experimental |      |        | Amarela  | fss.media.read |   2 | 3.278 |  3.278 | 3.222 | 3.333 | 0.079 | 0.056 | 0.706 | 0.056 |
| Experimental |      |        | Branca   | fss.media.read |  59 | 3.473 |  3.444 | 2.000 | 4.444 | 0.469 | 0.061 | 0.122 | 0.660 |
| Experimental |      |        | Indígena | fss.media.read |  14 | 3.254 |  3.222 | 2.667 | 4.556 | 0.464 | 0.124 | 0.268 | 0.306 |
| Experimental |      |        | Parda    | fss.media.read | 183 | 3.438 |  3.444 | 2.375 | 5.000 | 0.477 | 0.035 | 0.070 | 0.778 |
| Experimental |      |        | Preta    | fss.media.read |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.read | 451 | 3.471 |  3.444 | 1.000 | 5.000 | 0.551 | 0.026 | 0.051 | 0.667 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |    n |   skewness |   kurtosis | symmetry |  statistic | method     |         p | p.signif | normality |
|:---------------|-----:|-----------:|-----------:|:---------|-----------:|:-----------|----------:|:---------|:----------|
| fss.media.read | 1214 | -0.2140990 |  0.6278554 | YES      | 22.2202223 | D’Agostino | 0.0000150 | \*\*\*   | \-        |
| fss.media.read |  839 | -0.0759277 |  0.0302008 | YES      |  0.9393898 | D’Agostino | 0.6251930 | ns       | \-        |
| fss.media.read |  486 |  0.0171830 | -0.0056307 | YES      |  0.0614841 | D’Agostino | 0.9697257 | ns       | \-        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |    n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|-----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 1214 |       3 |    1210 | 0.3811188 | 0.7666357 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 1214 |       3 |    1206 | 0.9140000 | 0.4340000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Zona`     |  839 |       3 |     835 | 0.3786426 | 0.7684312 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  839 |       3 |     831 | 0.5940000 | 0.6190000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  486 |       8 |     477 | 0.7164168 | 0.6771214 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  486 |       6 |     470 | 0.6240000 | 0.7110000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn |  DFd |    SSn |     SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|-----:|-------:|--------:|--------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 1211 | 53.454 | 303.606 | 213.214 | \<0.001 | 0.150 | \*     |
| 2   | grupo          |   1 | 1211 |  0.001 | 303.606 |   0.005 | 0.944   | 0.000 |        |
| 4   | Sexo           |   1 | 1211 |  0.003 | 303.604 |   0.012 | 0.911   | 0.000 |        |
| 6   | Zona           |   1 |  836 |  0.533 | 201.915 |   2.205 | 0.138   | 0.003 |        |
| 8   | Cor.Raca       |   4 |  480 |  0.645 | 101.141 |   0.765 | 0.549   | 0.006 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn |  DFd |    SSn |     SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|-----:|-------:|--------:|--------:|:--------|------:|:-------|
| 1   | dfs.media.read |   1 | 1209 | 52.473 | 302.993 | 209.379 | \<0.001 | 0.148 | \*     |
| 4   | grupo:Sexo     |   1 | 1209 |  0.609 | 302.993 |   2.430 | 0.119   | 0.002 |        |
| 8   | grupo:Zona     |   1 |  834 |  0.022 | 201.830 |   0.092 | 0.762   | 0.000 |        |
| 12  | grupo:Cor.Raca |   3 |  476 |  2.234 |  98.835 |   3.587 | 0.014   | 0.022 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | 504 |   3.480 |    0.024 |     3.454 |      0.025 |   3.455 |    0.022 |
| fss.media.read | Experimental | 710 |   3.483 |    0.018 |     3.458 |      0.020 |   3.457 |    0.019 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read | Controle | Experimental |   -0.002 |   -0.059 |     0.055 | 0.029 |     -0.07 | 0.944 | 0.944 | ns           |
| dfs.media.read | Controle | Experimental |   -0.003 |   -0.061 |     0.054 | 0.029 |     -0.11 | 0.912 | 0.912 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | pre    | pos    |    0.026 |   -0.039 |     0.091 | 0.033 |     0.782 | 0.435 | 0.435 | ns           |
| flow.read | Experimental | pre    | pos    |    0.026 |   -0.029 |     0.080 | 0.028 |     0.922 | 0.357 | 0.357 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | F    | 248 |   3.555 |    0.032 |     3.511 |      0.035 |   3.481 |    0.032 |
| fss.media.read | Controle     | M    | 256 |   3.407 |    0.035 |     3.399 |      0.036 |   3.430 |    0.031 |
| fss.media.read | Experimental | F    | 365 |   3.518 |    0.023 |     3.452 |      0.027 |   3.437 |    0.026 |
| fss.media.read | Experimental | M    | 345 |   3.447 |    0.027 |     3.464 |      0.029 |   3.478 |    0.027 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| fss.media.read |              | F    | Controle | Experimental |    0.043 |   -0.038 |     0.124 | 0.041 |     1.050 | 0.294   | 0.294   | ns           |
| fss.media.read |              | M    | Controle | Experimental |   -0.048 |   -0.129 |     0.033 | 0.041 |    -1.155 | 0.248   | 0.248   | ns           |
| dfs.media.read |              | F    | Controle | Experimental |    0.038 |   -0.043 |     0.119 | 0.041 |     0.915 | 0.361   | 0.361   | ns           |
| dfs.media.read |              | M    | Controle | Experimental |   -0.040 |   -0.121 |     0.041 | 0.041 |    -0.964 | 0.335   | 0.335   | ns           |
| fss.media.read | Controle     |      | F        | M            |    0.050 |   -0.038 |     0.138 | 0.045 |     1.119 | 0.263   | 0.263   | ns           |
| fss.media.read | Experimental |      | F        | M            |   -0.041 |   -0.115 |     0.033 | 0.038 |    -1.086 | 0.278   | 0.278   | ns           |
| dfs.media.read | Controle     |      | F        | M            |    0.148 |    0.060 |     0.236 | 0.045 |     3.313 | \<0.001 | \<0.001 | \*\*\*       |
| dfs.media.read | Experimental |      | F        | M            |    0.070 |   -0.003 |     0.144 | 0.038 |     1.870 | 0.062   | 0.062   | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | F    | pre    | pos    |    0.044 |   -0.048 |     0.136 | 0.047 |     0.946 | 0.344 | 0.344 | ns           |
| flow.read | Controle     | M    | pre    | pos    |    0.008 |   -0.083 |     0.098 | 0.046 |     0.169 | 0.866 | 0.866 | ns           |
| flow.read | Experimental | F    | pre    | pos    |    0.066 |   -0.010 |     0.141 | 0.039 |     1.695 | 0.090 | 0.090 | ns           |
| flow.read | Experimental | M    | pre    | pos    |   -0.017 |   -0.095 |     0.061 | 0.040 |    -0.417 | 0.677 | 0.677 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Rural  | 235 |   3.534 |    0.035 |     3.499 |      0.036 |   3.486 |    0.032 |
| fss.media.read | Controle     | Urbana | 136 |   3.467 |    0.048 |     3.432 |      0.049 |   3.447 |    0.042 |
| fss.media.read | Experimental | Rural  | 269 |   3.456 |    0.029 |     3.456 |      0.031 |   3.477 |    0.030 |
| fss.media.read | Experimental | Urbana | 199 |   3.554 |    0.033 |     3.440 |      0.039 |   3.417 |    0.035 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | Rural  | Controle | Experimental |    0.009 |   -0.077 |     0.095 | 0.044 |     0.205 | 0.837 | 0.837 | ns           |
| fss.media.read |              | Urbana | Controle | Experimental |    0.030 |   -0.077 |     0.138 | 0.055 |     0.554 | 0.580 | 0.580 | ns           |
| dfs.media.read |              | Rural  | Controle | Experimental |    0.078 |   -0.011 |     0.167 | 0.045 |     1.721 | 0.086 | 0.086 | ns           |
| dfs.media.read |              | Urbana | Controle | Experimental |   -0.087 |   -0.198 |     0.023 | 0.056 |    -1.548 | 0.122 | 0.122 | ns           |
| fss.media.read | Controle     |        | Rural    | Urbana       |    0.038 |   -0.066 |     0.142 | 0.053 |     0.722 | 0.471 | 0.471 | ns           |
| fss.media.read | Experimental |        | Rural    | Urbana       |    0.060 |   -0.031 |     0.150 | 0.046 |     1.292 | 0.197 | 0.197 | ns           |
| dfs.media.read | Controle     |        | Rural    | Urbana       |    0.067 |   -0.040 |     0.174 | 0.055 |     1.222 | 0.222 | 0.222 | ns           |
| dfs.media.read | Experimental |        | Rural    | Urbana       |   -0.098 |   -0.192 |    -0.005 | 0.047 |    -2.077 | 0.038 | 0.038 | \*           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Rural  | pre    | pos    |    0.034 |   -0.060 |     0.129 | 0.048 |     0.713 | 0.476 | 0.476 | ns           |
| flow.read | Controle     | Urbana | pre    | pos    |    0.035 |   -0.089 |     0.160 | 0.063 |     0.555 | 0.579 | 0.579 | ns           |
| flow.read | Experimental | Rural  | pre    | pos    |    0.000 |   -0.089 |     0.088 | 0.045 |    -0.006 | 0.995 | 0.995 | ns           |
| flow.read | Experimental | Urbana | pre    | pos    |    0.115 |    0.012 |     0.218 | 0.052 |     2.183 | 0.029 | 0.029 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Branca   |  49 |   3.602 |    0.087 |     3.630 |      0.084 |   3.574 |    0.065 |
| fss.media.read | Controle     | Indígena |  10 |   3.489 |    0.171 |     3.833 |      0.116 |   3.827 |    0.144 |
| fss.media.read | Controle     | Parda    | 167 |   3.445 |    0.041 |     3.392 |      0.041 |   3.405 |    0.035 |
| fss.media.read | Experimental | Branca   |  59 |   3.519 |    0.055 |     3.473 |      0.061 |   3.453 |    0.059 |
| fss.media.read | Experimental | Indígena |  14 |   3.411 |    0.109 |     3.254 |      0.124 |   3.281 |    0.122 |
| fss.media.read | Experimental | Parda    | 183 |   3.455 |    0.034 |     3.438 |      0.035 |   3.446 |    0.034 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read |              | Branca   | Controle | Experimental |    0.121 |   -0.052 |     0.294 | 0.088 |     1.374 | 0.170 | 0.170 | ns           |
| fss.media.read |              | Indígena | Controle | Experimental |    0.545 |    0.174 |     0.916 | 0.189 |     2.889 | 0.004 | 0.004 | \*\*         |
| fss.media.read |              | Parda    | Controle | Experimental |   -0.041 |   -0.137 |     0.055 | 0.049 |    -0.845 | 0.399 | 0.399 | ns           |
| dfs.media.read |              | Branca   | Controle | Experimental |    0.082 |   -0.106 |     0.271 | 0.096 |     0.857 | 0.392 | 0.392 | ns           |
| dfs.media.read |              | Indígena | Controle | Experimental |    0.078 |   -0.326 |     0.482 | 0.206 |     0.380 | 0.704 | 0.704 | ns           |
| dfs.media.read |              | Parda    | Controle | Experimental |   -0.010 |   -0.115 |     0.094 | 0.053 |    -0.194 | 0.846 | 0.846 | ns           |
| fss.media.read | Controle     |          | Branca   | Indígena     |   -0.253 |   -0.564 |     0.058 | 0.158 |    -1.596 | 0.111 | 0.333 | ns           |
| fss.media.read | Controle     |          | Branca   | Parda        |    0.169 |    0.023 |     0.315 | 0.074 |     2.274 | 0.023 | 0.070 | ns           |
| fss.media.read | Controle     |          | Indígena | Parda        |    0.422 |    0.130 |     0.713 | 0.148 |     2.842 | 0.005 | 0.014 | \*           |
| fss.media.read | Experimental |          | Branca   | Indígena     |    0.171 |   -0.095 |     0.438 | 0.136 |     1.265 | 0.207 | 0.620 | ns           |
| fss.media.read | Experimental |          | Branca   | Parda        |    0.007 |   -0.127 |     0.141 | 0.068 |     0.099 | 0.921 | 1.000 | ns           |
| fss.media.read | Experimental |          | Indígena | Parda        |   -0.165 |   -0.413 |     0.084 | 0.126 |    -1.303 | 0.193 | 0.579 | ns           |
| dfs.media.read | Controle     |          | Branca   | Indígena     |    0.113 |   -0.226 |     0.451 | 0.172 |     0.654 | 0.514 | 1.000 | ns           |
| dfs.media.read | Controle     |          | Branca   | Parda        |    0.157 |   -0.002 |     0.316 | 0.081 |     1.945 | 0.052 | 0.157 | ns           |
| dfs.media.read | Controle     |          | Indígena | Parda        |    0.044 |   -0.274 |     0.362 | 0.162 |     0.274 | 0.784 | 1.000 | ns           |
| dfs.media.read | Experimental |          | Branca   | Indígena     |    0.109 |   -0.182 |     0.399 | 0.148 |     0.735 | 0.463 | 1.000 | ns           |
| dfs.media.read | Experimental |          | Branca   | Parda        |    0.064 |   -0.082 |     0.211 | 0.074 |     0.866 | 0.387 | 1.000 | ns           |
| dfs.media.read | Experimental |          | Indígena | Parda        |   -0.044 |   -0.315 |     0.226 | 0.138 |    -0.321 | 0.748 | 1.000 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Branca   | pre    | pos    |   -0.028 |   -0.227 |     0.170 | 0.101 |    -0.279 | 0.780 | 0.780 | ns           |
| flow.read | Controle     | Indígena | pre    | pos    |   -0.344 |   -0.784 |     0.095 | 0.224 |    -1.539 | 0.124 | 0.124 | ns           |
| flow.read | Controle     | Parda    | pre    | pos    |    0.052 |   -0.055 |     0.160 | 0.055 |     0.955 | 0.340 | 0.340 | ns           |
| flow.read | Experimental | Branca   | pre    | pos    |    0.047 |   -0.134 |     0.227 | 0.092 |     0.505 | 0.614 | 0.614 | ns           |
| flow.read | Experimental | Indígena | pre    | pos    |    0.157 |   -0.215 |     0.528 | 0.189 |     0.829 | 0.408 | 0.408 | ns           |
| flow.read | Experimental | Parda    | pre    | pos    |    0.017 |   -0.086 |     0.120 | 0.052 |     0.323 | 0.746 | 0.746 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.read_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
