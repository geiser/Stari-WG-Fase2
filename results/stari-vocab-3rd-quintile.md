ANCOVA in Vocabulario (acertos) (Vocabulario (acertos))
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
    - [factores: **grupo:Serie**](#factores-gruposerie)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Vocabulario (acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Vocabulario (acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable  |   n |   mean | median | min | max |    sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:----------|----:|-------:|-------:|----:|----:|------:|------:|-------:|------:|
| Controle     | F    |        |          |       | vocab.pre |  17 | 26.353 |   27.0 |  23 |  29 | 1.935 | 0.469 |  0.995 |  3.00 |
| Controle     | M    |        |          |       | vocab.pre |  14 | 25.786 |   26.0 |  23 |  29 | 2.455 | 0.656 |  1.418 |  4.50 |
| Experimental | F    |        |          |       | vocab.pre |   7 | 25.714 |   26.0 |  24 |  29 | 1.704 | 0.644 |  1.576 |  1.50 |
| Experimental | M    |        |          |       | vocab.pre |  14 | 25.071 |   24.0 |  23 |  29 | 2.129 | 0.569 |  1.229 |  3.50 |
| Controle     | F    |        |          |       | vocab.pos |  17 | 26.706 |   26.0 |  17 |  40 | 5.486 | 1.331 |  2.821 |  5.00 |
| Controle     | M    |        |          |       | vocab.pos |  14 | 24.286 |   24.5 |  14 |  38 | 6.545 | 1.749 |  3.779 |  5.50 |
| Experimental | F    |        |          |       | vocab.pos |   7 | 26.571 |   26.0 |  18 |  40 | 6.876 | 2.599 |  6.360 |  5.00 |
| Experimental | M    |        |          |       | vocab.pos |  14 | 27.571 |   26.0 |  19 |  37 | 5.854 | 1.564 |  3.380 |  9.25 |
| Controle     |      | Rural  |          |       | vocab.pre |  20 | 26.050 |   26.5 |  23 |  29 | 2.164 | 0.484 |  1.013 |  4.00 |
| Controle     |      | Urbana |          |       | vocab.pre |   2 | 26.000 |   26.0 |  24 |  28 | 2.828 | 2.000 | 25.412 |  2.00 |
| Controle     |      |        |          |       | vocab.pre |   9 | 26.222 |   27.0 |  23 |  29 | 2.333 | 0.778 |  1.794 |  4.00 |
| Experimental |      | Rural  |          |       | vocab.pre |  14 | 25.286 |   25.0 |  23 |  29 | 1.816 | 0.485 |  1.048 |  2.00 |
| Experimental |      | Urbana |          |       | vocab.pre |   2 | 25.000 |   25.0 |  24 |  26 | 1.414 | 1.000 | 12.706 |  1.00 |
| Experimental |      |        |          |       | vocab.pre |   5 | 25.400 |   24.0 |  23 |  29 | 2.881 | 1.288 |  3.577 |  5.00 |
| Controle     |      | Rural  |          |       | vocab.pos |  20 | 26.100 |   26.0 |  14 |  38 | 5.399 | 1.207 |  2.527 |  5.25 |
| Controle     |      | Urbana |          |       | vocab.pos |   2 | 24.500 |   24.5 |  23 |  26 | 2.121 | 1.500 | 19.059 |  1.50 |
| Controle     |      |        |          |       | vocab.pos |   9 | 24.778 |   24.0 |  15 |  40 | 7.997 | 2.666 |  6.147 |  7.00 |
| Experimental |      | Rural  |          |       | vocab.pos |  14 | 27.571 |   27.0 |  19 |  37 | 5.801 | 1.550 |  3.349 |  9.00 |
| Experimental |      | Urbana |          |       | vocab.pos |   2 | 22.000 |   22.0 |  18 |  26 | 5.657 | 4.000 | 50.825 |  4.00 |
| Experimental |      |        |          |       | vocab.pos |   5 | 28.400 |   26.0 |  21 |  40 | 7.092 | 3.172 |  8.806 |  3.00 |
| Controle     |      |        | Branca   |       | vocab.pre |   5 | 27.400 |   28.0 |  25 |  29 | 1.517 | 0.678 |  1.883 |  1.00 |
| Controle     |      |        | Indígena |       | vocab.pre |   2 | 25.000 |   25.0 |  24 |  26 | 1.414 | 1.000 | 12.706 |  1.00 |
| Controle     |      |        | Parda    |       | vocab.pre |  15 | 26.133 |   27.0 |  23 |  29 | 2.416 | 0.624 |  1.338 |  4.50 |
| Controle     |      |        |          |       | vocab.pre |   9 | 25.556 |   26.0 |  23 |  28 | 2.068 | 0.689 |  1.590 |  3.00 |
| Experimental |      |        | Branca   |       | vocab.pre |   3 | 25.000 |   24.0 |  23 |  28 | 2.646 | 1.528 |  6.572 |  2.50 |
| Experimental |      |        | Indígena |       | vocab.pre |   3 | 25.333 |   24.0 |  23 |  29 | 3.215 | 1.856 |  7.985 |  3.00 |
| Experimental |      |        | Parda    |       | vocab.pre |   5 | 25.200 |   26.0 |  23 |  27 | 1.643 | 0.735 |  2.040 |  2.00 |
| Experimental |      |        |          |       | vocab.pre |  10 | 25.400 |   25.0 |  23 |  29 | 1.897 | 0.600 |  1.357 |  2.00 |
| Controle     |      |        | Branca   |       | vocab.pos |   5 | 30.400 |   29.0 |  22 |  40 | 6.877 | 3.076 |  8.540 |  7.00 |
| Controle     |      |        | Indígena |       | vocab.pos |   2 | 26.000 |   26.0 |  25 |  27 | 1.414 | 1.000 | 12.706 |  1.00 |
| Controle     |      |        | Parda    |       | vocab.pos |  15 | 25.267 |   25.0 |  15 |  35 | 5.035 | 1.300 |  2.788 |  4.00 |
| Controle     |      |        |          |       | vocab.pos |   9 | 23.444 |   23.0 |  14 |  38 | 6.876 | 2.292 |  5.285 |  7.00 |
| Experimental |      |        | Branca   |       | vocab.pos |   3 | 31.000 |   32.0 |  26 |  35 | 4.583 | 2.646 | 11.384 |  4.50 |
| Experimental |      |        | Indígena |       | vocab.pos |   3 | 24.667 |   25.0 |  23 |  26 | 1.528 | 0.882 |  3.795 |  1.50 |
| Experimental |      |        | Parda    |       | vocab.pos |   5 | 24.800 |   22.0 |  18 |  35 | 6.760 | 3.023 |  8.394 |  7.00 |
| Experimental |      |        |          |       | vocab.pos |  10 | 28.100 |   27.0 |  19 |  40 | 6.707 | 2.121 |  4.798 |  7.50 |
| Controle     |      |        |          | 6 ano | vocab.pre |   9 | 26.000 |   27.0 |  23 |  29 | 2.179 | 0.726 |  1.675 |  3.00 |
| Controle     |      |        |          | 7 ano | vocab.pre |  12 | 25.583 |   25.5 |  23 |  29 | 2.353 | 0.679 |  1.495 |  5.00 |
| Controle     |      |        |          | 8 ano | vocab.pre |   1 | 24.000 |   24.0 |  24 |  24 |       |       |        |  0.00 |
| Controle     |      |        |          | 9 ano | vocab.pre |   9 | 27.111 |   28.0 |  24 |  29 | 1.764 | 0.588 |  1.356 |  2.00 |
| Experimental |      |        |          | 6 ano | vocab.pre |   5 | 25.400 |   26.0 |  24 |  27 | 1.342 | 0.600 |  1.666 |  2.00 |
| Experimental |      |        |          | 7 ano | vocab.pre |   4 | 24.500 |   24.5 |  23 |  26 | 1.291 | 0.645 |  2.054 |  1.50 |
| Experimental |      |        |          | 8 ano | vocab.pre |   5 | 24.600 |   24.0 |  23 |  28 | 2.074 | 0.927 |  2.575 |  2.00 |
| Experimental |      |        |          | 9 ano | vocab.pre |   7 | 26.143 |   26.0 |  23 |  29 | 2.545 | 0.962 |  2.354 |  4.50 |
| Controle     |      |        |          | 6 ano | vocab.pos |   9 | 23.222 |   23.0 |  14 |  27 | 3.962 | 1.321 |  3.045 |  4.00 |
| Controle     |      |        |          | 7 ano | vocab.pos |  12 | 27.583 |   26.5 |  15 |  40 | 6.986 | 2.017 |  4.439 |  7.25 |
| Controle     |      |        |          | 8 ano | vocab.pos |   1 | 17.000 |   17.0 |  17 |  17 |       |       |        |  0.00 |
| Controle     |      |        |          | 9 ano | vocab.pos |   9 | 26.333 |   25.0 |  19 |  35 | 5.523 | 1.841 |  4.245 |  5.00 |
| Experimental |      |        |          | 6 ano | vocab.pos |   5 | 27.600 |   26.0 |  23 |  35 | 4.506 | 2.015 |  5.594 |  2.00 |
| Experimental |      |        |          | 7 ano | vocab.pos |   4 | 25.750 |   25.0 |  21 |  32 | 5.188 | 2.594 |  8.255 |  7.25 |
| Experimental |      |        |          | 8 ano | vocab.pos |   5 | 27.600 |   26.0 |  19 |  37 | 8.112 | 3.628 | 10.072 | 14.00 |
| Experimental |      |        |          | 9 ano | vocab.pos |   7 | 27.571 |   26.0 |  18 |  40 | 7.044 | 2.662 |  6.515 |  6.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  52 | 0.5862968 | -0.2257663 | NO       | 3.5397238 | D’Agostino   | 0.1703565 | ns       | YES       |
| vocab.pos |  38 | 0.1763663 | -0.5992369 | YES      | 0.9890709 | Shapiro-Wilk | 0.9673676 | ns       | YES       |
| vocab.pos |  33 | 0.1039962 | -0.4686032 | YES      | 0.9693348 | Shapiro-Wilk | 0.4620440 | ns       | YES       |
| vocab.pos |  52 | 0.3079887 | -0.3177321 | YES      | 1.0424114 | D’Agostino   | 0.5938042 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  52 |       3 |      48 | 0.4930819 | 0.6887668 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  52 |       3 |      44 | 1.6890000 | 0.1830000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  38 |       3 |      34 | 0.4397672 | 0.7260264 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  38 |       3 |      30 | 0.5880000 | 0.6270000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  33 |       5 |      27 | 0.8137891 | 0.5503053 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  33 |       5 |      21 | 0.4310000 | 0.8220000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  52 |       7 |      44 | 0.7907880 | 0.5988756 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  52 |       6 |      37 | 1.4730000 | 0.2140000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:----------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre |   1 |  49 | 126.942 | 1690.222 | 3.680 | 0.061 | 0.070 |        |
| 2   | grupo     |   1 |  49 |  60.686 | 1690.222 | 1.759 | 0.191 | 0.035 |        |
| 4   | Sexo      |   1 |  49 |   0.834 | 1750.073 | 0.023 | 0.879 | 0.000 |        |
| 6   | Zona      |   1 |  35 |  40.324 | 1026.723 | 1.375 | 0.249 | 0.038 |        |
| 8   | Cor.Raca  |   2 |  29 | 153.251 |  734.515 | 3.025 | 0.064 | 0.173 |        |
| 10  | Serie     |   3 |  47 |  54.392 | 1696.516 | 0.502 | 0.683 | 0.031 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre      |   1 |  47 | 118.094 | 1649.436 | 3.365 | 0.073 | 0.067 |        |
| 4   | grupo:Sexo     |   1 |  47 |  35.072 | 1649.436 | 0.999 | 0.323 | 0.021 |        |
| 8   | grupo:Zona     |   1 |  33 |  13.275 |  995.490 | 0.440 | 0.512 | 0.013 |        |
| 12  | grupo:Cor.Raca |   2 |  26 |   9.587 |  724.374 | 0.172 | 0.843 | 0.013 |        |
| 16  | grupo:Serie    |   3 |  43 | 103.056 | 1517.572 | 0.973 | 0.414 | 0.064 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  31 |  26.097 |    0.389 |    25.613 |      1.079 |  25.364 |    1.063 |
| vocab.pos | Experimental |  21 |  25.286 |    0.432 |    27.238 |      1.322 |  27.606 |    1.296 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -2.243 |   -5.641 |     1.155 | 1.691 |    -1.326 | 0.191 | 0.191 | ns           |
| vocab.pre | Controle | Experimental |    0.811 |   -0.377 |     1.999 | 0.591 |     1.371 | 0.176 | 0.176 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |    0.484 |   -1.790 |     2.758 | 1.146 |     0.422 | 0.674 | 0.674 | ns           |
| vocab | Experimental | pre    | pos    |   -1.952 |   -4.715 |     0.810 | 1.393 |    -1.402 | 0.164 | 0.164 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  17 |  26.353 |    0.469 |    26.706 |      1.331 |  26.273 |    1.456 |
| vocab.pos | Controle     | M    |  14 |  25.786 |    0.656 |    24.286 |      1.749 |  24.273 |    1.583 |
| vocab.pos | Experimental | F    |   7 |  25.714 |    0.644 |    26.571 |      2.599 |  26.612 |    2.239 |
| vocab.pos | Experimental | M    |  14 |  25.071 |    0.569 |    27.571 |      1.564 |  28.089 |    1.608 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -0.339 |   -5.717 |     5.038 | 2.673 |    -0.127 | 0.900 | 0.900 | ns           |
| vocab.pos |              | M    | Controle | Experimental |   -3.816 |   -8.357 |     0.726 | 2.258 |    -1.690 | 0.098 | 0.098 | ns           |
| vocab.pre |              | F    | Controle | Experimental |    0.639 |   -1.271 |     2.548 | 0.950 |     0.673 | 0.504 | 0.504 | ns           |
| vocab.pre |              | M    | Controle | Experimental |    0.714 |   -0.893 |     2.321 | 0.799 |     0.894 | 0.376 | 0.376 | ns           |
| vocab.pos | Controle     |      | F        | M            |    1.999 |   -2.326 |     6.325 | 2.150 |     0.930 | 0.357 | 0.357 | ns           |
| vocab.pos | Experimental |      | F        | M            |   -1.477 |   -7.018 |     4.065 | 2.755 |    -0.536 | 0.594 | 0.594 | ns           |
| vocab.pre | Controle     |      | F        | M            |    0.567 |   -0.967 |     2.102 | 0.763 |     0.743 | 0.461 | 0.461 | ns           |
| vocab.pre | Experimental |      | F        | M            |    0.643 |   -1.325 |     2.611 | 0.979 |     0.657 | 0.514 | 0.514 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -0.353 |   -3.447 |     2.741 | 1.559 |    -0.226 | 0.821 | 0.821 | ns           |
| vocab | Controle     | M    | pre    | pos    |    1.500 |   -1.909 |     4.909 | 1.717 |     0.873 | 0.385 | 0.385 | ns           |
| vocab | Experimental | F    | pre    | pos    |   -0.857 |   -5.678 |     3.964 | 2.429 |    -0.353 | 0.725 | 0.725 | ns           |
| vocab | Experimental | M    | pre    | pos    |   -2.500 |   -5.909 |     0.909 | 1.717 |    -1.456 | 0.149 | 0.149 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |   5 |  27.400 |    0.678 |    30.400 |      3.076 |  29.493 |    2.612 |
| vocab.pos | Controle     | Parda    |  15 |  26.133 |    0.624 |    25.267 |      1.300 |  25.317 |    1.458 |
| vocab.pos | Experimental | Parda    |   5 |  25.200 |    0.735 |    24.800 |      3.023 |  25.556 |    2.585 |

|     | .y.       | grupo    | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:---------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | vocab.pos |          | Parda    | Controle | Experimental |   -0.239 |   -6.396 |     5.919 | 2.961 |    -0.081 | 0.937 | 0.937 | ns           |
| 4   | vocab.pre |          | Parda    | Controle | Experimental |    0.933 |   -1.370 |     3.236 | 1.110 |     0.840 | 0.410 | 0.410 | ns           |
| 5   | vocab.pos | Controle |          | Branca   | Parda        |    4.176 |   -2.061 |    10.414 | 2.999 |     1.392 | 0.178 | 0.178 | ns           |
| 7   | vocab.pre | Controle |          | Branca   | Parda        |    1.267 |   -1.036 |     3.570 | 1.110 |     1.141 | 0.266 | 0.266 | ns           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |   -3.000 |   -8.532 |     2.532 | 2.745 |    -1.093 | 0.280 | 0.280 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |    0.867 |   -2.327 |     4.060 | 1.585 |     0.547 | 0.587 | 0.587 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |    0.400 |   -5.132 |     5.932 | 2.745 |     0.146 | 0.885 | 0.885 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var       | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 6 ano |   9 |  26.000 |    0.726 |    23.222 |      1.321 |  23.164 |    2.015 |
| vocab.pos | Controle     | 7 ano |  12 |  25.583 |    0.679 |    27.583 |      2.017 |  27.810 |    1.751 |
| vocab.pos | Controle     | 9 ano |   9 |  27.111 |    0.588 |    26.333 |      1.841 |  25.515 |    2.083 |
| vocab.pos | Experimental | 6 ano |   5 |  25.400 |    0.600 |    27.600 |      2.015 |  27.952 |    2.712 |
| vocab.pos | Experimental | 8 ano |   5 |  24.600 |    0.927 |    27.600 |      3.628 |  28.500 |    2.765 |
| vocab.pos | Experimental | 9 ano |   7 |  26.143 |    0.962 |    27.571 |      2.662 |  27.415 |    2.286 |

|     | .y.       | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | vocab.pos |              | 6 ano | Controle | Experimental |   -4.788 |  -11.622 |     2.046 | 3.381 |    -1.416 | 0.164 | 0.164 | ns           |
| 4   | vocab.pos |              | 9 ano | Controle | Experimental |   -1.901 |   -8.117 |     4.315 | 3.076 |    -0.618 | 0.540 | 0.540 | ns           |
| 5   | vocab.pre |              | 6 ano | Controle | Experimental |    0.600 |   -1.806 |     3.006 | 1.191 |     0.504 | 0.617 | 0.617 | ns           |
| 8   | vocab.pre |              | 9 ano | Controle | Experimental |    0.968 |   -1.206 |     3.142 | 1.076 |     0.899 | 0.374 | 0.374 | ns           |
| 9   | vocab.pos | Controle     |       | 6 ano    | 7 ano        |   -4.646 |  -10.045 |     0.753 | 2.671 |    -1.739 | 0.090 | 0.269 | ns           |
| 11  | vocab.pos | Controle     |       | 6 ano    | 9 ano        |   -2.351 |   -8.194 |     3.492 | 2.891 |    -0.813 | 0.421 | 1.000 | ns           |
| 13  | vocab.pos | Controle     |       | 7 ano    | 9 ano        |    2.295 |   -3.261 |     7.852 | 2.749 |     0.835 | 0.409 | 1.000 | ns           |
| 16  | vocab.pos | Experimental |       | 6 ano    | 8 ano        |   -0.547 |   -8.306 |     7.211 | 3.839 |    -0.143 | 0.887 | 1.000 | ns           |
| 17  | vocab.pos | Experimental |       | 6 ano    | 9 ano        |    0.537 |   -6.646 |     7.720 | 3.554 |     0.151 | 0.881 | 1.000 | ns           |
| 20  | vocab.pos | Experimental |       | 8 ano    | 9 ano        |    1.084 |   -6.199 |     8.368 | 3.604 |     0.301 | 0.765 | 1.000 | ns           |
| 21  | vocab.pre | Controle     |       | 6 ano    | 7 ano        |    0.417 |   -1.486 |     2.319 | 0.942 |     0.442 | 0.661 | 1.000 | ns           |
| 23  | vocab.pre | Controle     |       | 6 ano    | 9 ano        |   -1.111 |   -3.145 |     0.922 | 1.007 |    -1.103 | 0.276 | 0.829 | ns           |
| 25  | vocab.pre | Controle     |       | 7 ano    | 9 ano        |   -1.528 |   -3.430 |     0.374 | 0.942 |    -1.622 | 0.112 | 0.337 | ns           |
| 28  | vocab.pre | Experimental |       | 6 ano    | 8 ano        |    0.800 |   -1.928 |     3.528 | 1.351 |     0.592 | 0.557 | 1.000 | ns           |
| 29  | vocab.pre | Experimental |       | 6 ano    | 9 ano        |   -0.743 |   -3.269 |     1.783 | 1.251 |    -0.594 | 0.556 | 1.000 | ns           |
| 32  | vocab.pre | Experimental |       | 8 ano    | 9 ano        |   -1.543 |   -4.069 |     0.983 | 1.251 |    -1.234 | 0.224 | 0.673 | ns           |

| .y.   | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | 6 ano | pre    | pos    |    2.778 |   -1.537 |     7.092 | 2.169 |     1.281 | 0.204 | 0.204 | ns           |
| vocab | Controle     | 7 ano | pre    | pos    |   -2.000 |   -5.736 |     1.736 | 1.878 |    -1.065 | 0.290 | 0.290 | ns           |
| vocab | Controle     | 9 ano | pre    | pos    |    0.778 |   -3.537 |     5.092 | 2.169 |     0.359 | 0.721 | 0.721 | ns           |
| vocab | Experimental | 6 ano | pre    | pos    |   -2.200 |   -7.988 |     3.588 | 2.910 |    -0.756 | 0.452 | 0.452 | ns           |
| vocab | Experimental | 8 ano | pre    | pos    |   -3.000 |   -8.788 |     2.788 | 2.910 |    -1.031 | 0.306 | 0.306 | ns           |
| vocab | Experimental | 9 ano | pre    | pos    |   -1.429 |   -6.321 |     3.464 | 2.459 |    -0.581 | 0.563 | 0.563 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-3rd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
