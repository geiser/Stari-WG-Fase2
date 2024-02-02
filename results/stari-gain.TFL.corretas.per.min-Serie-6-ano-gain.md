ANOVA in Gains for gain Palavras Corretas (1 Min) (gain Palavras
Corretas (1 Min))
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
  Palavras Corretas (1 Min) (medido usando a diferença entre post-test e
  pre-testes).
- ANOVA test to determine whether there were significant differences in
  gain Palavras Corretas (1 Min) (measured using the difference between
  post-test and pre-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | variable                  |   n |   mean | median | min | max |     sd |     se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:--------------------------|----:|-------:|-------:|----:|----:|-------:|-------:|-------:|------:|
| Controle     | F    |        |          | gain.TFL.corretas.per.min |  16 | 20.562 |   16.5 | -27 |  65 | 25.521 |  6.380 | 13.599 | 36.75 |
| Controle     | M    |        |          | gain.TFL.corretas.per.min |  15 |  7.000 |   12.0 | -25 |  21 | 12.638 |  3.263 |  6.999 | 16.00 |
| Experimental | F    |        |          | gain.TFL.corretas.per.min |  11 | 33.364 |   25.0 | -17 |  90 | 36.269 | 10.936 | 24.366 | 60.50 |
| Experimental | M    |        |          | gain.TFL.corretas.per.min |   8 | 18.875 |   12.5 |  -9 |  72 | 25.632 |  9.062 | 21.429 | 16.25 |
| Controle     |      | Rural  |          | gain.TFL.corretas.per.min |  25 | 10.320 |    7.0 | -27 |  65 | 20.196 |  4.039 |  8.337 | 19.00 |
| Controle     |      | Urbana |          | gain.TFL.corretas.per.min |   3 | 46.333 |   47.0 |  40 |  52 |  6.028 |  3.480 | 14.974 |  6.00 |
| Controle     |      |        |          | gain.TFL.corretas.per.min |   3 | 12.333 |   12.0 |   6 |  19 |  6.506 |  3.756 | 16.163 |  6.50 |
| Experimental |      | Rural  |          | gain.TFL.corretas.per.min |  14 | 25.286 |   16.5 | -17 |  90 | 32.735 |  8.749 | 18.901 | 28.50 |
| Experimental |      | Urbana |          | gain.TFL.corretas.per.min |   4 | 39.750 |   39.5 |   0 |  80 | 34.741 | 17.370 | 55.280 | 41.75 |
| Experimental |      |        |          | gain.TFL.corretas.per.min |   1 |  5.000 |    5.0 |   5 |   5 |        |        |        |  0.00 |
| Controle     |      |        | Branca   | gain.TFL.corretas.per.min |   5 |  6.400 |    2.0 | -25 |  34 | 22.479 | 10.053 | 27.911 | 21.00 |
| Controle     |      |        | Parda    | gain.TFL.corretas.per.min |  17 |  7.471 |    6.0 | -27 |  52 | 17.180 |  4.167 |  8.833 | 16.00 |
| Controle     |      |        |          | gain.TFL.corretas.per.min |   9 | 30.556 |   21.0 |   6 |  65 | 20.019 |  6.673 | 15.388 | 30.00 |
| Experimental |      |        | Amarela  | gain.TFL.corretas.per.min |   1 |  5.000 |    5.0 |   5 |   5 |        |        |        |  0.00 |
| Experimental |      |        | Branca   | gain.TFL.corretas.per.min |   1 | 54.000 |   54.0 |  54 |  54 |        |        |        |  0.00 |
| Experimental |      |        | Indígena | gain.TFL.corretas.per.min |   1 | 24.000 |   24.0 |  24 |  24 |        |        |        |  0.00 |
| Experimental |      |        | Parda    | gain.TFL.corretas.per.min |   7 |  5.714 |   11.0 | -17 |  26 | 15.872 |  5.999 | 14.679 | 23.00 |
| Experimental |      |        |          | gain.TFL.corretas.per.min |   9 | 43.889 |   37.0 |   0 |  90 | 35.803 | 11.934 | 27.521 | 65.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                       |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:--------------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| gain.TFL.corretas.per.min |  50 | 0.3370753 | -0.2709433 | YES      | 0.9771254 | Shapiro-Wilk | 0.4381055 | ns       | YES       |
| gain.TFL.corretas.per.min |  46 | 0.6816052 |  0.2242236 | NO       | 0.9441649 | Shapiro-Wilk | 0.0280680 | \*       | NO        |
| gain.TFL.corretas.per.min |  32 | 0.2656551 |  0.4690181 | YES      | 0.9788515 | Shapiro-Wilk | 0.7655638 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                       | method        | formula                                         |   n | df1 | df2 | statistic |         p | p.signif |
|:--------------------------|:--------------|:------------------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.TFL.corretas.per.min | Levene’s test | `gain.TFL.corretas.per.min`~`grupo`\*`Sexo`     |  50 |   3 |  46 | 3.0785911 | 0.0366359 | \*       |
| gain.TFL.corretas.per.min | Levene’s test | `gain.TFL.corretas.per.min`~`grupo`\*`Zona`     |  46 |   3 |  42 | 1.9142811 | 0.1419368 | ns       |
| gain.TFL.corretas.per.min | Levene’s test | `gain.TFL.corretas.per.min`~`grupo`\*`Cor.Raca` |  32 |   5 |  26 | 0.6887971 | 0.6362991 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |      SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|---------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 |  48 | 2072.236 | 32155.68 | 3.093 | 0.085 | 0.061 |        |
| Sexo     |   1 |  48 | 2664.645 | 31563.28 | 4.052 | 0.050 | 0.078 | \*     |
| Zona     |   1 |  44 | 4287.804 | 29498.02 | 6.396 | 0.015 | 0.127 | \*     |
| Cor.Raca |   3 |  28 |  510.583 | 10158.29 | 0.469 | 0.706 | 0.048 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 |  46 |    2.486 | 29759.358 | 0.004 | 0.951 | 0.000 |        |
| 6   | grupo:Zona     |   1 |  42 |  668.375 | 27413.714 | 1.024 | 0.317 | 0.024 |        |
| 9   | grupo:Cor.Raca |   1 |  26 | 1737.945 |  8254.864 | 5.474 | 0.027 | 0.174 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var                       | grupo        |   n |      M |  SE |
|:--------------------------|:-------------|----:|-------:|----:|
| gain.TFL.corretas.per.min | Controle     |  31 | 14.000 | 3.8 |
| gain.TFL.corretas.per.min | Experimental |  19 | 27.263 | 7.4 |

| .y.                       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.TFL.corretas.per.min | Controle | Experimental |  -13.263 |  -28.426 |     1.899 | 7.541 |    -1.759 | 0.085 | 0.085 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.TFL.corretas.per.min-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                       | grupo        | Sexo |   n |      M |     SE |
|:--------------------------|:-------------|:-----|----:|-------:|-------:|
| gain.TFL.corretas.per.min | Controle     | F    |  16 | 20.562 |  6.380 |
| gain.TFL.corretas.per.min | Controle     | M    |  15 |  7.000 |  3.263 |
| gain.TFL.corretas.per.min | Experimental | F    |  11 | 33.364 | 10.936 |
| gain.TFL.corretas.per.min | Experimental | M    |   8 | 18.875 |  9.062 |

| .y.                       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:--------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| gain.TFL.corretas.per.min |              | F    | Controle | Experimental |  -12.801 |  -32.854 |     7.252 |  9.962 |    -1.285 | 0.205 | 0.205 | ns           |
| gain.TFL.corretas.per.min |              | M    | Controle | Experimental |  -11.875 |  -34.289 |    10.539 | 11.135 |    -1.066 | 0.292 | 0.292 | ns           |
| gain.TFL.corretas.per.min | Controle     |      | F        | M            |   13.562 |   -4.838 |    31.963 |  9.141 |     1.484 | 0.145 | 0.145 | ns           |
| gain.TFL.corretas.per.min | Experimental |      | F        | M            |   14.489 |   -9.301 |    38.278 | 11.819 |     1.226 | 0.226 | 0.226 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.TFL.corretas.per.min-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-gain.TFL.corretas.per.min-Serie-6-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

| var                       | grupo        | Cor.Raca |   n |     M |     SE |
|:--------------------------|:-------------|:---------|----:|------:|-------:|
| gain.TFL.corretas.per.min | Controle     | Branca   |   5 | 6.400 | 10.053 |
| gain.TFL.corretas.per.min | Controle     | Parda    |  17 | 7.471 |  4.167 |
| gain.TFL.corretas.per.min | Experimental | Parda    |   7 | 5.714 |  5.999 |

|     | .y.                       | grupo    | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------------------|:---------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.TFL.corretas.per.min |          | Parda    | Controle | Experimental |    1.756 |  -14.692 |    18.205 | 8.002 |     0.219 | 0.828 | 0.828 | ns           |
| 3   | gain.TFL.corretas.per.min | Controle |          | Branca   | Parda        |   -1.071 |  -19.704 |    17.563 | 9.065 |    -0.118 | 0.907 | 0.907 | ns           |
