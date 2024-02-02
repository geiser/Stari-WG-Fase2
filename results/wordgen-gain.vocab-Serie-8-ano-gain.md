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

| grupo        | Sexo | Zona   | Cor.Raca | variable   |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:-----------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          | gain.vocab |  53 |  0.792 |    2.0 | -29 |  16 |  8.075 | 1.109 | 2.226 |  6.00 |
| Controle     | M    |        |          | gain.vocab |  47 | -0.340 |    1.0 | -25 |  17 |  9.272 | 1.352 | 2.722 | 10.00 |
| Experimental | F    |        |          | gain.vocab |  96 |  1.208 |    2.0 | -25 |  18 |  6.214 | 0.634 | 1.259 |  7.00 |
| Experimental | M    |        |          | gain.vocab |  85 |  0.388 |    1.0 | -20 |  12 |  5.423 | 0.588 | 1.170 |  6.00 |
| Controle     |      | Rural  |          | gain.vocab |  38 |  1.158 |    2.0 | -19 |  16 |  7.449 | 1.208 | 2.448 |  9.25 |
| Controle     |      | Urbana |          | gain.vocab |  18 |  4.278 |    4.0 |  -3 |  16 |  4.650 | 1.096 | 2.312 |  7.00 |
| Controle     |      |        |          | gain.vocab |  44 | -2.159 |    0.5 | -29 |  17 | 10.090 | 1.521 | 3.068 |  7.50 |
| Experimental |      | Rural  |          | gain.vocab |  56 |  0.643 |    1.0 | -25 |  15 |  6.651 | 0.889 | 1.781 |  6.00 |
| Experimental |      | Urbana |          | gain.vocab |  33 |  1.970 |    3.0 | -10 |   9 |  4.217 | 0.734 | 1.495 |  4.00 |
| Experimental |      |        |          | gain.vocab |  92 |  0.522 |    1.0 | -18 |  18 |  5.849 | 0.610 | 1.211 |  7.00 |
| Controle     |      |        | Branca   | gain.vocab |   3 |  1.333 |    0.0 |   0 |   4 |  2.309 | 1.333 | 5.737 |  2.00 |
| Controle     |      |        | Indígena | gain.vocab |   1 |  4.000 |    4.0 |   4 |   4 |        |       |       |  0.00 |
| Controle     |      |        | Parda    | gain.vocab |  38 | -0.395 |    2.0 | -29 |  16 | 10.719 | 1.739 | 3.523 | 10.75 |
| Controle     |      |        |          | gain.vocab |  58 |  0.569 |    1.0 | -25 |  17 |  7.346 | 0.965 | 1.932 |  7.75 |
| Experimental |      |        | Amarela  | gain.vocab |   1 |  3.000 |    3.0 |   3 |   3 |        |       |       |  0.00 |
| Experimental |      |        | Branca   | gain.vocab |  19 | -0.526 |   -1.0 | -14 |   8 |  5.189 | 1.191 | 2.501 |  6.50 |
| Experimental |      |        | Parda    | gain.vocab |  53 |  2.038 |    1.0 | -20 |  15 |  5.841 | 0.802 | 1.610 |  7.00 |
| Experimental |      |        |          | gain.vocab | 108 |  0.444 |    1.0 | -25 |  18 |  5.941 | 0.572 | 1.133 |  6.25 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var        |   n |   skewness | kurtosis | symmetry | statistic | method     |       p | p.signif | normality |
|:-----------|----:|-----------:|---------:|:---------|----------:|:-----------|--------:|:---------|:----------|
| gain.vocab | 281 | -1.0884944 | 2.860956 | NO       |  64.91062 | D’Agostino | 0.0e+00 | \*\*\*\* | \-        |
| gain.vocab | 145 | -0.9570368 | 2.776100 | NO       |  33.08026 | D’Agostino | 1.0e-07 | \*\*\*\* | QQ        |
| gain.vocab | 115 | -0.9591838 | 1.966441 | NO       |  24.20246 | D’Agostino | 5.6e-06 | \*\*\*\* | QQ        |

## Assumption: Homogeneity of data distribution

| var        | method        | formula                          |   n | df1 | df2 | statistic |         p | p.signif |
|:-----------|:--------------|:---------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Sexo`     | 281 |   3 | 277 |  3.551537 | 0.0149411 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Zona`     | 145 |   3 | 141 |  2.327202 | 0.0772357 | ns       |
| gain.vocab | Levene’s test | `gain.vocab`~`grupo`\*`Cor.Raca` | 115 |   5 | 109 |  3.012718 | 0.0138080 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| grupo    |   1 | 279 |  20.432 | 13545.583 | 0.421 | 0.517 | 0.002 |        |
| Sexo     |   1 | 279 |  60.747 | 13505.267 | 1.255 | 0.264 | 0.004 |        |
| Zona     |   1 | 143 | 123.568 |  5490.542 | 3.218 | 0.075 | 0.022 |        |
| Cor.Raca |   3 | 111 |  44.846 |  6660.320 | 0.249 | 0.862 | 0.007 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 277 |  1.570 | 13483.292 | 0.032 | 0.858 | 0.000 |        |
| 6   | grupo:Zona     |   1 | 141 | 24.725 |  5422.491 | 0.643 | 0.424 | 0.005 |        |
| 9   | grupo:Cor.Raca |   1 | 109 | 42.728 |  6520.407 | 0.714 | 0.400 | 0.007 |        |

## Pairwise comparisons for one factor: **grupo**

| var        | grupo        |   n |     M |    SE |
|:-----------|:-------------|----:|------:|------:|
| gain.vocab | Controle     | 100 | 0.260 | 0.863 |
| gain.vocab | Experimental | 181 | 0.823 | 0.435 |

| .y.        | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab | Controle | Experimental |   -0.563 |   -2.272 |     1.146 | 0.868 |    -0.649 | 0.517 | 0.517 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var        | grupo        | Sexo |   n |      M |    SE |
|:-----------|:-------------|:-----|----:|-------:|------:|
| gain.vocab | Controle     | F    |  53 |  0.792 | 1.109 |
| gain.vocab | Controle     | M    |  47 | -0.340 | 1.352 |
| gain.vocab | Experimental | F    |  96 |  1.208 | 0.634 |
| gain.vocab | Experimental | M    |  85 |  0.388 | 0.588 |

| .y.        | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | F    | Controle | Experimental |   -0.416 |   -2.766 |     1.934 | 1.194 |    -0.348 | 0.728 | 0.728 | ns           |
| gain.vocab |              | M    | Controle | Experimental |   -0.729 |   -3.225 |     1.768 | 1.268 |    -0.575 | 0.566 | 0.566 | ns           |
| gain.vocab | Controle     |      | F        | M            |    1.133 |   -1.619 |     3.885 | 1.398 |     0.810 | 0.418 | 0.418 | ns           |
| gain.vocab | Experimental |      | F        | M            |    0.820 |   -1.225 |     2.866 | 1.039 |     0.789 | 0.431 | 0.431 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var        | grupo        | Zona   |   n |     M |    SE |
|:-----------|:-------------|:-------|----:|------:|------:|
| gain.vocab | Controle     | Rural  |  38 | 1.158 | 1.208 |
| gain.vocab | Controle     | Urbana |  18 | 4.278 | 1.096 |
| gain.vocab | Experimental | Rural  |  56 | 0.643 | 0.889 |
| gain.vocab | Experimental | Urbana |  33 | 1.970 | 0.734 |

| .y.        | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.vocab |              | Rural  | Controle | Experimental |    0.515 |   -2.062 |     3.092 | 1.303 |     0.395 | 0.693 | 0.693 | ns           |
| gain.vocab |              | Urbana | Controle | Experimental |    2.308 |   -1.284 |     5.900 | 1.817 |     1.270 | 0.206 | 0.206 | ns           |
| gain.vocab | Controle     |        | Rural    | Urbana       |   -3.120 |   -6.628 |     0.388 | 1.774 |    -1.758 | 0.081 | 0.081 | ns           |
| gain.vocab | Experimental |        | Rural    | Urbana       |   -1.327 |   -4.017 |     1.364 | 1.361 |    -0.975 | 0.331 | 0.331 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.vocab-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var        | grupo        | Cor.Raca |   n |      M |    SE |
|:-----------|:-------------|:---------|----:|-------:|------:|
| gain.vocab | Controle     | Parda    |  38 | -0.395 | 1.739 |
| gain.vocab | Experimental | Branca   |  19 | -0.526 | 1.191 |
| gain.vocab | Experimental | Parda    |  53 |  2.038 | 0.802 |

|     | .y.        | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.vocab |              | Parda    | Controle | Experimental |   -2.432 |   -5.719 |     0.854 | 1.658 |    -1.467 | 0.145 | 0.145 | ns           |
| 4   | gain.vocab | Experimental |          | Branca   | Parda        |   -2.564 |   -6.699 |     1.571 | 2.086 |    -1.229 | 0.222 | 0.222 | ns           |
