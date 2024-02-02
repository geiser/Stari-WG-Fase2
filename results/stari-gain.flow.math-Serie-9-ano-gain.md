ANOVA in Gains for gain flow (prob. matemática) (gain flow (prob.
matemática))
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
  flow (prob. matemática) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain flow (prob. matemática) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median |    min |    max |    sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|-------:|-------:|------:|------:|------:|------:|
| Controle     | F    |        |          | gain.flow.math |   6 | -0.005 | -0.056 | -0.476 |  0.556 | 0.428 | 0.175 | 0.450 | 0.639 |
| Controle     | M    |        |          | gain.flow.math |  13 |  0.094 |  0.111 | -0.778 |  1.111 | 0.527 | 0.146 | 0.318 | 0.778 |
| Experimental | F    |        |          | gain.flow.math |   4 |  0.139 |  0.111 | -0.333 |  0.667 | 0.492 | 0.246 | 0.782 | 0.750 |
| Experimental | M    |        |          | gain.flow.math |   5 | -0.067 | -0.111 | -0.556 |  0.556 | 0.462 | 0.207 | 0.574 | 0.667 |
| Controle     |      | Rural  |          | gain.flow.math |   8 |  0.083 |  0.111 | -0.778 |  1.111 | 0.628 | 0.222 | 0.525 | 0.861 |
| Controle     |      |        |          | gain.flow.math |  11 |  0.048 |  0.111 | -0.476 |  0.556 | 0.390 | 0.118 | 0.262 | 0.722 |
| Experimental |      | Rural  |          | gain.flow.math |   5 | -0.022 | -0.111 | -0.556 |  0.556 | 0.506 | 0.226 | 0.628 | 0.889 |
| Experimental |      | Urbana |          | gain.flow.math |   1 | -0.222 | -0.222 | -0.222 | -0.222 |       |       |       | 0.000 |
| Experimental |      |        |          | gain.flow.math |   3 |  0.185 |  0.222 | -0.333 |  0.667 | 0.501 | 0.289 | 1.245 | 0.500 |
| Controle     |      |        | Branca   | gain.flow.math |   1 | -0.778 | -0.778 | -0.778 | -0.778 |       |       |       | 0.000 |
| Controle     |      |        | Parda    | gain.flow.math |   7 |  0.302 |  0.444 | -0.556 |  1.111 | 0.569 | 0.215 | 0.526 | 0.556 |
| Controle     |      |        |          | gain.flow.math |  11 | -0.013 |  0.000 | -0.476 |  0.444 | 0.343 | 0.103 | 0.230 | 0.611 |
| Experimental |      |        | Branca   | gain.flow.math |   2 |  0.056 |  0.056 | -0.444 |  0.556 | 0.707 | 0.500 | 6.353 | 0.500 |
| Experimental |      |        | Indígena | gain.flow.math |   2 |  0.167 |  0.167 | -0.111 |  0.444 | 0.393 | 0.278 | 3.530 | 0.278 |
| Experimental |      |        | Parda    | gain.flow.math |   3 | -0.370 | -0.333 | -0.556 | -0.222 | 0.170 | 0.098 | 0.422 | 0.167 |
| Experimental |      |        |          | gain.flow.math |   2 |  0.444 |  0.444 |  0.222 |  0.667 | 0.314 | 0.222 | 2.824 | 0.222 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.flow.math |  28 |  0.1201742 | -1.0286423 | YES      | 0.9496036 | Shapiro-Wilk | 0.1936351 | ns       | YES       |
| gain.flow.math |  14 |  0.1526835 | -1.1418016 | YES      | 0.9728755 | Shapiro-Wilk | 0.9125773 | ns       | YES       |
| gain.flow.math |  15 | -0.2602822 | -0.6299411 | YES      | 0.9698129 | Shapiro-Wilk | 0.8552739 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Sexo`     |  28 |   3 |  24 | 0.1473779 | 0.9303564 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Zona`     |  14 |   2 |  11 | 1.2239011 | 0.3311903 | ns       |
| gain.flow.math | Levene’s test | `gain.flow.math`~`grupo`\*`Cor.Raca` |  15 |   4 |  10 | 0.8470280 | 0.5266686 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|------:|------:|------:|------:|------:|:-------|
| grupo    |   1 |  26 | 0.009 | 5.961 | 0.038 | 0.846 | 0.001 |        |
| Sexo     |   1 |  26 | 0.000 | 5.970 | 0.000 | 0.987 | 0.000 |        |
| Zona     |   1 |  12 | 0.065 | 3.816 | 0.205 | 0.659 | 0.017 |        |
| Cor.Raca |   2 |  12 | 0.274 | 4.067 | 0.404 | 0.676 | 0.063 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |   SSn |   SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|------:|------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  24 | 0.134 | 5.827 | 0.552 | 0.465 | 0.022 |        |
| 6   | grupo:Zona     |   0 |  11 |       | 3.781 |       |       |       |        |
| 9   | grupo:Cor.Raca |   1 |  10 | 1.147 | 2.655 | 4.318 | 0.064 | 0.302 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |     M |    SE |
|:---------------|:-------------|----:|------:|------:|
| gain.flow.math | Controle     |  19 | 0.063 | 0.112 |
| gain.flow.math | Experimental |   9 | 0.025 | 0.152 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.flow.math | Controle | Experimental |    0.038 |    -0.36 |     0.436 | 0.194 |     0.196 | 0.846 | 0.846 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.flow.math-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.flow.math | Controle     | F    |   6 | -0.005 | 0.175 |
| gain.flow.math | Controle     | M    |  13 |  0.094 | 0.146 |
| gain.flow.math | Experimental | M    |   5 | -0.067 | 0.207 |

|     | .y.            | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.flow.math |          | M    | Controle | Experimental |    0.161 |   -0.379 |     0.700 | 0.259 |     0.619 | 0.542 | 0.542 | ns           |
| 3   | gain.flow.math | Controle |      | F        | M            |   -0.099 |   -0.605 |     0.407 | 0.243 |    -0.408 | 0.687 | 0.687 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
