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
| Controle     | F    |        |          | dfs.media.math |  72 | 3.475 |  3.444 | 2.111 | 4.667 | 0.600 | 0.071 | 0.141 | 1.000 |
| Controle     | M    |        |          | dfs.media.math |  82 | 3.491 |  3.444 | 2.222 | 5.000 | 0.595 | 0.066 | 0.131 | 0.667 |
| Experimental | F    |        |          | dfs.media.math |  92 | 3.449 |  3.500 | 2.000 | 4.778 | 0.513 | 0.054 | 0.106 | 0.583 |
| Experimental | M    |        |          | dfs.media.math |  83 | 3.442 |  3.444 | 2.000 | 5.000 | 0.577 | 0.063 | 0.126 | 0.778 |
| Controle     | F    |        |          | fss.media.math |  72 | 3.443 |  3.444 | 1.778 | 4.667 | 0.600 | 0.071 | 0.141 | 0.795 |
| Controle     | M    |        |          | fss.media.math |  82 | 3.375 |  3.333 | 1.889 | 5.000 | 0.565 | 0.062 | 0.124 | 0.750 |
| Experimental | F    |        |          | fss.media.math |  92 | 3.348 |  3.333 | 2.000 | 4.444 | 0.512 | 0.053 | 0.106 | 0.778 |
| Experimental | M    |        |          | fss.media.math |  83 | 3.375 |  3.333 | 1.111 | 4.667 | 0.572 | 0.063 | 0.125 | 0.667 |
| Controle     |      | Rural  |          | dfs.media.math | 103 | 3.552 |  3.500 | 2.333 | 5.000 | 0.573 | 0.056 | 0.112 | 0.778 |
| Controle     |      | Urbana |          | dfs.media.math |  30 | 3.522 |  3.500 | 2.333 | 4.778 | 0.642 | 0.117 | 0.240 | 0.861 |
| Controle     |      |        |          | dfs.media.math |  21 | 3.090 |  3.111 | 2.111 | 3.889 | 0.505 | 0.110 | 0.230 | 0.778 |
| Experimental |      | Rural  |          | dfs.media.math |  89 | 3.484 |  3.556 | 2.000 | 4.778 | 0.538 | 0.057 | 0.113 | 0.778 |
| Experimental |      | Urbana |          | dfs.media.math |  41 | 3.393 |  3.222 | 2.667 | 4.556 | 0.544 | 0.085 | 0.172 | 0.778 |
| Experimental |      |        |          | dfs.media.math |  45 | 3.420 |  3.333 | 2.000 | 5.000 | 0.558 | 0.083 | 0.167 | 0.444 |
| Controle     |      | Rural  |          | fss.media.math | 103 | 3.450 |  3.444 | 1.778 | 4.778 | 0.580 | 0.057 | 0.113 | 0.778 |
| Controle     |      | Urbana |          | fss.media.math |  30 | 3.372 |  3.444 | 1.889 | 5.000 | 0.570 | 0.104 | 0.213 | 0.417 |
| Controle     |      |        |          | fss.media.math |  21 | 3.242 |  3.222 | 2.222 | 4.444 | 0.596 | 0.130 | 0.271 | 0.889 |
| Experimental |      | Rural  |          | fss.media.math |  89 | 3.454 |  3.444 | 2.333 | 4.667 | 0.466 | 0.049 | 0.098 | 0.667 |
| Experimental |      | Urbana |          | fss.media.math |  41 | 3.184 |  3.111 | 1.111 | 4.444 | 0.617 | 0.096 | 0.195 | 0.444 |
| Experimental |      |        |          | fss.media.math |  45 | 3.337 |  3.333 | 2.000 | 4.556 | 0.570 | 0.085 | 0.171 | 0.667 |
| Controle     |      |        | Branca   | dfs.media.math |  20 | 3.489 |  3.389 | 2.333 | 5.000 | 0.675 | 0.151 | 0.316 | 0.917 |
| Controle     |      |        | Indígena | dfs.media.math |   3 | 3.778 |  4.000 | 3.333 | 4.000 | 0.385 | 0.222 | 0.956 | 0.333 |
| Controle     |      |        | Parda    | dfs.media.math |  46 | 3.478 |  3.556 | 2.444 | 4.778 | 0.548 | 0.081 | 0.163 | 0.722 |
| Controle     |      |        | Preta    | dfs.media.math |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |       | 0.000 |
| Controle     |      |        |          | dfs.media.math |  84 | 3.475 |  3.444 | 2.111 | 5.000 | 0.616 | 0.067 | 0.134 | 0.889 |
| Experimental |      |        | Branca   | dfs.media.math |  17 | 3.464 |  3.444 | 2.667 | 4.222 | 0.387 | 0.094 | 0.199 | 0.333 |
| Experimental |      |        | Indígena | dfs.media.math |  13 | 3.544 |  3.625 | 2.778 | 4.000 | 0.383 | 0.106 | 0.231 | 0.556 |
| Experimental |      |        | Parda    | dfs.media.math |  45 | 3.330 |  3.444 | 2.222 | 4.333 | 0.539 | 0.080 | 0.162 | 0.778 |
| Experimental |      |        | Preta    | dfs.media.math |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Experimental |      |        |          | dfs.media.math |  99 | 3.485 |  3.444 | 2.000 | 5.000 | 0.584 | 0.059 | 0.116 | 0.778 |
| Controle     |      |        | Branca   | fss.media.math |  20 | 3.550 |  3.556 | 2.556 | 4.444 | 0.544 | 0.122 | 0.254 | 0.806 |
| Controle     |      |        | Indígena | fss.media.math |   3 | 3.889 |  4.222 | 2.889 | 4.556 | 0.882 | 0.509 | 2.191 | 0.833 |
| Controle     |      |        | Parda    | fss.media.math |  46 | 3.392 |  3.389 | 2.500 | 4.667 | 0.486 | 0.072 | 0.144 | 0.722 |
| Controle     |      |        | Preta    | fss.media.math |   1 | 3.222 |  3.222 | 3.222 | 3.222 |       |       |       | 0.000 |
| Controle     |      |        |          | fss.media.math |  84 | 3.365 |  3.333 | 1.778 | 5.000 | 0.626 | 0.068 | 0.136 | 0.778 |
| Experimental |      |        | Branca   | fss.media.math |  17 | 3.471 |  3.444 | 2.333 | 4.667 | 0.618 | 0.150 | 0.318 | 0.875 |
| Experimental |      |        | Indígena | fss.media.math |  13 | 3.265 |  3.222 | 2.778 | 3.889 | 0.373 | 0.103 | 0.225 | 0.556 |
| Experimental |      |        | Parda    | fss.media.math |  45 | 3.334 |  3.222 | 2.333 | 4.333 | 0.488 | 0.073 | 0.147 | 0.667 |
| Experimental |      |        | Preta    | fss.media.math |   1 | 3.889 |  3.889 | 3.889 | 3.889 |       |       |       | 0.000 |
| Experimental |      |        |          | fss.media.math |  99 | 3.361 |  3.333 | 1.111 | 4.667 | 0.570 | 0.057 | 0.114 | 0.667 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| fss.media.math | 329 | -0.3789367 |  1.6998513 | YES      | 23.665683 | D’Agostino | 0.0000073 | \*\*\*\* | \-        |
| fss.media.math | 263 | -0.5067827 |  1.8196881 | NO       | 25.205359 | D’Agostino | 0.0000034 | \*\*\*\* | \-        |
| fss.media.math | 146 |  0.0099643 | -0.5374925 | YES      |  2.043921 | D’Agostino | 0.3598888 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 329 |       3 |     325 | 0.7003054 | 0.5524449 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 329 |       3 |     321 | 1.9220000 | 0.1260000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     | 263 |       3 |     259 | 0.1591948 | 0.9236835 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 263 |       3 |     255 | 1.9650000 | 0.1200000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` | 146 |       7 |     138 | 0.8770215 | 0.5264623 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` | 146 |       5 |     132 | 1.2870000 | 0.2730000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 326 | 17.350 | 84.926 | 66.601 | \<0.001 | 0.170 | \*     |
| 2   | grupo          |   1 | 326 |  0.077 | 84.926 |  0.296 | 0.587   | 0.001 |        |
| 4   | Sexo           |   1 | 326 |  0.024 | 84.979 |  0.090 | 0.764   | 0.000 |        |
| 6   | Zona           |   1 | 260 |  1.288 | 63.964 |  5.234 | 0.023   | 0.020 | \*     |
| 8   | Cor.Raca       |   3 | 141 |  0.577 | 30.677 |  0.884 | 0.451   | 0.018 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |    SSd |      F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|-------:|-------:|:--------|------:|:-------|
| 1   | dfs.media.math |   1 | 324 | 17.391 | 84.675 | 66.545 | \<0.001 | 0.170 | \*     |
| 4   | grupo:Sexo     |   1 | 324 |  0.222 | 84.675 |  0.850 | 0.357   | 0.003 |        |
| 8   | grupo:Zona     |   1 | 258 |  0.351 | 63.604 |  1.424 | 0.234   | 0.005 |        |
| 12  | grupo:Cor.Raca |   3 | 137 |  0.948 | 29.666 |  1.460 | 0.228   | 0.031 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | 154 |   3.483 |    0.048 |     3.406 |      0.047 |   3.398 |    0.041 |
| fss.media.math | Experimental | 175 |   3.446 |    0.041 |     3.361 |      0.041 |   3.368 |    0.039 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.031 |   -0.080 |     0.142 | 0.056 |     0.544 | 0.587 | 0.587 | ns           |
| dfs.media.math | Controle | Experimental |    0.037 |   -0.086 |     0.161 | 0.063 |     0.597 | 0.551 | 0.551 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |    0.077 |   -0.049 |     0.203 | 0.064 |     1.198 | 0.231 | 0.231 | ns           |
| flow.math | Experimental | pre    | pos    |    0.085 |   -0.033 |     0.204 | 0.060 |     1.417 | 0.157 | 0.157 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  72 |   3.475 |    0.071 |     3.443 |      0.071 |   3.438 |    0.060 |
| fss.media.math | Controle     | M    |  82 |   3.491 |    0.066 |     3.375 |      0.062 |   3.364 |    0.056 |
| fss.media.math | Experimental | F    |  92 |   3.449 |    0.054 |     3.348 |      0.053 |   3.353 |    0.053 |
| fss.media.math | Experimental | M    |  83 |   3.442 |    0.063 |     3.375 |      0.063 |   3.383 |    0.056 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |    0.084 |   -0.074 |     0.243 | 0.080 |     1.050 | 0.295 | 0.295 | ns           |
| fss.media.math |              | M    | Controle | Experimental |   -0.020 |   -0.177 |     0.137 | 0.080 |    -0.249 | 0.803 | 0.803 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |    0.026 |   -0.150 |     0.202 | 0.090 |     0.290 | 0.772 | 0.772 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |    0.048 |   -0.126 |     0.223 | 0.089 |     0.544 | 0.587 | 0.587 | ns           |
| fss.media.math | Controle     |      | F        | M            |    0.074 |   -0.088 |     0.237 | 0.083 |     0.900 | 0.369 | 0.369 | ns           |
| fss.media.math | Experimental |      | F        | M            |   -0.030 |   -0.182 |     0.122 | 0.077 |    -0.388 | 0.698 | 0.698 | ns           |
| dfs.media.math | Controle     |      | F        | M            |   -0.015 |   -0.196 |     0.166 | 0.092 |    -0.165 | 0.869 | 0.869 | ns           |
| dfs.media.math | Experimental |      | F        | M            |    0.007 |   -0.163 |     0.177 | 0.086 |     0.081 | 0.935 | 0.935 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |    0.033 |   -0.152 |     0.218 | 0.094 |     0.346 | 0.729 | 0.729 | ns           |
| flow.math | Controle     | M    | pre    | pos    |    0.116 |   -0.057 |     0.289 | 0.088 |     1.313 | 0.190 | 0.190 | ns           |
| flow.math | Experimental | F    | pre    | pos    |    0.102 |   -0.062 |     0.265 | 0.083 |     1.219 | 0.223 | 0.223 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.067 |   -0.105 |     0.240 | 0.088 |     0.768 | 0.443 | 0.443 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  | 103 |   3.552 |    0.056 |     3.450 |      0.057 |   3.429 |    0.049 |
| fss.media.math | Controle     | Urbana |  30 |   3.522 |    0.117 |     3.372 |      0.104 |   3.363 |    0.091 |
| fss.media.math | Experimental | Rural  |  89 |   3.484 |    0.057 |     3.454 |      0.049 |   3.461 |    0.053 |
| fss.media.math | Experimental | Urbana |  41 |   3.393 |    0.085 |     3.184 |      0.096 |   3.229 |    0.078 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | Rural  | Controle | Experimental |   -0.032 |   -0.174 |     0.109 | 0.072 |    -0.451 | 0.653 | 0.653 | ns           |
| fss.media.math |              | Urbana | Controle | Experimental |    0.134 |   -0.101 |     0.369 | 0.120 |     1.120 | 0.264 | 0.264 | ns           |
| dfs.media.math |              | Rural  | Controle | Experimental |    0.069 |   -0.092 |     0.230 | 0.082 |     0.840 | 0.402 | 0.402 | ns           |
| dfs.media.math |              | Urbana | Controle | Experimental |    0.129 |   -0.138 |     0.397 | 0.136 |     0.952 | 0.342 | 0.342 | ns           |
| fss.media.math | Controle     |        | Rural    | Urbana       |    0.066 |   -0.137 |     0.269 | 0.103 |     0.638 | 0.524 | 0.524 | ns           |
| fss.media.math | Experimental |        | Rural    | Urbana       |    0.232 |    0.047 |     0.417 | 0.094 |     2.472 | 0.014 | 0.014 | \*           |
| dfs.media.math | Controle     |        | Rural    | Urbana       |    0.030 |   -0.201 |     0.261 | 0.117 |     0.257 | 0.798 | 0.798 | ns           |
| dfs.media.math | Experimental |        | Rural    | Urbana       |    0.091 |   -0.119 |     0.301 | 0.107 |     0.850 | 0.396 | 0.396 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |    0.102 |   -0.050 |     0.255 | 0.078 |     1.318 | 0.188 | 0.188 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |    0.150 |   -0.132 |     0.433 | 0.144 |     1.046 | 0.296 | 0.296 | ns           |
| flow.math | Experimental | Rural  | pre    | pos    |    0.030 |   -0.134 |     0.194 | 0.084 |     0.357 | 0.721 | 0.721 | ns           |
| flow.math | Experimental | Urbana | pre    | pos    |    0.209 |   -0.033 |     0.451 | 0.123 |     1.699 | 0.090 | 0.090 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Branca   |  20 |   3.489 |    0.151 |     3.550 |      0.122 |   3.530 |    0.103 |
| fss.media.math | Controle     | Parda    |  46 |   3.478 |    0.081 |     3.392 |      0.072 |   3.376 |    0.068 |
| fss.media.math | Experimental | Branca   |  17 |   3.464 |    0.094 |     3.471 |      0.150 |   3.461 |    0.112 |
| fss.media.math | Experimental | Indígena |  13 |   3.544 |    0.106 |     3.265 |      0.103 |   3.223 |    0.128 |
| fss.media.math | Experimental | Parda    |  45 |   3.330 |    0.080 |     3.334 |      0.073 |   3.376 |    0.069 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.math |              | Branca   | Controle | Experimental |    0.069 |   -0.231 |     0.369 | 0.152 |     0.454 | 0.651 | 0.651 | ns           |
| 3   | fss.media.math |              | Parda    | Controle | Experimental |    0.000 |   -0.192 |     0.192 | 0.097 |     0.003 | 0.997 | 0.997 | ns           |
| 4   | dfs.media.math |              | Branca   | Controle | Experimental |    0.025 |   -0.325 |     0.375 | 0.177 |     0.140 | 0.889 | 0.889 | ns           |
| 6   | dfs.media.math |              | Parda    | Controle | Experimental |    0.149 |   -0.074 |     0.371 | 0.112 |     1.322 | 0.188 | 0.188 | ns           |
| 8   | fss.media.math | Controle     |          | Branca   | Parda        |    0.153 |   -0.090 |     0.397 | 0.123 |     1.245 | 0.215 | 0.215 | ns           |
| 10  | fss.media.math | Experimental |          | Branca   | Indígena     |    0.237 |   -0.098 |     0.573 | 0.170 |     1.400 | 0.164 | 0.492 | ns           |
| 11  | fss.media.math | Experimental |          | Branca   | Parda        |    0.085 |   -0.175 |     0.345 | 0.131 |     0.646 | 0.519 | 1.000 | ns           |
| 12  | fss.media.math | Experimental |          | Indígena | Parda        |   -0.153 |   -0.441 |     0.136 | 0.146 |    -1.047 | 0.297 | 0.891 | ns           |
| 14  | dfs.media.math | Controle     |          | Branca   | Parda        |    0.011 |   -0.273 |     0.295 | 0.144 |     0.074 | 0.941 | 0.941 | ns           |
| 16  | dfs.media.math | Experimental |          | Branca   | Indígena     |   -0.080 |   -0.471 |     0.311 | 0.198 |    -0.404 | 0.687 | 1.000 | ns           |
| 17  | dfs.media.math | Experimental |          | Branca   | Parda        |    0.134 |   -0.168 |     0.436 | 0.153 |     0.880 | 0.380 | 1.000 | ns           |
| 18  | dfs.media.math | Experimental |          | Indígena | Parda        |    0.214 |   -0.120 |     0.548 | 0.169 |     1.268 | 0.207 | 0.621 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Branca   | pre    | pos    |   -0.061 |   -0.385 |     0.263 | 0.165 |    -0.371 | 0.711 | 0.711 | ns           |
| flow.math | Controle     | Parda    | pre    | pos    |    0.086 |   -0.128 |     0.299 | 0.108 |     0.792 | 0.429 | 0.429 | ns           |
| flow.math | Experimental | Branca   | pre    | pos    |   -0.007 |   -0.359 |     0.344 | 0.178 |    -0.041 | 0.967 | 0.967 | ns           |
| flow.math | Experimental | Indígena | pre    | pos    |    0.279 |   -0.123 |     0.681 | 0.204 |     1.366 | 0.173 | 0.173 | ns           |
| flow.math | Experimental | Parda    | pre    | pos    |   -0.005 |   -0.221 |     0.211 | 0.110 |    -0.042 | 0.966 | 0.966 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->
