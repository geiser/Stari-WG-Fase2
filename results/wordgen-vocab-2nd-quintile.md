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

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable  |   n |   mean | median | min | max |     sd |    se |    ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:----------|----:|-------:|-------:|----:|----:|-------:|------:|------:|------:|
| Controle     | F    |        |          |       | vocab.pre |  39 | 19.513 |   19.0 |  17 |  22 |  1.620 | 0.259 | 0.525 |  3.00 |
| Controle     | M    |        |          |       | vocab.pre |  47 | 19.489 |   20.0 |  17 |  22 |  1.653 | 0.241 | 0.485 |  3.00 |
| Experimental | F    |        |          |       | vocab.pre |  49 | 19.939 |   20.0 |  17 |  22 |  1.676 | 0.239 | 0.481 |  3.00 |
| Experimental | M    |        |          |       | vocab.pre |  57 | 20.158 |   20.0 |  17 |  22 |  1.667 | 0.221 | 0.442 |  3.00 |
| Controle     | F    |        |          |       | vocab.pos |  39 | 21.897 |   22.0 |   0 |  32 |  6.189 | 0.991 | 2.006 |  7.00 |
| Controle     | M    |        |          |       | vocab.pos |  47 | 21.404 |   21.0 |  10 |  37 |  7.255 | 1.058 | 2.130 | 11.00 |
| Experimental | F    |        |          |       | vocab.pos |  49 | 22.306 |   23.0 |   8 |  34 |  4.993 | 0.713 | 1.434 |  6.00 |
| Experimental | M    |        |          |       | vocab.pos |  57 | 19.737 |   20.0 |   6 |  35 |  5.863 | 0.777 | 1.556 |  8.00 |
| Controle     |      | Rural  |          |       | vocab.pre |  41 | 19.366 |   19.0 |  17 |  22 |  1.699 | 0.265 | 0.536 |  3.00 |
| Controle     |      | Urbana |          |       | vocab.pre |  23 | 20.043 |   21.0 |  17 |  22 |  1.581 | 0.330 | 0.683 |  2.00 |
| Controle     |      |        |          |       | vocab.pre |  22 | 19.182 |   19.0 |  17 |  22 |  1.468 | 0.313 | 0.651 |  2.00 |
| Experimental |      | Rural  |          |       | vocab.pre |  50 | 20.100 |   21.0 |  17 |  22 |  1.693 | 0.239 | 0.481 |  3.00 |
| Experimental |      | Urbana |          |       | vocab.pre |  27 | 19.963 |   20.0 |  17 |  22 |  1.629 | 0.313 | 0.644 |  2.00 |
| Experimental |      |        |          |       | vocab.pre |  29 | 20.069 |   20.0 |  17 |  22 |  1.710 | 0.318 | 0.650 |  3.00 |
| Controle     |      | Rural  |          |       | vocab.pos |  41 | 22.049 |   23.0 |  10 |  36 |  6.834 | 1.067 | 2.157 | 10.00 |
| Controle     |      | Urbana |          |       | vocab.pos |  23 | 23.174 |   22.0 |  13 |  30 |  4.217 | 0.879 | 1.824 |  4.50 |
| Controle     |      |        |          |       | vocab.pos |  22 | 19.227 |   18.5 |   0 |  37 |  8.263 | 1.762 | 3.664 |  9.50 |
| Experimental |      | Rural  |          |       | vocab.pos |  50 | 20.740 |   21.0 |   6 |  34 |  5.138 | 0.727 | 1.460 |  7.00 |
| Experimental |      | Urbana |          |       | vocab.pos |  27 | 21.148 |   21.0 |   8 |  34 |  5.641 | 1.086 | 2.232 |  7.50 |
| Experimental |      |        |          |       | vocab.pos |  29 | 21.034 |   20.0 |   8 |  35 |  6.467 | 1.201 | 2.460 | 11.00 |
| Controle     |      |        | Branca   |       | vocab.pre |  12 | 20.167 |   20.5 |  17 |  22 |  1.697 | 0.490 | 1.078 |  1.75 |
| Controle     |      |        | Parda    |       | vocab.pre |  32 | 19.750 |   20.0 |  17 |  22 |  1.626 | 0.288 | 0.586 |  2.00 |
| Controle     |      |        | Preta    |       | vocab.pre |   1 | 19.000 |   19.0 |  19 |  19 |        |       |       |  0.00 |
| Controle     |      |        |          |       | vocab.pre |  41 | 19.122 |   19.0 |  17 |  22 |  1.568 | 0.245 | 0.495 |  2.00 |
| Experimental |      |        | Branca   |       | vocab.pre |   7 | 20.000 |   19.0 |  18 |  22 |  1.633 | 0.617 | 1.510 |  2.50 |
| Experimental |      |        | Indígena |       | vocab.pre |   2 | 22.000 |   22.0 |  22 |  22 |  0.000 | 0.000 | 0.000 |  0.00 |
| Experimental |      |        | Parda    |       | vocab.pre |  36 | 20.000 |   20.5 |  17 |  22 |  1.673 | 0.279 | 0.566 |  2.25 |
| Experimental |      |        |          |       | vocab.pre |  61 | 20.033 |   20.0 |  17 |  22 |  1.683 | 0.215 | 0.431 |  3.00 |
| Controle     |      |        | Branca   |       | vocab.pos |  12 | 22.583 |   23.5 |  13 |  30 |  6.680 | 1.928 | 4.245 | 11.75 |
| Controle     |      |        | Parda    |       | vocab.pos |  32 | 21.938 |   22.5 |   0 |  36 |  7.971 | 1.409 | 2.874 | 10.75 |
| Controle     |      |        | Preta    |       | vocab.pos |   1 | 24.000 |   24.0 |  24 |  24 |        |       |       |  0.00 |
| Controle     |      |        |          |       | vocab.pos |  41 | 21.049 |   21.0 |  10 |  37 |  5.890 | 0.920 | 1.859 |  7.00 |
| Experimental |      |        | Branca   |       | vocab.pos |   7 | 15.571 |   17.0 |   6 |  21 |  4.826 | 1.824 | 4.463 |  3.50 |
| Experimental |      |        | Indígena |       | vocab.pos |   2 | 23.000 |   23.0 |  23 |  23 |  0.000 | 0.000 | 0.000 |  0.00 |
| Experimental |      |        | Parda    |       | vocab.pos |  36 | 21.944 |   21.5 |  10 |  34 |  5.487 | 0.915 | 1.857 |  6.50 |
| Experimental |      |        |          |       | vocab.pos |  61 | 20.869 |   21.0 |   8 |  35 |  5.560 | 0.712 | 1.424 |  8.00 |
| Controle     |      |        |          | 6 ano | vocab.pre |  31 | 19.226 |   19.0 |  17 |  22 |  1.802 | 0.324 | 0.661 |  3.00 |
| Controle     |      |        |          | 7 ano | vocab.pre |  35 | 19.686 |   20.0 |  17 |  22 |  1.510 | 0.255 | 0.519 |  2.00 |
| Controle     |      |        |          | 8 ano | vocab.pre |  14 | 19.286 |   19.0 |  17 |  22 |  1.541 | 0.412 | 0.890 |  2.00 |
| Controle     |      |        |          | 9 ano | vocab.pre |   6 | 20.333 |   21.0 |  18 |  22 |  1.506 | 0.615 | 1.580 |  1.50 |
| Experimental |      |        |          | 6 ano | vocab.pre |  32 | 19.781 |   20.0 |  17 |  22 |  1.736 | 0.307 | 0.626 |  3.00 |
| Experimental |      |        |          | 7 ano | vocab.pre |  34 | 19.824 |   20.0 |  17 |  22 |  1.642 | 0.282 | 0.573 |  3.00 |
| Experimental |      |        |          | 8 ano | vocab.pre |  28 | 20.321 |   20.5 |  17 |  22 |  1.588 | 0.300 | 0.616 |  3.00 |
| Experimental |      |        |          | 9 ano | vocab.pre |  12 | 20.833 |   21.5 |  18 |  22 |  1.586 | 0.458 | 1.008 |  1.50 |
| Controle     |      |        |          | 6 ano | vocab.pos |  31 | 20.484 |   21.0 |  10 |  29 |  5.072 | 0.911 | 1.860 |  7.50 |
| Controle     |      |        |          | 7 ano | vocab.pos |  35 | 22.057 |   21.0 |  11 |  36 |  6.097 | 1.031 | 2.094 |  8.00 |
| Controle     |      |        |          | 8 ano | vocab.pos |  14 | 21.929 |   25.0 |   0 |  37 | 11.146 | 2.979 | 6.435 | 18.00 |
| Controle     |      |        |          | 9 ano | vocab.pos |   6 | 24.333 |   25.5 |  15 |  29 |  5.279 | 2.155 | 5.540 |  5.50 |
| Experimental |      |        |          | 6 ano | vocab.pos |  32 | 20.594 |   21.0 |   6 |  35 |  5.780 | 1.022 | 2.084 |  6.25 |
| Experimental |      |        |          | 7 ano | vocab.pos |  34 | 20.706 |   21.0 |   8 |  34 |  5.808 | 0.996 | 2.026 |  8.00 |
| Experimental |      |        |          | 8 ano | vocab.pos |  28 | 21.429 |   21.0 |  12 |  34 |  5.587 | 1.056 | 2.166 |  8.25 |
| Experimental |      |        |          | 9 ano | vocab.pos |  12 | 21.250 |   20.0 |  15 |  30 |  5.137 | 1.483 | 3.264 |  7.25 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:----------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| vocab.pos | 192 | -0.1160282 |  0.3993272 | YES      | 2.2293590 | D’Agostino | 0.3280204 | ns       | QQ        |
| vocab.pos | 141 | -0.1455657 | -0.0293447 | YES      | 0.6508528 | D’Agostino | 0.7222193 | ns       | QQ        |
| vocab.pos |  90 | -0.3627608 |  0.2662298 | YES      | 3.1573224 | D’Agostino | 0.2062510 | ns       | YES       |
| vocab.pos | 192 | -0.2052518 |  0.2253757 | YES      | 2.3135081 | D’Agostino | 0.3145054 | ns       | QQ        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     | 192 |       3 |     188 |  2.771391 | 0.0428744 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     | 192 |       3 |     184 |  0.430000 | 0.7320000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     | 141 |       3 |     137 |  2.663940 | 0.0504319 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     | 141 |       3 |     133 |  0.403000 | 0.7510000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  90 |       5 |      84 |  1.831217 | 0.1154758 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  90 |       3 |      80 |  1.906000 | 0.1350000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    | 192 |       7 |     184 |  3.160506 | 0.0035246 | \*       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    | 192 |       7 |     176 |  0.408000 | 0.8970000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect    | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:----------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre |   1 | 189 | 175.717 | 7001.772 | 4.743 | 0.031 | 0.024 | \*     |
| 2   | grupo     |   1 | 189 |  48.771 | 7001.772 | 1.316 | 0.253 | 0.007 |        |
| 4   | Sexo      |   1 | 189 | 136.417 | 6914.126 | 3.729 | 0.055 | 0.019 |        |
| 6   | Zona      |   1 | 138 |  11.922 | 4323.003 | 0.381 | 0.538 | 0.003 |        |
| 8   | Cor.Raca  |   3 |  85 |  84.975 | 3570.597 | 0.674 | 0.570 | 0.023 |        |
| 10  | Serie     |   3 | 187 |  30.521 | 7020.022 | 0.271 | 0.846 | 0.004 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | vocab.pre      |   1 | 187 | 193.612 | 6804.757 | 5.321 | 0.022 | 0.028 | \*     |
| 4   | grupo:Sexo     |   1 | 187 |  58.239 | 6804.757 | 1.600 | 0.207 | 0.008 |        |
| 8   | grupo:Zona     |   1 | 136 |   0.203 | 4202.933 | 0.007 | 0.935 | 0.000 |        |
| 12  | grupo:Cor.Raca |   1 |  83 | 149.922 | 3363.529 | 3.700 | 0.058 | 0.043 |        |
| 16  | grupo:Serie    |   3 | 183 |  35.205 | 6930.114 | 0.310 | 0.818 | 0.005 |        |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     |  86 |  19.500 |    0.176 |    21.628 |      0.729 |  21.807 |    0.661 |
| vocab.pos | Experimental | 106 |  20.057 |    0.162 |    20.925 |      0.544 |  20.779 |    0.595 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |    1.028 |   -0.739 |     2.795 | 0.896 |     1.147 | 0.253 | 0.253 | ns           |
| vocab.pre | Controle | Experimental |   -0.557 |   -1.029 |    -0.084 | 0.239 |    -2.325 | 0.021 | 0.021 | \*           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -2.128 |   -3.477 |    -0.779 | 0.686 |    -3.101 | 0.002 | 0.002 | \*\*         |
| vocab | Experimental | pre    | pos    |   -0.868 |   -2.083 |     0.347 | 0.618 |    -1.404 | 0.161 | 0.161 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  39 |  19.513 |    0.259 |    21.897 |      0.991 |  22.078 |    0.969 |
| vocab.pos | Controle     | M    |  47 |  19.489 |    0.241 |    21.404 |      1.058 |  21.599 |    0.884 |
| vocab.pos | Experimental | F    |  49 |  19.939 |    0.239 |    22.306 |      0.713 |  22.226 |    0.862 |
| vocab.pos | Experimental | M    |  57 |  20.158 |    0.221 |    19.737 |      0.777 |  19.522 |    0.804 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -0.148 |   -2.711 |     2.416 | 1.299 |    -0.114 | 0.910 | 0.910 | ns           |
| vocab.pos |              | M    | Controle | Experimental |    2.077 |   -0.294 |     4.448 | 1.202 |     1.728 | 0.086 | 0.086 | ns           |
| vocab.pre |              | F    | Controle | Experimental |   -0.426 |   -1.127 |     0.275 | 0.355 |    -1.198 | 0.232 | 0.232 | ns           |
| vocab.pre |              | M    | Controle | Experimental |   -0.669 |   -1.312 |    -0.025 | 0.326 |    -2.048 | 0.042 | 0.042 | \*           |
| vocab.pos | Controle     |      | F        | M            |    0.479 |   -2.099 |     3.056 | 1.307 |     0.366 | 0.714 | 0.714 | ns           |
| vocab.pos | Experimental |      | F        | M            |    2.704 |    0.382 |     5.025 | 1.177 |     2.298 | 0.023 | 0.023 | \*           |
| vocab.pre | Controle     |      | F        | M            |    0.023 |   -0.684 |     0.731 | 0.359 |     0.065 | 0.948 | 0.948 | ns           |
| vocab.pre | Experimental |      | F        | M            |   -0.219 |   -0.856 |     0.417 | 0.323 |    -0.679 | 0.498 | 0.498 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -2.385 |   -4.375 |    -0.394 | 1.012 |    -2.356 | 0.019 | 0.019 | \*           |
| vocab | Controle     | M    | pre    | pos    |   -1.915 |   -3.728 |    -0.102 | 0.922 |    -2.076 | 0.039 | 0.039 | \*           |
| vocab | Experimental | F    | pre    | pos    |   -2.367 |   -4.143 |    -0.591 | 0.903 |    -2.621 | 0.009 | 0.009 | \*\*         |
| vocab | Experimental | M    | pre    | pos    |    0.421 |   -1.225 |     2.068 | 0.837 |     0.503 | 0.615 | 0.615 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var       | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Rural  |  41 |  19.366 |    0.265 |    22.049 |      1.067 |  22.380 |    0.879 |
| vocab.pos | Controle     | Urbana |  23 |  20.043 |    0.330 |    23.174 |      0.879 |  23.042 |    1.160 |
| vocab.pos | Experimental | Rural  |  50 |  20.100 |    0.239 |    20.740 |      0.727 |  20.570 |    0.789 |
| vocab.pos | Experimental | Urbana |  27 |  19.963 |    0.313 |    21.148 |      1.086 |  21.072 |    1.070 |

| .y.       | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Rural  | Controle | Experimental |    1.810 |   -0.543 |     4.163 | 1.190 |     1.521 | 0.130 | 0.130 | ns           |
| vocab.pos |              | Urbana | Controle | Experimental |    1.971 |   -1.149 |     5.091 | 1.578 |     1.249 | 0.214 | 0.214 | ns           |
| vocab.pre |              | Rural  | Controle | Experimental |   -0.734 |   -1.428 |    -0.040 | 0.351 |    -2.092 | 0.038 | 0.038 | \*           |
| vocab.pre |              | Urbana | Controle | Experimental |    0.081 |   -0.854 |     1.015 | 0.473 |     0.170 | 0.865 | 0.865 | ns           |
| vocab.pos | Controle     |        | Rural    | Urbana       |   -0.662 |   -3.552 |     2.227 | 1.461 |    -0.453 | 0.651 | 0.651 | ns           |
| vocab.pos | Experimental |        | Rural    | Urbana       |   -0.502 |   -3.128 |     2.125 | 1.328 |    -0.378 | 0.706 | 0.706 | ns           |
| vocab.pre | Controle     |        | Rural    | Urbana       |   -0.678 |   -1.536 |     0.180 | 0.434 |    -1.562 | 0.121 | 0.121 | ns           |
| vocab.pre | Experimental |        | Rural    | Urbana       |    0.137 |   -0.649 |     0.923 | 0.398 |     0.345 | 0.731 | 0.731 | ns           |

| .y.   | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Rural  | pre    | pos    |   -2.683 |   -4.495 |    -0.871 | 0.921 |    -2.914 | 0.004 | 0.004 | \*\*         |
| vocab | Controle     | Urbana | pre    | pos    |   -3.130 |   -5.550 |    -0.711 | 1.229 |    -2.547 | 0.011 | 0.011 | \*           |
| vocab | Experimental | Rural  | pre    | pos    |   -0.640 |   -2.281 |     1.001 | 0.834 |    -0.768 | 0.443 | 0.443 | ns           |
| vocab | Experimental | Urbana | pre    | pos    |   -1.185 |   -3.418 |     1.048 | 1.134 |    -1.045 | 0.297 | 0.297 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |  12 |  20.167 |    0.490 |    22.583 |      1.928 |  22.317 |    1.852 |
| vocab.pos | Controle     | Parda    |  32 |  19.750 |    0.288 |    21.938 |      1.409 |  22.142 |    1.135 |
| vocab.pos | Experimental | Branca   |   7 |  20.000 |    0.617 |    15.571 |      1.824 |  15.493 |    2.421 |
| vocab.pos | Experimental | Parda    |  36 |  20.000 |    0.279 |    21.944 |      0.915 |  21.866 |    1.068 |

| .y.       | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Branca   | Controle | Experimental |    6.824 |    0.762 |    12.885 | 3.047 |     2.240 | 0.028 | 0.028 | \*           |
| vocab.pos |              | Parda    | Controle | Experimental |    0.276 |   -2.827 |     3.378 | 1.560 |     0.177 | 0.860 | 0.860 | ns           |
| vocab.pre |              | Branca   | Controle | Experimental |    0.167 |   -1.400 |     1.733 | 0.788 |     0.212 | 0.833 | 0.833 | ns           |
| vocab.pre |              | Parda    | Controle | Experimental |   -0.250 |   -1.050 |     0.550 | 0.402 |    -0.621 | 0.536 | 0.536 | ns           |
| vocab.pos | Controle     |          | Branca   | Parda        |    0.175 |   -4.152 |     4.502 | 2.175 |     0.080 | 0.936 | 0.936 | ns           |
| vocab.pos | Experimental |          | Branca   | Parda        |   -6.373 |  -11.636 |    -1.110 | 2.646 |    -2.409 | 0.018 | 0.018 | \*           |
| vocab.pre | Controle     |          | Branca   | Parda        |    0.417 |   -0.698 |     1.532 | 0.561 |     0.743 | 0.459 | 0.459 | ns           |
| vocab.pre | Experimental |          | Branca   | Parda        |    0.000 |   -1.361 |     1.361 | 0.684 |     0.000 | 1.000 | 1.000 | ns           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |   -2.417 |   -6.315 |     1.481 | 1.974 |    -1.224 | 0.223 | 0.223 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |   -2.187 |   -4.574 |     0.199 | 1.209 |    -1.809 | 0.072 | 0.072 | ns           |
| vocab | Experimental | Branca   | pre    | pos    |    4.429 |   -0.675 |     9.532 | 2.585 |     1.713 | 0.089 | 0.089 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |   -1.944 |   -4.195 |     0.306 | 1.140 |    -1.706 | 0.090 | 0.090 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var       | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 6 ano |  31 |  19.226 |    0.324 |    20.484 |      0.911 |  20.795 |    1.117 |
| vocab.pos | Controle     | 7 ano |  35 |  19.686 |    0.255 |    22.057 |      1.031 |  22.122 |    1.041 |
| vocab.pos | Controle     | 8 ano |  14 |  19.286 |    0.412 |    21.929 |      2.979 |  22.207 |    1.651 |
| vocab.pos | Controle     | 9 ano |   6 |  20.333 |    0.615 |    24.333 |      2.155 |  24.052 |    2.516 |
| vocab.pos | Experimental | 6 ano |  32 |  19.781 |    0.307 |    20.594 |      1.022 |  20.608 |    1.088 |
| vocab.pos | Experimental | 7 ano |  34 |  19.824 |    0.282 |    20.706 |      0.996 |  20.697 |    1.055 |
| vocab.pos | Experimental | 8 ano |  28 |  20.321 |    0.300 |    21.429 |      1.056 |  21.154 |    1.172 |
| vocab.pos | Experimental | 9 ano |  12 |  20.833 |    0.458 |    21.250 |      1.483 |  20.701 |    1.799 |

| .y.       | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | 6 ano | Controle | Experimental |    0.187 |   -2.888 |     3.262 | 1.558 |     0.120 | 0.905 | 0.905 | ns           |
| vocab.pos |              | 7 ano | Controle | Experimental |    1.425 |   -1.500 |     4.350 | 1.482 |     0.961 | 0.338 | 0.338 | ns           |
| vocab.pos |              | 8 ano | Controle | Experimental |    1.054 |   -2.960 |     5.068 | 2.035 |     0.518 | 0.605 | 0.605 | ns           |
| vocab.pos |              | 9 ano | Controle | Experimental |    3.351 |   -2.726 |     9.428 | 3.080 |     1.088 | 0.278 | 0.278 | ns           |
| vocab.pre |              | 6 ano | Controle | Experimental |   -0.555 |   -1.371 |     0.260 | 0.413 |    -1.343 | 0.181 | 0.181 | ns           |
| vocab.pre |              | 7 ano | Controle | Experimental |   -0.138 |   -0.917 |     0.642 | 0.395 |    -0.349 | 0.728 | 0.728 | ns           |
| vocab.pre |              | 8 ano | Controle | Experimental |   -1.036 |   -2.095 |     0.024 | 0.537 |    -1.928 | 0.055 | 0.055 | ns           |
| vocab.pre |              | 9 ano | Controle | Experimental |   -0.500 |   -2.119 |     1.119 | 0.820 |    -0.609 | 0.543 | 0.543 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 7 ano        |   -1.327 |   -4.332 |     1.678 | 1.523 |    -0.871 | 0.385 | 1.000 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 8 ano        |   -1.413 |   -5.322 |     2.497 | 1.982 |    -0.713 | 0.477 | 1.000 | ns           |
| vocab.pos | Controle     |       | 6 ano    | 9 ano        |   -3.257 |   -8.706 |     2.192 | 2.762 |    -1.179 | 0.240 | 1.000 | ns           |
| vocab.pos | Controle     |       | 7 ano    | 8 ano        |   -0.085 |   -3.931 |     3.760 | 1.949 |    -0.044 | 0.965 | 1.000 | ns           |
| vocab.pos | Controle     |       | 7 ano    | 9 ano        |   -1.930 |   -7.306 |     3.447 | 2.725 |    -0.708 | 0.480 | 1.000 | ns           |
| vocab.pos | Controle     |       | 8 ano    | 9 ano        |   -1.845 |   -7.796 |     4.107 | 3.017 |    -0.611 | 0.542 | 1.000 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 7 ano        |   -0.090 |   -3.080 |     2.901 | 1.516 |    -0.059 | 0.953 | 1.000 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 8 ano        |   -0.546 |   -3.702 |     2.610 | 1.599 |    -0.341 | 0.733 | 1.000 | ns           |
| vocab.pos | Experimental |       | 6 ano    | 9 ano        |   -0.094 |   -4.243 |     4.056 | 2.103 |    -0.045 | 0.965 | 1.000 | ns           |
| vocab.pos | Experimental |       | 7 ano    | 8 ano        |   -0.456 |   -3.567 |     2.654 | 1.576 |    -0.290 | 0.773 | 1.000 | ns           |
| vocab.pos | Experimental |       | 7 ano    | 9 ano        |   -0.004 |   -4.118 |     4.110 | 2.085 |    -0.002 | 0.998 | 1.000 | ns           |
| vocab.pos | Experimental |       | 8 ano    | 9 ano        |    0.452 |   -3.746 |     4.651 | 2.128 |     0.213 | 0.832 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 7 ano        |   -0.460 |   -1.258 |     0.338 | 0.405 |    -1.137 | 0.257 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 8 ano        |   -0.060 |   -1.102 |     0.982 | 0.528 |    -0.113 | 0.910 | 1.000 | ns           |
| vocab.pre | Controle     |       | 6 ano    | 9 ano        |   -1.108 |   -2.551 |     0.336 | 0.732 |    -1.513 | 0.132 | 0.791 | ns           |
| vocab.pre | Controle     |       | 7 ano    | 8 ano        |    0.400 |   -0.624 |     1.424 | 0.519 |     0.771 | 0.442 | 1.000 | ns           |
| vocab.pre | Controle     |       | 7 ano    | 9 ano        |   -0.648 |   -2.078 |     0.783 | 0.725 |    -0.893 | 0.373 | 1.000 | ns           |
| vocab.pre | Controle     |       | 8 ano    | 9 ano        |   -1.048 |   -2.627 |     0.532 | 0.801 |    -1.309 | 0.192 | 1.000 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 7 ano        |   -0.042 |   -0.840 |     0.755 | 0.404 |    -0.105 | 0.917 | 1.000 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 8 ano        |   -0.540 |   -1.378 |     0.297 | 0.425 |    -1.272 | 0.205 | 1.000 | ns           |
| vocab.pre | Experimental |       | 6 ano    | 9 ano        |   -1.052 |   -2.148 |     0.044 | 0.555 |    -1.894 | 0.060 | 0.359 | ns           |
| vocab.pre | Experimental |       | 7 ano    | 8 ano        |   -0.498 |   -1.324 |     0.328 | 0.419 |    -1.189 | 0.236 | 1.000 | ns           |
| vocab.pre | Experimental |       | 7 ano    | 9 ano        |   -1.010 |   -2.097 |     0.077 | 0.551 |    -1.833 | 0.068 | 0.411 | ns           |
| vocab.pre | Experimental |       | 8 ano    | 9 ano        |   -0.512 |   -1.629 |     0.605 | 0.566 |    -0.904 | 0.367 | 1.000 | ns           |

| .y.   | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | 6 ano | pre    | pos    |   -1.258 |   -3.523 |     1.007 | 1.152 |    -1.092 | 0.275 | 0.275 | ns           |
| vocab | Controle     | 7 ano | pre    | pos    |   -2.371 |   -4.503 |    -0.240 | 1.084 |    -2.188 | 0.029 | 0.029 | \*           |
| vocab | Controle     | 8 ano | pre    | pos    |   -2.643 |   -6.013 |     0.727 | 1.714 |    -1.542 | 0.124 | 0.124 | ns           |
| vocab | Controle     | 9 ano | pre    | pos    |   -4.000 |   -9.148 |     1.148 | 2.618 |    -1.528 | 0.127 | 0.127 | ns           |
| vocab | Experimental | 6 ano | pre    | pos    |   -0.812 |   -3.042 |     1.417 | 1.134 |    -0.717 | 0.474 | 0.474 | ns           |
| vocab | Experimental | 7 ano | pre    | pos    |   -0.882 |   -3.045 |     1.280 | 1.100 |    -0.802 | 0.423 | 0.423 | ns           |
| vocab | Experimental | 8 ano | pre    | pos    |   -1.107 |   -3.490 |     1.276 | 1.212 |    -0.914 | 0.362 | 0.362 | ns           |
| vocab | Experimental | 9 ano | pre    | pos    |   -0.417 |   -4.057 |     3.224 | 1.851 |    -0.225 | 0.822 | 0.822 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-2nd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
