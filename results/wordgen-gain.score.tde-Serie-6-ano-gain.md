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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |    mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|--------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          | gain.score.tde |  63 |  -4.222 |   -3.0 | -32 |  26 |  9.981 | 1.258 |  2.514 | 10.00 |
| Controle     | M    |        |          | gain.score.tde |  71 |  -5.239 |   -3.0 | -34 |  19 | 10.031 | 1.190 |  2.374 | 11.50 |
| Experimental | F    |        |          | gain.score.tde |  83 |  -6.000 |   -4.0 | -36 |  16 | 10.976 | 1.205 |  2.397 | 14.50 |
| Experimental | M    |        |          | gain.score.tde |  76 |  -3.711 |   -2.5 | -29 |  21 | 11.082 | 1.271 |  2.532 | 13.00 |
| Controle     |      | Rural  |          | gain.score.tde |  97 |  -3.928 |   -3.0 | -34 |  26 |  9.798 | 0.995 |  1.975 | 10.00 |
| Controle     |      | Urbana |          | gain.score.tde |  21 |  -8.333 |  -10.0 | -27 |  19 | 10.660 | 2.326 |  4.852 | 14.00 |
| Controle     |      |        |          | gain.score.tde |  16 |  -5.125 |   -2.5 | -32 |   8 |  9.756 | 2.439 |  5.199 | 10.25 |
| Experimental |      | Rural  |          | gain.score.tde |  86 |  -2.105 |    0.0 | -29 |  21 | 11.179 | 1.205 |  2.397 | 13.75 |
| Experimental |      | Urbana |          | gain.score.tde |  40 | -10.400 |   -9.0 | -36 |  14 | 11.254 | 1.779 |  3.599 | 17.25 |
| Experimental |      |        |          | gain.score.tde |  33 |  -5.545 |   -4.0 | -25 |   8 |  7.583 | 1.320 |  2.689 |  9.00 |
| Controle     |      |        | Branca   | gain.score.tde |  17 |  -7.353 |   -7.0 | -23 |   1 |  5.744 | 1.393 |  2.953 |  4.00 |
| Controle     |      |        | Indígena | gain.score.tde |   3 |   5.667 |    3.0 |   0 |  14 |  7.371 | 4.256 | 18.311 |  7.00 |
| Controle     |      |        | Parda    | gain.score.tde |  39 |  -6.769 |   -4.0 | -32 |  13 |  9.815 | 1.572 |  3.182 | 13.00 |
| Controle     |      |        |          | gain.score.tde |  75 |  -3.547 |   -2.0 | -34 |  26 | 10.558 | 1.219 |  2.429 | 12.00 |
| Experimental |      |        | Branca   | gain.score.tde |  22 |  -2.636 |    0.0 | -29 |  14 | 12.598 | 2.686 |  5.586 | 17.00 |
| Experimental |      |        | Indígena | gain.score.tde |  11 |   3.909 |    3.0 | -11 |  17 |  9.257 | 2.791 |  6.219 | 12.00 |
| Experimental |      |        | Parda    | gain.score.tde |  45 |  -5.111 |   -1.0 | -36 |  21 | 13.054 | 1.946 |  3.922 | 18.00 |
| Experimental |      |        |          | gain.score.tde |  81 |  -6.605 |   -4.0 | -29 |  20 |  8.948 | 0.994 |  1.979 | 11.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.score.tde | 293 | -0.2805058 |  0.1243586 | YES      |  4.413842 | D’Agostino | 0.1100389 | ns       | \-        |
| gain.score.tde | 244 | -0.2364683 |  0.0659475 | YES      |  2.635706 | D’Agostino | 0.2677095 | ns       | \-        |
| gain.score.tde | 137 | -0.4522972 | -0.0626522 | YES      |  4.893537 | D’Agostino | 0.0865729 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     | 293 |   3 | 289 | 0.7174343 | 0.5422572 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     | 244 |   3 | 240 | 1.3477068 | 0.2595518 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` | 137 |   5 | 131 | 2.3391052 | 0.0452268 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |      SSn |      SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|----:|---------:|---------:|-------:|:--------|------:|:-------|
| grupo    |   1 | 291 |    1.518 | 32551.94 |  0.014 | 0.907   | 0.000 |        |
| Sexo     |   1 | 291 |   45.011 | 32508.45 |  0.403 | 0.526   | 0.001 |        |
| Zona     |   1 | 242 | 2003.444 | 27261.16 | 17.785 | \<0.001 | 0.068 | \*     |
| Cor.Raca |   2 | 134 | 1242.274 | 16263.97 |  5.118 | 0.007   | 0.071 | \*     |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 289 | 198.214 | 32309.45 | 1.773 | 0.184 | 0.006 |        |
| 6   | grupo:Zona     |   1 | 240 | 160.021 | 27050.82 | 1.420 | 0.235 | 0.006 |        |
| 9   | grupo:Cor.Raca |   2 | 131 | 103.417 | 15985.92 | 0.424 | 0.655 | 0.006 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     | 134 | -4.761 | 0.862 |
| gain.score.tde | Experimental | 159 | -4.906 | 0.876 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |   se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|-----:|----------:|------:|------:|:-------------|
| gain.score.tde | Controle | Experimental |    0.144 |   -2.297 |     2.586 | 1.24 |     0.116 | 0.907 | 0.907 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |  63 | -4.222 | 1.258 |
| gain.score.tde | Controle     | M    |  71 | -5.239 | 1.190 |
| gain.score.tde | Experimental | F    |  83 | -6.000 | 1.205 |
| gain.score.tde | Experimental | M    |  76 | -3.711 | 1.271 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |    1.778 |   -1.700 |     5.255 | 1.767 |     1.006 | 0.315 | 0.315 | ns           |
| gain.score.tde |              | M    | Controle | Experimental |   -1.529 |   -4.964 |     1.906 | 1.745 |    -0.876 | 0.382 | 0.382 | ns           |
| gain.score.tde | Controle     |      | F        | M            |    1.017 |   -2.585 |     4.619 | 1.830 |     0.556 | 0.579 | 0.579 | ns           |
| gain.score.tde | Experimental |      | F        | M            |   -2.289 |   -5.593 |     1.015 | 1.679 |    -1.364 | 0.174 | 0.174 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |       M |    SE |
|:---------------|:-------------|:-------|----:|--------:|------:|
| gain.score.tde | Controle     | Rural  |  97 |  -3.928 | 0.995 |
| gain.score.tde | Controle     | Urbana |  21 |  -8.333 | 2.326 |
| gain.score.tde | Experimental | Rural  |  86 |  -2.105 | 1.205 |
| gain.score.tde | Experimental | Urbana |  40 | -10.400 | 1.779 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.score.tde |              | Rural  | Controle | Experimental |   -1.823 |   -4.921 |     1.274 | 1.572 |    -1.159 | 0.247   | 0.247   | ns           |
| gain.score.tde |              | Urbana | Controle | Experimental |    2.067 |   -3.569 |     7.702 | 2.861 |     0.722 | 0.471   | 0.471   | ns           |
| gain.score.tde | Controle     |        | Rural    | Urbana       |    4.405 |   -0.628 |     9.439 | 2.555 |     1.724 | 0.086   | 0.086   | ns           |
| gain.score.tde | Experimental |        | Rural    | Urbana       |    8.295 |    4.293 |    12.298 | 2.032 |     4.083 | \<0.001 | \<0.001 | \*\*\*\*     |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.score.tde | Controle     | Branca   |  17 | -7.353 | 1.393 |
| gain.score.tde | Controle     | Parda    |  39 | -6.769 | 1.572 |
| gain.score.tde | Experimental | Branca   |  22 | -2.636 | 2.686 |
| gain.score.tde | Experimental | Indígena |  11 |  3.909 | 2.791 |
| gain.score.tde | Experimental | Parda    |  45 | -5.111 | 1.946 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.score.tde |              | Branca   | Controle | Experimental |   -4.717 |  -11.805 |     2.372 | 3.583 |    -1.317 | 0.190 | 0.190 | ns           |
| 3   | gain.score.tde |              | Parda    | Controle | Experimental |   -1.658 |   -6.460 |     3.144 | 2.427 |    -0.683 | 0.496 | 0.496 | ns           |
| 5   | gain.score.tde | Controle     |          | Branca   | Parda        |   -0.584 |   -6.963 |     5.796 | 3.224 |    -0.181 | 0.857 | 0.857 | ns           |
| 7   | gain.score.tde | Experimental |          | Branca   | Indígena     |   -6.545 |  -14.651 |     1.560 | 4.097 |    -1.598 | 0.113 | 0.338 | ns           |
| 8   | gain.score.tde | Experimental |          | Branca   | Parda        |    2.475 |   -3.235 |     8.185 | 2.886 |     0.857 | 0.393 | 1.000 | ns           |
| 9   | gain.score.tde | Experimental |          | Indígena | Parda        |    9.020 |    1.637 |    16.403 | 3.732 |     2.417 | 0.017 | 0.051 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
