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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          | gain.score.tde |  16 | -1.125 |   -1.0 | -15 |  12 |  7.915 | 1.979 |  4.218 |  7.00 |
| Controle     | M    |        |          | gain.score.tde |  14 | -4.714 |   -5.0 | -22 |  10 | 10.528 | 2.814 |  6.079 | 17.50 |
| Experimental | F    |        |          | gain.score.tde |   7 | -2.429 |   -3.0 | -11 |   9 |  6.106 | 2.308 |  5.647 |  4.00 |
| Experimental | M    |        |          | gain.score.tde |   7 | -3.857 |   -6.0 | -16 |  14 | 10.270 | 3.882 |  9.498 | 10.50 |
| Controle     |      | Rural  |          | gain.score.tde |  24 | -3.583 |   -2.0 | -22 |  10 |  9.103 | 1.858 |  3.844 | 13.50 |
| Controle     |      | Urbana |          | gain.score.tde |   3 | -1.667 |   -3.0 |  -4 |   2 |  3.215 | 1.856 |  7.985 |  3.00 |
| Controle     |      |        |          | gain.score.tde |   3 |  2.333 |   10.0 | -15 |  12 | 15.044 | 8.686 | 37.372 | 13.50 |
| Experimental |      | Rural  |          | gain.score.tde |  13 | -3.231 |   -5.0 | -16 |  14 |  8.477 | 2.351 |  5.123 |  8.00 |
| Experimental |      | Urbana |          | gain.score.tde |   1 | -2.000 |   -2.0 |  -2 |  -2 |        |       |        |  0.00 |
| Controle     |      |        | Branca   | gain.score.tde |   4 |  3.250 |    3.5 |  -4 |  10 |  6.397 | 3.198 | 10.178 |  8.75 |
| Controle     |      |        | Parda    | gain.score.tde |  15 | -7.867 |   -8.0 | -22 |   9 |  9.086 | 2.346 |  5.032 | 13.50 |
| Controle     |      |        |          | gain.score.tde |  11 |  1.909 |    2.0 |  -9 |  12 |  6.503 | 1.961 |  4.369 |  9.00 |
| Experimental |      |        | Branca   | gain.score.tde |   1 | -2.000 |   -2.0 |  -2 |  -2 |        |       |        |  0.00 |
| Experimental |      |        | Indígena | gain.score.tde |   1 | -3.000 |   -3.0 |  -3 |  -3 |        |       |        |  0.00 |
| Experimental |      |        | Parda    | gain.score.tde |   7 | -2.000 |   -4.0 | -16 |  14 |  9.609 | 3.632 |  8.887 |  9.00 |
| Experimental |      |        |          | gain.score.tde |   5 | -5.000 |   -6.0 | -12 |   9 |  8.396 | 3.755 | 10.426 |  6.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:---------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.score.tde |  44 |  0.0540008 | -0.8014803 | YES      | 0.9712203 | Shapiro-Wilk | 0.3339874 | ns       | YES       |
| gain.score.tde |  41 | -0.0746456 | -0.6007726 | YES      | 0.9874479 | Shapiro-Wilk | 0.9246421 | ns       | YES       |
| gain.score.tde |  28 |  0.2468460 | -0.7207420 | YES      | 0.9773780 | Shapiro-Wilk | 0.7836410 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     |  44 |   3 |  40 |  1.367362 | 0.2665820 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     |  41 |   3 |  37 |  1.344553 | 0.2747978 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` |  28 |   4 |  23 |  1.037579 | 0.4093020 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  42 |   1.122 | 3340.514 | 0.014 | 0.906 | 0.000 |        |
| Sexo     |   1 |  42 |  92.754 | 3248.882 | 1.199 | 0.280 | 0.028 |        |
| Zona     |   1 |  39 |  10.549 | 2789.939 | 0.147 | 0.703 | 0.004 |        |
| Cor.Raca |   2 |  25 | 276.057 | 2018.800 | 1.709 | 0.201 | 0.120 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|---------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  40 | 11.125 | 3237.179 | 0.137 | 0.713 | 0.003 |        |
| 6   | grupo:Zona     |   1 |  37 |  0.324 | 2788.808 | 0.004 | 0.948 | 0.000 |        |
| 9   | grupo:Cor.Raca |   1 |  23 | 84.672 | 1832.483 | 1.063 | 0.313 | 0.044 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     |  30 | -2.800 | 1.687 |
| gain.score.tde | Experimental |  14 | -3.143 | 2.178 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde | Controle | Experimental |    0.343 |   -5.482 |     6.168 | 2.887 |     0.119 | 0.906 | 0.906 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |  16 | -1.125 | 1.979 |
| gain.score.tde | Controle     | M    |  14 | -4.714 | 2.814 |
| gain.score.tde | Experimental | F    |   7 | -2.429 | 2.308 |
| gain.score.tde | Experimental | M    |   7 | -3.857 | 3.882 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |    1.304 |   -6.936 |     9.543 | 4.077 |     0.320 | 0.751 | 0.751 | ns           |
| gain.score.tde |              | M    | Controle | Experimental |   -0.857 |   -9.274 |     7.559 | 4.164 |    -0.206 | 0.838 | 0.838 | ns           |
| gain.score.tde | Controle     |      | F        | M            |    3.589 |   -3.065 |    10.243 | 3.292 |     1.090 | 0.282 | 0.282 | ns           |
| gain.score.tde | Experimental |      | F        | M            |    1.429 |   -8.290 |    11.147 | 4.809 |     0.297 | 0.768 | 0.768 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.score.tde-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**
