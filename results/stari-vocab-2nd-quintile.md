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
| Controle     | F    |        |          |       | vocab.pre |  12 | 19.333 |   19.0 |  18 |  22 | 1.073 | 0.310 |  0.682 |  1.00 |
| Controle     | M    |        |          |       | vocab.pre |  16 | 19.250 |   19.0 |  17 |  22 | 1.732 | 0.433 |  0.923 |  2.50 |
| Experimental | F    |        |          |       | vocab.pre |   2 | 21.000 |   21.0 |  20 |  22 | 1.414 | 1.000 | 12.706 |  1.00 |
| Experimental | M    |        |          |       | vocab.pre |   6 | 18.500 |   18.5 |  17 |  21 | 1.517 | 0.619 |  1.592 |  1.75 |
| Controle     | F    |        |          |       | vocab.pos |  12 | 19.500 |   20.0 |  14 |  25 | 3.148 | 0.909 |  2.000 |  5.00 |
| Controle     | M    |        |          |       | vocab.pos |  16 | 22.812 |   22.5 |  12 |  47 | 9.050 | 2.262 |  4.822 | 10.25 |
| Experimental | F    |        |          |       | vocab.pos |   2 | 20.500 |   20.5 |  18 |  23 | 3.536 | 2.500 | 31.766 |  2.50 |
| Experimental | M    |        |          |       | vocab.pos |   6 | 18.500 |   18.0 |  10 |  30 | 7.064 | 2.884 |  7.413 |  6.75 |
| Controle     |      | Rural  |          |       | vocab.pre |  15 | 19.067 |   19.0 |  17 |  22 | 1.486 | 0.384 |  0.823 |  1.00 |
| Controle     |      | Urbana |          |       | vocab.pre |   4 | 20.000 |   19.5 |  19 |  22 | 1.414 | 0.707 |  2.250 |  1.50 |
| Controle     |      |        |          |       | vocab.pre |   9 | 19.333 |   19.0 |  17 |  22 | 1.500 | 0.500 |  1.153 |  1.00 |
| Experimental |      | Rural  |          |       | vocab.pre |   8 | 19.125 |   19.0 |  17 |  22 | 1.808 | 0.639 |  1.511 |  2.50 |
| Controle     |      | Rural  |          |       | vocab.pos |  15 | 22.733 |   22.0 |  12 |  47 | 8.259 | 2.132 |  4.574 |  6.00 |
| Controle     |      | Urbana |          |       | vocab.pos |   4 | 16.500 |   16.0 |  12 |  22 | 4.123 | 2.062 |  6.561 |  2.50 |
| Controle     |      |        |          |       | vocab.pos |   9 | 21.333 |   21.0 |  14 |  33 | 5.958 | 1.986 |  4.580 |  7.00 |
| Experimental |      | Rural  |          |       | vocab.pos |   8 | 19.000 |   19.5 |  10 |  30 | 6.188 | 2.188 |  5.173 |  6.75 |
| Controle     |      |        | Branca   |       | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |       |       |        |  0.00 |
| Controle     |      |        | Parda    |       | vocab.pre |  13 | 19.154 |   19.0 |  17 |  22 | 1.405 | 0.390 |  0.849 |  1.00 |
| Controle     |      |        | Preta    |       | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |       |       |        |  0.00 |
| Controle     |      |        |          |       | vocab.pre |  13 | 19.462 |   19.0 |  17 |  22 | 1.664 | 0.462 |  1.006 |  2.00 |
| Experimental |      |        | Indígena |       | vocab.pre |   2 | 20.000 |   20.0 |  18 |  22 | 2.828 | 2.000 | 25.412 |  2.00 |
| Experimental |      |        | Parda    |       | vocab.pre |   4 | 19.000 |   19.0 |  17 |  21 | 1.633 | 0.816 |  2.598 |  1.00 |
| Experimental |      |        |          |       | vocab.pre |   2 | 18.500 |   18.5 |  17 |  20 | 2.121 | 1.500 | 19.059 |  1.50 |
| Controle     |      |        | Branca   |       | vocab.pos |   1 | 14.000 |   14.0 |  14 |  14 |       |       |        |  0.00 |
| Controle     |      |        | Parda    |       | vocab.pos |  13 | 21.154 |   22.0 |  12 |  33 | 4.879 | 1.353 |  2.949 |  3.00 |
| Controle     |      |        | Preta    |       | vocab.pos |   1 | 23.000 |   23.0 |  23 |  23 |       |       |        |  0.00 |
| Controle     |      |        |          |       | vocab.pos |  13 | 22.077 |   20.0 |  12 |  47 | 9.412 | 2.610 |  5.687 |  9.00 |
| Experimental |      |        | Indígena |       | vocab.pos |   2 | 14.000 |   14.0 |  10 |  18 | 5.657 | 4.000 | 50.825 |  4.00 |
| Experimental |      |        | Parda    |       | vocab.pos |   4 | 21.750 |   21.0 |  15 |  30 | 6.185 | 3.092 |  9.841 |  3.75 |
| Experimental |      |        |          |       | vocab.pos |   2 | 18.500 |   18.5 |  14 |  23 | 6.364 | 4.500 | 57.178 |  4.50 |
| Controle     |      |        |          | 6 ano | vocab.pre |   7 | 18.714 |   19.0 |  17 |  22 | 1.704 | 0.644 |  1.576 |  1.50 |
| Controle     |      |        |          | 7 ano | vocab.pre |   9 | 19.222 |   19.0 |  18 |  20 | 0.667 | 0.222 |  0.512 |  1.00 |
| Controle     |      |        |          | 8 ano | vocab.pre |   8 | 19.125 |   19.0 |  17 |  22 | 1.727 | 0.611 |  1.444 |  1.00 |
| Controle     |      |        |          | 9 ano | vocab.pre |   4 | 20.750 |   21.0 |  19 |  22 | 1.258 | 0.629 |  2.002 |  0.75 |
| Experimental |      |        |          | 6 ano | vocab.pre |   3 | 18.000 |   17.0 |  17 |  20 | 1.732 | 1.000 |  4.303 |  1.50 |
| Experimental |      |        |          | 7 ano | vocab.pre |   3 | 20.333 |   21.0 |  18 |  22 | 2.082 | 1.202 |  5.171 |  2.00 |
| Experimental |      |        |          | 8 ano | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |       |       |        |  0.00 |
| Experimental |      |        |          | 9 ano | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |       |       |        |  0.00 |
| Controle     |      |        |          | 6 ano | vocab.pos |   7 | 17.000 |   17.0 |  12 |  23 | 3.651 | 1.380 |  3.377 |  3.50 |
| Controle     |      |        |          | 7 ano | vocab.pos |   9 | 23.444 |   22.0 |  12 |  47 | 9.593 | 3.198 |  7.374 |  3.00 |
| Controle     |      |        |          | 8 ano | vocab.pos |   8 | 21.875 |   21.5 |  14 |  33 | 6.175 | 2.183 |  5.162 |  5.25 |
| Controle     |      |        |          | 9 ano | vocab.pos |   4 | 23.500 |   25.0 |  14 |  30 | 6.758 | 3.379 | 10.753 |  4.00 |
| Experimental |      |        |          | 6 ano | vocab.pos |   3 | 17.333 |   15.0 |  14 |  23 | 4.933 | 2.848 | 12.254 |  4.50 |
| Experimental |      |        |          | 7 ano | vocab.pos |   3 | 16.333 |   18.0 |  10 |  21 | 5.686 | 3.283 | 14.125 |  5.50 |
| Experimental |      |        |          | 8 ano | vocab.pos |   1 | 30.000 |   30.0 |  30 |  30 |       |       |        |  0.00 |
| Experimental |      |        |          | 9 ano | vocab.pos |   1 | 21.000 |   21.0 |  21 |  21 |       |       |        |  0.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |  skewness |  kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:----------|----:|----------:|----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| vocab.pos |  36 | 1.1257950 | 2.7572880 | NO       | 0.9083547 | Shapiro-Wilk | 0.0058201 | \*\*     | NO        |
| vocab.pos |  27 | 1.6050212 | 3.6414352 | NO       | 0.8603910 | Shapiro-Wilk | 0.0018626 | \*\*     | NO        |
| vocab.pos |  21 | 0.6163606 | 0.6185207 | NO       | 0.9514972 | Shapiro-Wilk | 0.3634578 | ns       | YES       |
| vocab.pos |  36 | 1.3999105 | 4.0126320 | NO       | 0.8903186 | Shapiro-Wilk | 0.0018746 | \*\*     | NO        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  36 |       3 |      32 | 1.7005363 | 0.1865915 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  36 |       3 |      28 | 0.4840000 | 0.6960000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  27 |       2 |      24 | 0.4625803 | 0.6351544 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  27 |       2 |      21 | 0.0430000 | 0.9580000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  21 |       4 |      16 | 0.4409420 | 0.7772834 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  21 |       2 |      13 | 0.7090000 | 0.5100000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  36 |       7 |      28 | 0.3118413 | 0.9424755 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  36 |       5 |      22 | 0.5310000 | 0.7500000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:----------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre |   1 |  33 |  14.224 | 1666.455 | 0.282 | 0.599 | 0.008 |        |
| 2   | grupo     |   1 |  33 |  33.578 | 1666.455 | 0.665 | 0.421 | 0.020 |        |
| 4   | Sexo      |   1 |  33 |  43.816 | 1656.216 | 0.873 | 0.357 | 0.026 |        |
| 6   | Zona      |   1 |  24 | 112.000 | 1284.189 | 2.093 | 0.161 | 0.080 |        |
| 8   | Cor.Raca  |   3 |  16 | 151.349 |  423.052 | 1.908 | 0.169 | 0.263 |        |
| 10  | Serie     |   3 |  31 | 189.181 | 1510.851 | 1.294 | 0.294 | 0.111 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre      |   1 |  31 |  11.214 | 1588.224 | 0.219 | 0.643 | 0.007 |        |
| 4   | grupo:Sexo     |   1 |  31 |  21.184 | 1588.224 | 0.413 | 0.525 | 0.013 |        |
| 8   | grupo:Zona     |   0 |  23 |         | 1209.107 |       |       |       |        |
| 12  | grupo:Cor.Raca |   0 |  15 |         |  421.655 |       |       |       |        |
| 16  | grupo:Serie    |   3 |  27 | 162.606 | 1331.309 | 1.099 | 0.366 | 0.109 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  28 |  19.286 |    0.276 |    21.393 |      1.367 |  21.378 |    1.343 |
| vocab.pos | Experimental |   8 |  19.125 |    0.639 |    19.000 |      2.188 |  19.053 |    2.514 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |    2.325 |   -3.476 |     8.127 | 2.852 |     0.815 | 0.421 | 0.421 | ns           |
| vocab.pre | Controle | Experimental |    0.161 |   -1.094 |     1.415 | 0.617 |     0.260 | 0.796 | 0.796 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -2.107 |   -4.821 |     0.607 | 1.360 |    -1.549 | 0.126 | 0.126 | ns           |
| vocab | Experimental | pre    | pos    |    0.125 |   -4.953 |     5.203 | 2.545 |     0.049 | 0.961 | 0.961 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  12 |  19.333 |    0.310 |    19.500 |      0.909 |  19.410 |    2.095 |
| vocab.pos | Controle     | M    |  16 |  19.250 |    0.433 |    22.812 |      2.262 |  22.763 |    1.811 |
| vocab.pos | Experimental | M    |   6 |  18.500 |    0.619 |    18.500 |      2.884 |  18.811 |    3.007 |

|     | .y.       | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:----------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | vocab.pos |          | M    | Controle | Experimental |    3.952 |   -3.247 |    11.151 | 3.525 |     1.121 | 0.271 | 0.271 | ns           |
| 4   | vocab.pre |          | M    | Controle | Experimental |    0.750 |   -0.708 |     2.208 | 0.715 |     1.049 | 0.302 | 0.302 | ns           |
| 5   | vocab.pos | Controle |      | F        | M            |   -3.353 |   -8.998 |     2.293 | 2.764 |    -1.213 | 0.235 | 0.235 | ns           |
| 7   | vocab.pre | Controle |      | F        | M            |    0.083 |   -1.080 |     1.247 | 0.570 |     0.146 | 0.885 | 0.885 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -0.167 |   -4.384 |     4.051 | 2.110 |    -0.079 | 0.937 | 0.937 | ns           |
| vocab | Controle     | M    | pre    | pos    |   -3.562 |   -7.215 |     0.090 | 1.827 |    -1.950 | 0.056 | 0.056 | ns           |
| vocab | Experimental | M    | pre    | pos    |    0.000 |   -5.965 |     5.965 | 2.984 |     0.000 | 1.000 | 1.000 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
