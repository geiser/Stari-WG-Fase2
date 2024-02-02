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
| Controle     | F    |        |          | dfs.media.math |  47 | 3.380 |  3.556 | 2.333 | 4.333 | 0.561 | 0.082 | 0.165 | 0.889 |
| Controle     | M    |        |          | dfs.media.math |  40 | 3.354 |  3.222 | 2.000 | 5.000 | 0.559 | 0.088 | 0.179 | 0.889 |
| Experimental | F    |        |          | dfs.media.math | 100 | 3.401 |  3.444 | 1.667 | 4.667 | 0.558 | 0.056 | 0.111 | 0.778 |
| Experimental | M    |        |          | dfs.media.math |  75 | 3.356 |  3.444 | 1.444 | 4.444 | 0.538 | 0.062 | 0.124 | 0.667 |
| Controle     | F    |        |          | fss.media.math |  47 | 3.329 |  3.556 | 2.333 | 4.556 | 0.619 | 0.090 | 0.182 | 1.014 |
| Controle     | M    |        |          | fss.media.math |  40 | 3.386 |  3.389 | 2.111 | 4.444 | 0.568 | 0.090 | 0.182 | 0.889 |
| Experimental | F    |        |          | fss.media.math | 100 | 3.244 |  3.222 | 2.000 | 4.889 | 0.625 | 0.062 | 0.124 | 0.806 |
| Experimental | M    |        |          | fss.media.math |  75 | 3.335 |  3.333 | 2.000 | 4.444 | 0.566 | 0.065 | 0.130 | 0.764 |
| Controle     |      | Rural  |          | dfs.media.math |  31 | 3.237 |  3.000 | 2.556 | 4.333 | 0.502 | 0.090 | 0.184 | 0.833 |
| Controle     |      | Urbana |          | dfs.media.math |  22 | 3.446 |  3.444 | 2.000 | 4.333 | 0.650 | 0.139 | 0.288 | 0.944 |
| Controle     |      |        |          | dfs.media.math |  34 | 3.438 |  3.500 | 2.333 | 5.000 | 0.535 | 0.092 | 0.187 | 0.667 |
| Experimental |      | Rural  |          | dfs.media.math |  53 | 3.341 |  3.444 | 1.444 | 4.556 | 0.640 | 0.088 | 0.176 | 0.889 |
| Experimental |      | Urbana |          | dfs.media.math |  31 | 3.463 |  3.444 | 2.778 | 4.667 | 0.435 | 0.078 | 0.160 | 0.549 |
| Experimental |      |        |          | dfs.media.math |  91 | 3.378 |  3.444 | 1.667 | 4.444 | 0.528 | 0.055 | 0.110 | 0.778 |
| Controle     |      | Rural  |          | fss.media.math |  31 | 3.329 |  3.222 | 2.429 | 4.444 | 0.567 | 0.102 | 0.208 | 0.833 |
| Controle     |      | Urbana |          | fss.media.math |  22 | 3.515 |  3.500 | 2.667 | 4.556 | 0.540 | 0.115 | 0.240 | 0.774 |
| Controle     |      |        |          | fss.media.math |  34 | 3.276 |  3.500 | 2.111 | 4.333 | 0.645 | 0.111 | 0.225 | 1.111 |
| Experimental |      | Rural  |          | fss.media.math |  53 | 3.399 |  3.333 | 2.333 | 4.556 | 0.494 | 0.068 | 0.136 | 0.667 |
| Experimental |      | Urbana |          | fss.media.math |  31 | 3.280 |  3.333 | 2.000 | 4.889 | 0.717 | 0.129 | 0.263 | 1.042 |
| Experimental |      |        |          | fss.media.math |  91 | 3.216 |  3.222 | 2.000 | 4.667 | 0.610 | 0.064 | 0.127 | 0.958 |
| Controle     |      |        | Branca   | dfs.media.math |   4 | 3.417 |  3.611 | 2.556 | 3.889 | 0.591 | 0.295 | 0.940 | 0.417 |
| Controle     |      |        | Parda    | dfs.media.math |  32 | 3.224 |  3.167 | 2.333 | 4.222 | 0.502 | 0.089 | 0.181 | 0.694 |
| Controle     |      |        |          | dfs.media.math |  51 | 3.455 |  3.500 | 2.000 | 5.000 | 0.580 | 0.081 | 0.163 | 0.889 |
| Experimental |      |        | Amarela  | dfs.media.math |   2 | 3.000 |  3.000 | 2.444 | 3.556 | 0.786 | 0.556 | 7.059 | 0.556 |
| Experimental |      |        | Branca   | dfs.media.math |  17 | 3.412 |  3.333 | 2.778 | 4.111 | 0.402 | 0.098 | 0.207 | 0.667 |
| Experimental |      |        | Parda    | dfs.media.math |  44 | 3.469 |  3.444 | 2.333 | 4.556 | 0.506 | 0.076 | 0.154 | 0.611 |
| Experimental |      |        |          | dfs.media.math | 112 | 3.350 |  3.444 | 1.444 | 4.667 | 0.580 | 0.055 | 0.109 | 0.778 |
| Controle     |      |        | Branca   | fss.media.math |   4 | 3.528 |  3.556 | 3.333 | 3.667 | 0.140 | 0.070 | 0.222 | 0.083 |
| Controle     |      |        | Parda    | fss.media.math |  32 | 3.306 |  3.222 | 2.333 | 4.444 | 0.574 | 0.102 | 0.207 | 0.806 |
| Controle     |      |        |          | fss.media.math |  51 | 3.373 |  3.444 | 2.111 | 4.556 | 0.629 | 0.088 | 0.177 | 1.056 |
| Experimental |      |        | Amarela  | fss.media.math |   2 | 3.167 |  3.167 | 2.889 | 3.444 | 0.393 | 0.278 | 3.530 | 0.278 |
| Experimental |      |        | Branca   | fss.media.math |  17 | 3.326 |  3.444 | 2.111 | 4.000 | 0.584 | 0.142 | 0.300 | 0.556 |
| Experimental |      |        | Parda    | fss.media.math |  44 | 3.412 |  3.333 | 2.333 | 4.556 | 0.523 | 0.079 | 0.159 | 0.778 |
| Experimental |      |        |          | fss.media.math | 112 | 3.228 |  3.222 | 2.000 | 4.889 | 0.631 | 0.060 | 0.118 | 0.938 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |  skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 262 | 0.1241292 | -0.4194837 | YES      |  2.887904 | D’Agostino | 0.2359932 | ns       | \-        |
| fss.media.math | 137 | 0.2942601 | -0.6287782 | YES      |  5.314096 | D’Agostino | 0.0701550 | ns       | QQ        |
| fss.media.math |  99 | 0.0788644 | -0.6370876 | YES      |  2.114624 | D’Agostino | 0.3473883 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 262 |       3 |     258 | 0.4330221 | 0.7295337 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 262 |       3 |     254 | 2.0090000 | 0.1130000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     | 137 |       3 |     133 | 2.9640276 | 0.0344880 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 137 |       3 |     129 | 3.0960000 | 0.0290000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  99 |       4 |      94 | 2.0159162 | 0.0984893 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  99 |       4 |      89 | 0.2530000 | 0.9070000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 259 | 15.587 | 77.373 | 52.176 | \<0.001 | 0.168 | \*     |
| 2   | grupo          |   1 | 259 |  0.356 | 77.373 |  1.191 | 0.276   | 0.005 |        |
| 4   | Sexo           |   1 | 259 |  0.636 | 77.094 |  2.136 | 0.145   | 0.008 |        |
| 6   | Zona           |   1 | 134 |  0.094 | 38.219 |  0.330 | 0.567   | 0.002 |        |
| 8   | Cor.Raca       |   2 |  95 |  0.012 | 22.097 |  0.025 | 0.976   | 0.001 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 257 | 15.795 | 76.740 | 52.897 | \<0.001 | 0.171 | \*     |
| 4   | grupo:Sexo     |   1 | 257 |  0.025 | 76.740 |  0.083 | 0.773   | 0.000 |        |
| 8   | grupo:Zona     |   1 | 132 |  0.568 | 37.455 |  2.002 | 0.159   | 0.015 |        |
| 12  | grupo:Cor.Raca |   1 |  93 |  0.093 | 21.965 |  0.396 | 0.531   | 0.004 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     |  87 |   3.368 |    0.060 |     3.355 |      0.064 |   3.359 |    0.059 |
| fss.media.math | Experimental | 175 |   3.382 |    0.041 |     3.283 |      0.045 |   3.281 |    0.041 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.078 |   -0.063 |     0.219 | 0.072 |     1.091 | 0.276 | 0.276 | ns           |
| dfs.media.math | Controle | Experimental |   -0.014 |   -0.156 |     0.129 | 0.072 |    -0.187 | 0.852 | 0.852 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |    0.013 |   -0.158 |     0.184 | 0.087 |     0.150 | 0.881 | 0.881 | ns           |
| flow.math | Experimental | pre    | pos    |    0.099 |   -0.022 |     0.220 | 0.061 |     1.609 | 0.108 | 0.108 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  47 |   3.380 |    0.082 |     3.329 |      0.090 |   3.327 |    0.080 |
| fss.media.math | Controle     | M    |  40 |   3.354 |    0.088 |     3.386 |      0.090 |   3.397 |    0.086 |
| fss.media.math | Experimental | F    | 100 |   3.401 |    0.056 |     3.244 |      0.062 |   3.233 |    0.055 |
| fss.media.math | Experimental | M    |  75 |   3.356 |    0.062 |     3.335 |      0.065 |   3.344 |    0.063 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |    0.094 |   -0.096 |     0.284 | 0.097 |     0.972 | 0.332 | 0.332 | ns           |
| fss.media.math |              | M    | Controle | Experimental |    0.052 |   -0.158 |     0.263 | 0.107 |     0.490 | 0.625 | 0.625 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |   -0.021 |   -0.214 |     0.172 | 0.098 |    -0.215 | 0.830 | 0.830 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.002 |   -0.215 |     0.212 | 0.108 |    -0.015 | 0.988 | 0.988 | ns           |
| fss.media.math | Controle     |      | F        | M            |   -0.070 |   -0.301 |     0.162 | 0.118 |    -0.592 | 0.554 | 0.554 | ns           |
| fss.media.math | Experimental |      | F        | M            |   -0.111 |   -0.276 |     0.053 | 0.084 |    -1.331 | 0.184 | 0.184 | ns           |
| dfs.media.math | Controle     |      | F        | M            |    0.026 |   -0.208 |     0.260 | 0.119 |     0.220 | 0.826 | 0.826 | ns           |
| dfs.media.math | Experimental |      | F        | M            |    0.046 |   -0.121 |     0.212 | 0.084 |     0.540 | 0.590 | 0.590 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.052 |   -0.182 |     0.285 | 0.119 |     0.435 | 0.664 | 0.664 | ns           |
| flow.math | Controle     | M    | pre    | pos    |   -0.032 |   -0.286 |     0.221 | 0.129 |    -0.251 | 0.802 | 0.802 | ns           |
| flow.math | Experimental | F    | pre    | pos    |    0.157 |   -0.003 |     0.318 | 0.082 |     1.930 | 0.054 | 0.054 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.021 |   -0.164 |     0.206 | 0.094 |     0.223 | 0.824 | 0.824 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  |  31 |   3.237 |    0.090 |     3.329 |      0.102 |   3.377 |    0.096 |
| fss.media.math | Controle     | Urbana |  22 |   3.446 |    0.139 |     3.515 |      0.115 |   3.482 |    0.114 |
| fss.media.math | Experimental | Rural  |  53 |   3.341 |    0.088 |     3.399 |      0.068 |   3.407 |    0.073 |
| fss.media.math | Experimental | Urbana |  31 |   3.463 |    0.078 |     3.280 |      0.129 |   3.241 |    0.096 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |   -0.030 |   -0.269 |     0.209 | 0.121 |    -0.247 | 0.805 | 0.805 | ns           |
| fss.media.math |              | Urbana | Controle | Experimental |    0.241 |   -0.053 |     0.535 | 0.149 |     1.622 | 0.107 | 0.107 | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |   -0.104 |   -0.359 |     0.152 | 0.129 |    -0.802 | 0.424 | 0.424 | ns           |
| dfs.media.math |              | Urbana | Controle | Experimental |   -0.018 |   -0.333 |     0.297 | 0.159 |    -0.110 | 0.912 | 0.912 | ns           |
| fss.media.math | Controle     |        | Rural    | Urbana       |   -0.105 |   -0.401 |     0.190 | 0.149 |    -0.706 | 0.482 | 0.482 | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |    0.165 |   -0.074 |     0.404 | 0.121 |     1.367 | 0.174 | 0.174 | ns           |
| dfs.media.math | Controle     |        | Rural    | Urbana       |   -0.209 |   -0.524 |     0.106 | 0.159 |    -1.310 | 0.192 | 0.192 | ns           |
| dfs.media.math | Experimental |        | Rural    | Urbana       |   -0.123 |   -0.378 |     0.133 | 0.129 |    -0.949 | 0.344 | 0.344 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |   -0.092 |   -0.378 |     0.195 | 0.146 |    -0.631 | 0.529 | 0.529 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |   -0.069 |   -0.409 |     0.271 | 0.173 |    -0.398 | 0.691 | 0.691 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |   -0.058 |   -0.277 |     0.161 | 0.111 |    -0.520 | 0.603 | 0.603 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |    0.183 |   -0.104 |     0.469 | 0.146 |     1.256 | 0.210 | 0.210 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Parda    |  32 |   3.224 |    0.089 |     3.306 |      0.102 |   3.382 |    0.089 |
| fss.media.math | Experimental | Branca   |  17 |   3.412 |    0.098 |     3.326 |      0.142 |   3.307 |    0.120 |
| fss.media.math | Experimental | Parda    |  44 |   3.469 |    0.076 |     3.412 |      0.079 |   3.364 |    0.075 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.math |              | Parda    | Controle | Experimental |    0.018 |   -0.217 |     0.253 | 0.118 |     0.152 | 0.880 | 0.880 | ns           |
| 4   | dfs.media.math |              | Parda    | Controle | Experimental |   -0.244 |   -0.469 |    -0.019 | 0.113 |    -2.157 | 0.034 | 0.034 | \*           |
| 6   | fss.media.math | Experimental |          | Branca   | Parda        |   -0.057 |   -0.339 |     0.224 | 0.142 |    -0.404 | 0.687 | 0.687 | ns           |
| 8   | dfs.media.math | Experimental |          | Branca   | Parda        |   -0.057 |   -0.334 |     0.220 | 0.139 |    -0.409 | 0.683 | 0.683 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Parda    | pre    | pos    |   -0.081 |   -0.338 |     0.176 | 0.130 |    -0.623 | 0.534 | 0.534 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |    0.086 |   -0.267 |     0.438 | 0.179 |     0.480 | 0.632 | 0.632 | ns           |
| flow.math | Experimental | Parda    | pre    | pos    |    0.057 |   -0.163 |     0.276 | 0.111 |     0.509 | 0.611 | 0.611 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-8-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
