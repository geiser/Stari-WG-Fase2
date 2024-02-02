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
| Controle     | F    |        |          | gain.leitura.compreensao |  20 | -0.800 |     -1 |  -6 |   2 | 2.331 | 0.521 | 1.091 | 3.00 |
| Controle     | M    |        |          | gain.leitura.compreensao |  20 |  0.200 |      1 |  -6 |   5 | 2.949 | 0.659 | 1.380 | 3.25 |
| Experimental | F    |        |          | gain.leitura.compreensao |  11 |  0.273 |      0 |  -5 |   4 | 2.970 | 0.895 | 1.995 | 3.50 |
| Experimental | M    |        |          | gain.leitura.compreensao |  10 | -1.300 |      0 |  -6 |   4 | 3.622 | 1.146 | 2.591 | 5.75 |
| Controle     |      | Rural  |          | gain.leitura.compreensao |  28 |  0.429 |      1 |  -4 |   5 | 1.933 | 0.365 | 0.749 | 3.00 |
| Controle     |      | Urbana |          | gain.leitura.compreensao |   9 | -3.000 |     -5 |  -6 |   2 | 3.041 | 1.014 | 2.338 | 5.00 |
| Controle     |      |        |          | gain.leitura.compreensao |   3 |  1.000 |      1 |  -2 |   4 | 3.000 | 1.732 | 7.452 | 3.00 |
| Experimental |      | Rural  |          | gain.leitura.compreensao |  14 |  0.429 |      1 |  -5 |   4 | 3.131 | 0.837 | 1.808 | 2.75 |
| Experimental |      | Urbana |          | gain.leitura.compreensao |   6 | -2.000 |     -1 |  -6 |   2 | 3.286 | 1.342 | 3.449 | 4.50 |
| Experimental |      |        |          | gain.leitura.compreensao |   1 | -4.000 |     -4 |  -4 |  -4 |       |       |       | 0.00 |
| Controle     |      |        | Branca   | gain.leitura.compreensao |   5 |  1.200 |      1 |   1 |   2 | 0.447 | 0.200 | 0.555 | 0.00 |
| Controle     |      |        | Parda    | gain.leitura.compreensao |  17 |  0.471 |      0 |  -2 |   5 | 1.908 | 0.463 | 0.981 | 3.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  18 | -1.444 |     -2 |  -6 |   4 | 3.203 | 0.755 | 1.593 | 6.50 |
| Experimental |      |        | Amarela  | gain.leitura.compreensao |   1 | -4.000 |     -4 |  -4 |  -4 |       |       |       | 0.00 |
| Experimental |      |        | Branca   | gain.leitura.compreensao |   1 | -1.000 |     -1 |  -1 |  -1 |       |       |       | 0.00 |
| Experimental |      |        | Indígena | gain.leitura.compreensao |   1 |  3.000 |      3 |   3 |   3 |       |       |       | 0.00 |
| Experimental |      |        | Parda    | gain.leitura.compreensao |   7 |  1.714 |      1 |   0 |   4 | 1.704 | 0.644 | 1.576 | 2.50 |
| Experimental |      |        |          | gain.leitura.compreensao |  11 | -1.818 |     -1 |  -6 |   4 | 3.516 | 1.060 | 2.362 | 5.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.leitura.compreensao |  61 | -0.4723540 | -0.6387411 | YES      |  3.456930 | D’Agostino   | 0.1775567 | ns       | YES       |
| gain.leitura.compreensao |  57 | -0.2392155 | -0.6108397 | YES      |  1.238663 | D’Agostino   | 0.5383043 | ns       | YES       |
| gain.leitura.compreensao |  32 |  0.7066297 |  0.3349490 | NO       |  0.948382 | Shapiro-Wilk | 0.1296411 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method        | formula                                        |   n | df1 | df2 | statistic |         p | p.signif |
|:-------------------------|:--------------|:-----------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Sexo`     |  61 |   3 |  57 | 0.7416850 | 0.5316192 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Zona`     |  57 |   3 |  53 | 0.9613044 | 0.4178756 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Cor.Raca` |  32 |   5 |  26 | 1.7677469 | 0.1547314 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |     SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|----:|--------:|--------:|-------:|:--------|------:|:-------|
| grupo    |   1 |  59 |   0.427 | 497.638 |  0.051 | 0.823   | 0.001 |        |
| Sexo     |   1 |  59 |   0.217 | 497.848 |  0.026 | 0.873   | 0.000 |        |
| Zona     |   1 |  55 | 101.377 | 359.886 | 15.493 | \<0.001 | 0.220 | \*     |
| Cor.Raca |   3 |  28 |  27.833 |  88.167 |  2.946 | 0.05    | 0.240 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  57 | 22.753 | 474.682 | 2.732 | 0.104 | 0.046 |        |
| 6   | grupo:Zona     |   1 |  53 |  2.598 | 356.286 | 0.386 | 0.537 | 0.007 |        |
| 9   | grupo:Cor.Raca |   1 |  26 |  8.461 |  76.464 | 2.877 | 0.102 | 0.100 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n |      M |    SE |
|:-------------------------|:-------------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     |  40 | -0.300 | 0.422 |
| gain.leitura.compreensao | Experimental |  21 | -0.476 | 0.722 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao | Controle | Experimental |    0.176 |    -1.39 |     1.742 | 0.783 |     0.225 | 0.823 | 0.823 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n |      M |    SE |
|:-------------------------|:-------------|:-----|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | F    |  20 | -0.800 | 0.521 |
| gain.leitura.compreensao | Controle     | M    |  20 |  0.200 | 0.659 |
| gain.leitura.compreensao | Experimental | F    |  11 |  0.273 | 0.895 |
| gain.leitura.compreensao | Experimental | M    |  10 | -1.300 | 1.146 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | F    | Controle | Experimental |   -1.073 |   -3.242 |     1.096 | 1.083 |    -0.990 | 0.326 | 0.326 | ns           |
| gain.leitura.compreensao |              | M    | Controle | Experimental |    1.500 |   -0.738 |     3.738 | 1.118 |     1.342 | 0.185 | 0.185 | ns           |
| gain.leitura.compreensao | Controle     |      | F        | M            |   -1.000 |   -2.827 |     0.827 | 0.913 |    -1.096 | 0.278 | 0.278 | ns           |
| gain.leitura.compreensao | Experimental |      | F        | M            |    1.573 |   -0.952 |     4.098 | 1.261 |     1.247 | 0.217 | 0.217 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var                      | grupo        | Zona   |   n |      M |    SE |
|:-------------------------|:-------------|:-------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | Rural  |  28 |  0.429 | 0.365 |
| gain.leitura.compreensao | Controle     | Urbana |   9 | -3.000 | 1.014 |
| gain.leitura.compreensao | Experimental | Rural  |  14 |  0.429 | 0.837 |
| gain.leitura.compreensao | Experimental | Urbana |   6 | -2.000 | 1.342 |

| .y.                      | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | Rural  | Controle | Experimental |    0.000 |   -1.702 |     1.702 | 0.849 |     0.000 | 1.000 | 1.000 | ns           |
| gain.leitura.compreensao |              | Urbana | Controle | Experimental |   -1.000 |   -3.741 |     1.741 | 1.367 |    -0.732 | 0.468 | 0.468 | ns           |
| gain.leitura.compreensao | Controle     |        | Rural    | Urbana       |    3.429 |    1.436 |     5.421 | 0.993 |     3.451 | 0.001 | 0.001 | \*\*         |
| gain.leitura.compreensao | Experimental |        | Rural    | Urbana       |    2.429 |   -0.109 |     4.966 | 1.265 |     1.920 | 0.060 | 0.060 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var                      | grupo        | Cor.Raca |   n |     M |    SE |
|:-------------------------|:-------------|:---------|----:|------:|------:|
| gain.leitura.compreensao | Controle     | Branca   |   5 | 1.200 | 0.200 |
| gain.leitura.compreensao | Controle     | Parda    |  17 | 0.471 | 0.463 |
| gain.leitura.compreensao | Experimental | Parda    |   7 | 1.714 | 0.644 |

|     | .y.                      | grupo    | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:---------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.leitura.compreensao |          | Parda    | Controle | Experimental |   -1.244 |   -2.827 |     0.339 | 0.770 |    -1.615 | 0.118 | 0.118 | ns           |
| 3   | gain.leitura.compreensao | Controle |          | Branca   | Parda        |    0.729 |   -1.064 |     2.523 | 0.872 |     0.836 | 0.411 | 0.411 | ns           |
