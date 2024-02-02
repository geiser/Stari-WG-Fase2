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
    - [factores:
      **grupo:TFL.corretas.per.min.quintile**](#factores-grupotflcorretasperminquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | TFL.corretas.per.min.quintile | variable                 |   n |    mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------------------------------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |                               | TFL.corretas.per.min.pre |   9 |  96.556 |   99.0 |  67 | 115 | 15.517 |  5.172 |  11.927 | 17.00 |
| Controle     | M    |        |          |                               | TFL.corretas.per.min.pre |  16 |  88.938 |   88.0 |  45 | 130 | 27.302 |  6.825 |  14.548 | 49.50 |
| Experimental | F    |        |          |                               | TFL.corretas.per.min.pre |   4 | 103.500 |  104.0 |  87 | 119 | 13.304 |  6.652 |  21.170 | 12.50 |
| Experimental | M    |        |          |                               | TFL.corretas.per.min.pre |   6 |  98.500 |   94.5 |  65 | 134 | 22.563 |  9.211 |  23.679 | 11.50 |
| Controle     | F    |        |          |                               | TFL.corretas.per.min.pos |   9 | 132.111 |  136.0 | 101 | 176 | 27.131 |  9.044 |  20.855 | 36.00 |
| Controle     | M    |        |          |                               | TFL.corretas.per.min.pos |  16 | 116.062 |  116.0 |  65 | 162 | 26.132 |  6.533 |  13.925 | 31.25 |
| Experimental | F    |        |          |                               | TFL.corretas.per.min.pos |   4 | 124.250 |  127.0 |  93 | 150 | 25.448 | 12.724 |  40.493 | 32.25 |
| Experimental | M    |        |          |                               | TFL.corretas.per.min.pos |   6 | 117.333 |  111.5 |  99 | 139 | 15.629 |  6.381 |  16.402 | 19.00 |
| Controle     |      | Rural  |          |                               | TFL.corretas.per.min.pre |  12 |  96.083 |  105.5 |  45 | 130 | 28.353 |  8.185 |  18.015 | 39.75 |
| Controle     |      | Urbana |          |                               | TFL.corretas.per.min.pre |   1 | 109.000 |  109.0 | 109 | 109 |        |        |         |  0.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pre |  12 |  85.833 |   88.5 |  56 | 115 | 18.230 |  5.263 |  11.583 | 24.50 |
| Experimental |      | Rural  |          |                               | TFL.corretas.per.min.pre |   6 | 100.667 |  101.0 |  65 | 134 | 22.669 |  9.254 |  23.789 | 14.25 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pre |   4 | 100.250 |   97.5 |  87 | 119 | 13.745 |  6.872 |  21.871 | 13.25 |
| Controle     |      | Rural  |          |                               | TFL.corretas.per.min.pos |  12 | 111.500 |  114.5 |  65 | 148 | 19.515 |  5.633 |  12.399 | 13.25 |
| Controle     |      | Urbana |          |                               | TFL.corretas.per.min.pos |   1 | 164.000 |  164.0 | 164 | 164 |        |        |         |  0.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pos |  12 | 128.667 |  137.0 |  74 | 176 | 29.858 |  8.619 |  18.971 | 33.25 |
| Experimental |      | Rural  |          |                               | TFL.corretas.per.min.pos |   6 | 113.333 |  111.5 |  99 | 134 | 11.501 |  4.695 |  12.069 |  4.75 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pos |   4 | 130.250 |  139.0 |  93 | 150 | 25.369 | 12.684 |  40.368 | 14.25 |
| Controle     |      |        | Branca   |                               | TFL.corretas.per.min.pre |   3 | 109.000 |  116.0 |  91 | 120 | 15.716 |  9.074 |  39.041 | 14.50 |
| Controle     |      |        | Indígena |                               | TFL.corretas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |                               | TFL.corretas.per.min.pre |   9 |  93.556 |   97.0 |  45 | 130 | 29.619 |  9.873 |  22.767 | 48.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pre |  12 |  85.333 |   84.5 |  53 | 115 | 20.137 |  5.813 |  12.795 | 28.75 |
| Experimental |      |        | Branca   |                               | TFL.corretas.per.min.pre |   1 |  95.000 |   95.0 |  95 |  95 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |                               | TFL.corretas.per.min.pre |   3 | 103.333 |  107.0 |  94 | 109 |  8.145 |  4.702 |  20.232 |  7.50 |
| Experimental |      |        | Parda    |                               | TFL.corretas.per.min.pre |   3 |  95.333 |   87.0 |  65 | 134 | 35.247 | 20.350 |  87.558 | 34.50 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pre |   3 | 104.667 |  101.0 |  94 | 119 | 12.897 |  7.446 |  32.038 | 12.50 |
| Controle     |      |        | Branca   |                               | TFL.corretas.per.min.pos |   3 | 117.333 |  117.0 | 107 | 128 | 10.504 |  6.064 |  26.093 | 10.50 |
| Controle     |      |        | Indígena |                               | TFL.corretas.per.min.pos |   1 | 115.000 |  115.0 | 115 | 115 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |                               | TFL.corretas.per.min.pos |   9 |  99.667 |  106.0 |  65 | 121 | 19.429 |  6.476 |  14.935 | 24.00 |
| Controle     |      |        |          |                               | TFL.corretas.per.min.pos |  12 | 140.167 |  139.0 |  98 | 176 | 22.986 |  6.635 |  14.604 | 16.00 |
| Experimental |      |        | Branca   |                               | TFL.corretas.per.min.pos |   1 | 109.000 |  109.0 | 109 | 109 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |                               | TFL.corretas.per.min.pos |   3 | 112.667 |  112.0 | 111 | 115 |  2.082 |  1.202 |   5.171 |  2.00 |
| Experimental |      |        | Parda    |                               | TFL.corretas.per.min.pos |   3 | 108.667 |   99.0 |  93 | 134 | 22.143 | 12.785 |  55.007 | 20.50 |
| Experimental |      |        |          |                               | TFL.corretas.per.min.pos |   3 | 142.667 |  139.0 | 139 | 150 |  6.351 |  3.667 |  15.776 |  5.50 |
| Controle     |      |        |          | 1st quintile                  | TFL.corretas.per.min.pre |   5 |  56.200 |   56.0 |  45 |  67 |  8.167 |  3.652 |  10.141 |  7.00 |
| Controle     |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pre |   4 |  77.500 |   78.5 |  69 |  84 |  6.557 |  3.279 |  10.434 |  7.50 |
| Controle     |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pre |   4 |  90.000 |   91.5 |  85 |  92 |  3.367 |  1.683 |   5.357 |  2.50 |
| Controle     |      |        |          | 4th quintile                  | TFL.corretas.per.min.pre |   5 | 102.200 |  102.0 |  97 | 109 |  4.658 |  2.083 |   5.784 |  5.00 |
| Controle     |      |        |          | 5th quintile                  | TFL.corretas.per.min.pre |   7 | 118.571 |  117.0 | 112 | 130 |  5.769 |  2.181 |   5.336 |  4.50 |
| Experimental |      |        |          | 1st quintile                  | TFL.corretas.per.min.pre |   1 |  65.000 |   65.0 |  65 |  65 |        |        |         |  0.00 |
| Experimental |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pre |   3 |  91.667 |   94.0 |  87 |  94 |  4.041 |  2.333 |  10.040 |  3.50 |
| Experimental |      |        |          | 4th quintile                  | TFL.corretas.per.min.pre |   4 | 103.000 |  104.0 |  95 | 109 |  6.325 |  3.162 |  10.064 |  8.00 |
| Experimental |      |        |          | 5th quintile                  | TFL.corretas.per.min.pre |   2 | 126.500 |  126.5 | 119 | 134 | 10.607 |  7.500 |  95.297 |  7.50 |
| Controle     |      |        |          | 1st quintile                  | TFL.corretas.per.min.pos |   5 | 114.200 |  115.0 |  74 | 148 | 29.567 | 13.223 |  36.712 | 38.00 |
| Controle     |      |        |          | 2nd quintile                  | TFL.corretas.per.min.pos |   4 | 109.750 |  117.5 |  65 | 139 | 34.267 | 17.134 |  54.527 | 43.25 |
| Controle     |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pos |   4 | 123.750 |  124.5 | 107 | 139 | 17.115 |  8.557 |  27.233 | 28.25 |
| Controle     |      |        |          | 4th quintile                  | TFL.corretas.per.min.pos |   5 | 135.600 |  147.0 |  90 | 164 | 32.161 | 14.383 |  39.933 | 47.00 |
| Controle     |      |        |          | 5th quintile                  | TFL.corretas.per.min.pos |   7 | 123.286 |  117.0 | 101 | 176 | 24.925 |  9.421 |  23.051 | 14.50 |
| Experimental |      |        |          | 1st quintile                  | TFL.corretas.per.min.pos |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |
| Experimental |      |        |          | 3rd quintile                  | TFL.corretas.per.min.pos |   3 | 114.333 |  111.0 |  93 | 139 | 23.180 | 13.383 |  57.583 | 23.00 |
| Experimental |      |        |          | 4th quintile                  | TFL.corretas.per.min.pos |   4 | 118.750 |  113.5 | 109 | 139 | 13.720 |  6.860 |  21.832 |  9.75 |
| Experimental |      |        |          | 5th quintile                  | TFL.corretas.per.min.pos |   2 | 142.000 |  142.0 | 134 | 150 | 11.314 |  8.000 | 101.650 |  8.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos |  35 |  0.0974550 | -0.9310880 | YES      | 0.9752874 | Shapiro-Wilk | 0.6033331 | ns       | YES       |
| TFL.corretas.per.min.pos |  19 | -0.0148566 |  2.2691207 | YES      | 0.8831733 | Shapiro-Wilk | 0.0243931 | \*       | NO        |
| TFL.corretas.per.min.pos |  20 |  0.6475447 |  1.5166733 | NO       | 0.9225862 | Shapiro-Wilk | 0.1111271 | ns       | YES       |
| TFL.corretas.per.min.pos |  35 |  0.1755136 | -0.3433629 | YES      | 0.9669778 | Shapiro-Wilk | 0.3657626 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                                         |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:------------------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`                          |  35 |       3 |      31 | 1.3262182 | 0.2836252 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`                          |  35 |       3 |      27 | 0.7210000 | 0.5480000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`                          |  19 |       2 |      16 | 1.1035723 | 0.3556519 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`                          |  19 |       1 |      14 | 1.3650000 | 0.2620000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`                      |  20 |       5 |      14 | 1.1259990 | 0.3913013 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`                      |  20 |       3 |      10 | 0.1960000 | 0.8970000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`TFL.corretas.per.min.quintile` |  35 |       8 |      26 | 0.4491024 | 0.8799347 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`TFL.corretas.per.min.quintile` |  35 |       7 |      18 | 1.3320000 | 0.2920000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                        | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre      |   1 |  32 | 2089.271 | 18804.989 | 3.555 | 0.068 | 0.100 |        |
| 2   | grupo                         |   1 |  32 |  163.988 | 18804.989 | 0.279 | 0.601 | 0.009 |        |
| 4   | Sexo                          |   1 |  32 |  990.359 | 17978.618 | 1.763 | 0.194 | 0.052 |        |
| 6   | Zona                          |   1 |  16 | 2380.657 |  4666.290 | 8.163 | 0.011 | 0.338 | \*     |
| 8   | Cor.Raca                      |   2 |  16 |  330.985 |  2901.249 | 0.913 | 0.421 | 0.102 |        |
| 10  | TFL.corretas.per.min.quintile |   4 |  29 |  617.046 | 18351.931 | 0.244 | 0.911 | 0.033 |        |

## ANCOVA tests for two factors

|     | Effect                              | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre            |   1 |  30 | 1605.921 | 17689.989 | 2.723 | 0.109 | 0.083 |        |
| 4   | grupo:Sexo                          |   1 |  30 |  116.827 | 17689.989 | 0.198 | 0.659 | 0.007 |        |
| 8   | grupo:Zona                          |   0 |  15 |          |  4660.168 |       |       |       |        |
| 12  | grupo:Cor.Raca                      |   2 |  13 |  125.081 |  2727.426 | 0.298 | 0.747 | 0.044 |        |
| 16  | grupo:TFL.corretas.per.min.quintile |   3 |  25 |  988.852 | 16821.851 | 0.490 | 0.692 | 0.056 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  25 |   91.68 |    4.733 |    121.84 |      5.418 | 122.735 |    4.871 |
| TFL.corretas.per.min.pos | Experimental |  10 |  100.50 |    5.903 |    120.10 |      6.036 | 117.863 |    7.757 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |    4.871 |  -13.912 |    23.654 | 9.221 |     0.528 | 0.601 | 0.601 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |   -8.820 |  -25.882 |     8.242 | 8.386 |    -1.052 | 0.301 | 0.301 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |     se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |   -30.16 |  -43.616 |   -16.704 |  6.739 |    -4.475 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | pre    | pos    |   -19.60 |  -40.876 |     1.676 | 10.656 |    -1.839 | 0.07    | 0.07    | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |   9 |  96.556 |    5.172 |   132.111 |      9.044 | 131.145 |    8.194 |
| TFL.corretas.per.min.pos | Controle     | M    |  16 |  88.938 |    6.825 |   116.062 |      6.533 | 117.166 |    6.175 |
| TFL.corretas.per.min.pos | Experimental | M    |   6 |  98.500 |    9.211 |   117.333 |      6.381 | 115.839 |   10.057 |

|     | .y.                      | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 2   | TFL.corretas.per.min.pos |          | M    | Controle | Experimental |    1.327 |  -23.036 |    25.690 | 11.874 |     0.112 | 0.912 | 0.912 | ns           |
| 4   | TFL.corretas.per.min.pre |          | M    | Controle | Experimental |   -9.562 |  -32.747 |    13.622 | 11.319 |    -0.845 | 0.405 | 0.405 | ns           |
| 5   | TFL.corretas.per.min.pos | Controle |      | F        | M            |   13.979 |   -7.183 |    35.141 | 10.314 |     1.355 | 0.187 | 0.187 | ns           |
| 7   | TFL.corretas.per.min.pre | Controle |      | F        | M            |    7.618 |  -12.562 |    27.798 |  9.852 |     0.773 | 0.446 | 0.446 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -35.556 |  -58.482 |   -12.630 | 11.444 |    -3.107 | 0.003 | 0.003 | \*\*         |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |  -27.125 |  -44.319 |    -9.931 |  8.583 |    -3.160 | 0.003 | 0.003 | \*\*         |
| TFL.corretas.per.min | Experimental | M    | pre    | pos    |  -18.833 |  -46.912 |     9.245 | 14.017 |    -1.344 | 0.184 | 0.184 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:TFL.corretas.per.min.quintile**
