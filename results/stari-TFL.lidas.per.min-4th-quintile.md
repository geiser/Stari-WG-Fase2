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
| Controle     | F    |        |          |       | TFL.lidas.per.min.pre |  11 | 103.182 |  102.0 |  98 | 110 |  4.167 |  1.256 |   2.799 |  5.50 |
| Controle     | M    |        |          |       | TFL.lidas.per.min.pre |  12 | 102.083 |  100.0 |  96 | 110 |  4.461 |  1.288 |   2.834 |  5.50 |
| Experimental | F    |        |          |       | TFL.lidas.per.min.pre |   6 | 101.667 |  100.0 |  96 | 110 |  5.750 |  2.348 |   6.035 |  8.50 |
| Experimental | M    |        |          |       | TFL.lidas.per.min.pre |   5 |  99.800 |   99.0 |  96 | 109 |  5.357 |  2.396 |   6.652 |  3.00 |
| Controle     | F    |        |          |       | TFL.lidas.per.min.pos |  11 | 128.273 |  120.0 |  93 | 165 | 20.060 |  6.048 |  13.477 | 24.00 |
| Controle     | M    |        |          |       | TFL.lidas.per.min.pos |  12 | 120.417 |  113.5 |  91 | 171 | 26.939 |  7.777 |  17.116 | 31.50 |
| Experimental | F    |        |          |       | TFL.lidas.per.min.pos |   6 | 136.667 |  128.5 | 102 | 195 | 33.566 | 13.703 |  35.225 | 32.25 |
| Experimental | M    |        |          |       | TFL.lidas.per.min.pos |   5 | 111.000 |  112.0 |  95 | 130 | 12.689 |  5.675 |  15.755 |  6.00 |
| Controle     |      | Rural  |          |       | TFL.lidas.per.min.pre |  12 | 101.917 |  101.0 |  96 | 110 |  4.461 |  1.288 |   2.834 |  4.50 |
| Controle     |      | Urbana |          |       | TFL.lidas.per.min.pre |   3 | 102.667 |   99.0 |  99 | 110 |  6.351 |  3.667 |  15.776 |  5.50 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pre |   8 | 103.625 |  104.0 |  99 | 109 |  3.503 |  1.238 |   2.928 |  4.75 |
| Experimental |      | Rural  |          |       | TFL.lidas.per.min.pre |   8 | 100.125 |   98.5 |  96 | 109 |  5.027 |  1.777 |   4.202 |  4.25 |
| Experimental |      | Urbana |          |       | TFL.lidas.per.min.pre |   2 | 103.000 |  103.0 |  96 | 110 |  9.899 |  7.000 |  88.943 |  7.00 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pre |   1 | 102.000 |  102.0 | 102 | 102 |        |        |         |  0.00 |
| Controle     |      | Rural  |          |       | TFL.lidas.per.min.pos |  12 | 115.750 |  117.0 |  92 | 135 | 12.871 |  3.715 |   8.178 |  6.75 |
| Controle     |      | Urbana |          |       | TFL.lidas.per.min.pos |   3 | 155.333 |  151.0 | 150 | 165 |  8.386 |  4.842 |  20.833 |  7.50 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pos |   8 | 125.125 |  115.0 |  91 | 171 | 30.768 | 10.878 |  25.723 | 50.25 |
| Experimental |      | Rural  |          |       | TFL.lidas.per.min.pos |   8 | 111.250 |  112.0 |  95 | 130 | 10.620 |  3.755 |   8.879 | 10.75 |
| Experimental |      | Urbana |          |       | TFL.lidas.per.min.pos |   2 | 173.000 |  173.0 | 151 | 195 | 31.113 | 22.000 | 279.537 | 22.00 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pos |   1 | 139.000 |  139.0 | 139 | 139 |        |        |         |  0.00 |
| Controle     |      |        | Branca   |       | TFL.lidas.per.min.pre |   3 | 104.333 |  105.0 | 102 | 106 |  2.082 |  1.202 |   5.171 |  2.00 |
| Controle     |      |        | Indígena |       | TFL.lidas.per.min.pre |   2 |  98.500 |   98.5 |  96 | 101 |  3.536 |  2.500 |  31.766 |  2.50 |
| Controle     |      |        | Parda    |       | TFL.lidas.per.min.pre |  10 | 102.700 |  101.0 |  98 | 110 |  4.668 |  1.476 |   3.339 |  6.50 |
| Controle     |      |        | Preta    |       | TFL.lidas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pre |   7 | 103.429 |  102.0 |  99 | 110 |  4.504 |  1.702 |   4.165 |  6.50 |
| Experimental |      |        | Branca   |       | TFL.lidas.per.min.pre |   1 |  96.000 |   96.0 |  96 |  96 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |       | TFL.lidas.per.min.pre |   5 | 102.000 |   99.0 |  97 | 109 |  5.568 |  2.490 |   6.913 |  9.00 |
| Experimental |      |        | Parda    |       | TFL.lidas.per.min.pre |   2 |  97.500 |   97.5 |  96 |  99 |  2.121 |  1.500 |  19.059 |  1.50 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pre |   3 | 102.667 |  102.0 |  96 | 110 |  7.024 |  4.055 |  17.448 |  7.00 |
| Controle     |      |        | Branca   |       | TFL.lidas.per.min.pos |   3 | 125.000 |  120.0 | 120 | 135 |  8.660 |  5.000 |  21.513 |  7.50 |
| Controle     |      |        | Indígena |       | TFL.lidas.per.min.pos |   2 | 104.500 |  104.5 |  92 | 117 | 17.678 | 12.500 | 158.828 | 12.50 |
| Controle     |      |        | Parda    |       | TFL.lidas.per.min.pos |  10 | 113.200 |  112.5 |  91 | 151 | 18.707 |  5.916 |  13.382 | 24.25 |
| Controle     |      |        | Preta    |       | TFL.lidas.per.min.pos |   1 | 118.000 |  118.0 | 118 | 118 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.lidas.per.min.pos |   7 | 146.000 |  150.0 | 110 | 171 | 23.791 |  8.992 |  22.003 | 31.50 |
| Experimental |      |        | Branca   |       | TFL.lidas.per.min.pos |   1 | 151.000 |  151.0 | 151 | 151 |        |        |         |  0.00 |
| Experimental |      |        | Indígena |       | TFL.lidas.per.min.pos |   5 | 111.800 |  112.0 | 102 | 118 |  6.017 |  2.691 |   7.471 |  3.00 |
| Experimental |      |        | Parda    |       | TFL.lidas.per.min.pos |   2 | 100.500 |  100.5 |  95 | 106 |  7.778 |  5.500 |  69.884 |  5.50 |
| Experimental |      |        |          |       | TFL.lidas.per.min.pos |   3 | 154.667 |  139.0 | 130 | 195 | 35.218 | 20.333 |  87.487 | 32.50 |
| Controle     |      |        |          | 6 ano | TFL.lidas.per.min.pre |   9 | 102.333 |  101.0 |  98 | 110 |  4.637 |  1.546 |   3.564 |  4.00 |
| Controle     |      |        |          | 7 ano | TFL.lidas.per.min.pre |   6 | 101.833 |  102.0 |  96 | 106 |  4.355 |  1.778 |   4.570 |  6.75 |
| Controle     |      |        |          | 8 ano | TFL.lidas.per.min.pre |   2 | 104.000 |  104.0 |  99 | 109 |  7.071 |  5.000 |  63.531 |  5.00 |
| Controle     |      |        |          | 9 ano | TFL.lidas.per.min.pre |   6 | 103.333 |  103.0 |  99 | 110 |  3.777 |  1.542 |   3.964 |  2.75 |
| Experimental |      |        |          | 6 ano | TFL.lidas.per.min.pre |   4 | 100.250 |   97.5 |  96 | 110 |  6.652 |  3.326 |  10.585 |  5.75 |
| Experimental |      |        |          | 7 ano | TFL.lidas.per.min.pre |   2 |  97.500 |   97.5 |  97 |  98 |  0.707 |  0.500 |   6.353 |  0.50 |
| Experimental |      |        |          | 8 ano | TFL.lidas.per.min.pre |   1 |  96.000 |   96.0 |  96 |  96 |        |        |         |  0.00 |
| Experimental |      |        |          | 9 ano | TFL.lidas.per.min.pre |   4 | 104.250 |  104.5 |  99 | 109 |  4.573 |  2.287 |   7.277 |  6.25 |
| Controle     |      |        |          | 6 ano | TFL.lidas.per.min.pos |   9 | 119.667 |  117.0 |  93 | 151 | 16.830 |  5.610 |  12.937 | 19.00 |
| Controle     |      |        |          | 7 ano | TFL.lidas.per.min.pos |   6 | 112.833 |  119.0 |  92 | 126 | 13.243 |  5.406 |  13.897 | 14.75 |
| Controle     |      |        |          | 8 ano | TFL.lidas.per.min.pos |   2 | 160.500 |  160.5 | 150 | 171 | 14.849 | 10.500 | 133.415 | 10.50 |
| Controle     |      |        |          | 9 ano | TFL.lidas.per.min.pos |   6 | 130.167 |  132.0 |  91 | 165 | 32.214 | 13.151 |  33.807 | 54.75 |
| Experimental |      |        |          | 6 ano | TFL.lidas.per.min.pos |   4 | 136.750 |  128.5 |  95 | 195 | 45.770 | 22.885 |  72.831 | 58.75 |
| Experimental |      |        |          | 7 ano | TFL.lidas.per.min.pos |   2 | 110.000 |  110.0 | 102 | 118 | 11.314 |  8.000 | 101.650 |  8.00 |
| Experimental |      |        |          | 8 ano | TFL.lidas.per.min.pos |   1 | 130.000 |  130.0 | 130 | 130 |        |        |         |  0.00 |
| Experimental |      |        |          | 9 ano | TFL.lidas.per.min.pos |   4 | 119.500 |  113.5 | 112 | 139 | 13.077 |  6.538 |  20.808 |  9.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                   |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.lidas.per.min.pos |  34 | 0.4399461 | -1.0837516 | YES      | 0.9316441 | Shapiro-Wilk | 0.0349349 | \*       | NO        |
| TFL.lidas.per.min.pos |  25 | 0.1119445 | -0.8679651 | YES      | 0.9597913 | Shapiro-Wilk | 0.4103332 | ns       | YES       |
| TFL.lidas.per.min.pos |  24 | 0.5398551 |  0.8939857 | NO       | 0.9536018 | Shapiro-Wilk | 0.3236520 | ns       | YES       |
| TFL.lidas.per.min.pos |  34 | 0.0791073 | -0.8059765 | YES      | 0.9819220 | Shapiro-Wilk | 0.8311432 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                   | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  34 |       3 |      30 | 0.9445963 | 0.4314631 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  34 |       3 |      26 | 0.4370000 | 0.7280000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  25 |       3 |      21 | 1.4751064 | 0.2500438 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  25 |       3 |      17 | 1.5410000 | 0.2400000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  24 |       6 |      17 | 1.6962242 | 0.1825045 | ns       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  24 |       4 |      12 | 0.5480000 | 0.7040000 | ns       |
| TFL.lidas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  34 |       7 |      26 | 3.0378003 | 0.0179194 | \*       |
| TFL.lidas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  34 |       6 |      19 | 1.5190000 | 0.2250000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:----------------------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| 1   | TFL.lidas.per.min.pre |   1 |  31 | 2383.362 | 18051.943 |  4.093 | 0.052   | 0.117 |        |
| 2   | grupo                 |   1 |  31 |  124.223 | 18051.943 |  0.213 | 0.647   | 0.007 |        |
| 4   | Sexo                  |   1 |  31 | 1122.537 | 17053.629 |  2.041 | 0.163   | 0.062 |        |
| 6   | Zona                  |   1 |  22 | 8651.303 |  3644.174 | 52.228 | \<0.001 | 0.704 | \*     |
| 8   | Cor.Raca              |   3 |  19 | 1487.030 |  4639.951 |  2.030 | 0.144   | 0.243 |        |
| 10  | Serie                 |   3 |  29 | 3053.005 | 15123.161 |  1.951 | 0.143   | 0.168 |        |

## ANCOVA tests for two factors

|     | Effect                | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:----------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.lidas.per.min.pre |   1 |  29 | 1803.245 | 16481.186 | 3.173 | 0.085 | 0.099 |        |
| 4   | grupo:Sexo            |   1 |  29 |  505.731 | 16481.186 | 0.890 | 0.353 | 0.030 |        |
| 8   | grupo:Zona            |   1 |  20 |  390.042 |  3244.569 | 2.404 | 0.137 | 0.107 |        |
| 12  | grupo:Cor.Raca        |   2 |  16 |  840.927 |  3788.247 | 1.776 | 0.201 | 0.182 |        |
| 16  | grupo:Serie           |   3 |  25 | 1698.120 | 13341.116 | 1.061 | 0.383 | 0.113 |        |

## Pairwise comparisons for one factor: **grupo**

| var                   | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     |  23 | 102.609 |    0.889 |   124.174 |      4.943 | 123.097 |    5.060 |
| TFL.lidas.per.min.pos | Experimental |  11 | 100.818 |    1.623 |   125.000 |      8.567 | 127.253 |    7.361 |

| .y.                   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min.pos | Controle | Experimental |   -4.156 |  -22.508 |    14.196 | 8.998 |    -0.462 | 0.647 | 0.647 | ns           |
| TFL.lidas.per.min.pre | Controle | Experimental |    1.791 |   -1.675 |     5.256 | 1.701 |     1.053 | 0.300 | 0.300 | ns           |

| .y.               | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.lidas.per.min | Controle     | pre    | pos    |  -21.565 |  -32.268 |   -10.863 | 5.357 |    -4.025 | \<0.001 | \<0.001 | \*\*\*       |
| TFL.lidas.per.min | Experimental | pre    | pos    |  -24.182 |  -39.658 |    -8.706 | 7.747 |    -3.122 | 0.003   | 0.003   | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                   | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | F    |  11 | 103.182 |    1.256 |   128.273 |      6.048 | 126.386 |    7.265 |
| TFL.lidas.per.min.pos | Controle     | M    |  12 | 102.083 |    1.288 |   120.417 |      7.777 | 120.328 |    6.882 |
| TFL.lidas.per.min.pos | Experimental | F    |   6 | 101.667 |    2.348 |   136.667 |     13.703 | 137.261 |    9.738 |
| TFL.lidas.per.min.pos | Experimental | M    |   5 |  99.800 |    2.396 |   111.000 |      5.675 | 114.650 |   10.856 |

| .y.                   | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min.pos |              | F    | Controle | Experimental |  -10.875 |  -35.783 |    14.034 | 12.179 |    -0.893 | 0.379 | 0.379 | ns           |
| TFL.lidas.per.min.pos |              | M    | Controle | Experimental |    5.678 |  -20.627 |    31.984 | 12.862 |     0.441 | 0.662 | 0.662 | ns           |
| TFL.lidas.per.min.pre |              | F    | Controle | Experimental |    1.515 |   -3.393 |     6.423 |  2.403 |     0.630 | 0.533 | 0.533 | ns           |
| TFL.lidas.per.min.pre |              | M    | Controle | Experimental |    2.283 |   -2.864 |     7.431 |  2.521 |     0.906 | 0.372 | 0.372 | ns           |
| TFL.lidas.per.min.pos | Controle     |      | F        | M            |    6.058 |  -14.399 |    26.514 | 10.002 |     0.606 | 0.549 | 0.549 | ns           |
| TFL.lidas.per.min.pos | Experimental |      | F        | M            |   22.610 |   -7.121 |    52.342 | 14.537 |     1.555 | 0.131 | 0.131 | ns           |
| TFL.lidas.per.min.pre | Controle     |      | F        | M            |    1.098 |   -2.938 |     5.135 |  1.977 |     0.556 | 0.583 | 0.583 | ns           |
| TFL.lidas.per.min.pre | Experimental |      | F        | M            |    1.867 |   -3.989 |     7.723 |  2.867 |     0.651 | 0.520 | 0.520 | ns           |

| .y.               | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.lidas.per.min | Controle     | F    | pre    | pos    |  -25.091 |  -40.252 |    -9.930 |  7.579 |    -3.310 | 0.002 | 0.002 | \*\*         |
| TFL.lidas.per.min | Controle     | M    | pre    | pos    |  -18.333 |  -32.849 |    -3.818 |  7.257 |    -2.526 | 0.014 | 0.014 | \*           |
| TFL.lidas.per.min | Experimental | F    | pre    | pos    |  -35.000 |  -55.528 |   -14.472 | 10.262 |    -3.411 | 0.001 | 0.001 | \*\*         |
| TFL.lidas.per.min | Experimental | M    | pre    | pos    |  -11.200 |  -33.687 |    11.287 | 11.242 |    -0.996 | 0.323 | 0.323 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.lidas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

| var                   | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.lidas.per.min.pos | Controle     | F    |  11 | 103.182 |    1.256 |   128.273 |      6.048 | 126.386 |    7.265 |
| TFL.lidas.per.min.pos | Controle     | M    |  12 | 102.083 |    1.288 |   120.417 |      7.777 | 120.328 |    6.882 |
| TFL.lidas.per.min.pos | Experimental | F    |   6 | 101.667 |    2.348 |   136.667 |     13.703 | 137.261 |    9.738 |
| TFL.lidas.per.min.pos | Experimental | M    |   5 |  99.800 |    2.396 |   111.000 |      5.675 | 114.650 |   10.856 |

### factores: **grupo:Serie**
