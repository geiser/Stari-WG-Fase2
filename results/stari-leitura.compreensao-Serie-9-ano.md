ANCOVA in Fluencia Leitora (Compreensão) (Fluencia Leitora
(Compreensão))
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
    - [factores:
      **grupo:leitura.compreensao.quintile**](#factores-grupoleituracompreensaoquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Fluencia Leitora (Compreensão) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Fluencia Leitora (Compreensão) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | leitura.compreensao.quintile | variable                |   n |  mean | median | min | max |    sd |    se |     ci |  iqr |
|:-------------|:-----|:-------|:---------|:-----------------------------|:------------------------|----:|------:|-------:|----:|----:|------:|------:|-------:|-----:|
| Controle     | F    |        |          |                              | leitura.compreensao.pre |   9 | 4.889 |    5.0 |   3 |   8 | 1.616 | 0.539 |  1.242 | 2.00 |
| Controle     | M    |        |          |                              | leitura.compreensao.pre |  22 | 4.455 |    4.5 |   0 |   9 | 2.405 | 0.513 |  1.066 | 2.75 |
| Experimental | F    |        |          |                              | leitura.compreensao.pre |   5 | 3.600 |    4.0 |   3 |   4 | 0.548 | 0.245 |  0.680 | 1.00 |
| Experimental | M    |        |          |                              | leitura.compreensao.pre |   8 | 4.125 |    4.5 |   0 |   6 | 1.808 | 0.639 |  1.511 | 1.00 |
| Controle     | F    |        |          |                              | leitura.compreensao.pos |   9 | 5.889 |    6.0 |   4 |   7 | 1.269 | 0.423 |  0.976 | 2.00 |
| Controle     | M    |        |          |                              | leitura.compreensao.pos |  22 | 4.227 |    5.0 |   0 |   8 | 2.724 | 0.581 |  1.208 | 3.50 |
| Experimental | F    |        |          |                              | leitura.compreensao.pos |   5 | 5.000 |    5.0 |   0 |   8 | 3.317 | 1.483 |  4.118 | 4.00 |
| Experimental | M    |        |          |                              | leitura.compreensao.pos |   8 | 4.625 |    5.5 |   0 |   9 | 3.378 | 1.194 |  2.824 | 4.25 |
| Controle     |      | Rural  |          |                              | leitura.compreensao.pre |  14 | 3.643 |    3.5 |   0 |   7 | 2.468 | 0.660 |  1.425 | 4.00 |
| Controle     |      | Urbana |          |                              | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Controle     |      |        |          |                              | leitura.compreensao.pre |  16 | 5.312 |    5.0 |   3 |   9 | 1.662 | 0.416 |  0.886 | 2.25 |
| Experimental |      | Rural  |          |                              | leitura.compreensao.pre |   7 | 4.000 |    5.0 |   0 |   6 | 2.000 | 0.756 |  1.850 | 1.50 |
| Experimental |      | Urbana |          |                              | leitura.compreensao.pre |   1 | 4.000 |    4.0 |   4 |   4 |       |       |        | 0.00 |
| Experimental |      |        |          |                              | leitura.compreensao.pre |   5 | 3.800 |    4.0 |   3 |   4 | 0.447 | 0.200 |  0.555 | 0.00 |
| Controle     |      | Rural  |          |                              | leitura.compreensao.pos |  14 | 4.857 |    5.0 |   0 |   8 | 2.568 | 0.686 |  1.483 | 2.75 |
| Controle     |      | Urbana |          |                              | leitura.compreensao.pos |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Controle     |      |        |          |                              | leitura.compreensao.pos |  16 | 4.438 |    5.0 |   0 |   8 | 2.502 | 0.626 |  1.333 | 2.00 |
| Experimental |      | Rural  |          |                              | leitura.compreensao.pos |   7 | 6.000 |    6.0 |   0 |   9 | 3.000 | 1.134 |  2.775 | 2.50 |
| Experimental |      | Urbana |          |                              | leitura.compreensao.pos |   1 | 0.000 |    0.0 |   0 |   0 |       |       |        | 0.00 |
| Experimental |      |        |          |                              | leitura.compreensao.pos |   5 | 4.000 |    4.0 |   0 |   8 | 2.915 | 1.304 |  3.620 | 2.00 |
| Controle     |      |        | Branca   |                              | leitura.compreensao.pre |   3 | 5.667 |    7.0 |   3 |   7 | 2.309 | 1.333 |  5.737 | 2.00 |
| Controle     |      |        | Indígena |                              | leitura.compreensao.pre |   1 | 4.000 |    4.0 |   4 |   4 |       |       |        | 0.00 |
| Controle     |      |        | Parda    |                              | leitura.compreensao.pre |  13 | 3.385 |    4.0 |   0 |   6 | 2.142 | 0.594 |  1.295 | 3.00 |
| Controle     |      |        |          |                              | leitura.compreensao.pre |  14 | 5.500 |    5.5 |   3 |   9 | 1.829 | 0.489 |  1.056 | 2.75 |
| Experimental |      |        | Branca   |                              | leitura.compreensao.pre |   2 | 4.500 |    4.5 |   4 |   5 | 0.707 | 0.500 |  6.353 | 0.50 |
| Experimental |      |        | Indígena |                              | leitura.compreensao.pre |   3 | 4.667 |    5.0 |   3 |   6 | 1.528 | 0.882 |  3.795 | 1.50 |
| Experimental |      |        | Parda    |                              | leitura.compreensao.pre |   4 | 3.250 |    4.0 |   0 |   5 | 2.217 | 1.109 |  3.528 | 1.25 |
| Experimental |      |        |          |                              | leitura.compreensao.pre |   4 | 3.750 |    4.0 |   3 |   4 | 0.500 | 0.250 |  0.796 | 0.25 |
| Controle     |      |        | Branca   |                              | leitura.compreensao.pos |   3 | 6.667 |    7.0 |   5 |   8 | 1.528 | 0.882 |  3.795 | 1.50 |
| Controle     |      |        | Indígena |                              | leitura.compreensao.pos |   1 | 5.000 |    5.0 |   5 |   5 |       |       |        | 0.00 |
| Controle     |      |        | Parda    |                              | leitura.compreensao.pos |  13 | 4.231 |    5.0 |   0 |   7 | 2.774 | 0.769 |  1.676 | 4.00 |
| Controle     |      |        |          |                              | leitura.compreensao.pos |  14 | 4.714 |    5.0 |   0 |   8 | 2.400 | 0.641 |  1.386 | 2.75 |
| Experimental |      |        | Branca   |                              | leitura.compreensao.pos |   2 | 4.500 |    4.5 |   0 |   9 | 6.364 | 4.500 | 57.178 | 4.50 |
| Experimental |      |        | Indígena |                              | leitura.compreensao.pos |   3 | 7.333 |    8.0 |   6 |   8 | 1.155 | 0.667 |  2.868 | 1.00 |
| Experimental |      |        | Parda    |                              | leitura.compreensao.pos |   4 | 4.750 |    5.5 |   0 |   8 | 3.403 | 1.702 |  5.416 | 2.75 |
| Experimental |      |        |          |                              | leitura.compreensao.pos |   4 | 3.000 |    3.5 |   0 |   5 | 2.160 | 1.080 |  3.437 | 2.00 |
| Controle     |      |        |          | 1st quintile                 | leitura.compreensao.pre |   5 | 1.000 |    1.0 |   0 |   2 | 1.000 | 0.447 |  1.242 | 2.00 |
| Controle     |      |        |          | 2nd quintile                 | leitura.compreensao.pre |   3 | 3.000 |    3.0 |   3 |   3 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          | 3rd quintile                 | leitura.compreensao.pre |  12 | 4.417 |    4.0 |   4 |   5 | 0.515 | 0.149 |  0.327 | 1.00 |
| Controle     |      |        |          | 4th quintile                 | leitura.compreensao.pre |   5 | 6.000 |    6.0 |   6 |   6 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          | 5th quintile                 | leitura.compreensao.pre |   6 | 7.500 |    7.0 |   7 |   9 | 0.837 | 0.342 |  0.878 | 0.75 |
| Experimental |      |        |          | 1st quintile                 | leitura.compreensao.pre |   1 | 0.000 |    0.0 |   0 |   0 |       |       |        | 0.00 |
| Experimental |      |        |          | 2nd quintile                 | leitura.compreensao.pre |   2 | 3.000 |    3.0 |   3 |   3 | 0.000 | 0.000 |  0.000 | 0.00 |
| Experimental |      |        |          | 3rd quintile                 | leitura.compreensao.pre |   9 | 4.333 |    4.0 |   4 |   5 | 0.500 | 0.167 |  0.384 | 1.00 |
| Experimental |      |        |          | 4th quintile                 | leitura.compreensao.pre |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Controle     |      |        |          | 1st quintile                 | leitura.compreensao.pos |   5 | 2.600 |    2.0 |   0 |   6 | 2.793 | 1.249 |  3.468 | 5.00 |
| Controle     |      |        |          | 2nd quintile                 | leitura.compreensao.pos |   3 | 6.000 |    7.0 |   4 |   7 | 1.732 | 1.000 |  4.303 | 1.50 |
| Controle     |      |        |          | 3rd quintile                 | leitura.compreensao.pos |  12 | 4.333 |    5.0 |   0 |   7 | 2.229 | 0.644 |  1.416 | 2.00 |
| Controle     |      |        |          | 4th quintile                 | leitura.compreensao.pos |   5 | 6.000 |    7.0 |   4 |   7 | 1.414 | 0.632 |  1.756 | 2.00 |
| Controle     |      |        |          | 5th quintile                 | leitura.compreensao.pos |   6 | 5.500 |    6.0 |   0 |   8 | 3.017 | 1.232 |  3.166 | 2.75 |
| Experimental |      |        |          | 1st quintile                 | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      |        |          | 2nd quintile                 | leitura.compreensao.pos |   2 | 6.000 |    6.0 |   4 |   8 | 2.828 | 2.000 | 25.412 | 2.00 |
| Experimental |      |        |          | 3rd quintile                 | leitura.compreensao.pos |   9 | 4.222 |    5.0 |   0 |   9 | 3.667 | 1.222 |  2.818 | 8.00 |
| Experimental |      |        |          | 4th quintile                 | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                     |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| leitura.compreensao.pos |  44 | -0.4775172 | -0.6075309 | YES      | 0.9436066 | Shapiro-Wilk | 0.0319649 | \*       | NO        |
| leitura.compreensao.pos |  23 | -0.9566173 |  0.3934989 | NO       | 0.9169522 | Shapiro-Wilk | 0.0573432 | ns       | YES       |
| leitura.compreensao.pos |  26 | -0.4726510 | -0.8405287 | YES      | 0.9389596 | Shapiro-Wilk | 0.1268359 | ns       | YES       |
| leitura.compreensao.pos |  44 | -0.2840205 | -0.4173645 | YES      | 0.9535063 | Shapiro-Wilk | 0.0743547 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                     | method         | formula                                        |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:------------------------|:---------------|:-----------------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`                         |  44 |       3 |      40 | 2.7795222 | 0.0534379 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`                         |  44 |       3 |      36 | 0.5300000 | 0.6650000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Zona`                         |  23 |       3 |      19 | 0.7699216 | 0.5250108 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`                         |  23 |       1 |      17 | 2.5420000 | 0.1290000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`                     |  26 |       5 |      20 | 1.4981184 | 0.2348596 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`                     |  26 |       4 |      15 | 2.2340000 | 0.1140000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`leitura.compreensao.quintile` |  44 |       8 |      35 | 1.0535199 | 0.4167534 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`leitura.compreensao.quintile` |  44 |       3 |      31 | 0.4480000 | 0.7210000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                       | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:-----------------------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre      |   1 |  41 | 20.659 | 290.036 | 2.920 | 0.095 | 0.066 |        |
| 2   | grupo                        |   1 |  41 |  0.752 | 290.036 | 0.106 | 0.746 | 0.003 |        |
| 4   | Sexo                         |   1 |  41 | 14.142 | 276.646 | 2.096 | 0.155 | 0.049 |        |
| 6   | Zona                         |   1 |  20 |  9.814 | 144.567 | 1.358 | 0.258 | 0.064 |        |
| 8   | Cor.Raca                     |   2 |  22 | 13.025 | 176.115 | 0.814 | 0.456 | 0.069 |        |
| 10  | leitura.compreensao.quintile |   4 |  38 | 24.269 | 266.519 | 0.865 | 0.494 | 0.083 |        |

## ANCOVA tests for two factors

|     | Effect                             | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:-----------------------------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre            |   1 |  39 | 18.171 | 274.456 | 2.582 | 0.116 | 0.062 |        |
| 4   | grupo:Sexo                         |   1 |  39 |  1.930 | 274.456 | 0.274 | 0.603 | 0.007 |        |
| 8   | grupo:Zona                         |   1 |  18 | 22.567 | 121.561 | 3.342 | 0.084 | 0.157 |        |
| 12  | grupo:Cor.Raca                     |   2 |  19 |  8.014 | 167.829 | 0.454 | 0.642 | 0.046 |        |
| 16  | grupo:leitura.compreensao.quintile |   3 |  34 | 12.808 | 252.598 | 0.575 | 0.636 | 0.048 |        |

## Pairwise comparisons for one factor: **grupo**

| var                     | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     |  31 |   4.581 |    0.393 |     4.710 |      0.448 |   4.642 |    0.479 |
| leitura.compreensao.pos | Experimental |  13 |   3.923 |    0.400 |     4.769 |      0.893 |   4.931 |    0.744 |

| .y.                     | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pos | Controle | Experimental |   -0.290 |   -2.085 |     1.506 | 0.889 |    -0.326 | 0.746 | 0.746 | ns           |
| leitura.compreensao.pre | Controle | Experimental |    0.658 |   -0.678 |     1.993 | 0.662 |     0.994 | 0.326 | 0.326 | ns           |

| .y.                 | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | pre    | pos    |   -0.129 |   -1.335 |     1.077 | 0.607 |    -0.213 | 0.832 | 0.832 | ns           |
| leitura.compreensao | Experimental | pre    | pos    |   -0.846 |   -2.709 |     1.017 | 0.937 |    -0.903 | 0.369 | 0.369 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |   9 |   4.889 |    0.539 |     5.889 |      0.423 |   5.723 |    0.890 |
| leitura.compreensao.pos | Controle     | M    |  22 |   4.455 |    0.513 |     4.227 |      0.581 |   4.205 |    0.566 |
| leitura.compreensao.pos | Experimental | F    |   5 |   3.600 |    0.245 |     5.000 |      1.483 |   5.260 |    1.197 |
| leitura.compreensao.pos | Experimental | M    |   8 |   4.125 |    0.639 |     4.625 |      1.194 |   4.711 |    0.939 |

| .y.                     | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pos |              | F    | Controle | Experimental |    0.463 |   -2.578 |     3.504 | 1.503 |     0.308 | 0.760 | 0.760 | ns           |
| leitura.compreensao.pos |              | M    | Controle | Experimental |   -0.507 |   -2.726 |     1.713 | 1.097 |    -0.462 | 0.647 | 0.647 | ns           |
| leitura.compreensao.pre |              | F    | Controle | Experimental |    1.289 |   -1.010 |     3.588 | 1.138 |     1.133 | 0.264 | 0.264 | ns           |
| leitura.compreensao.pre |              | M    | Controle | Experimental |    0.330 |   -1.372 |     2.032 | 0.842 |     0.391 | 0.698 | 0.698 | ns           |
| leitura.compreensao.pos | Controle     |      | F        | M            |    1.518 |   -0.613 |     3.649 | 1.053 |     1.441 | 0.158 | 0.158 | ns           |
| leitura.compreensao.pos | Experimental |      | F        | M            |    0.548 |   -2.518 |     3.615 | 1.516 |     0.362 | 0.719 | 0.719 | ns           |
| leitura.compreensao.pre | Controle     |      | F        | M            |    0.434 |   -1.197 |     2.066 | 0.807 |     0.538 | 0.593 | 0.593 | ns           |
| leitura.compreensao.pre | Experimental |      | F        | M            |   -0.525 |   -2.875 |     1.825 | 1.163 |    -0.451 | 0.654 | 0.654 | ns           |

| .y.                 | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | F    | pre    | pos    |   -1.000 |   -3.247 |     1.247 | 1.129 |    -0.886 | 0.379 | 0.379 | ns           |
| leitura.compreensao | Controle     | M    | pre    | pos    |    0.227 |   -1.210 |     1.665 | 0.722 |     0.315 | 0.754 | 0.754 | ns           |
| leitura.compreensao | Experimental | F    | pre    | pos    |   -1.400 |   -4.415 |     1.615 | 1.515 |    -0.924 | 0.358 | 0.358 | ns           |
| leitura.compreensao | Experimental | M    | pre    | pos    |   -0.500 |   -2.884 |     1.884 | 1.198 |    -0.417 | 0.677 | 0.677 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:leitura.compreensao.quintile**

| var                     | grupo        | leitura.compreensao.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----------------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | 1st quintile                 |   5 |   1.000 |    0.447 |     2.600 |      1.249 |   5.587 |    3.129 |
| leitura.compreensao.pos | Controle     | 3rd quintile                 |  12 |   4.417 |    0.149 |     4.333 |      0.644 |   4.523 |    0.821 |
| leitura.compreensao.pos | Controle     | 4th quintile                 |   5 |   6.000 |    0.000 |     6.000 |      0.632 |   4.894 |    1.634 |
| leitura.compreensao.pos | Controle     | 5th quintile                 |   6 |   7.500 |    0.342 |     5.500 |      1.232 |   3.165 |    2.514 |
| leitura.compreensao.pos | Experimental | 3rd quintile                 |   9 |   4.333 |    0.167 |     4.222 |      1.222 |   4.480 |    0.958 |

|     | .y.                     | grupo    | leitura.compreensao.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----|:------------------------|:---------|:-----------------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| 2   | leitura.compreensao.pos |          | 3rd quintile                 | Controle     | Experimental |    0.043 |   -2.456 |     2.541 | 1.225 |     0.035 | 0.972   | 0.972   | ns           |
| 6   | leitura.compreensao.pre |          | 3rd quintile                 | Controle     | Experimental |    0.083 |   -0.476 |     0.643 | 0.275 |     0.303 | 0.764   | 0.764   | ns           |
| 9   | leitura.compreensao.pos | Controle |                              | 1st quintile | 3rd quintile |    1.064 |   -5.194 |     7.323 | 3.069 |     0.347 | 0.731   | 1       | ns           |
| 10  | leitura.compreensao.pos | Controle |                              | 1st quintile | 4th quintile |    0.694 |   -8.096 |     9.484 | 4.310 |     0.161 | 0.873   | 1       | ns           |
| 11  | leitura.compreensao.pos | Controle |                              | 1st quintile | 5th quintile |    2.422 |   -8.563 |    13.407 | 5.386 |     0.450 | 0.656   | 1       | ns           |
| 12  | leitura.compreensao.pos | Controle |                              | 3rd quintile | 4th quintile |   -0.370 |   -4.312 |     3.571 | 1.933 |    -0.192 | 0.849   | 1       | ns           |
| 13  | leitura.compreensao.pos | Controle |                              | 3rd quintile | 5th quintile |    1.358 |   -4.344 |     7.060 | 2.796 |     0.486 | 0.631   | 1       | ns           |
| 14  | leitura.compreensao.pos | Controle |                              | 4th quintile | 5th quintile |    1.728 |   -2.460 |     5.916 | 2.053 |     0.842 | 0.406   | 1       | ns           |
| 21  | leitura.compreensao.pre | Controle |                              | 1st quintile | 3rd quintile |   -3.417 |   -4.092 |    -2.741 | 0.332 |   -10.304 | \<0.001 | \<0.001 | \*\*\*\*     |
| 22  | leitura.compreensao.pre | Controle |                              | 1st quintile | 4th quintile |   -5.000 |   -5.802 |    -4.198 | 0.394 |   -12.691 | \<0.001 | \<0.001 | \*\*\*\*     |
| 23  | leitura.compreensao.pre | Controle |                              | 1st quintile | 5th quintile |   -6.500 |   -7.268 |    -5.732 | 0.377 |   -17.233 | \<0.001 | \<0.001 | \*\*\*\*     |
| 24  | leitura.compreensao.pre | Controle |                              | 3rd quintile | 4th quintile |   -1.583 |   -2.259 |    -0.908 | 0.332 |    -4.775 | \<0.001 | \<0.001 | \*\*\*       |
| 25  | leitura.compreensao.pre | Controle |                              | 3rd quintile | 5th quintile |   -3.083 |   -3.718 |    -2.449 | 0.311 |    -9.900 | \<0.001 | \<0.001 | \*\*\*\*     |
| 26  | leitura.compreensao.pre | Controle |                              | 4th quintile | 5th quintile |   -1.500 |   -2.268 |    -0.732 | 0.377 |    -3.977 | \<0.001 | 0.002   | \*\*         |

| .y.                 | grupo        | leitura.compreensao.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----------------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | 1st quintile                 | pre    | pos    |   -1.600 |   -4.143 |     0.943 | 1.273 |    -1.257 | 0.213 | 0.213 | ns           |
| leitura.compreensao | Controle     | 3rd quintile                 | pre    | pos    |    0.083 |   -1.558 |     1.725 | 0.822 |     0.101 | 0.920 | 0.920 | ns           |
| leitura.compreensao | Controle     | 4th quintile                 | pre    | pos    |    0.000 |   -2.543 |     2.543 | 1.273 |     0.000 | 1.000 | 1.000 | ns           |
| leitura.compreensao | Controle     | 5th quintile                 | pre    | pos    |    2.000 |   -0.322 |     4.322 | 1.162 |     1.721 | 0.090 | 0.090 | ns           |
| leitura.compreensao | Experimental | 3rd quintile                 | pre    | pos    |    0.111 |   -1.785 |     2.007 | 0.949 |     0.117 | 0.907 | 0.907 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-Serie-9-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
