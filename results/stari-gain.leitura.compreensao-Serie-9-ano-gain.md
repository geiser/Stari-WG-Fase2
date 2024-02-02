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

| grupo        | Sexo | Zona   | Cor.Raca | variable                 |   n |   mean | median | min | max |    sd |    se |     ci |  iqr |
|:-------------|:-----|:-------|:---------|:-------------------------|----:|-------:|-------:|----:|----:|------:|------:|-------:|-----:|
| Controle     | F    |        |          | gain.leitura.compreensao |   9 |  1.000 |    1.0 |  -1 |   4 | 1.323 | 0.441 |  1.017 | 0.00 |
| Controle     | M    |        |          | gain.leitura.compreensao |  22 | -0.227 |   -0.5 |  -7 |   6 | 2.894 | 0.617 |  1.283 | 3.00 |
| Experimental | F    |        |          | gain.leitura.compreensao |   5 |  1.400 |    1.0 |  -4 |   5 | 3.507 | 1.568 |  4.355 | 3.00 |
| Experimental | M    |        |          | gain.leitura.compreensao |   8 |  0.500 |    0.0 |  -5 |   6 | 3.964 | 1.402 |  3.314 | 5.25 |
| Controle     |      | Rural  |          | gain.leitura.compreensao |  14 |  1.214 |    1.0 |  -2 |   6 | 2.225 | 0.595 |  1.285 | 2.25 |
| Controle     |      | Urbana |          | gain.leitura.compreensao |   1 |  1.000 |    1.0 |   1 |   1 |       |       |        | 0.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  16 | -0.875 |   -1.0 |  -7 |   4 | 2.604 | 0.651 |  1.388 | 3.00 |
| Experimental |      | Rural  |          | gain.leitura.compreensao |   7 |  2.000 |    3.0 |  -5 |   6 | 3.916 | 1.480 |  3.621 | 5.00 |
| Experimental |      | Urbana |          | gain.leitura.compreensao |   1 | -4.000 |   -4.0 |  -4 |  -4 |       |       |        | 0.00 |
| Experimental |      |        |          | gain.leitura.compreensao |   5 |  0.200 |    1.0 |  -4 |   4 | 2.950 | 1.319 |  3.662 | 2.00 |
| Controle     |      |        | Branca   | gain.leitura.compreensao |   3 |  1.000 |    1.0 |  -2 |   4 | 3.000 | 1.732 |  7.452 | 3.00 |
| Controle     |      |        | Indígena | gain.leitura.compreensao |   1 |  1.000 |    1.0 |   1 |   1 |       |       |        | 0.00 |
| Controle     |      |        | Parda    | gain.leitura.compreensao |  13 |  0.846 |    1.0 |  -4 |   6 | 2.444 | 0.678 |  1.477 | 1.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  14 | -0.786 |   -1.0 |  -7 |   4 | 2.607 | 0.697 |  1.505 | 2.75 |
| Experimental |      |        | Branca   | gain.leitura.compreensao |   2 |  0.000 |    0.0 |  -5 |   5 | 7.071 | 5.000 | 63.531 | 5.00 |
| Experimental |      |        | Indígena | gain.leitura.compreensao |   3 |  2.667 |    3.0 |   0 |   5 | 2.517 | 1.453 |  6.252 | 2.50 |
| Experimental |      |        | Parda    | gain.leitura.compreensao |   4 |  1.500 |    2.0 |  -4 |   6 | 4.435 | 2.217 |  7.057 | 5.50 |
| Experimental |      |        |          | gain.leitura.compreensao |   4 | -0.750 |    0.0 |  -4 |   1 | 2.363 | 1.181 |  3.760 | 2.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.leitura.compreensao |  44 | -0.1082814 | -0.0821381 | YES      | 0.9744483 | Shapiro-Wilk | 0.4297012 | ns       | YES       |
| gain.leitura.compreensao |  23 | -0.4050414 |  0.1820744 | YES      | 0.9564704 | Shapiro-Wilk | 0.3959254 | ns       | YES       |
| gain.leitura.compreensao |  26 | -0.0877528 | -0.7187843 | YES      | 0.9566931 | Shapiro-Wilk | 0.3306546 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method        | formula                                        |   n | df1 | df2 | statistic |         p | p.signif |
|:-------------------------|:--------------|:-----------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Sexo`     |  44 |   3 |  40 |  2.458312 | 0.0767983 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Zona`     |  23 |   3 |  19 |  1.622459 | 0.2174463 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Cor.Raca` |  26 |   5 |  20 |  2.146759 | 0.1014764 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 |  42 |  4.710 | 361.176 | 0.548 | 0.463 | 0.013 |        |
| Sexo     |   1 |  42 | 13.205 | 352.681 | 1.573 | 0.217 | 0.036 |        |
| Zona     |   1 |  21 | 16.175 | 171.738 | 1.978 | 0.174 | 0.086 |        |
| Cor.Raca |   2 |  23 |  6.704 | 215.950 | 0.357 | 0.704 | 0.030 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  40 |  0.222 | 349.064 | 0.025 | 0.874 | 0.001 |        |
| 6   | grupo:Zona     |   1 |  19 | 15.118 | 156.357 | 1.837 | 0.191 | 0.088 |        |
| 9   | grupo:Cor.Raca |   2 |  20 |  3.752 | 211.359 | 0.178 | 0.839 | 0.017 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n |     M |    SE |
|:-------------------------|:-------------|----:|------:|------:|
| gain.leitura.compreensao | Controle     |  31 | 0.129 | 0.463 |
| gain.leitura.compreensao | Experimental |  13 | 0.846 | 1.018 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao | Controle | Experimental |   -0.717 |   -2.673 |     1.238 | 0.969 |     -0.74 | 0.463 | 0.463 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n |      M |    SE |
|:-------------------------|:-------------|:-----|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | F    |   9 |  1.000 | 0.441 |
| gain.leitura.compreensao | Controle     | M    |  22 | -0.227 | 0.617 |
| gain.leitura.compreensao | Experimental | F    |   5 |  1.400 | 1.568 |
| gain.leitura.compreensao | Experimental | M    |   8 |  0.500 | 1.402 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | F    | Controle | Experimental |   -0.400 |   -3.730 |     2.930 | 1.648 |    -0.243 | 0.809 | 0.809 | ns           |
| gain.leitura.compreensao |              | M    | Controle | Experimental |   -0.727 |   -3.192 |     1.738 | 1.220 |    -0.596 | 0.554 | 0.554 | ns           |
| gain.leitura.compreensao | Controle     |      | F        | M            |    1.227 |   -1.135 |     3.590 | 1.169 |     1.050 | 0.300 | 0.300 | ns           |
| gain.leitura.compreensao | Experimental |      | F        | M            |    0.900 |   -2.504 |     4.304 | 1.684 |     0.534 | 0.596 | 0.596 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
