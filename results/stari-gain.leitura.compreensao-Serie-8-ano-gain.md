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
| Controle     | F    |        |          | gain.leitura.compreensao |  11 | -2.455 |   -3.0 |  -7 |   5 | 3.357 | 1.012 | 2.256 | 3.50 |
| Controle     | M    |        |          | gain.leitura.compreensao |  18 | -1.333 |   -1.0 |  -7 |   2 | 2.275 | 0.536 | 1.131 | 2.75 |
| Experimental | F    |        |          | gain.leitura.compreensao |   7 | -1.857 |   -3.0 |  -6 |   3 | 3.848 | 1.455 | 3.559 | 6.50 |
| Experimental | M    |        |          | gain.leitura.compreensao |  12 |  0.417 |    1.0 |  -5 |   4 | 2.678 | 0.773 | 1.702 | 1.75 |
| Controle     |      | Rural  |          | gain.leitura.compreensao |  10 | -2.100 |   -2.5 |  -7 |   2 | 2.558 | 0.809 | 1.830 | 2.00 |
| Controle     |      | Urbana |          | gain.leitura.compreensao |   9 | -3.444 |   -4.0 |  -7 |   0 | 2.404 | 0.801 | 1.848 | 3.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  10 |  0.100 |    0.0 |  -3 |   5 | 2.183 | 0.690 | 1.562 | 2.00 |
| Experimental |      | Rural  |          | gain.leitura.compreensao |   8 | -0.125 |    1.0 |  -4 |   3 | 2.357 | 0.833 | 1.970 | 2.50 |
| Experimental |      | Urbana |          | gain.leitura.compreensao |   5 | -2.600 |   -5.0 |  -6 |   3 | 3.912 | 1.749 | 4.857 | 5.00 |
| Experimental |      |        |          | gain.leitura.compreensao |   6 |  1.000 |    2.0 |  -5 |   4 | 3.286 | 1.342 | 3.449 | 2.75 |
| Controle     |      |        | Branca   | gain.leitura.compreensao |   1 |  0.000 |    0.0 |   0 |   0 |       |       |       | 0.00 |
| Controle     |      |        | Parda    | gain.leitura.compreensao |  11 | -1.455 |   -2.0 |  -7 |   5 | 3.532 | 1.065 | 2.373 | 5.00 |
| Controle     |      |        |          | gain.leitura.compreensao |  17 | -2.059 |   -2.0 |  -7 |   1 | 2.221 | 0.539 | 1.142 | 3.00 |
| Experimental |      |        | Branca   | gain.leitura.compreensao |   1 |  3.000 |    3.0 |   3 |   3 |       |       |       | 0.00 |
| Experimental |      |        | Indígena | gain.leitura.compreensao |   1 |  4.000 |    4.0 |   4 |   4 |       |       |       | 0.00 |
| Experimental |      |        | Parda    | gain.leitura.compreensao |   5 | -0.400 |    1.0 |  -4 |   3 | 2.966 | 1.327 | 3.683 | 4.00 |
| Experimental |      |        |          | gain.leitura.compreensao |  12 | -1.083 |    0.0 |  -6 |   3 | 3.288 | 0.949 | 2.089 | 6.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.leitura.compreensao |  48 | 0.1013515 | -0.1657460 | YES      | 0.9863410 | Shapiro-Wilk | 0.8437142 | ns       | YES       |
| gain.leitura.compreensao |  32 | 0.1521827 | -0.8189282 | YES      | 0.9789834 | Shapiro-Wilk | 0.7695316 | ns       | YES       |
| gain.leitura.compreensao |  19 | 0.1126337 | -0.6176084 | YES      | 0.9782806 | Shapiro-Wilk | 0.9205932 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method        | formula                                        |   n | df1 | df2 | statistic |         p | p.signif |
|:-------------------------|:--------------|:-----------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Sexo`     |  48 |   3 |  44 | 1.1376891 | 0.3443253 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Zona`     |  32 |   3 |  28 | 0.3504836 | 0.7890845 | ns       |
| gain.leitura.compreensao | Levene’s test | `gain.leitura.compreensao`~`grupo`\*`Cor.Raca` |  19 |   4 |  14 | 0.9167524 | 0.4813284 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| grupo    |   1 |  46 | 20.537 | 399.942 | 2.362 | 0.131 | 0.049 |        |
| Sexo     |   1 |  46 | 28.401 | 392.078 | 3.332 | 0.074 | 0.068 |        |
| Zona     |   1 |  30 | 29.050 | 224.825 | 3.876 | 0.058 | 0.114 |        |
| Cor.Raca |   2 |  16 | 34.382 | 168.250 | 1.635 | 0.226 | 0.170 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  44 | 3.565 | 368.501 | 0.426 | 0.518 | 0.010 |        |
| 6   | grupo:Zona     |   1 |  28 | 2.384 | 205.197 | 0.325 | 0.573 | 0.011 |        |
| 9   | grupo:Cor.Raca |   1 |  14 | 1.652 | 159.927 | 0.145 | 0.709 | 0.010 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n |      M |    SE |
|:-------------------------|:-------------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     |  29 | -1.759 | 0.508 |
| gain.leitura.compreensao | Experimental |  19 | -0.421 | 0.747 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |   se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|-----:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao | Controle | Experimental |   -1.338 |   -3.089 |     0.414 | 0.87 |    -1.537 | 0.131 | 0.131 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n |      M |    SE |
|:-------------------------|:-------------|:-----|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | F    |  11 | -2.455 | 1.012 |
| gain.leitura.compreensao | Controle     | M    |  18 | -1.333 | 0.536 |
| gain.leitura.compreensao | Experimental | F    |   7 | -1.857 | 1.455 |
| gain.leitura.compreensao | Experimental | M    |  12 |  0.417 | 0.773 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | F    | Controle | Experimental |   -0.597 |   -3.417 |     2.223 | 1.399 |    -0.427 | 0.671 | 0.671 | ns           |
| gain.leitura.compreensao |              | M    | Controle | Experimental |   -1.750 |   -3.924 |     0.424 | 1.079 |    -1.623 | 0.112 | 0.112 | ns           |
| gain.leitura.compreensao | Controle     |      | F        | M            |   -1.121 |   -3.353 |     1.111 | 1.108 |    -1.012 | 0.317 | 0.317 | ns           |
| gain.leitura.compreensao | Experimental |      | F        | M            |   -2.274 |   -5.048 |     0.500 | 1.376 |    -1.652 | 0.106 | 0.106 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var                      | grupo        | Zona   |   n |      M |    SE |
|:-------------------------|:-------------|:-------|----:|-------:|------:|
| gain.leitura.compreensao | Controle     | Rural  |  10 | -2.100 | 0.809 |
| gain.leitura.compreensao | Controle     | Urbana |   9 | -3.444 | 0.801 |
| gain.leitura.compreensao | Experimental | Rural  |   8 | -0.125 | 0.833 |
| gain.leitura.compreensao | Experimental | Urbana |   5 | -2.600 | 1.749 |

| .y.                      | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.leitura.compreensao |              | Rural  | Controle | Experimental |   -1.975 |   -4.605 |     0.655 | 1.284 |    -1.538 | 0.135 | 0.135 | ns           |
| gain.leitura.compreensao |              | Urbana | Controle | Experimental |   -0.844 |   -3.937 |     2.249 | 1.510 |    -0.559 | 0.580 | 0.580 | ns           |
| gain.leitura.compreensao | Controle     |        | Rural    | Urbana       |    1.344 |   -1.203 |     3.892 | 1.244 |     1.081 | 0.289 | 0.289 | ns           |
| gain.leitura.compreensao | Experimental |        | Rural    | Urbana       |    2.475 |   -0.686 |     5.636 | 1.543 |     1.604 | 0.120 | 0.120 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.leitura.compreensao-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**
