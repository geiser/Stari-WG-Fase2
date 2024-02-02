ANCOVA in Palavras Lidas (1 Min) (Palavras Lidas (1 Min))
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
  Palavras Lidas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Lidas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable              |   n |    mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:----------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |       | TFL.lidas.per.min.pre |   6 |  78.333 |   79.0 |  68 |  86 |  6.713 |  2.741 |   7.045 |  8.50 |
| Controle     | M    |        |          |       | TFL.lidas.per.min.pre |  13 |  78.231 |   82.0 |  68 |  86 |  7.132 |  1.978 |   4.310 | 12.00 |
| Experimental | F    |        |          |       | TFL.lidas.per.min.pre |   2 |  72.000 |   72.0 |  68 |  76 |  5.657 |  4.000 |  50.825 |  4.00 |
| Experimental | M    |        |          |       | TFL.lidas.per.min.pre |  10 |  78.500 |   80.0 |  68 |  86 |  6.169 |  1.951 |   4.413 |  5.25 |
| Controle     | F    |        |          |       | TFL.lidas.per.min.pos |   6 | 107.333 |  100.0 |  87 | 136 | 19.367 |  7.906 |  20.324 | 25.25 |
| Controle     | M    |        |          |       | TFL.lidas.per.min.pos |  13 | 103.385 |   91.0 |  67 | 139 | 27.427 |  7.607 |  16.574 | 47.00 |
| Experimental | F    |        |          |       | TFL.lidas.per.min.pos |   2 | 113.500 |  113.5 |  82 | 145 | 44.548 | 31.500 | 400.245 | 31.50 |
| Experimental | M    |        |          |       | TFL.lidas.per.min.pos |  10 |  89.500 |   92.5 |  70 | 101 |  9.767 |  3.089 |   6.987 | 12.50 |
| Controle     |      | Rural  |          |       | TFL.lidas.per.min.pre |  10 |  76.600 |   77.0 |  68 |  86 |  7.291 |  2.306 |   5.216 | 13.00 |
| Controle     |      | Urbana |          |       | TFL.lidas.per.min.pre |   1 |  83.000 |   83.0 |  83 |  83 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pre |   8 |  79.750 |   82.5 |  68 |  86 |  6.431 |  2.274 |   5.376 |  8.75 |
| Experimental |      | Rural  |          |       | TFL.lidas.per.min.pre |  10 |  77.700 |   80.0 |  68 |  86 |  6.993 |  2.211 |   5.002 | 11.25 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pre |   2 |  76.000 |   76.0 |  76 |  76 |  0.000 |  0.000 |   0.000 |  0.00 |
| Controle     |      | Rural  |          |       | TFL.lidas.per.min.pos |  10 |  86.700 |   89.0 |  67 | 104 | 11.136 |  3.522 |   7.966 |  7.00 |
| Controle     |      | Urbana |          |       | TFL.lidas.per.min.pos |   1 | 135.000 |  135.0 | 135 | 135 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pos |   8 | 123.250 |  132.0 |  87 | 139 | 20.492 |  7.245 |  17.132 | 18.50 |
| Experimental |      | Rural  |          |       | TFL.lidas.per.min.pos |  10 |  95.800 |   95.0 |  70 | 145 | 19.680 |  6.223 |  14.078 | 10.50 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pos |   2 |  82.000 |   82.0 |  82 |  82 |  0.000 |  0.000 |   0.000 |  0.00 |
| Controle     |      |        | Parda    |       | TFL.lidas.per.min.pre |   9 |  75.778 |   77.0 |  68 |  86 |  7.155 |  2.385 |   5.500 | 14.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pre |  10 |  80.500 |   82.5 |  68 |  86 |  5.968 |  1.887 |   4.269 |  7.50 |
| Experimental |      |        | Amarela  |       | TFL.lidas.per.min.pre |   1 |  76.000 |   76.0 |  76 |  76 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |       | TFL.lidas.per.min.pre |   1 |  82.000 |   82.0 |  82 |  82 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.lidas.per.min.pre |   6 |  78.833 |   80.0 |  68 |  84 |  5.601 |  2.286 |   5.877 |  2.25 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pre |   4 |  74.500 |   72.0 |  68 |  86 |  8.544 |  4.272 |  13.595 | 10.50 |
| Controle     |      |        | Parda    |       | TFL.lidas.per.min.pos |   9 |  85.667 |   90.0 |  67 |  96 | 10.464 |  3.488 |   8.044 |  8.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pos |  10 | 121.700 |  132.0 |  87 | 139 | 20.923 |  6.617 |  14.968 | 26.25 |
| Experimental |      |        | Amarela  |       | TFL.lidas.per.min.pos |   1 |  82.000 |   82.0 |  82 |  82 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |       | TFL.lidas.per.min.pos |   1 |  90.000 |   90.0 |  90 |  90 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.lidas.per.min.pos |   6 |  91.167 |   95.0 |  70 | 101 | 11.427 |  4.665 |  11.991 |  9.00 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pos |   4 | 100.750 |   89.0 |  80 | 145 | 30.347 | 15.173 |  48.288 | 26.75 |
| Controle     |      |        |          | 6 ano | TFL.lidas.per.min.pre |   4 |  78.250 |   79.5 |  68 |  86 |  7.762 |  3.881 |  12.351 |  8.25 |
| Controle     |      |        |          | 7 ano | TFL.lidas.per.min.pre |   4 |  75.250 |   75.5 |  68 |  82 |  5.852 |  2.926 |   9.312 |  5.75 |
| Controle     |      |        |          | 8 ano | TFL.lidas.per.min.pre |   5 |  80.400 |   83.0 |  68 |  86 |  7.162 |  3.203 |   8.893 |  3.00 |
| Controle     |      |        |          | 9 ano | TFL.lidas.per.min.pre |   6 |  78.500 |   80.0 |  68 |  86 |  7.583 |  3.096 |   7.958 | 11.75 |
| Experimental |      |        |          | 6 ano | TFL.lidas.per.min.pre |   5 |  74.800 |   76.0 |  68 |  82 |  6.573 |  2.939 |   8.161 | 12.00 |
| Experimental |      |        |          | 7 ano | TFL.lidas.per.min.pre |   3 |  79.333 |   80.0 |  76 |  82 |  3.055 |  1.764 |   7.589 |  3.00 |
| Experimental |      |        |          | 8 ano | TFL.lidas.per.min.pre |   3 |  83.000 |   84.0 |  79 |  86 |  3.606 |  2.082 |   8.957 |  3.50 |
| Experimental |      |        |          | 9 ano | TFL.lidas.per.min.pre |   1 |  68.000 |   68.0 |  68 |  68 |        |        |         |  0.00 |
| Controle     |      |        |          | 6 ano | TFL.lidas.per.min.pos |   4 |  87.750 |   88.5 |  83 |  91 |  3.594 |  1.797 |   5.719 |  4.25 |
| Controle     |      |        |          | 7 ano | TFL.lidas.per.min.pos |   4 |  90.500 |   89.5 |  87 |  96 |  4.041 |  2.021 |   6.431 |  4.50 |
| Controle     |      |        |          | 8 ano | TFL.lidas.per.min.pos |   5 | 111.200 |  126.0 |  70 | 135 | 27.833 | 12.447 |  34.560 | 35.00 |
| Controle     |      |        |          | 9 ano | TFL.lidas.per.min.pos |   6 | 119.833 |  135.0 |  67 | 139 | 29.116 | 11.887 |  30.556 | 26.75 |
| Experimental |      |        |          | 6 ano | TFL.lidas.per.min.pos |   5 |  94.400 |   82.0 |  70 | 145 | 29.653 | 13.261 |  36.819 | 15.00 |
| Experimental |      |        |          | 7 ano | TFL.lidas.per.min.pos |   3 |  90.333 |   90.0 |  82 |  99 |  8.505 |  4.910 |  21.127 |  8.50 |
| Experimental |      |        |          | 8 ano | TFL.lidas.per.min.pos |   3 |  92.667 |   95.0 |  87 |  96 |  4.933 |  2.848 |  12.254 |  4.50 |
| Experimental |      |        |          | 9 ano | TFL.lidas.per.min.pos |   1 | 101.000 |  101.0 | 101 | 101 |        |        |         |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                   |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.lidas.per.min.pos |  31 |  0.3440383 | -1.0989895 | YES      | 0.9413453 | Shapiro-Wilk | 0.0899037 | ns       | YES       |
| TFL.lidas.per.min.pos |  21 |  1.2159770 |  2.9323318 | NO       | 0.8565222 | Shapiro-Wilk | 0.0055134 | \*\*     | NO        |
| TFL.lidas.per.min.pos |  17 | -0.8234661 | -0.0891849 | NO       | 0.9084601 | Shapiro-Wilk | 0.0942269 | ns       | YES       |
| TFL.lidas.per.min.pos |  31 |  0.0625550 |  1.4444261 | YES      | 0.9476021 | Shapiro-Wilk | 0.1340104 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                   | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  31 |       3 |      27 | 2.8869067 | 0.0539348 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  31 |       3 |      23 | 4.5250000 | 0.0120000 | \*       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  21 |       2 |      18 | 0.4987532 | 0.6154364 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  21 |       1 |      16 | 3.9760000 | 0.0630000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  17 |       3 |      13 | 0.6116489 | 0.6193559 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  17 |       1 |      11 | 2.0290000 | 0.1820000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  31 |       7 |      23 | 0.6958903 | 0.6750046 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  31 |       6 |      16 | 0.9090000 | 0.5130000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:----------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.lidas.per.min.pre |   1 |  28 |  465.807 | 14303.614 | 0.912 | 0.348 | 0.032 |        |
| 2   | grupo                 |   1 |  28 |  826.275 | 14303.614 | 1.617 | 0.214 | 0.055 |        |
| 4   | Sexo                  |   1 |  28 |  949.473 | 14180.416 | 1.875 | 0.182 | 0.063 |        |
| 6   | Zona                  |   1 |  18 | 1747.498 |  5015.005 | 6.272 | 0.022 | 0.258 | \*     |
| 8   | Cor.Raca              |   2 |  13 |   26.887 |  1482.692 | 0.118 | 0.890 | 0.018 |        |
| 10  | Serie                 |   3 |  26 | 3314.152 | 11815.738 | 2.431 | 0.088 | 0.219 |        |

## ANCOVA tests for two factors

|     | Effect                | DFn | DFd |     SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:----------------------|----:|----:|--------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.lidas.per.min.pre |   1 |  26 | 877.832 | 12867.579 | 1.774 | 0.194 | 0.064 |        |
| 4   | grupo:Sexo            |   1 |  26 | 749.409 | 12867.579 | 1.514 | 0.230 | 0.055 |        |
| 8   | grupo:Zona            |   0 |  17 |         |  4601.083 |       |       |       |        |
| 12  | grupo:Cor.Raca        |   0 |  12 |         |  1423.287 |       |       |       |        |
| 16  | grupo:Serie           |   3 |  22 | 900.738 | 10744.164 | 0.615 | 0.613 | 0.077 |        |

## Pairwise comparisons for one factor: **grupo**

| var                   | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     |  19 |  78.263 |    1.563 |   104.632 |      5.663 | 104.434 |    5.189 |
| TFL.lidas.per.min.pos | Experimental |  12 |  77.417 |    1.836 |    93.500 |      5.368 |  93.813 |    6.533 |

| .y.                   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min.pos | Controle | Experimental |   10.621 |   -6.486 |    27.728 | 8.351 |     1.272 | 0.214 | 0.214 | ns           |
| TFL.lidas.per.min.pre | Controle | Experimental |    0.846 |   -4.165 |     5.858 | 2.450 |     0.345 | 0.732 | 0.732 | ns           |

| .y.               | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.lidas.per.min | Controle     | pre    | pos    |  -26.368 |  -37.172 |   -15.565 | 5.397 |    -4.886 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.lidas.per.min | Experimental | pre    | pos    |  -16.083 |  -29.677 |    -2.489 | 6.791 |    -2.368 | 0.021   | 0.021   | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                   | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | F    |   6 |  78.333 |    2.741 |   107.333 |      7.906 | 107.346 |    8.312 |
| TFL.lidas.per.min.pos | Controle     | M    |  13 |  78.231 |    1.978 |   103.385 |      7.607 | 103.509 |    5.648 |
| TFL.lidas.per.min.pos | Experimental | M    |  10 |  78.500 |    1.951 |    89.500 |      3.089 |  89.331 |    6.439 |

|     | .y.                   | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 2   | TFL.lidas.per.min.pos |          | M    | Controle | Experimental |   14.178 |   -3.464 |    31.819 |  8.566 |     1.655 | 0.110 | 0.110 | ns           |
| 4   | TFL.lidas.per.min.pre |          | M    | Controle | Experimental |   -0.269 |   -6.089 |     5.551 |  2.831 |    -0.095 | 0.925 | 0.925 | ns           |
| 5   | TFL.lidas.per.min.pos | Controle |      | F        | M            |    3.837 |  -16.860 |    24.534 | 10.049 |     0.382 | 0.706 | 0.706 | ns           |
| 7   | TFL.lidas.per.min.pre | Controle |      | F        | M            |    0.103 |   -6.727 |     6.932 |  3.322 |     0.031 | 0.976 | 0.976 | ns           |

| .y.               | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.lidas.per.min | Controle     | F    | pre    | pos    |  -29.000 |  -47.275 |   -10.725 | 9.107 |    -3.184 | 0.002   | 0.002   | \*\*         |
| TFL.lidas.per.min | Controle     | M    | pre    | pos    |  -25.154 |  -37.569 |   -12.738 | 6.187 |    -4.065 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.lidas.per.min | Experimental | M    | pre    | pos    |  -11.000 |  -25.156 |     3.156 | 7.054 |    -1.559 | 0.125   | 0.125   | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-2nd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**

| var                   | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | F    |   6 |  78.333 |    2.741 |   107.333 |      7.906 | 107.346 |    8.312 |
| TFL.lidas.per.min.pos | Controle     | M    |  13 |  78.231 |    1.978 |   103.385 |      7.607 | 103.509 |    5.648 |
| TFL.lidas.per.min.pos | Experimental | M    |  10 |  78.500 |    1.951 |    89.500 |      3.089 |  89.331 |    6.439 |
