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
| Controle     | F    |        |          | gain.vocab |  85 |  1.647 |    2.0 | -17 |  12 | 4.859 | 0.527 | 1.048 | 6.00 |
| Controle     | M    |        |          | gain.vocab |  67 |  1.657 |    2.0 | -29 |  14 | 6.810 | 0.832 | 1.661 | 6.50 |
| Experimental | F    |        |          | gain.vocab |  99 |  1.475 |    1.0 | -14 |  23 | 5.663 | 0.569 | 1.129 | 7.50 |
| Experimental | M    |        |          | gain.vocab |  98 | -0.888 |    0.0 | -22 |  12 | 5.912 | 0.597 | 1.185 | 7.00 |
| Controle     |      | Rural  |          | gain.vocab |  77 |  2.039 |    3.0 | -29 |  14 | 6.392 | 0.728 | 1.451 | 7.00 |
| Controle     |      | Urbana |          | gain.vocab |  50 |  0.700 |    1.0 | -16 |  10 | 4.987 | 0.705 | 1.417 | 5.75 |
| Controle     |      |        |          | gain.vocab |  25 |  2.360 |    2.0 |  -8 |  11 | 5.211 | 1.042 | 2.151 | 6.00 |
| Experimental |      | Rural  |          | gain.vocab |  92 | -0.043 |    0.0 | -22 |  13 | 5.848 | 0.610 | 1.211 | 7.25 |
| Experimental |      | Urbana |          | gain.vocab |  76 |  0.724 |    1.0 | -15 |  23 | 5.903 | 0.677 | 1.349 | 6.25 |
| Experimental |      |        |          | gain.vocab |  29 |  0.276 |    0.0 | -16 |  10 | 6.146 | 1.141 | 2.338 | 7.00 |
| Controle     |      |        | Branca   | gain.vocab |  22 |  1.727 |    0.0 |  -9 |  12 | 5.556 | 1.185 | 2.464 | 8.75 |
| Controle     |      |        | Indígena | gain.vocab |   8 |  4.625 |    4.5 |   0 |  11 | 3.503 | 1.238 | 2.928 | 3.75 |
| Controle     |      |        | Parda    | gain.vocab |  44 |  2.955 |    3.0 |  -9 |  14 | 4.941 | 0.745 | 1.502 | 5.25 |
| Controle     |      |        |          | gain.vocab |  78 |  0.590 |    1.0 | -29 |  10 | 6.270 | 0.710 | 1.414 | 6.00 |
| Experimental |      |        | Branca   | gain.vocab |  12 | -2.667 |   -4.5 |  -9 |   4 | 4.755 | 1.373 | 3.021 | 8.00 |
| Experimental |      |        | Indígena | gain.vocab |   2 |  2.500 |    2.5 |   2 |   3 | 0.707 | 0.500 | 6.353 | 0.50 |
| Experimental |      |        | Parda    | gain.vocab |  53 |  1.000 |    1.0 | -11 |  23 | 6.397 | 0.879 | 1.763 | 8.00 |
| Experimental |      |        |          | gain.vocab | 130 |  0.254 |    0.0 | -22 |  10 | 5.766 | 0.506 | 1.001 | 6.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var        |   n |   skewness | kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:-----------|----:|-----------:|---------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.vocab | 349 | -0.6802064 | 2.828793 | NO       |  52.04453 | D’Agostino | 0.0000000 | \*\*\*\* | \-        |
| gain.vocab | 295 | -0.7419158 | 3.405782 | NO       |  52.83456 | D’Agostino | 0.0000000 | \*\*\*\* | \-        |
| gain.vocab | 141 |  0.4542380 | 1.086648 | YES      |  10.24584 | D’Agostino | 0.0059586 | \*       | QQ        |

## Assumption: Homogeneity of data distribution

| var        | method        | formula                          |   n | df1 | df2 | statistic |         p | p.signif |
|:-----------|:--------------|:---------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Sexo`     | 349 |   3 | 345 | 0.8641009 | 0.4598879 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Zona`     | 295 |   3 | 291 | 0.5333040 | 0.6597830 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Cor.Raca` | 141 |   5 | 135 | 1.1910731 | 0.3168709 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| grupo    |   1 | 347 | 156.792 | 11851.850 | 4.591 | 0.033 | 0.013 | \*     |
| Sexo     |   1 | 347 | 172.676 | 11835.966 | 5.062 | 0.025 | 0.014 | \*     |
| Zona     |   1 | 293 |   2.634 | 10230.199 | 0.075 | 0.784 | 0.000 |        |
| Cor.Raca |   2 | 138 | 144.259 |  4410.294 | 2.257 | 0.109 | 0.032 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 345 | 119.739 | 11576.968 | 3.568 | 0.060 | 0.010 |        |
| 6   | grupo:Zona     |   1 | 291 |  77.801 | 10048.407 | 2.253 | 0.134 | 0.008 |        |
| 9   | grupo:Cor.Raca |   2 | 135 |  35.200 |  4161.314 | 0.571 | 0.566 | 0.008 |        |

## Pairwise comparisons for one factor: **grupo**

| var        | grupo        |   n |     M |    SE |
|:-----------|:-------------|----:|------:|------:|
| gain.vocab | Controle     | 152 | 1.651 | 0.469 |
| gain.vocab | Experimental | 197 | 0.299 | 0.420 |

| .y.        | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab | Controle | Experimental |    1.352 |    0.111 |     2.593 | 0.631 |     2.143 | 0.033 | 0.033 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var        | grupo        | Sexo |   n |      M |    SE |
|:-----------|:-------------|:-----|----:|-------:|------:|
| gain.vocab | Controle     | F    |  85 |  1.647 | 0.527 |
| gain.vocab | Controle     | M    |  67 |  1.657 | 0.832 |
| gain.vocab | Experimental | F    |  99 |  1.475 | 0.569 |
| gain.vocab | Experimental | M    |  98 | -0.888 | 0.597 |

| .y.        | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | F    | Controle | Experimental |    0.172 |   -1.512 |     1.857 | 0.857 |     0.201 | 0.841 | 0.841 | ns           |
| gain.vocab |              | M    | Controle | Experimental |    2.544 |    0.738 |     4.351 | 0.918 |     2.771 | 0.006 | 0.006 | \*\*         |
| gain.vocab | Controle     |      | F        | M            |   -0.010 |   -1.871 |     1.852 | 0.946 |    -0.010 | 0.992 | 0.992 | ns           |
| gain.vocab | Experimental |      | F        | M            |    2.363 |    0.739 |     3.986 | 0.825 |     2.862 | 0.004 | 0.004 | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var        | grupo        | Zona   |   n |      M |    SE |
|:-----------|:-------------|:-------|----:|-------:|------:|
| gain.vocab | Controle     | Rural  |  77 |  2.039 | 0.728 |
| gain.vocab | Controle     | Urbana |  50 |  0.700 | 0.705 |
| gain.vocab | Experimental | Rural  |  92 | -0.043 | 0.610 |
| gain.vocab | Experimental | Urbana |  76 |  0.724 | 0.677 |

| .y.        | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | Rural  | Controle | Experimental |    2.082 |    0.296 |     3.869 | 0.908 |     2.294 | 0.022 | 0.022 | \*           |
| gain.vocab |              | Urbana | Controle | Experimental |   -0.024 |   -2.130 |     2.082 | 1.070 |    -0.022 | 0.982 | 0.982 | ns           |
| gain.vocab | Controle     |        | Rural    | Urbana       |    1.339 |   -0.762 |     3.440 | 1.067 |     1.255 | 0.211 | 0.211 | ns           |
| gain.vocab | Experimental |        | Rural    | Urbana       |   -0.767 |   -2.560 |     1.026 | 0.911 |    -0.842 | 0.400 | 0.400 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var        | grupo        | Cor.Raca |   n |      M |    SE |
|:-----------|:-------------|:---------|----:|-------:|------:|
| gain.vocab | Controle     | Branca   |  22 |  1.727 | 1.185 |
| gain.vocab | Controle     | Indígena |   8 |  4.625 | 1.238 |
| gain.vocab | Controle     | Parda    |  44 |  2.955 | 0.745 |
| gain.vocab | Experimental | Branca   |  12 | -2.667 | 1.373 |
| gain.vocab | Experimental | Parda    |  53 |  1.000 | 0.879 |

|     | .y.        | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.vocab |              | Branca   | Controle | Experimental |    4.394 |    0.439 |     8.349 | 2.000 |     2.197 | 0.030 | 0.030 | \*           |
| 3   | gain.vocab |              | Parda    | Controle | Experimental |    1.955 |   -0.293 |     4.202 | 1.136 |     1.720 | 0.088 | 0.088 | ns           |
| 4   | gain.vocab | Controle     |          | Branca   | Indígena     |   -2.898 |   -7.448 |     1.652 | 2.301 |    -1.260 | 0.210 | 0.630 | ns           |
| 5   | gain.vocab | Controle     |          | Branca   | Parda        |   -1.227 |   -4.105 |     1.651 | 1.455 |    -0.843 | 0.400 | 1.000 | ns           |
| 6   | gain.vocab | Controle     |          | Indígena | Parda        |    1.670 |   -2.566 |     5.906 | 2.142 |     0.780 | 0.437 | 1.000 | ns           |
| 8   | gain.vocab | Experimental |          | Branca   | Parda        |   -3.667 |   -7.190 |    -0.143 | 1.781 |    -2.058 | 0.042 | 0.042 | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
