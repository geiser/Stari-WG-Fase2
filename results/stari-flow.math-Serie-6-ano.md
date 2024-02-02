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
| Controle     | F    |        |          | dfs.media.math |  16 | 3.340 |  3.222 | 2.667 | 4.444 | 0.547 | 0.137 | 0.291 | 0.861 |
| Controle     | M    |        |          | dfs.media.math |  16 | 3.123 |  3.000 | 2.333 | 4.000 | 0.462 | 0.116 | 0.246 | 0.556 |
| Experimental | F    |        |          | dfs.media.math |   6 | 3.574 |  3.444 | 2.778 | 4.556 | 0.686 | 0.280 | 0.720 | 0.917 |
| Experimental | M    |        |          | dfs.media.math |   9 | 3.494 |  3.556 | 2.556 | 4.333 | 0.542 | 0.181 | 0.416 | 0.667 |
| Controle     | F    |        |          | fss.media.math |  16 | 3.538 |  3.444 | 2.714 | 4.556 | 0.523 | 0.131 | 0.279 | 0.500 |
| Controle     | M    |        |          | fss.media.math |  16 | 3.366 |  3.333 | 2.444 | 5.000 | 0.647 | 0.162 | 0.345 | 0.826 |
| Experimental | F    |        |          | fss.media.math |   6 | 3.581 |  3.354 | 2.889 | 4.556 | 0.698 | 0.285 | 0.733 | 1.010 |
| Experimental | M    |        |          | fss.media.math |   9 | 3.296 |  3.222 | 2.556 | 4.333 | 0.506 | 0.169 | 0.389 | 0.111 |
| Controle     |      | Rural  |          | dfs.media.math |  21 | 3.205 |  3.000 | 2.444 | 4.444 | 0.505 | 0.110 | 0.230 | 0.556 |
| Controle     |      | Urbana |          | dfs.media.math |   8 | 3.208 |  3.222 | 2.333 | 4.000 | 0.555 | 0.196 | 0.464 | 0.611 |
| Controle     |      |        |          | dfs.media.math |   3 | 3.481 |  3.222 | 3.111 | 4.111 | 0.548 | 0.316 | 1.362 | 0.500 |
| Experimental |      | Rural  |          | dfs.media.math |  10 | 3.611 |  3.556 | 3.000 | 4.556 | 0.552 | 0.175 | 0.395 | 0.833 |
| Experimental |      | Urbana |          | dfs.media.math |   4 | 3.250 |  3.167 | 2.556 | 4.111 | 0.717 | 0.358 | 1.140 | 0.972 |
| Experimental |      |        |          | dfs.media.math |   1 | 3.778 |  3.778 | 3.778 | 3.778 |       |       |       | 0.000 |
| Controle     |      | Rural  |          | fss.media.math |  21 | 3.265 |  3.222 | 2.444 | 4.333 | 0.462 | 0.101 | 0.210 | 0.778 |
| Controle     |      | Urbana |          | fss.media.math |   8 | 3.882 |  3.861 | 2.889 | 5.000 | 0.750 | 0.265 | 0.627 | 1.028 |
| Controle     |      |        |          | fss.media.math |   3 | 3.611 |  3.500 | 3.444 | 3.889 | 0.242 | 0.140 | 0.602 | 0.222 |
| Experimental |      | Rural  |          | fss.media.math |  10 | 3.433 |  3.278 | 2.556 | 4.556 | 0.610 | 0.193 | 0.436 | 0.361 |
| Experimental |      | Urbana |          | fss.media.math |   4 | 3.361 |  3.167 | 2.778 | 4.333 | 0.687 | 0.344 | 1.093 | 0.639 |
| Experimental |      |        |          | fss.media.math |   1 | 3.375 |  3.375 | 3.375 | 3.375 |       |       |       | 0.000 |
| Controle     |      |        | Branca   | dfs.media.math |   5 | 3.111 |  3.000 | 2.889 | 3.444 | 0.261 | 0.117 | 0.324 | 0.444 |
| Controle     |      |        | Parda    | dfs.media.math |  13 | 3.425 |  3.222 | 2.750 | 4.444 | 0.551 | 0.153 | 0.333 | 1.000 |
| Controle     |      |        |          | dfs.media.math |  14 | 3.095 |  3.111 | 2.333 | 4.111 | 0.506 | 0.135 | 0.292 | 0.528 |
| Experimental |      |        | Amarela  | dfs.media.math |   1 | 3.778 |  3.778 | 3.778 | 3.778 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | dfs.media.math |   4 | 3.528 |  3.556 | 3.000 | 4.000 | 0.419 | 0.210 | 0.667 | 0.417 |
| Experimental |      |        |          | dfs.media.math |  10 | 3.500 |  3.333 | 2.556 | 4.556 | 0.677 | 0.214 | 0.485 | 0.917 |
| Controle     |      |        | Branca   | fss.media.math |   5 | 3.333 |  3.556 | 2.444 | 3.778 | 0.539 | 0.241 | 0.669 | 0.444 |
| Controle     |      |        | Parda    | fss.media.math |  13 | 3.408 |  3.333 | 2.778 | 4.333 | 0.441 | 0.122 | 0.267 | 0.556 |
| Controle     |      |        |          | fss.media.math |  14 | 3.535 |  3.444 | 2.667 | 5.000 | 0.730 | 0.195 | 0.422 | 1.069 |
| Experimental |      |        | Amarela  | fss.media.math |   1 | 3.375 |  3.375 | 3.375 | 3.375 |       |       |       | 0.000 |
| Experimental |      |        | Parda    | fss.media.math |   4 | 3.361 |  3.278 | 3.222 | 3.667 | 0.210 | 0.105 | 0.335 | 0.194 |
| Experimental |      |        |          | fss.media.math |  10 | 3.433 |  3.278 | 2.556 | 4.556 | 0.717 | 0.227 | 0.513 | 1.167 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| fss.media.math |  47 |  0.7802335 |  1.0636938 | NO       | 0.9558588 | Shapiro-Wilk | 0.0736980 | ns       | YES       |
| fss.media.math |  43 | -0.0493795 |  0.1251399 | YES      | 0.9832698 | Shapiro-Wilk | 0.7751524 | ns       | YES       |
| fss.media.math |  23 | -0.2298068 | -0.7995506 | YES      | 0.9808085 | Shapiro-Wilk | 0.9194588 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:---------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  47 |       3 |      43 | 0.7927283 | 0.5046578 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  47 |       3 |      39 | 0.8270000 | 0.4870000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Zona`     |  43 |       3 |      39 | 2.0182286 | 0.1272185 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  43 |       3 |      35 | 0.9730000 | 0.4160000 | ns       |
| fss.media.math | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  23 |       3 |      19 | 0.8558806 | 0.4807913 | ns       |
| fss.media.math | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  23 |       2 |      16 | 0.5450000 | 0.5900000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |   SSn |    SSd |      F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|-------:|------:|------:|:-------|
| 1   | dfs.media.math |   1 |  44 | 2.893 | 12.503 | 10.182 | 0.003 | 0.188 | \*     |
| 2   | grupo          |   1 |  44 | 0.316 | 12.503 |  1.110 | 0.298 | 0.025 |        |
| 4   | Sexo           |   1 |  44 | 0.248 | 12.570 |  0.868 | 0.357 | 0.019 |        |
| 6   | Zona           |   1 |  40 | 1.711 | 10.598 |  6.459 | 0.015 | 0.139 | \*     |
| 8   | Cor.Raca       |   2 |  19 | 0.010 |  3.393 |  0.028 | 0.972 | 0.003 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 1   | dfs.media.math |   1 |  42 | 2.625 | 12.244 | 9.006 | 0.005 | 0.177 | \*     |
| 4   | grupo:Sexo     |   1 |  42 | 0.077 | 12.244 | 0.264 | 0.610 | 0.006 |        |
| 8   | grupo:Zona     |   1 |  38 | 0.463 |  9.802 | 1.797 | 0.188 | 0.045 |        |
| 12  | grupo:Cor.Raca |   0 |  18 |       |  3.377 |       |       |       |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     |  32 |   3.232 |     0.09 |     3.452 |      0.103 |   3.497 |    0.095 |
| fss.media.math | Experimental |  15 |   3.526 |     0.15 |     3.410 |      0.151 |   3.315 |    0.141 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math | Controle | Experimental |    0.182 |   -0.166 |     0.529 | 0.172 |     1.054 | 0.298 | 0.298 | ns           |
| dfs.media.math | Controle | Experimental |   -0.294 |   -0.630 |     0.042 | 0.167 |    -1.763 | 0.085 | 0.085 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | pre    | pos    |   -0.220 |   -0.498 |     0.058 | 0.140 |    -1.574 | 0.119 | 0.119 | ns           |
| flow.math | Experimental | pre    | pos    |    0.116 |   -0.290 |     0.522 | 0.204 |     0.566 | 0.573 | 0.573 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | F    |  16 |   3.340 |    0.137 |     3.538 |      0.131 |   3.531 |    0.135 |
| fss.media.math | Controle     | M    |  16 |   3.123 |    0.116 |     3.366 |      0.162 |   3.459 |    0.139 |
| fss.media.math | Experimental | F    |   6 |   3.574 |    0.280 |     3.581 |      0.285 |   3.467 |    0.224 |
| fss.media.math | Experimental | M    |   9 |   3.494 |    0.181 |     3.296 |      0.169 |   3.219 |    0.182 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| fss.media.math |              | F    | Controle | Experimental |    0.064 |   -0.462 |     0.591 | 0.261 |     0.246 | 0.807 | 0.807 | ns           |
| fss.media.math |              | M    | Controle | Experimental |    0.241 |   -0.228 |     0.709 | 0.232 |     1.037 | 0.306 | 0.306 | ns           |
| dfs.media.math |              | F    | Controle | Experimental |   -0.234 |   -0.752 |     0.284 | 0.257 |    -0.910 | 0.368 | 0.368 | ns           |
| dfs.media.math |              | M    | Controle | Experimental |   -0.371 |   -0.822 |     0.080 | 0.224 |    -1.657 | 0.105 | 0.105 | ns           |
| fss.media.math | Controle     |      | F        | M            |    0.071 |   -0.320 |     0.463 | 0.194 |     0.369 | 0.714 | 0.714 | ns           |
| fss.media.math | Experimental |      | F        | M            |    0.248 |   -0.327 |     0.823 | 0.285 |     0.870 | 0.389 | 0.389 | ns           |
| dfs.media.math | Controle     |      | F        | M            |    0.217 |   -0.166 |     0.600 | 0.190 |     1.144 | 0.259 | 0.259 | ns           |
| dfs.media.math | Experimental |      | F        | M            |    0.080 |   -0.490 |     0.651 | 0.283 |     0.284 | 0.778 | 0.778 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | F    | pre    | pos    |   -0.197 |   -0.593 |     0.198 | 0.199 |    -0.992 | 0.324 | 0.324 | ns           |
| flow.math | Controle     | M    | pre    | pos    |   -0.243 |   -0.639 |     0.153 | 0.199 |    -1.221 | 0.225 | 0.225 | ns           |
| flow.math | Experimental | F    | pre    | pos    |   -0.007 |   -0.653 |     0.639 | 0.325 |    -0.021 | 0.983 | 0.983 | ns           |
| flow.math | Experimental | M    | pre    | pos    |    0.198 |   -0.330 |     0.725 | 0.265 |     0.744 | 0.459 | 0.459 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:---------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| fss.media.math | Controle     | Rural  |  21 |   3.205 |    0.110 |     3.265 |      0.101 |   3.314 |    0.114 |
| fss.media.math | Controle     | Urbana |   8 |   3.208 |    0.196 |     3.882 |      0.265 |   3.929 |    0.184 |
| fss.media.math | Experimental | Rural  |  10 |   3.611 |    0.175 |     3.433 |      0.193 |   3.293 |    0.171 |

|     | .y.            | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | fss.media.math |          | Rural | Controle | Experimental |    0.021 |   -0.405 |     0.447 | 0.210 |     0.100 | 0.921 | 0.921 | ns           |
| 3   | dfs.media.math |          | Rural | Controle | Experimental |   -0.406 |   -0.817 |     0.005 | 0.202 |    -2.005 | 0.052 | 0.052 | ns           |
| 5   | fss.media.math | Controle |       | Rural    | Urbana       |   -0.615 |   -1.052 |    -0.178 | 0.215 |    -2.856 | 0.007 | 0.007 | \*\*         |
| 7   | dfs.media.math | Controle |       | Rural    | Urbana       |   -0.003 |   -0.447 |     0.441 | 0.219 |    -0.015 | 0.988 | 0.988 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| flow.math | Controle     | Rural  | pre    | pos    |   -0.060 |   -0.397 |     0.276 | 0.169 |    -0.358 | 0.721 | 0.721 | ns           |
| flow.math | Controle     | Urbana | pre    | pos    |   -0.674 |   -1.219 |    -0.128 | 0.274 |    -2.462 | 0.016 | 0.016 | \*           |
| flow.math | Experimental | Rural  | pre    | pos    |    0.178 |   -0.310 |     0.666 | 0.245 |     0.726 | 0.470 | 0.470 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-flow.math-Serie-6-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**
