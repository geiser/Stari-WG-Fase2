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

| grupo        | Sexo | Zona   | Cor.Raca | variable       |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          | gain.score.tde |  48 | -2.083 |   -2.0 | -21 |  20 |  7.811 | 1.127 | 2.268 |  7.25 |
| Controle     | M    |        |          | gain.score.tde |  41 | -3.634 |   -1.0 | -28 |   8 |  7.482 | 1.169 | 2.362 |  9.00 |
| Experimental | F    |        |          | gain.score.tde |  73 |  3.425 |    2.0 | -11 |  37 |  8.868 | 1.038 | 2.069 |  9.00 |
| Experimental | M    |        |          | gain.score.tde |  70 |  0.600 |    1.0 | -28 |  17 |  7.867 | 0.940 | 1.876 |  9.00 |
| Controle     |      | Rural  |          | gain.score.tde |  32 | -2.156 |   -0.5 | -28 |   8 |  7.817 | 1.382 | 2.818 |  7.50 |
| Controle     |      | Urbana |          | gain.score.tde |  18 | -3.611 |   -2.0 | -18 |   4 |  5.511 | 1.299 | 2.740 |  3.75 |
| Controle     |      |        |          | gain.score.tde |  39 | -2.949 |   -2.0 | -20 |  20 |  8.466 | 1.356 | 2.745 |  8.50 |
| Experimental |      | Rural  |          | gain.score.tde |  54 |  0.815 |    1.0 | -28 |  26 |  9.186 | 1.250 | 2.507 |  8.75 |
| Experimental |      | Urbana |          | gain.score.tde |  21 |  2.048 |    1.0 | -10 |  18 |  7.060 | 1.541 | 3.214 |  7.00 |
| Experimental |      |        |          | gain.score.tde |  68 |  3.015 |    2.0 | -12 |  37 |  8.289 | 1.005 | 2.006 |  9.00 |
| Controle     |      |        | Branca   | gain.score.tde |   4 | -3.500 |   -3.0 |  -7 |  -1 |  2.646 | 1.323 | 4.210 |  3.00 |
| Controle     |      |        | Parda    | gain.score.tde |  34 | -3.029 |   -2.5 | -28 |  20 | 10.515 | 1.803 | 3.669 | 13.50 |
| Controle     |      |        |          | gain.score.tde |  51 | -2.588 |   -1.0 | -18 |   9 |  5.449 | 0.763 | 1.532 |  5.50 |
| Experimental |      |        | Amarela  | gain.score.tde |   1 |  0.000 |    0.0 |   0 |   0 |        |       |       |  0.00 |
| Experimental |      |        | Branca   | gain.score.tde |  20 | -2.350 |   -2.5 | -28 |  26 | 10.922 | 2.442 | 5.112 |  6.50 |
| Experimental |      |        | Parda    | gain.score.tde |  51 |  2.529 |    2.0 | -13 |  37 |  8.918 | 1.249 | 2.508 |  9.00 |
| Experimental |      |        |          | gain.score.tde |  71 |  2.958 |    2.0 | -12 |  22 |  7.084 | 0.841 | 1.677 |  7.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness | kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:---------------|----:|-----------:|---------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| gain.score.tde | 232 |  0.2090555 | 1.799249 | YES      |  14.74871 | D’Agostino | 0.0006271 | \*\*     | \-        |
| gain.score.tde | 125 | -0.3732834 | 2.163223 | YES      |  13.55346 | D’Agostino | 0.0011400 | \*       | QQ        |
| gain.score.tde | 110 |  0.4696373 | 1.860407 | YES      |  12.58973 | D’Agostino | 0.0018458 | \*       | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     | 232 |   3 | 228 | 0.4029079 | 0.7510458 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     | 125 |   3 | 121 | 1.2165109 | 0.3067299 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` | 110 |   4 | 105 | 1.1623169 | 0.3317496 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:---------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| grupo    |   1 | 230 | 1284.922 | 15378.108 | 19.218 | \<0.001 | 0.077 | \*     |
| Sexo     |   1 | 230 |  281.125 | 16381.905 |  3.947 | 0.048   | 0.017 | \*     |
| Zona     |   1 | 123 |    2.006 |  8367.322 |  0.029 | 0.864   | 0.000 |        |
| Cor.Raca |   2 | 107 |  151.858 | 10548.005 |  0.770 | 0.465   | 0.014 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |    SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|-------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 228 | 22.165 | 15039.814 | 0.336 | 0.563 | 0.001 |        |
| 6   | grupo:Zona     |   1 | 121 | 47.230 |  7879.597 | 0.725 | 0.396 | 0.006 |        |
| 9   | grupo:Cor.Raca |   1 | 105 | 55.692 |  9913.226 | 0.590 | 0.444 | 0.006 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     |  89 | -2.798 | 0.812 |
| gain.score.tde | Experimental | 143 |  2.042 | 0.709 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.score.tde | Controle | Experimental |    -4.84 |   -7.015 |    -2.664 | 1.104 |    -4.384 | \<0.001 | \<0.001 | \*\*\*\*     |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |  48 | -2.083 | 1.127 |
| gain.score.tde | Controle     | M    |  41 | -3.634 | 1.169 |
| gain.score.tde | Experimental | F    |  73 |  3.425 | 1.038 |
| gain.score.tde | Experimental | M    |  70 |  0.600 | 0.940 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |   -5.508 |   -8.482 |    -2.534 | 1.509 |    -3.649 | \<0.001 | \<0.001 | \*\*\*       |
| gain.score.tde |              | M    | Controle | Experimental |   -4.234 |   -7.381 |    -1.087 | 1.597 |    -2.651 | 0.009   | 0.009   | \*\*         |
| gain.score.tde | Controle     |      | F        | M            |    1.551 |   -1.852 |     4.954 | 1.727 |     0.898 | 0.37    | 0.37    | ns           |
| gain.score.tde | Experimental |      | F        | M            |    2.825 |    0.148 |     5.502 | 1.359 |     2.079 | 0.039   | 0.039   | \*           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.score.tde | Controle     | Rural  |  32 | -2.156 | 1.382 |
| gain.score.tde | Controle     | Urbana |  18 | -3.611 | 1.299 |
| gain.score.tde | Experimental | Rural  |  54 |  0.815 | 1.250 |
| gain.score.tde | Experimental | Urbana |  21 |  2.048 | 1.541 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | Rural  | Controle | Experimental |   -2.971 |   -6.535 |     0.593 | 1.800 |    -1.650 | 0.101 | 0.101 | ns           |
| gain.score.tde |              | Urbana | Controle | Experimental |   -5.659 |  -10.790 |    -0.527 | 2.592 |    -2.183 | 0.031 | 0.031 | \*           |
| gain.score.tde | Controle     |        | Rural    | Urbana       |    1.455 |   -3.252 |     6.162 | 2.378 |     0.612 | 0.542 | 0.542 | ns           |
| gain.score.tde | Experimental |        | Rural    | Urbana       |   -1.233 |   -5.341 |     2.876 | 2.075 |    -0.594 | 0.554 | 0.554 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-8-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.score.tde | Controle     | Parda    |  34 | -3.029 | 1.803 |
| gain.score.tde | Experimental | Branca   |  20 | -2.350 | 2.442 |
| gain.score.tde | Experimental | Parda    |  51 |  2.529 | 1.249 |

|     | .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | gain.score.tde |              | Parda    | Controle | Experimental |   -5.559 |   -9.884 |    -1.234 | 2.180 |    -2.549 | 0.012 | 0.012 | \*           |
| 4   | gain.score.tde | Experimental |          | Branca   | Parda        |   -4.879 |  -10.033 |     0.274 | 2.598 |    -1.878 | 0.063 | 0.063 | ns           |
