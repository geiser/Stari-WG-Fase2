ANOVA in Gains for gain Vocabulario (acertos) (gain Vocabulario
(acertos))
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

- Teste ANOVA para determinar se houve diferenças significativas no gain
  Vocabulario (acertos) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain Vocabulario (acertos) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable   |   n |   mean | median | min | max |    sd |    se |    ci |  iqr |
|:-------------|:-----|:-------|:---------|:-----------|----:|-------:|-------:|----:|----:|------:|------:|------:|-----:|
| Controle     | F    |        |          | gain.vocab | 259 |  1.463 |    2.0 | -29 |  16 | 5.789 | 0.360 | 0.708 | 6.00 |
| Controle     | M    |        |          | gain.vocab | 257 |  0.650 |    1.0 | -29 |  17 | 6.738 | 0.420 | 0.828 | 8.00 |
| Experimental | F    |        |          | gain.vocab | 369 |  1.759 |    2.0 | -25 |  24 | 6.055 | 0.315 | 0.620 | 8.00 |
| Experimental | M    |        |          | gain.vocab | 345 |  0.209 |    0.0 | -30 |  29 | 6.646 | 0.358 | 0.704 | 7.00 |
| Controle     |      | Rural  |          | gain.vocab | 253 |  1.692 |    2.0 | -29 |  16 | 5.966 | 0.375 | 0.739 | 8.00 |
| Controle     |      | Urbana |          | gain.vocab | 114 |  1.184 |    1.0 | -21 |  16 | 5.279 | 0.494 | 0.980 | 5.00 |
| Controle     |      |        |          | gain.vocab | 149 | -0.114 |    1.0 | -29 |  17 | 7.319 | 0.600 | 1.185 | 7.00 |
| Experimental |      | Rural  |          | gain.vocab | 294 |  1.095 |    1.0 | -30 |  29 | 6.797 | 0.396 | 0.780 | 7.00 |
| Experimental |      | Urbana |          | gain.vocab | 190 |  1.284 |    1.5 | -16 |  23 | 5.389 | 0.391 | 0.771 | 7.00 |
| Experimental |      |        |          | gain.vocab | 230 |  0.674 |    1.0 | -28 |  24 | 6.624 | 0.437 | 0.861 | 8.00 |
| Controle     |      |        | Branca   | gain.vocab |  54 |  1.759 |    2.0 |  -9 |  12 | 4.706 | 0.640 | 1.285 | 6.75 |
| Controle     |      |        | Indígena | gain.vocab |  13 |  4.000 |    4.0 |  -3 |  11 | 3.536 | 0.981 | 2.137 | 4.00 |
| Controle     |      |        | Parda    | gain.vocab | 168 |  1.190 |    2.0 | -29 |  16 | 6.821 | 0.526 | 1.039 | 6.25 |
| Controle     |      |        | Preta    | gain.vocab |   1 |  5.000 |    5.0 |   5 |   5 |       |       |       | 0.00 |
| Controle     |      |        |          | gain.vocab | 280 |  0.693 |    1.0 | -29 |  17 | 6.298 | 0.376 | 0.741 | 6.00 |
| Experimental |      |        | Amarela  | gain.vocab |   1 |  3.000 |    3.0 |   3 |   3 |       |       |       | 0.00 |
| Experimental |      |        | Branca   | gain.vocab |  62 | -0.548 |    0.0 | -14 |   9 | 5.488 | 0.697 | 1.394 | 8.75 |
| Experimental |      |        | Indígena | gain.vocab |  18 |  3.167 |    2.0 |  -2 |  12 | 3.312 | 0.781 | 1.647 | 3.25 |
| Experimental |      |        | Parda    | gain.vocab | 202 |  1.738 |    1.0 | -30 |  29 | 7.329 | 0.516 | 1.017 | 8.00 |
| Experimental |      |        | Preta    | gain.vocab |   1 |  3.000 |    3.0 |   3 |   3 |       |       |       | 0.00 |
| Experimental |      |        |          | gain.vocab | 430 |  0.793 |    1.0 | -25 |  24 | 6.093 | 0.294 | 0.578 | 7.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var        |    n |   skewness | kurtosis | symmetry | statistic | method     |   p | p.signif | normality |
|:-----------|-----:|-----------:|---------:|:---------|----------:|:-----------|----:|:---------|:----------|
| gain.vocab | 1230 | -0.6090134 | 3.065836 | NO       | 160.11391 | D’Agostino |   0 | \*\*\*\* | \-        |
| gain.vocab |  851 | -0.5378381 | 3.175854 | NO       | 106.02315 | D’Agostino |   0 | \*\*\*\* | \-        |
| gain.vocab |  520 | -0.6461243 | 3.632660 | NO       |  81.77893 | D’Agostino |   0 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var        | method        | formula                          |    n | df1 |  df2 | statistic |         p | p.signif |
|:-----------|:--------------|:---------------------------------|-----:|----:|-----:|----------:|----------:|:---------|
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Sexo`     | 1230 |   3 | 1226 |  1.462334 | 0.2231577 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Zona`     |  851 |   3 |  847 |  2.775142 | 0.0403897 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Cor.Raca` |  520 |   8 |  511 |  2.120069 | 0.0324532 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn |  DFd |     SSn |      SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|-----:|--------:|---------:|-------:|:--------|------:|:-------|
| grupo    |   1 | 1228 |   0.700 | 49471.19 |  0.017 | 0.895   | 0.000 |        |
| Sexo     |   1 | 1228 | 472.549 | 48999.34 | 11.843 | \<0.001 | 0.010 | \*     |
| Zona     |   1 |  849 |   3.024 | 31194.16 |  0.082 | 0.774   | 0.000 |        |
| Cor.Raca |   4 |  515 | 246.448 | 22103.12 |  1.436 | 0.221   | 0.011 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn |  DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|-----:|--------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 1226 |  40.610 | 48957.39 | 1.017 | 0.313 | 0.001 |        |
| 6   | grupo:Zona     |   1 |  847 |  22.678 | 31145.07 | 0.617 | 0.432 | 0.001 |        |
| 9   | grupo:Cor.Raca |   3 |  511 | 184.027 | 21914.72 | 1.430 | 0.233 | 0.008 |        |

## Pairwise comparisons for one factor: **grupo**

| var        | grupo        |   n |     M |    SE |
|:-----------|:-------------|----:|------:|------:|
| gain.vocab | Controle     | 516 | 1.058 | 0.277 |
| gain.vocab | Experimental | 714 | 1.010 | 0.239 |

| .y.        | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab | Controle | Experimental |    0.048 |   -0.671 |     0.768 | 0.367 |     0.132 | 0.895 | 0.895 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var        | grupo        | Sexo |   n |     M |    SE |
|:-----------|:-------------|:-----|----:|------:|------:|
| gain.vocab | Controle     | F    | 259 | 1.463 | 0.360 |
| gain.vocab | Controle     | M    | 257 | 0.650 | 0.420 |
| gain.vocab | Experimental | F    | 369 | 1.759 | 0.315 |
| gain.vocab | Experimental | M    | 345 | 0.209 | 0.358 |

| .y.        | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | F    | Controle | Experimental |   -0.295 |   -1.300 |     0.709 | 0.512 |    -0.577 | 0.564 | 0.564 | ns           |
| gain.vocab |              | M    | Controle | Experimental |    0.441 |   -0.580 |     1.463 | 0.521 |     0.847 | 0.397 | 0.397 | ns           |
| gain.vocab | Controle     |      | F        | M            |    0.814 |   -0.278 |     1.905 | 0.556 |     1.462 | 0.144 | 0.144 | ns           |
| gain.vocab | Experimental |      | F        | M            |    1.550 |    0.622 |     2.479 | 0.473 |     3.275 | 0.001 | 0.001 | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var        | grupo        | Zona   |   n |     M |    SE |
|:-----------|:-------------|:-------|----:|------:|------:|
| gain.vocab | Controle     | Rural  | 253 | 1.692 | 0.375 |
| gain.vocab | Controle     | Urbana | 114 | 1.184 | 0.494 |
| gain.vocab | Experimental | Rural  | 294 | 1.095 | 0.396 |
| gain.vocab | Experimental | Urbana | 190 | 1.284 | 0.391 |

| .y.        | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | Rural  | Controle | Experimental |    0.596 |   -0.424 |     1.617 | 0.520 |     1.147 | 0.252 | 0.252 | ns           |
| gain.vocab |              | Urbana | Controle | Experimental |   -0.100 |   -1.510 |     1.310 | 0.718 |    -0.139 | 0.889 | 0.889 | ns           |
| gain.vocab | Controle     |        | Rural    | Urbana       |    0.507 |   -0.835 |     1.850 | 0.684 |     0.742 | 0.458 | 0.458 | ns           |
| gain.vocab | Experimental |        | Rural    | Urbana       |   -0.189 |   -1.297 |     0.919 | 0.564 |    -0.335 | 0.738 | 0.738 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var        | grupo        | Cor.Raca |   n |      M |    SE |
|:-----------|:-------------|:---------|----:|-------:|------:|
| gain.vocab | Controle     | Branca   |  54 |  1.759 | 0.640 |
| gain.vocab | Controle     | Indígena |  13 |  4.000 | 0.981 |
| gain.vocab | Controle     | Parda    | 168 |  1.190 | 0.526 |
| gain.vocab | Experimental | Branca   |  62 | -0.548 | 0.697 |
| gain.vocab | Experimental | Indígena |  18 |  3.167 | 0.781 |
| gain.vocab | Experimental | Parda    | 202 |  1.738 | 0.516 |

| .y.        | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | Branca   | Controle | Experimental |    2.308 |   -0.087 |     4.702 | 1.219 |     1.893 | 0.059 | 0.059 | ns           |
| gain.vocab |              | Indígena | Controle | Experimental |    0.833 |   -3.849 |     5.516 | 2.384 |     0.350 | 0.727 | 0.727 | ns           |
| gain.vocab |              | Parda    | Controle | Experimental |   -0.547 |   -1.891 |     0.796 | 0.684 |    -0.800 | 0.424 | 0.424 | ns           |
| gain.vocab | Controle     |          | Branca   | Indígena     |   -2.241 |   -6.215 |     1.734 | 2.023 |    -1.108 | 0.269 | 0.806 | ns           |
| gain.vocab | Controle     |          | Branca   | Parda        |    0.569 |   -1.444 |     2.581 | 1.024 |     0.555 | 0.579 | 1.000 | ns           |
| gain.vocab | Controle     |          | Indígena | Parda        |    2.810 |   -0.894 |     6.513 | 1.885 |     1.490 | 0.137 | 0.410 | ns           |
| gain.vocab | Experimental |          | Branca   | Indígena     |   -3.715 |   -7.160 |    -0.270 | 1.753 |    -2.119 | 0.035 | 0.104 | ns           |
| gain.vocab | Experimental |          | Branca   | Parda        |   -2.286 |   -4.154 |    -0.418 | 0.951 |    -2.404 | 0.017 | 0.050 | \*           |
| gain.vocab | Experimental |          | Indígena | Parda        |    1.429 |   -1.736 |     4.594 | 1.611 |     0.887 | 0.375 | 1.000 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
