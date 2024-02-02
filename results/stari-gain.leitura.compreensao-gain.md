ANOVA in Gains for gain Fluencia Leitora (Compreensão) (gain Fluencia
Leitora (Compreensão))
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
  Fluencia Leitora (Compreensão) (medido usando a diferença entre
  post-test e pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain Fluencia Leitora (Compreensão) (measured using the difference
  between post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable                 |   n |   mean | median | min | max |    sd |    se |    ci |  iqr |
|:-------------|:-----|:-------|:---------|:-------------------------|----:|-------:|-------:|----:|----:|------:|------:|------:|-----:|
| Controle     | F    |        |          | gain.leitura.compreensao |  59 | -0.780 |     -1 |  -7 |   7 | 3.119 | 0.406 | 0.813 | 4.00 |
| Controle     | M    |        |          | gain.leitura.compreensao |  82 | -0.707 |      0 |  -7 |   6 | 2.769 | 0.306 | 0.608 | 3.00 |
| Experimental | F    |        |          | gain.leitura.compreensao |  29 | -0.172 |      1 |  -6 |   5 | 3.506 | 0.651 | 1.334 | 7.00 |
| Experimental | M    |        |          | gain.leitura.compreensao |  42 |  0.167 |      1 |  -6 |   8 | 3.506 | 0.541 | 1.092 | 4.75 |
| Controle     |      | Rural  |          | gain.leitura.compreensao |  78 | -0.090 |      0 |  -7 |   7 | 2.838 | 0.321 | 0.640 | 4.00 |
| Controle     |      | Urbana |          | gain.leitura.compreensao |  25 | -2.960 |     -4 |  -7 |   2 | 2.508 | 0.502 | 1.035 | 5.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  38 | -0.605 |     -1 |  -7 |   5 | 2.636 | 0.428 | 0.866 | 3.00 |
| Experimental |      | Rural  |          | gain.leitura.compreensao |  42 |  0.738 |      1 |  -5 |   6 | 3.100 | 0.478 | 0.966 | 3.75 |
| Experimental |      | Urbana |          | gain.leitura.compreensao |  15 | -2.800 |     -4 |  -6 |   3 | 3.121 | 0.806 | 1.729 | 5.00 |
| Experimental |      |        |          | gain.leitura.compreensao |  14 |  0.929 |      1 |  -5 |   8 | 3.583 | 0.958 | 2.069 | 3.75 |
| Controle     |      |        | Branca   | gain.leitura.compreensao |  14 |  0.643 |      1 |  -2 |   4 | 1.393 | 0.372 | 0.804 | 1.00 |
| Controle     |      |        | Indígena | gain.leitura.compreensao |   3 |  0.667 |      1 |   0 |   1 | 0.577 | 0.333 | 1.434 | 0.50 |
| Controle     |      |        | Parda    | gain.leitura.compreensao |  63 | -0.159 |      0 |  -7 |   7 | 3.091 | 0.389 | 0.778 | 4.00 |
| Controle     |      |        | Preta    | gain.leitura.compreensao |   1 | -1.000 |     -1 |  -1 |  -1 |       |       |       | 0.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  60 | -1.733 |     -2 |  -7 |   4 | 2.773 | 0.358 | 0.716 | 4.00 |
| Experimental |      |        | Amarela  | gain.leitura.compreensao |   1 | -4.000 |     -4 |  -4 |  -4 |       |       |       | 0.00 |
| Experimental |      |        | Branca   | gain.leitura.compreensao |   8 |  0.125 |      1 |  -5 |   5 | 3.907 | 1.381 | 3.267 | 5.75 |
| Experimental |      |        | Indígena | gain.leitura.compreensao |   8 |  2.625 |      3 |   0 |   5 | 1.598 | 0.565 | 1.336 | 1.50 |
| Experimental |      |        | Parda    | gain.leitura.compreensao |  21 |  0.810 |      1 |  -4 |   6 | 3.076 | 0.671 | 1.400 | 4.00 |
| Experimental |      |        |          | gain.leitura.compreensao |  33 | -1.000 |      0 |  -6 |   8 | 3.614 | 0.629 | 1.282 | 6.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.leitura.compreensao | 212 | -0.1488449 | -0.4998927 | YES      | 3.6191422 | D’Agostino | 0.1637243 | ns       | \-        |
| gain.leitura.compreensao | 160 | -0.1575473 | -0.3482745 | YES      | 1.2640790 | D’Agostino | 0.5315067 | ns       | QQ        |
| gain.leitura.compreensao | 119 | -0.0910050 | -0.2005172 | YES      | 0.1951462 | D’Agostino | 0.9070360 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var                      | method        | formula                                        |   n | df1 | df2 | statistic |         p | p.signif |
|:-------------------------|:--------------|:-----------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Sexo`     | 212 |   3 | 208 | 1.2158036 | 0.3049750 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Zona`     | 160 |   3 | 156 | 0.3960173 | 0.7560443 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Cor.Raca` | 119 |   7 | 111 | 3.1726091 | 0.0042561 | \*       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|-------:|:--------|------:|:-------|
| grupo    |   1 | 210 |  27.690 | 2035.234 |  2.857 | 0.092   | 0.013 |        |
| Sexo     |   1 | 210 |   1.457 | 2061.467 |  0.148 | 0.7     | 0.001 |        |
| Zona     |   1 | 158 | 288.300 | 1320.800 | 34.488 | \<0.001 | 0.179 | \*     |
| Cor.Raca |   4 | 114 |  59.926 |  956.780 |  1.785 | 0.137   | 0.059 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 208 |  0.814 | 2033.082 | 0.083 | 0.773 | 0.000 |        |
| 6   | grupo:Zona     |   1 | 156 |  3.112 | 1301.851 | 0.373 | 0.542 | 0.002 |        |
| 9   | grupo:Cor.Raca |   2 | 111 | 12.113 |  932.282 | 0.721 | 0.488 | 0.013 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n |      M |    SE |
|:-------------------------|:-------------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | 141 | -0.738 | 0.245 |
| gain.leitura.compreensao | Experimental |  71 |  0.028 | 0.414 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao | Controle | Experimental |   -0.766 |   -1.659 |     0.127 | 0.453 |     -1.69 | 0.092 | 0.092 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n |      M |    SE |
|:-------------------------|:-------------|:-----|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | F    |  59 | -0.780 | 0.406 |
| gain.leitura.compreensao | Controle     | M    |  82 | -0.707 | 0.306 |
| gain.leitura.compreensao | Experimental | F    |  29 | -0.172 | 0.651 |
| gain.leitura.compreensao | Experimental | M    |  42 |  0.167 | 0.541 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | F    | Controle | Experimental |   -0.607 |   -2.005 |     0.791 | 0.709 |    -0.856 | 0.393 | 0.393 | ns           |
| gain.leitura.compreensao |              | M    | Controle | Experimental |   -0.874 |   -2.044 |     0.296 | 0.593 |    -1.473 | 0.142 | 0.142 | ns           |
| gain.leitura.compreensao | Controle     |      | F        | M            |   -0.072 |   -1.125 |     0.980 | 0.534 |    -0.136 | 0.892 | 0.892 | ns           |
| gain.leitura.compreensao | Experimental |      | F        | M            |   -0.339 |   -1.827 |     1.149 | 0.755 |    -0.449 | 0.654 | 0.654 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var                      | grupo        | Zona   |   n |      M |    SE |
|:-------------------------|:-------------|:-------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | Rural  |  78 | -0.090 | 0.321 |
| gain.leitura.compreensao | Controle     | Urbana |  25 | -2.960 | 0.502 |
| gain.leitura.compreensao | Experimental | Rural  |  42 |  0.738 | 0.478 |
| gain.leitura.compreensao | Experimental | Urbana |  15 | -2.800 | 0.806 |

| .y.                      | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:-------------------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.leitura.compreensao |              | Rural  | Controle | Experimental |   -0.828 |   -1.920 |     0.264 | 0.553 |    -1.497 | 0.136   | 0.136   | ns           |
| gain.leitura.compreensao |              | Urbana | Controle | Experimental |   -0.160 |   -2.024 |     1.704 | 0.943 |    -0.170 | 0.866   | 0.866   | ns           |
| gain.leitura.compreensao | Controle     |        | Rural    | Urbana       |    2.870 |    1.559 |     4.182 | 0.664 |     4.323 | \<0.001 | \<0.001 | \*\*\*\*     |
| gain.leitura.compreensao | Experimental |        | Rural    | Urbana       |    3.538 |    1.822 |     5.254 | 0.869 |     4.072 | \<0.001 | \<0.001 | \*\*\*\*     |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var                      | grupo        | Cor.Raca |   n |      M |    SE |
|:-------------------------|:-------------|:---------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | Branca   |  14 |  0.643 | 0.372 |
| gain.leitura.compreensao | Controle     | Parda    |  63 | -0.159 | 0.389 |
| gain.leitura.compreensao | Experimental | Branca   |   8 |  0.125 | 1.381 |
| gain.leitura.compreensao | Experimental | Indígena |   8 |  2.625 | 0.565 |
| gain.leitura.compreensao | Experimental | Parda    |  21 |  0.810 | 0.671 |

|     | .y.                      | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | gain.leitura.compreensao |              | Branca   | Controle | Experimental |    0.518 |   -2.050 |     3.086 | 1.296 |     0.400 | 0.690 | 0.690 | ns           |
| 3   | gain.leitura.compreensao |              | Parda    | Controle | Experimental |   -0.968 |   -2.428 |     0.492 | 0.737 |    -1.314 | 0.191 | 0.191 | ns           |
| 5   | gain.leitura.compreensao | Controle     |          | Branca   | Parda        |    0.802 |   -0.910 |     2.514 | 0.864 |     0.928 | 0.355 | 0.355 | ns           |
| 7   | gain.leitura.compreensao | Experimental |          | Branca   | Indígena     |   -2.500 |   -5.397 |     0.397 | 1.462 |    -1.710 | 0.090 | 0.270 | ns           |
| 8   | gain.leitura.compreensao | Experimental |          | Branca   | Parda        |   -0.685 |   -3.092 |     1.723 | 1.215 |    -0.564 | 0.574 | 1.000 | ns           |
| 9   | gain.leitura.compreensao | Experimental |          | Indígena | Parda        |    1.815 |   -0.592 |     4.223 | 1.215 |     1.495 | 0.138 | 0.414 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
