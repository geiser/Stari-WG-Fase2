ANOVA in Gains for gain TDE - Escrita (acertos) (gain TDE - Escrita
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
  TDE - Escrita (acertos) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain TDE - Escrita (acertos) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          | gain.score.tde | 247 | -4.085 |     -2 | -32 |  40 | 11.016 | 0.701 | 1.381 | 12.50 |
| Controle     | M    |        |          | gain.score.tde | 238 | -3.534 |     -2 | -36 |  40 | 10.185 | 0.660 | 1.301 | 11.00 |
| Experimental | F    |        |          | gain.score.tde | 319 | -1.270 |      0 | -47 |  37 | 11.050 | 0.619 | 1.217 | 12.00 |
| Experimental | M    |        |          | gain.score.tde | 317 | -1.476 |      0 | -30 |  34 | 10.254 | 0.576 | 1.133 | 12.00 |
| Controle     |      | Rural  |          | gain.score.tde | 243 | -1.938 |     -1 | -35 |  40 | 10.327 | 0.662 | 1.305 | 11.00 |
| Controle     |      | Urbana |          | gain.score.tde | 109 | -9.633 |     -9 | -32 |  19 | 10.297 | 0.986 | 1.955 | 15.00 |
| Controle     |      |        |          | gain.score.tde | 133 | -2.474 |     -1 | -36 |  20 |  9.704 | 0.841 | 1.665 | 10.00 |
| Experimental |      | Rural  |          | gain.score.tde | 284 | -0.965 |      0 | -34 |  26 | 10.507 | 0.623 | 1.227 | 11.25 |
| Experimental |      | Urbana |          | gain.score.tde | 167 | -3.743 |     -2 | -36 |  34 | 10.687 | 0.827 | 1.633 | 12.50 |
| Experimental |      |        |          | gain.score.tde | 185 |  0.141 |      0 | -47 |  37 | 10.542 | 0.775 | 1.529 | 10.00 |
| Controle     |      |        | Branca   | gain.score.tde |  50 | -7.160 |     -5 | -30 |  11 | 10.754 | 1.521 | 3.056 | 13.50 |
| Controle     |      |        | Indígena | gain.score.tde |  11 |  3.636 |      3 | -10 |  14 |  7.018 | 2.116 | 4.715 |  8.50 |
| Controle     |      |        | Parda    | gain.score.tde | 162 | -4.278 |     -2 | -35 |  20 | 11.208 | 0.881 | 1.739 | 14.75 |
| Controle     |      |        |          | gain.score.tde | 262 | -3.202 |     -2 | -36 |  40 | 10.131 | 0.626 | 1.232 | 10.75 |
| Experimental |      |        | Amarela  | gain.score.tde |   1 |  0.000 |      0 |   0 |   0 |        |       |       |  0.00 |
| Experimental |      |        | Branca   | gain.score.tde |  61 | -1.311 |      0 | -29 |  26 | 11.260 | 1.442 | 2.884 | 10.00 |
| Experimental |      |        | Indígena | gain.score.tde |  15 |  3.267 |      3 | -13 |  17 |  9.662 | 2.495 | 5.351 | 13.00 |
| Experimental |      |        | Parda    | gain.score.tde | 190 | -1.805 |      0 | -47 |  37 | 12.250 | 0.889 | 1.753 | 14.00 |
| Experimental |      |        |          | gain.score.tde | 369 | -1.352 |      0 | -40 |  34 |  9.672 | 0.503 | 0.990 | 11.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |    n |   skewness |  kurtosis | symmetry | statistic | method     |       p | p.signif | normality |
|:---------------|-----:|-----------:|----------:|:---------|----------:|:-----------|--------:|:---------|:----------|
| gain.score.tde | 1121 | -0.3351811 | 1.3544860 | YES      |  55.31948 | D’Agostino | 0.0e+00 | \*\*\*\* | \-        |
| gain.score.tde |  803 | -0.2579672 | 1.0568633 | YES      |  27.61559 | D’Agostino | 1.0e-06 | \*\*\*\* | \-        |
| gain.score.tde |  490 | -0.4487342 | 0.7773313 | YES      |  23.71864 | D’Agostino | 7.1e-06 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |    n | df1 |  df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|-----:|----:|-----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     | 1121 |   3 | 1117 | 0.6407758 | 0.5888511 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     |  803 |   3 |  799 | 1.0288532 | 0.3790735 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` |  490 |   6 |  483 | 0.6358755 | 0.7015646 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn |  DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|-----:|---------:|----------:|-------:|:--------|------:|:-------|
| grupo    |   1 | 1119 | 1640.629 | 126535.98 | 14.509 | \<0.001 | 0.013 | \*     |
| Sexo     |   1 | 1119 |    5.467 | 128171.15 |  0.048 | 0.827   | 0.000 |        |
| Zona     |   1 |  801 | 3925.336 |  89875.51 | 34.984 | \<0.001 | 0.042 | \*     |
| Cor.Raca |   3 |  486 | 1167.370 |  65136.89 |  2.903 | 0.034   | 0.018 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn |  DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|-----:|---------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 1117 |   39.533 | 126492.33 | 0.349 | 0.555 | 0.000 |        |
| 6   | grupo:Zona     |   1 |  799 | 1060.464 |  87462.97 | 9.688 | 0.002 | 0.012 | \*     |
| 9   | grupo:Cor.Raca |   2 |  483 |  318.390 |  63661.57 | 1.208 | 0.300 | 0.005 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     | 485 | -3.814 | 0.482 |
| gain.score.tde | Experimental | 636 | -1.373 | 0.422 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.score.tde | Controle | Experimental |   -2.442 |     -3.7 |    -1.184 | 0.641 |    -3.809 | \<0.001 | \<0.001 | \*\*\*       |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    | 247 | -4.085 | 0.701 |
| gain.score.tde | Controle     | M    | 238 | -3.534 | 0.660 |
| gain.score.tde | Experimental | F    | 319 | -1.270 | 0.619 |
| gain.score.tde | Experimental | M    | 317 | -1.476 | 0.576 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |   -2.815 |   -4.585 |    -1.046 | 0.902 |    -3.122 | 0.002 | 0.002 | \*\*         |
| gain.score.tde |              | M    | Controle | Experimental |   -2.057 |   -3.848 |    -0.266 | 0.913 |    -2.254 | 0.024 | 0.024 | \*           |
| gain.score.tde | Controle     |      | F        | M            |   -0.551 |   -2.448 |     1.345 | 0.967 |    -0.570 | 0.568 | 0.568 | ns           |
| gain.score.tde | Experimental |      | F        | M            |    0.207 |   -1.449 |     1.863 | 0.844 |     0.245 | 0.807 | 0.807 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.score.tde | Controle     | Rural  | 243 | -1.938 | 0.662 |
| gain.score.tde | Controle     | Urbana | 109 | -9.633 | 0.986 |
| gain.score.tde | Experimental | Rural  | 284 | -0.965 | 0.623 |
| gain.score.tde | Experimental | Urbana | 167 | -3.743 | 0.827 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.score.tde |              | Rural  | Controle | Experimental |   -0.973 |   -2.768 |     0.821 | 0.914 |    -1.065 | 0.287   | 0.287   | ns           |
| gain.score.tde |              | Urbana | Controle | Experimental |   -5.891 |   -8.419 |    -3.362 | 1.288 |    -4.572 | \<0.001 | \<0.001 | \*\*\*\*     |
| gain.score.tde | Controle     |        | Rural    | Urbana       |    7.695 |    5.327 |    10.062 | 1.206 |     6.380 | \<0.001 | \<0.001 | \*\*\*\*     |
| gain.score.tde | Experimental |        | Rural    | Urbana       |    2.778 |    0.775 |     4.780 | 1.020 |     2.723 | 0.007   | 0.007   | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.score.tde | Controle     | Branca   |  50 | -7.160 | 1.521 |
| gain.score.tde | Controle     | Indígena |  11 |  3.636 | 2.116 |
| gain.score.tde | Controle     | Parda    | 162 | -4.278 | 0.881 |
| gain.score.tde | Experimental | Branca   |  61 | -1.311 | 1.442 |
| gain.score.tde | Experimental | Indígena |  15 |  3.267 | 2.495 |
| gain.score.tde | Experimental | Parda    | 190 | -1.805 | 0.889 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | Branca   | Controle | Experimental |   -5.849 |  -10.152 |    -1.545 | 2.190 |    -2.670 | 0.008 | 0.008 | \*\*         |
| gain.score.tde |              | Indígena | Controle | Experimental |    0.370 |   -8.585 |     9.324 | 4.557 |     0.081 | 0.935 | 0.935 | ns           |
| gain.score.tde |              | Parda    | Controle | Experimental |   -2.473 |   -4.885 |    -0.060 | 1.228 |    -2.014 | 0.045 | 0.045 | \*           |
| gain.score.tde | Controle     |          | Branca   | Indígena     |  -10.796 |  -18.309 |    -3.284 | 3.823 |    -2.824 | 0.005 | 0.015 | \*           |
| gain.score.tde | Controle     |          | Branca   | Parda        |   -2.882 |   -6.532 |     0.767 | 1.857 |    -1.552 | 0.121 | 0.364 | ns           |
| gain.score.tde | Controle     |          | Indígena | Parda        |    7.914 |    0.885 |    14.943 | 3.577 |     2.212 | 0.027 | 0.082 | ns           |
| gain.score.tde | Experimental |          | Branca   | Indígena     |   -4.578 |  -11.079 |     1.923 | 3.309 |    -1.384 | 0.167 | 0.501 | ns           |
| gain.score.tde | Experimental |          | Branca   | Parda        |    0.494 |   -2.826 |     3.813 | 1.690 |     0.292 | 0.770 | 1.000 | ns           |
| gain.score.tde | Experimental |          | Indígena | Parda        |    5.072 |   -0.978 |    11.122 | 3.079 |     1.647 | 0.100 | 0.300 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
