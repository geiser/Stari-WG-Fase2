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
| Controle     | F    |        |          | gain.score.tde |  48 |  -3.521 |   -2.5 | -22 |  24 | 11.032 | 1.592 |  3.203 | 16.50 |
| Controle     | M    |        |          | gain.score.tde |  62 |  -1.274 |    0.0 | -33 |  22 | 10.953 | 1.391 |  2.782 | 14.00 |
| Experimental | F    |        |          | gain.score.tde |  18 |  -4.000 |   -4.0 | -27 |   9 |  7.600 | 1.791 |  3.780 |  5.25 |
| Experimental | M    |        |          | gain.score.tde |  28 |  -3.107 |   -3.0 | -36 |  21 | 11.657 | 2.203 |  4.520 | 11.50 |
| Controle     |      | Rural  |          | gain.score.tde |  66 |  -3.197 |   -2.0 | -33 |  18 | 10.980 | 1.352 |  2.699 | 16.25 |
| Controle     |      | Urbana |          | gain.score.tde |  11 |  -0.636 |    0.0 | -18 |  14 |  7.903 | 2.383 |  5.309 |  5.00 |
| Controle     |      |        |          | gain.score.tde |  33 |  -0.909 |    0.0 | -22 |  24 | 11.946 | 2.080 |  4.236 | 18.00 |
| Experimental |      | Rural  |          | gain.score.tde |  31 |  -1.581 |   -4.0 | -22 |  21 |  8.846 | 1.589 |  3.245 | 10.50 |
| Experimental |      | Urbana |          | gain.score.tde |   5 |  -6.600 |   -5.0 | -19 |  -1 |  7.232 | 3.234 |  8.980 |  4.00 |
| Experimental |      |        |          | gain.score.tde |  10 |  -7.700 |   -3.0 | -36 |  11 | 14.000 | 4.427 | 10.015 | 10.50 |
| Controle     |      |        | Branca   | gain.score.tde |  11 |   3.000 |    0.0 |  -9 |  24 |  9.476 | 2.857 |  6.366 | 11.00 |
| Controle     |      |        | Indígena | gain.score.tde |   2 | -11.000 |  -11.0 | -16 |  -6 |  7.071 | 5.000 | 63.531 |  5.00 |
| Controle     |      |        | Parda    | gain.score.tde |  50 |  -5.140 |   -5.5 | -26 |  18 | 10.831 | 1.532 |  3.078 | 16.00 |
| Controle     |      |        | Preta    | gain.score.tde |   1 |  14.000 |   14.0 |  14 |  14 |        |       |        |  0.00 |
| Controle     |      |        |          | gain.score.tde |  46 |  -0.348 |    1.0 | -33 |  22 | 10.723 | 1.581 |  3.184 | 11.75 |
| Experimental |      |        | Branca   | gain.score.tde |   5 |  -1.400 |    3.0 | -19 |   7 | 10.359 | 4.632 | 12.862 |  6.00 |
| Experimental |      |        | Indígena | gain.score.tde |   8 |  -0.750 |   -0.5 | -22 |  11 | 10.471 | 3.702 |  8.754 | 11.50 |
| Experimental |      |        | Parda    | gain.score.tde |  17 |  -2.588 |   -4.0 | -27 |  21 | 10.794 | 2.618 |  5.550 |  6.00 |
| Experimental |      |        |          | gain.score.tde |  16 |  -6.375 |   -6.0 | -36 |   9 |  9.556 | 2.389 |  5.092 |  7.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.score.tde | 156 | -0.3355652 |  0.3256166 | YES      | 4.3634300 | D’Agostino | 0.1128478 | ns       | QQ        |
| gain.score.tde | 113 | -0.3103751 | -0.0726964 | YES      | 2.0714615 | D’Agostino | 0.3549669 | ns       | QQ        |
| gain.score.tde |  94 |  0.0048905 | -0.3023188 | YES      | 0.0649651 | D’Agostino | 0.9680393 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     | 156 |   3 | 152 | 1.8542522 | 0.1397643 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     | 113 |   3 | 109 | 2.2155502 | 0.0904063 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` |  94 |   6 |  87 | 0.6931662 | 0.6557128 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 | 154 |  46.862 | 17834.29 | 0.405 | 0.526 | 0.003 |        |
| Sexo     |   1 | 154 | 124.340 | 17756.81 | 1.078 | 0.301 | 0.007 |        |
| Zona     |   1 | 111 |   0.447 | 11195.09 | 0.004 | 0.947 | 0.000 |        |
| Cor.Raca |   3 |  90 | 780.382 | 10074.10 | 2.324 | 0.080 | 0.072 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 152 |  14.292 | 17688.996 | 0.123 | 0.726 | 0.001 |        |
| 6   | grupo:Zona     |   1 | 109 | 169.827 | 11017.733 | 1.680 | 0.198 | 0.015 |        |
| 9   | grupo:Cor.Raca |   2 |  87 | 253.380 |  9756.838 | 1.130 | 0.328 | 0.025 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     | 110 | -2.255 | 1.048 |
| gain.score.tde | Experimental |  46 | -3.457 | 1.500 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |   se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|-----:|----------:|------:|------:|:-------------|
| gain.score.tde | Controle | Experimental |    1.202 |   -2.531 |     4.935 | 1.89 |     0.636 | 0.526 | 0.526 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |  48 | -3.521 | 1.592 |
| gain.score.tde | Controle     | M    |  62 | -1.274 | 1.391 |
| gain.score.tde | Experimental | F    |  18 | -4.000 | 1.791 |
| gain.score.tde | Experimental | M    |  28 | -3.107 | 2.203 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |    0.479 |   -5.412 |     6.370 | 2.982 |     0.161 | 0.873 | 0.873 | ns           |
| gain.score.tde |              | M    | Controle | Experimental |    1.833 |   -3.020 |     6.686 | 2.456 |     0.746 | 0.457 | 0.457 | ns           |
| gain.score.tde | Controle     |      | F        | M            |   -2.247 |   -6.344 |     1.851 | 2.074 |    -1.083 | 0.280 | 0.280 | ns           |
| gain.score.tde | Experimental |      | F        | M            |   -0.893 |   -7.332 |     5.546 | 3.259 |    -0.274 | 0.784 | 0.784 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.score.tde | Controle     | Rural  |  66 | -3.197 | 1.352 |
| gain.score.tde | Controle     | Urbana |  11 | -0.636 | 2.383 |
| gain.score.tde | Experimental | Rural  |  31 | -1.581 | 1.589 |
| gain.score.tde | Experimental | Urbana |   5 | -6.600 | 3.234 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | Rural  | Controle | Experimental |   -1.616 |   -5.955 |     2.722 | 2.189 |    -0.738 | 0.462 | 0.462 | ns           |
| gain.score.tde |              | Urbana | Controle | Experimental |    5.964 |   -4.784 |    16.711 | 5.423 |     1.100 | 0.274 | 0.274 | ns           |
| gain.score.tde | Controle     |        | Rural    | Urbana       |   -2.561 |   -9.050 |     3.929 | 3.274 |    -0.782 | 0.436 | 0.436 | ns           |
| gain.score.tde | Experimental |        | Rural    | Urbana       |    5.019 |   -4.584 |    14.623 | 4.845 |     1.036 | 0.303 | 0.303 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.score.tde | Controle     | Branca   |  11 |  3.000 | 2.857 |
| gain.score.tde | Controle     | Parda    |  50 | -5.140 | 1.532 |
| gain.score.tde | Experimental | Branca   |   5 | -1.400 | 4.632 |
| gain.score.tde | Experimental | Indígena |   8 | -0.750 | 3.702 |
| gain.score.tde | Experimental | Parda    |  17 | -2.588 | 2.618 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.score.tde |              | Branca   | Controle | Experimental |    4.400 |   -6.991 |    15.791 | 5.730 |     0.768 | 0.445 | 0.445 | ns           |
| 3   | gain.score.tde |              | Parda    | Controle | Experimental |   -2.552 |   -8.481 |     3.378 | 2.983 |    -0.856 | 0.395 | 0.395 | ns           |
| 5   | gain.score.tde | Controle     |          | Branca   | Parda        |    8.140 |    1.106 |    15.174 | 3.538 |     2.301 | 0.024 | 0.024 | \*           |
| 7   | gain.score.tde | Experimental |          | Branca   | Indígena     |   -0.650 |  -12.690 |    11.390 | 6.057 |    -0.107 | 0.915 | 1.000 | ns           |
| 8   | gain.score.tde | Experimental |          | Branca   | Parda        |    1.188 |   -9.556 |    11.933 | 5.405 |     0.220 | 0.827 | 1.000 | ns           |
| 9   | gain.score.tde | Experimental |          | Indígena | Parda        |    1.838 |   -7.217 |    10.893 | 4.555 |     0.404 | 0.688 | 1.000 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
