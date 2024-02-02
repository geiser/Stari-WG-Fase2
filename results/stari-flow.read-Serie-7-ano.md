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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |  mean | median |   min |   max |    sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|------:|-------:|------:|------:|------:|------:|-------:|------:|
| Controle     | F    |        |          | dfs.media.read |  16 | 3.415 |  3.500 | 2.750 | 4.000 | 0.306 | 0.077 |  0.163 | 0.361 |
| Controle     | M    |        |          | dfs.media.read |  17 | 3.425 |  3.444 | 2.778 | 3.889 | 0.307 | 0.075 |  0.158 | 0.444 |
| Experimental | F    |        |          | dfs.media.read |   4 | 3.556 |  3.500 | 2.889 | 4.333 | 0.595 | 0.297 |  0.947 | 0.444 |
| Experimental | M    |        |          | dfs.media.read |   7 | 3.444 |  3.333 | 2.778 | 4.333 | 0.602 | 0.227 |  0.557 | 0.944 |
| Controle     | F    |        |          | fss.media.read |  16 | 3.418 |  3.333 | 2.444 | 4.778 | 0.557 | 0.139 |  0.297 | 0.583 |
| Controle     | M    |        |          | fss.media.read |  17 | 3.667 |  3.667 | 2.667 | 5.000 | 0.577 | 0.140 |  0.297 | 0.556 |
| Experimental | F    |        |          | fss.media.read |   4 | 3.226 |  3.167 | 2.444 | 4.125 | 0.801 | 0.401 |  1.275 | 1.170 |
| Experimental | M    |        |          | fss.media.read |   7 | 3.492 |  3.556 | 1.889 | 4.444 | 0.858 | 0.324 |  0.793 | 0.833 |
| Controle     |      | Rural  |          | dfs.media.read |  20 | 3.382 |  3.333 | 2.750 | 4.000 | 0.355 | 0.079 |  0.166 | 0.556 |
| Controle     |      | Urbana |          | dfs.media.read |   5 | 3.444 |  3.444 | 3.111 | 3.667 | 0.208 | 0.093 |  0.258 | 0.111 |
| Controle     |      |        |          | dfs.media.read |   8 | 3.500 |  3.556 | 3.222 | 3.778 | 0.197 | 0.070 |  0.165 | 0.194 |
| Experimental |      | Rural  |          | dfs.media.read |   8 | 3.583 |  3.500 | 2.778 | 4.333 | 0.599 | 0.212 |  0.501 | 0.861 |
| Experimental |      | Urbana |          | dfs.media.read |   1 | 3.000 |  3.000 | 3.000 | 3.000 |       |       |        | 0.000 |
| Experimental |      |        |          | dfs.media.read |   2 | 3.333 |  3.333 | 2.889 | 3.778 | 0.629 | 0.444 |  5.647 | 0.444 |
| Controle     |      | Rural  |          | fss.media.read |  20 | 3.639 |  3.444 | 3.111 | 4.778 | 0.493 | 0.110 |  0.231 | 0.611 |
| Controle     |      | Urbana |          | fss.media.read |   5 | 3.403 |  3.125 | 2.444 | 5.000 | 1.028 | 0.460 |  1.277 | 1.111 |
| Controle     |      |        |          | fss.media.read |   8 | 3.403 |  3.611 | 2.778 | 3.889 | 0.415 | 0.147 |  0.347 | 0.611 |
| Experimental |      | Rural  |          | fss.media.read |   8 | 3.377 |  3.611 | 1.889 | 4.444 | 0.935 | 0.331 |  0.782 | 1.538 |
| Experimental |      | Urbana |          | fss.media.read |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |        | 0.000 |
| Experimental |      |        |          | fss.media.read |   2 | 3.444 |  3.444 | 3.000 | 3.889 | 0.629 | 0.444 |  5.647 | 0.444 |
| Controle     |      |        | Branca   | dfs.media.read |   5 | 3.444 |  3.333 | 3.111 | 3.889 | 0.294 | 0.131 |  0.365 | 0.222 |
| Controle     |      |        | Parda    | dfs.media.read |  17 | 3.462 |  3.556 | 2.750 | 4.000 | 0.321 | 0.078 |  0.165 | 0.444 |
| Controle     |      |        | Preta    | dfs.media.read |   1 | 3.111 |  3.111 | 3.111 | 3.111 |       |       |        | 0.000 |
| Controle     |      |        |          | dfs.media.read |  10 | 3.367 |  3.389 | 2.778 | 3.667 | 0.292 | 0.092 |  0.209 | 0.417 |
| Experimental |      |        | Branca   | dfs.media.read |   3 | 3.778 |  4.000 | 3.000 | 4.333 | 0.694 | 0.401 |  1.724 | 0.667 |
| Experimental |      |        | Indígena | dfs.media.read |   2 | 3.500 |  3.500 | 3.444 | 3.556 | 0.079 | 0.056 |  0.706 | 0.056 |
| Experimental |      |        | Parda    | dfs.media.read |   2 | 3.833 |  3.833 | 3.333 | 4.333 | 0.707 | 0.500 |  6.353 | 0.500 |
| Experimental |      |        |          | dfs.media.read |   4 | 3.083 |  2.889 | 2.778 | 3.778 | 0.466 | 0.233 |  0.741 | 0.250 |
| Controle     |      |        | Branca   | fss.media.read |   5 | 3.467 |  3.333 | 2.667 | 4.556 | 0.709 | 0.317 |  0.880 | 0.556 |
| Controle     |      |        | Parda    | fss.media.read |  17 | 3.530 |  3.333 | 2.444 | 5.000 | 0.684 | 0.166 |  0.352 | 0.778 |
| Controle     |      |        | Preta    | fss.media.read |   1 | 3.444 |  3.444 | 3.444 | 3.444 |       |       |        | 0.000 |
| Controle     |      |        |          | fss.media.read |  10 | 3.622 |  3.667 | 2.889 | 4.000 | 0.315 | 0.100 |  0.225 | 0.194 |
| Experimental |      |        | Branca   | fss.media.read |   3 | 3.778 |  3.667 | 3.444 | 4.222 | 0.401 | 0.231 |  0.995 | 0.389 |
| Experimental |      |        | Indígena | fss.media.read |   2 | 3.285 |  3.285 | 2.444 | 4.125 | 1.188 | 0.840 | 10.677 | 0.840 |
| Experimental |      |        | Parda    | fss.media.read |   2 | 3.167 |  3.167 | 1.889 | 4.444 | 1.807 | 1.278 | 16.236 | 1.278 |
| Experimental |      |        |          | fss.media.read |   4 | 3.278 |  3.278 | 2.667 | 3.889 | 0.548 | 0.274 |  0.872 | 0.722 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.read |  44 | -0.0721698 |  0.6303319 | YES      | 0.9819888 | Shapiro-Wilk | 0.7132946 | ns       | YES       |
| fss.media.read |  34 |  0.1765301 | -0.2621944 | YES      | 0.9848555 | Shapiro-Wilk | 0.9078506 | ns       | YES       |
| fss.media.read |  30 |  0.3467973 | -0.6593721 | YES      | 0.9740637 | Shapiro-Wilk | 0.6551725 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  44 |       3 |      40 | 0.0033238 | 0.9997311 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  44 |       3 |      36 | 0.4960000 | 0.6880000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Zona`     |  34 |       3 |      30 | 1.9171170 | 0.1480855 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  34 |       2 |      27 | 1.1760000 | 0.3240000 | ns       |
| fss.media.read | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  30 |       5 |      24 | 1.1029551 | 0.3847605 | ns       |
| fss.media.read | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  30 |       4 |      19 | 2.6400000 | 0.0660000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 1   | dfs.media.read |   1 |  41 | 2.980 | 14.034 | 8.707 | 0.005 | 0.175 | \*     |
| 2   | grupo          |   1 |  41 | 0.314 | 14.034 | 0.918 | 0.344 | 0.022 |        |
| 4   | Sexo           |   1 |  41 | 0.655 | 13.693 | 1.962 | 0.169 | 0.046 |        |
| 6   | Zona           |   1 |  31 | 0.059 | 13.038 | 0.140 | 0.711 | 0.004 |        |
| 8   | Cor.Raca       |   3 |  25 | 0.161 | 12.491 | 0.108 | 0.955 | 0.013 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 1   | dfs.media.read |   1 |  39 | 3.073 | 13.249 | 9.046 | 0.005 | 0.188 | \*     |
| 4   | grupo:Sexo     |   1 |  39 | 0.020 | 13.249 | 0.060 | 0.808 | 0.002 |        |
| 8   | grupo:Zona     |   1 |  29 | 0.436 | 11.998 | 1.054 | 0.313 | 0.035 |        |
| 12  | grupo:Cor.Raca |   1 |  23 | 0.460 | 11.671 | 0.906 | 0.351 | 0.038 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     |  33 |   3.420 |    0.053 |     3.546 |      0.100 |   3.557 |    0.102 |
| fss.media.read | Experimental |  11 |   3.485 |    0.172 |     3.395 |      0.244 |   3.361 |    0.177 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.read | Controle | Experimental |    0.196 |   -0.217 |     0.608 | 0.204 |     0.958 | 0.344 | 0.344 | ns           |
| dfs.media.read | Controle | Experimental |   -0.065 |   -0.334 |     0.205 | 0.134 |    -0.485 | 0.630 | 0.630 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | pre    | pos    |   -0.126 |   -0.383 |     0.131 | 0.129 |    -0.973 | 0.334 | 0.334 | ns           |
| flow.read | Experimental | pre    | pos    |    0.090 |   -0.356 |     0.535 | 0.224 |     0.400 | 0.690 | 0.690 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | F    |  16 |   3.415 |    0.077 |     3.418 |      0.139 |   3.424 |    0.144 |
| fss.media.read | Controle     | M    |  17 |   3.425 |    0.075 |     3.667 |      0.140 |   3.666 |    0.140 |
| fss.media.read | Experimental | M    |   7 |   3.444 |    0.227 |     3.492 |      0.324 |   3.478 |    0.218 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | fss.media.read |          | M    | Controle | Experimental |    0.188 |   -0.336 |     0.713 | 0.259 |     0.728 | 0.471 | 0.471 | ns           |
| 4   | dfs.media.read |          | M    | Controle | Experimental |   -0.020 |   -0.357 |     0.318 | 0.167 |    -0.118 | 0.907 | 0.907 | ns           |
| 5   | fss.media.read | Controle |      | F        | M            |   -0.242 |   -0.649 |     0.164 | 0.200 |    -1.208 | 0.235 | 0.235 | ns           |
| 7   | dfs.media.read | Controle |      | F        | M            |   -0.010 |   -0.272 |     0.252 | 0.129 |    -0.077 | 0.939 | 0.939 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | F    | pre    | pos    |   -0.003 |   -0.364 |     0.359 | 0.181 |    -0.014 | 0.989 | 0.989 | ns           |
| flow.read | Controle     | M    | pre    | pos    |   -0.242 |   -0.593 |     0.109 | 0.176 |    -1.374 | 0.174 | 0.174 | ns           |
| flow.read | Experimental | M    | pre    | pos    |   -0.048 |   -0.594 |     0.499 | 0.274 |    -0.174 | 0.863 | 0.863 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.read | Controle     | Rural  |  20 |   3.382 |    0.079 |     3.639 |      0.110 |   3.683 |    0.145 |
| fss.media.read | Controle     | Urbana |   5 |   3.444 |    0.093 |     3.403 |      0.460 |   3.400 |    0.288 |
| fss.media.read | Experimental | Rural  |   8 |   3.583 |    0.212 |     3.377 |      0.331 |   3.267 |    0.231 |

|     | .y.            | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.read |          | Rural | Controle | Experimental |    0.416 |   -0.147 |     0.979 | 0.275 |     1.512 | 0.141 | 0.141 | ns           |
| 3   | dfs.media.read |          | Rural | Controle | Experimental |   -0.201 |   -0.553 |     0.150 | 0.172 |    -1.170 | 0.251 | 0.251 | ns           |
| 5   | fss.media.read | Controle |       | Rural    | Urbana       |    0.284 |   -0.375 |     0.943 | 0.322 |     0.881 | 0.385 | 0.385 | ns           |
| 7   | dfs.media.read | Controle |       | Rural    | Urbana       |   -0.063 |   -0.483 |     0.358 | 0.206 |    -0.304 | 0.763 | 0.763 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.read | Controle     | Rural  | pre    | pos    |   -0.257 |   -0.622 |     0.109 | 0.183 |    -1.406 | 0.165 | 0.165 | ns           |
| flow.read | Controle     | Urbana | pre    | pos    |    0.042 |   -0.689 |     0.773 | 0.365 |     0.114 | 0.910 | 0.910 | ns           |
| flow.read | Experimental | Rural  | pre    | pos    |    0.207 |   -0.371 |     0.785 | 0.289 |     0.715 | 0.477 | 0.477 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.read-Serie-7-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**
