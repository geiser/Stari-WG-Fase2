ANOVA in Gains for gain flow (prod. textual) (gain flow (prod. textual))
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
  flow (prod. textual) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (prod. textual) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |   max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.text |  15 |  0.281 |  0.222 | -1.111 | 1.556 | 0.755 | 0.195 | 0.418 | 0.889 |
| Controle     | M    |        |          | gain.flow.text |  14 |  0.119 |  0.111 | -1.111 | 1.222 | 0.692 | 0.185 | 0.400 | 1.056 |
| Experimental | F    |        |          | gain.flow.text |   4 | -0.351 | -0.444 | -0.667 | 0.153 | 0.363 | 0.182 | 0.578 | 0.372 |
| Experimental | M    |        |          | gain.flow.text |   7 |  0.111 |  0.000 | -0.667 | 1.000 | 0.588 | 0.222 | 0.544 | 0.556 |
| Controle     |      | Rural  |          | gain.flow.text |  17 |  0.366 |  0.444 | -1.111 | 1.556 | 0.743 | 0.180 | 0.382 | 1.000 |
| Controle     |      | Urbana |          | gain.flow.text |   4 |  0.500 |  0.444 | -0.111 | 1.222 | 0.577 | 0.289 | 0.919 | 0.667 |
| Controle     |      |        |          | gain.flow.text |   8 | -0.292 | -0.222 | -1.111 | 0.333 | 0.507 | 0.179 | 0.424 | 0.611 |
| Experimental |      | Rural  |          | gain.flow.text |   8 | -0.134 | -0.167 | -0.667 | 1.000 | 0.559 | 0.198 | 0.468 | 0.622 |
| Experimental |      | Urbana |          | gain.flow.text |   1 |  0.778 |  0.778 |  0.778 | 0.778 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.text |   2 | -0.167 | -0.167 | -0.333 | 0.000 | 0.236 | 0.167 | 2.118 | 0.167 |
| Controle     |      |        | Branca   | gain.flow.text |   3 | -0.185 |  0.222 | -1.111 | 0.333 | 0.804 | 0.464 | 1.997 | 0.722 |
| Controle     |      |        | Parda    | gain.flow.text |  17 |  0.209 | -0.111 | -1.111 | 1.556 | 0.824 | 0.200 | 0.424 | 1.111 |
| Controle     |      |        | Preta    | gain.flow.text |   1 |  0.778 |  0.778 |  0.778 | 0.778 |       |       |       | 0.000 |
| Controle     |      |        |          | gain.flow.text |   8 |  0.264 |  0.333 | -0.444 | 0.778 | 0.452 | 0.160 | 0.378 | 0.722 |
| Experimental |      |        | Branca   | gain.flow.text |   3 |  0.037 |  0.000 | -0.667 | 0.778 | 0.723 | 0.417 | 1.796 | 0.722 |
| Experimental |      |        | Indígena | gain.flow.text |   2 | -0.201 | -0.201 | -0.556 | 0.153 | 0.501 | 0.354 | 4.500 | 0.354 |
| Experimental |      |        | Parda    | gain.flow.text |   2 | -0.333 | -0.333 | -0.667 | 0.000 | 0.471 | 0.333 | 4.235 | 0.333 |
| Experimental |      |        |          | gain.flow.text |   4 |  0.083 | -0.167 | -0.333 | 1.000 | 0.631 | 0.315 | 1.004 | 0.583 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.text |  40 |  0.0305569 | -0.7094897 | YES      | 0.9797250 | Shapiro-Wilk | 0.6793382 | ns       | YES       |
| gain.flow.text |  30 | -0.0204303 | -0.5809227 | YES      | 0.9796620 | Shapiro-Wilk | 0.8164949 | ns       | YES       |
| gain.flow.text |  28 |  0.1412622 | -0.9978690 | YES      | 0.9747779 | Shapiro-Wilk | 0.7124488 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Sexo`     |  40 |   3 |  36 | 0.9860034 | 0.4102540 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Zona`     |  30 |   3 |  26 | 1.1004898 | 0.3666881 | ns       |
| gain.flow.text | Levene’s test | `gain.flow.text`~`grupo`\*`Cor.Raca` |  28 |   5 |  22 | 0.5238534 | 0.7556341 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| grupo    |   1 |  38 | 0.539 | 17.409 | 1.176 | 0.285 | 0.030 |        |
| Sexo     |   1 |  38 | 0.010 | 17.938 | 0.022 | 0.884 | 0.001 |        |
| Zona     |   1 |  28 | 0.509 | 13.443 | 1.060 | 0.312 | 0.036 |        |
| Cor.Raca |   3 |  24 | 0.874 | 14.273 | 0.490 | 0.692 | 0.058 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |    SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|-------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  36 | 0.734 | 16.675 | 1.584 | 0.216 | 0.042 |        |
| 6   | grupo:Zona     |   1 |  26 | 0.422 | 12.023 | 0.912 | 0.348 | 0.034 |        |
| 9   | grupo:Cor.Raca |   1 |  22 | 0.477 | 13.672 | 0.768 | 0.390 | 0.034 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.flow.text | Controle     |  29 |  0.203 | 0.133 |
| gain.flow.text | Experimental |  11 | -0.057 | 0.165 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |   se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|-----:|----------:|------:|------:|:-------------|
| gain.flow.text | Controle | Experimental |     0.26 |   -0.225 |     0.745 | 0.24 |     1.084 | 0.285 | 0.285 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.text-Serie-7-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |     M |    SE |
|:---------------|:-------------|:-----|----:|------:|------:|
| gain.flow.text | Controle     | F    |  15 | 0.281 | 0.195 |
| gain.flow.text | Controle     | M    |  14 | 0.119 | 0.185 |
| gain.flow.text | Experimental | M    |   7 | 0.111 | 0.222 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.text |          | M    | Controle | Experimental |    0.008 |   -0.654 |     0.669 | 0.325 |     0.024 | 0.981 | 0.981 | ns           |
| 3   | gain.flow.text | Controle |      | F        | M            |    0.162 |   -0.369 |     0.693 | 0.261 |     0.622 | 0.538 | 0.538 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
