ANCOVA in Palavras Corretas (1 Min) (Palavras Corretas (1 Min))
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
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                 |   n |    mean | median | min | max |     sd |     se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|-------:|------:|
| Controle     | F    |        |          |       | TFL.corretas.per.min.pre |   7 |  90.286 |   92.0 |  87 |  94 |  2.870 |  1.085 |  2.654 |  4.50 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pre |  11 |  88.727 |   89.0 |  85 |  93 |  2.796 |  0.843 |  1.878 |  4.50 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pre |   8 |  90.500 |   90.0 |  87 |  94 |  2.563 |  0.906 |  2.143 |  4.25 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pre |   7 |  91.286 |   92.0 |  85 |  94 |  3.094 |  1.169 |  2.861 |  2.00 |
| Controle     | F    |        |          |       | TFL.corretas.per.min.pos |   7 | 113.286 |  111.0 |  87 | 138 | 22.485 |  8.498 | 20.795 | 41.50 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pos |  11 | 103.364 |   90.0 |  68 | 150 | 26.493 |  7.988 | 17.798 | 35.00 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pos |   8 | 107.250 |  114.0 |  93 | 116 | 10.498 |  3.712 |  8.777 | 18.75 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pos |   7 | 117.143 |  111.0 |  93 | 139 | 17.506 |  6.617 | 16.191 | 26.50 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pre |  11 |  90.182 |   91.0 |  86 |  94 |  2.562 |  0.772 |  1.721 |  3.50 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pre |   1 |  88.000 |   88.0 |  88 |  88 |        |        |        |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   6 |  88.000 |   87.0 |  85 |  92 |  3.225 |  1.317 |  3.384 |  5.25 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pre |   9 |  90.667 |   92.0 |  85 |  94 |  2.915 |  0.972 |  2.241 |  4.00 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pre |   3 |  91.333 |   90.0 |  90 |  94 |  2.309 |  1.333 |  5.737 |  2.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   3 |  91.000 |   92.0 |  87 |  94 |  3.606 |  2.082 |  8.957 |  3.50 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pos |  11 |  99.455 |   88.0 |  68 | 150 | 24.594 |  7.415 | 16.523 | 24.00 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pos |   1 | 135.000 |  135.0 | 135 | 135 |        |        |        |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   6 | 116.833 |  120.5 |  90 | 139 | 22.067 |  9.009 | 23.158 | 38.50 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pos |   9 | 109.778 |  111.0 |  93 | 130 | 11.043 |  3.681 |  8.488 | 11.00 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pos |   3 | 107.667 |  114.0 |  94 | 115 | 11.846 |  6.839 | 29.428 | 10.50 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   3 | 122.333 |  135.0 |  93 | 139 | 25.482 | 14.712 | 63.301 | 23.00 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pre |   4 |  90.500 |   91.0 |  88 |  92 |  1.732 |  0.866 |  2.756 |  1.00 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pre |   1 |  89.000 |   89.0 |  89 |  89 |        |        |        |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pre |   8 |  90.000 |   90.5 |  86 |  94 |  3.117 |  1.102 |  2.606 |  5.25 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   5 |  87.400 |   87.0 |  85 |  92 |  2.881 |  1.288 |  3.577 |  3.00 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pre |   1 |  92.000 |   92.0 |  92 |  92 |        |        |        |  0.00 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pre |   2 |  93.500 |   93.5 |  93 |  94 |  0.707 |  0.500 |  6.353 |  0.50 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pre |   3 |  87.000 |   87.0 |  85 |  89 |  2.000 |  1.155 |  4.968 |  2.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   9 |  91.444 |   92.0 |  88 |  94 |  2.068 |  0.689 |  1.590 |  3.00 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pos |   4 | 115.750 |  109.5 |  94 | 150 | 24.061 | 12.030 | 38.286 | 17.75 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pos |   1 |  88.000 |   88.0 |  88 |  88 |        |        |        |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pos |   8 |  87.750 |   87.5 |  68 | 111 | 12.092 |  4.275 | 10.109 |  7.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   5 | 135.400 |  135.0 | 130 | 139 |  3.507 |  1.568 |  4.355 |  3.00 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pos |   1 | 108.000 |  108.0 | 108 | 108 |        |        |        |  0.00 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pos |   2 | 113.500 |  113.5 | 111 | 116 |  3.536 |  2.500 | 31.766 |  2.50 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pos |   3 | 104.000 |  104.0 |  93 | 115 | 11.000 |  6.351 | 27.326 | 11.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   9 | 114.556 |  114.0 |  93 | 139 | 17.501 |  5.834 | 13.452 | 33.00 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pre |   7 |  90.286 |   91.0 |  87 |  94 |  2.928 |  1.107 |  2.708 |  5.00 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pre |   3 |  88.667 |   89.0 |  88 |  89 |  0.577 |  0.333 |  1.434 |  0.50 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pre |   4 |  87.500 |   86.5 |  85 |  92 |  3.109 |  1.555 |  4.947 |  2.50 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pre |   4 |  90.000 |   91.5 |  85 |  92 |  3.367 |  1.683 |  5.357 |  2.50 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pre |   5 |  90.200 |   90.0 |  85 |  94 |  3.564 |  1.594 |  4.425 |  4.00 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pre |   3 |  90.333 |   90.0 |  88 |  93 |  2.517 |  1.453 |  6.252 |  2.50 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pre |   4 |  91.500 |   92.0 |  90 |  92 |  1.000 |  0.500 |  1.591 |  0.50 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pre |   3 |  91.667 |   94.0 |  87 |  94 |  4.041 |  2.333 | 10.040 |  3.50 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pos |   7 | 105.714 |   94.0 |  84 | 135 | 21.892 |  8.274 | 20.246 | 33.50 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pos |   3 | 108.667 |   88.0 |  88 | 150 | 35.796 | 20.667 | 88.921 | 31.00 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pos |   4 |  92.250 |   85.5 |  68 | 130 | 26.738 | 13.369 | 42.546 | 22.25 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pos |   4 | 123.750 |  124.5 | 107 | 139 | 17.115 |  8.557 | 27.233 | 28.25 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pos |   5 | 105.000 |  104.0 |  94 | 115 |  9.823 |  4.393 | 12.197 | 18.00 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pos |   3 | 107.667 |  114.0 |  93 | 116 | 12.741 |  7.356 | 31.650 | 11.50 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pos |   4 | 121.750 |  122.0 | 108 | 135 | 12.816 |  6.408 | 20.393 | 18.75 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pos |   3 | 114.333 |  111.0 |  93 | 139 | 23.180 | 13.383 | 57.583 | 23.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos |  33 | 0.2196767 | -0.7636916 | YES      | 0.9758956 | Shapiro-Wilk | 0.6574181 | ns       | YES       |
| TFL.corretas.per.min.pos |  24 | 0.6290835 |  0.8153931 | NO       | 0.9467780 | Shapiro-Wilk | 0.2304759 | ns       | YES       |
| TFL.corretas.per.min.pos |  19 | 0.7643515 |  0.8041357 | NO       | 0.8908723 | Shapiro-Wilk | 0.0333626 | \*       | NO        |
| TFL.corretas.per.min.pos |  33 | 0.4290064 | -0.6898143 | YES      | 0.9697534 | Shapiro-Wilk | 0.4734113 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  33 |       3 |      29 | 1.2586879 | 0.3068492 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  33 |       3 |      25 | 1.2710000 | 0.3060000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  24 |       3 |      20 | 1.2243080 | 0.3268567 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  24 |       2 |      17 | 0.6970000 | 0.5120000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  19 |       5 |      13 | 0.6112969 | 0.6932760 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  19 |       3 |       9 | 4.9280000 | 0.0270000 | \*       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  33 |       7 |      25 | 0.3858758 | 0.9018128 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  33 |       7 |      17 | 2.1580000 | 0.0920000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  30 |  161.824 | 13287.020 | 0.365 | 0.550 | 0.012 |        |
| 2   | grupo                    |   1 |  30 |  263.424 | 13287.020 | 0.595 | 0.447 | 0.019 |        |
| 4   | Sexo                     |   1 |  30 |   24.162 | 13526.283 | 0.054 | 0.819 | 0.002 |        |
| 6   | Zona                     |   1 |  21 |  371.527 |  8006.334 | 0.974 | 0.335 | 0.044 |        |
| 8   | Cor.Raca                 |   2 |  15 | 1741.109 |  4032.717 | 3.238 | 0.068 | 0.302 |        |
| 10  | Serie                    |   3 |  28 | 1061.725 | 12488.720 | 0.793 | 0.508 | 0.078 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  28 |  373.524 | 12288.807 | 0.851 | 0.364 | 0.029 |        |
| 4   | grupo:Sexo               |   1 |  28 |  989.016 | 12288.807 | 2.253 | 0.145 | 0.074 |        |
| 8   | grupo:Zona               |   1 |  19 |  713.724 |  7027.083 | 1.930 | 0.181 | 0.092 |        |
| 12  | grupo:Cor.Raca           |   2 |  12 |  468.738 |  3004.224 | 0.936 | 0.419 | 0.135 |        |
| 16  | grupo:Serie              |   3 |  24 | 2171.632 |  9992.457 | 1.739 | 0.186 | 0.179 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  18 |  89.333 |    0.672 |   107.222 |      5.850 | 106.654 |    5.049 |
| TFL.corretas.per.min.pos | Experimental |  15 |  90.867 |    0.710 |   111.867 |      3.764 | 112.548 |    5.550 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |   -5.894 |  -21.501 |     9.714 | 7.642 |    -0.771 | 0.447 | 0.447 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |   -1.533 |   -3.533 |     0.466 | 0.980 |    -1.564 | 0.128 | 0.128 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |  -17.889 |  -27.791 |    -7.987 | 4.954 |    -3.611 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.corretas.per.min | Experimental | pre    | pos    |  -21.000 |  -31.847 |   -10.153 | 5.426 |    -3.870 | \<0.001 | \<0.001 | \*\*\*       |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |   7 |  90.286 |    1.085 |   113.286 |      8.498 | 113.610 |    7.926 |
| TFL.corretas.per.min.pos | Controle     | M    |  11 |  88.727 |    0.843 |   103.364 |      7.988 | 101.707 |    6.567 |
| TFL.corretas.per.min.pos | Experimental | F    |   8 |  90.500 |    0.906 |   107.250 |      3.712 | 107.847 |    7.435 |
| TFL.corretas.per.min.pos | Experimental | M    |   7 |  91.286 |    1.169 |   117.143 |      6.617 | 118.739 |    8.105 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos |              | F    | Controle | Experimental |    5.763 |  -16.455 |    27.981 | 10.846 |     0.531 | 0.599 | 0.599 | ns           |
| TFL.corretas.per.min.pos |              | M    | Controle | Experimental |  -17.032 |  -39.002 |     4.937 | 10.725 |    -1.588 | 0.124 | 0.124 | ns           |
| TFL.corretas.per.min.pre |              | F    | Controle | Experimental |   -0.214 |   -3.202 |     2.773 |  1.461 |    -0.147 | 0.884 | 0.884 | ns           |
| TFL.corretas.per.min.pre |              | M    | Controle | Experimental |   -2.558 |   -5.350 |     0.233 |  1.365 |    -1.875 | 0.071 | 0.071 | ns           |
| TFL.corretas.per.min.pos | Controle     |      | F        | M            |   11.904 |   -9.306 |    33.113 | 10.354 |     1.150 | 0.260 | 0.260 | ns           |
| TFL.corretas.per.min.pos | Experimental |      | F        | M            |  -10.892 |  -33.212 |    11.428 | 10.896 |    -1.000 | 0.326 | 0.326 | ns           |
| TFL.corretas.per.min.pre | Controle     |      | F        | M            |    1.558 |   -1.233 |     4.350 |  1.365 |     1.142 | 0.263 | 0.263 | ns           |
| TFL.corretas.per.min.pre | Experimental |      | F        | M            |   -0.786 |   -3.773 |     2.202 |  1.461 |    -0.538 | 0.595 | 0.595 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -23.000 |  -38.953 |    -7.047 | 7.970 |    -2.886 | 0.005 | 0.005 | \*\*         |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |  -14.636 |  -27.362 |    -1.910 | 6.358 |    -2.302 | 0.025 | 0.025 | \*           |
| TFL.corretas.per.min | Experimental | F    | pre    | pos    |  -16.750 |  -31.673 |    -1.827 | 7.455 |    -2.247 | 0.028 | 0.028 | \*           |
| TFL.corretas.per.min | Experimental | M    | pre    | pos    |  -25.857 |  -41.810 |    -9.904 | 7.970 |    -3.244 | 0.002 | 0.002 | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-3rd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
