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
| Controle     | F    |        |          | gain.score.tde |  56 | -0.893 |      0 | -21 |  19 |  8.542 | 1.142 |  2.288 |  9.25 |
| Controle     | M    |        |          | gain.score.tde |  65 | -0.262 |      0 | -26 |  18 |  7.886 | 0.978 |  1.954 |  8.00 |
| Experimental | F    |        |          | gain.score.tde |  75 | -0.200 |      2 | -47 |  35 | 12.046 | 1.391 |  2.772 |  9.00 |
| Experimental | M    |        |          | gain.score.tde |  72 |  2.694 |      3 | -28 |  25 |  7.543 | 0.889 |  1.772 |  8.00 |
| Controle     |      | Rural  |          | gain.score.tde |  45 | -0.822 |      0 | -20 |  12 |  6.658 | 0.993 |  2.000 |  6.00 |
| Controle     |      | Urbana |          | gain.score.tde |  15 | -5.267 |     -3 | -26 |  11 |  9.794 | 2.529 |  5.424 | 10.00 |
| Controle     |      |        |          | gain.score.tde |  61 |  0.803 |      1 | -21 |  19 |  8.430 | 1.079 |  2.159 | 10.00 |
| Experimental |      | Rural  |          | gain.score.tde |  57 |  0.491 |      2 | -34 |  25 | 10.160 | 1.346 |  2.696 |  8.00 |
| Experimental |      | Urbana |          | gain.score.tde |  31 |  2.419 |      3 |  -8 |  10 |  4.470 | 0.803 |  1.640 |  5.50 |
| Experimental |      |        |          | gain.score.tde |  59 |  1.288 |      3 | -47 |  35 | 12.198 | 1.588 |  3.179 |  8.50 |
| Controle     |      |        | Branca   | gain.score.tde |   8 |  1.250 |      1 |  -2 |   7 |  3.105 | 1.098 |  2.596 |  3.75 |
| Controle     |      |        | Indígena | gain.score.tde |   2 | -1.000 |     -1 |  -2 |   0 |  1.414 | 1.000 | 12.706 |  1.00 |
| Controle     |      |        | Parda    | gain.score.tde |  50 | -0.940 |      0 | -26 |  19 |  9.416 | 1.332 |  2.676 |  8.75 |
| Controle     |      |        |          | gain.score.tde |  61 | -0.459 |      0 | -18 |  17 |  7.700 | 0.986 |  1.972 |  8.00 |
| Experimental |      |        | Branca   | gain.score.tde |   9 | -0.111 |      4 | -18 |  12 | 10.240 | 3.413 |  7.871 | 13.00 |
| Experimental |      |        | Indígena | gain.score.tde |   3 |  6.333 |      4 |  -1 |  16 |  8.737 | 5.044 | 21.704 |  8.50 |
| Experimental |      |        | Parda    | gain.score.tde |  49 | -1.000 |      1 | -47 |  35 | 13.555 | 1.936 |  3.894 | 10.00 |
| Experimental |      |        |          | gain.score.tde |  86 |  2.442 |      3 | -40 |  25 |  7.522 | 0.811 |  1.613 |  7.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var            |   n |   skewness | kurtosis | symmetry | statistic | method     |       p | p.signif | normality |
|:---------------|----:|-----------:|---------:|:---------|----------:|:-----------|--------:|:---------|:----------|
| gain.score.tde | 268 | -1.0579302 | 4.587432 | NO       |  72.55786 | D’Agostino | 0.0e+00 | \*\*\*\* | \-        |
| gain.score.tde | 148 | -0.9349486 | 2.924028 | NO       |  33.67418 | D’Agostino | 0.0e+00 | \*\*\*\* | QQ        |
| gain.score.tde | 121 | -0.8240300 | 3.061301 | NO       |  26.72658 | D’Agostino | 1.6e-06 | \*\*\*\* | QQ        |

## Assumption: Homogeneity of data distribution

| var            | method        | formula                              |   n | df1 | df2 | statistic |         p | p.signif |
|:---------------|:--------------|:-------------------------------------|----:|----:|----:|----------:|----------:|:---------|
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Sexo`     | 268 |   3 | 264 |  1.853318 | 0.1378869 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Zona`     | 148 |   3 | 144 |  3.200103 | 0.0252581 | ns       |
| gain.score.tde | Levene’s test | `gain.score.tde`~`grupo`\*`Cor.Raca` | 121 |   5 | 115 |  1.348539 | 0.2490617 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

| Effect   | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:---------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| grupo    |   1 | 266 | 208.259 | 23090.94 | 2.399 | 0.123 | 0.009 |        |
| Sexo     |   1 | 266 | 214.125 | 23085.07 | 2.467 | 0.117 | 0.009 |        |
| Zona     |   1 | 146 |   0.000 | 10313.86 | 0.000 | 0.999 | 0.000 |        |
| Cor.Raca |   2 | 118 | 115.160 | 14298.34 | 0.475 | 0.623 | 0.008 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| 3   | grupo:Sexo     |   1 | 264 |  84.707 | 22771.189 | 0.982 | 0.323 | 0.004 |        |
| 6   | grupo:Zona     |   1 | 144 | 292.807 |  9673.305 | 4.359 | 0.039 | 0.029 | \*     |
| 9   | grupo:Cor.Raca |   2 | 115 |  72.389 | 14225.876 | 0.293 | 0.747 | 0.005 |        |

## Pairwise comparisons for one factor: **grupo**

| var            | grupo        |   n |      M |    SE |
|:---------------|:-------------|----:|-------:|------:|
| gain.score.tde | Controle     | 121 | -0.554 | 0.743 |
| gain.score.tde | Experimental | 147 |  1.218 | 0.838 |

| .y.            | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde | Controle | Experimental |   -1.771 |   -4.023 |      0.48 | 1.144 |    -1.549 | 0.123 | 0.123 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-18-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var            | grupo        | Sexo |   n |      M |    SE |
|:---------------|:-------------|:-----|----:|-------:|------:|
| gain.score.tde | Controle     | F    |  56 | -0.893 | 1.142 |
| gain.score.tde | Controle     | M    |  65 | -0.262 | 0.978 |
| gain.score.tde | Experimental | F    |  75 | -0.200 | 1.391 |
| gain.score.tde | Experimental | M    |  72 |  2.694 | 0.889 |

| .y.            | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | F    | Controle | Experimental |   -0.693 |   -3.922 |     2.537 | 1.640 |    -0.422 | 0.673 | 0.673 | ns           |
| gain.score.tde |              | M    | Controle | Experimental |   -2.956 |   -6.085 |     0.173 | 1.589 |    -1.860 | 0.064 | 0.064 | ns           |
| gain.score.tde | Controle     |      | F        | M            |   -0.631 |   -3.965 |     2.703 | 1.693 |    -0.373 | 0.710 | 0.710 | ns           |
| gain.score.tde | Experimental |      | F        | M            |   -2.894 |   -5.912 |     0.123 | 1.532 |    -1.889 | 0.060 | 0.060 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-28-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-29-1.png)<!-- -->

### factores: **grupo:Zona**

| var            | grupo        | Zona   |   n |      M |    SE |
|:---------------|:-------------|:-------|----:|-------:|------:|
| gain.score.tde | Controle     | Rural  |  45 | -0.822 | 0.993 |
| gain.score.tde | Controle     | Urbana |  15 | -5.267 | 2.529 |
| gain.score.tde | Experimental | Rural  |  57 |  0.491 | 1.346 |
| gain.score.tde | Experimental | Urbana |  31 |  2.419 | 0.803 |

| .y.            | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | Rural  | Controle | Experimental |   -1.313 |   -4.544 |     1.917 | 1.634 |    -0.804 | 0.423 | 0.423 | ns           |
| gain.score.tde |              | Urbana | Controle | Experimental |   -7.686 |  -12.781 |    -2.591 | 2.578 |    -2.982 | 0.003 | 0.003 | \*\*         |
| gain.score.tde | Controle     |        | Rural    | Urbana       |    4.444 |   -0.386 |     9.274 | 2.444 |     1.819 | 0.071 | 0.071 | ns           |
| gain.score.tde | Experimental |        | Rural    | Urbana       |   -1.928 |   -5.543 |     1.687 | 1.829 |    -1.054 | 0.294 | 0.294 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var            | grupo        | Cor.Raca |   n |      M |    SE |
|:---------------|:-------------|:---------|----:|-------:|------:|
| gain.score.tde | Controle     | Branca   |   8 |  1.250 | 1.098 |
| gain.score.tde | Controle     | Parda    |  50 | -0.940 | 1.332 |
| gain.score.tde | Experimental | Branca   |   9 | -0.111 | 3.413 |
| gain.score.tde | Experimental | Parda    |  49 | -1.000 | 1.936 |

| .y.            | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| gain.score.tde |              | Branca   | Controle | Experimental |    1.361 |   -9.430 |    12.153 | 5.446 |     0.250 | 0.803 | 0.803 | ns           |
| gain.score.tde |              | Parda    | Controle | Experimental |    0.060 |   -4.404 |     4.524 | 2.253 |     0.027 | 0.979 | 0.979 | ns           |
| gain.score.tde | Controle     |          | Branca   | Parda        |    2.190 |   -6.267 |    10.647 | 4.268 |     0.513 | 0.609 | 0.609 | ns           |
| gain.score.tde | Experimental |          | Branca   | Parda        |    0.889 |   -7.165 |     8.943 | 4.065 |     0.219 | 0.827 | 0.827 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-gain.score.tde-Serie-9-ano-gain_files/figure-gfm/unnamed-chunk-47-1.png)<!-- -->
