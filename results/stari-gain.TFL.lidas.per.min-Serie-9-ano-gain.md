ANOVA in Gains for gain Palavras Lidas (1 Min) (gain Palavras Lidas (1
Min))
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
  Palavras Lidas (1 Min) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain Palavras Lidas (1 Min) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable               |   n |   mean | median | min | max |     sd |     se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:-----------------------|----:|-------:|-------:|----:|----:|-------:|-------:|-------:|------:|
| Controle     | F    |        |          | gain.TFL.lidas.per.min |   9 | 34.333 |   45.0 | -15 |  68 | 26.963 |  8.988 | 20.726 | 39.00 |
| Controle     | M    |        |          | gain.TFL.lidas.per.min |  17 | 22.647 |   10.0 | -13 |  95 | 32.322 |  7.839 | 16.619 | 59.00 |
| Experimental | F    |        |          | gain.TFL.lidas.per.min |   4 | 21.500 |   21.0 |   7 |  37 | 16.217 |  8.109 | 25.805 | 27.00 |
| Experimental | M    |        |          | gain.TFL.lidas.per.min |   6 | 18.167 |   14.0 |   0 |  45 | 17.532 |  7.157 | 18.399 | 23.00 |
| Controle     |      | Rural  |          | gain.TFL.lidas.per.min |  12 | 14.083 |    6.0 | -15 |  95 | 31.382 |  9.059 | 19.939 | 24.00 |
| Controle     |      | Urbana |          | gain.TFL.lidas.per.min |   1 | 55.000 |   55.0 |  55 |  55 |        |        |        |  0.00 |
| Controle     |      |        |          | gain.TFL.lidas.per.min |  13 | 36.154 |   47.0 |  -8 |  68 | 26.817 |  7.438 | 16.205 | 45.00 |
| Experimental |      | Rural  |          | gain.TFL.lidas.per.min |   6 | 12.000 |   10.5 |   0 |  33 | 11.764 |  4.803 | 12.346 | 10.25 |
| Experimental |      |        |          | gain.TFL.lidas.per.min |   4 | 30.750 |   35.5 |   7 |  45 | 16.500 |  8.250 | 26.255 | 11.75 |
| Controle     |      |        | Branca   | gain.TFL.lidas.per.min |   3 |  8.667 |    8.0 |   0 |  18 |  9.018 |  5.207 | 22.403 |  9.00 |
| Controle     |      |        | Indígena | gain.TFL.lidas.per.min |   1 | 16.000 |   16.0 |  16 |  16 |        |        |        |  0.00 |
| Controle     |      |        | Parda    | gain.TFL.lidas.per.min |  10 |  3.000 |   -5.0 | -15 |  52 | 20.122 |  6.363 | 14.394 | 19.50 |
| Controle     |      |        |          | gain.TFL.lidas.per.min |  12 | 51.833 |   55.0 |  10 |  95 | 21.829 |  6.302 | 13.870 | 11.75 |
| Experimental |      |        | Branca   | gain.TFL.lidas.per.min |   1 | 15.000 |   15.0 |  15 |  15 |        |        |        |  0.00 |
| Experimental |      |        | Indígena | gain.TFL.lidas.per.min |   3 |  8.000 |    8.0 |   3 |  13 |  5.000 |  2.887 | 12.421 |  5.00 |
| Experimental |      |        | Parda    | gain.TFL.lidas.per.min |   3 | 13.333 |    7.0 |   0 |  33 | 17.388 | 10.039 | 43.194 | 16.50 |
| Experimental |      |        |          | gain.TFL.lidas.per.min |   3 | 38.667 |   37.0 |  34 |  45 |  5.686 |  3.283 | 14.125 |  5.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                    |   n |  skewness |  kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-----------------------|----:|----------:|----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.TFL.lidas.per.min |  36 | 0.4790175 | -0.386859 | YES      | 0.9483118 | Shapiro-Wilk | 0.0925289 | ns       | YES       |
| gain.TFL.lidas.per.min |  19 | 1.7004909 |  3.018764 | NO       | 0.8112992 | Shapiro-Wilk | 0.0016756 | \*\*     | NO        |
| gain.TFL.lidas.per.min |  21 | 1.6005497 |  2.947494 | NO       | 0.8476812 | Shapiro-Wilk | 0.0038755 | \*\*     | NO        |

## Assumption: Homogeneity of data distribution

| var                    | method        | formula                                      |   n | df1 | df2 | statistic |         p | p.signif |
|:-----------------------|:--------------|:---------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.TFL.lidas.per.min | Levene’s test | `gain.TFL.lidas.per.min`~`grupo`\*`Sexo`     |  36 |   3 |  32 | 0.8307424 | 0.4868352 | ns       |
| gain.TFL.lidas.per.min | Levene’s test | `gain.TFL.lidas.per.min`~`grupo`\*`Zona`     |  19 |   2 |  16 | 0.9716306 | 0.3997135 | ns       |
| gain.TFL.lidas.per.min | Levene’s test | `gain.TFL.lidas.per.min`~`grupo`\*`Cor.Raca` |  21 |   5 |  15 | 0.4528159 | 0.8048570 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| grupo    |   1 |  34 |  373.600 | 25688.038 | 0.494 | 0.487 | 0.014 |        |
| Sexo     |   1 |  34 |  658.823 | 25402.816 | 0.882 | 0.354 | 0.025 |        |
| Zona     |   1 |  17 | 1640.354 | 11542.278 | 2.416 | 0.139 | 0.124 |        |
| Cor.Raca |   2 |  18 |  111.411 |  4785.827 | 0.210 | 0.813 | 0.023 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  32 | 118.942 | 24857.716 | 0.153 | 0.698 | 0.005 |        |
| 6   | grupo:Zona     |   0 |  16 |         | 11524.917 |       |       |       |        |
| 9   | grupo:Cor.Raca |   2 |  15 | 190.400 |  4461.333 | 0.320 | 0.731 | 0.041 |        |

## Pairwise comparisons for one factor: **grupo**

| var                    | grupo        |   n |      M |    SE |
|:-----------------------|:-------------|----:|-------:|------:|
| gain.TFL.lidas.per.min | Controle     |  26 | 26.692 | 5.992 |
| gain.TFL.lidas.per.min | Experimental |  10 | 19.500 | 5.113 |

| .y.                    | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:-----------------------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| gain.TFL.lidas.per.min | Controle | Experimental |    7.192 |  -13.593 |    27.978 | 10.228 |     0.703 | 0.487 | 0.487 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.TFL.lidas.per.min-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                    | grupo        | Sexo |   n |      M |    SE |
|:-----------------------|:-------------|:-----|----:|-------:|------:|
| gain.TFL.lidas.per.min | Controle     | F    |   9 | 34.333 | 8.988 |
| gain.TFL.lidas.per.min | Controle     | M    |  17 | 22.647 | 7.839 |
| gain.TFL.lidas.per.min | Experimental | M    |   6 | 18.167 | 7.157 |

|     | .y.                    | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:-----------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 2   | gain.TFL.lidas.per.min |          | M    | Controle | Experimental |    4.480 |  -23.499 |    32.459 | 13.680 |     0.328 | 0.746 | 0.746 | ns           |
| 3   | gain.TFL.lidas.per.min | Controle |      | F        | M            |   11.686 |  -12.603 |    35.975 | 11.876 |     0.984 | 0.333 | 0.333 | ns           |

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
