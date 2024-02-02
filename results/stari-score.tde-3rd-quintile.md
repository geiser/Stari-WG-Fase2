ANCOVA in TDE - Escrita (Acertos) (TDE - Escrita (Acertos))
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
  TDE - Escrita (Acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  TDE - Escrita (Acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable      |   n |   mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:--------------|----:|-------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |       | score.tde.pre |  24 | 36.917 |   37.0 |  32 |  41 |  2.394 |  0.489 |   1.011 |  3.00 |
| Controle     | M    |        |          |       | score.tde.pre |  25 | 36.680 |   37.0 |  33 |  42 |  2.116 |  0.423 |   0.873 |  3.00 |
| Experimental | F    |        |          |       | score.tde.pre |  10 | 35.600 |   36.0 |  32 |  40 |  3.239 |  1.024 |   2.317 |  5.50 |
| Experimental | M    |        |          |       | score.tde.pre |  10 | 37.200 |   37.0 |  33 |  42 |  2.658 |  0.841 |   1.902 |  2.25 |
| Controle     | F    |        |          |       | score.tde.pos |  24 | 31.958 |   30.0 |  14 |  63 | 10.386 |  2.120 |   4.386 | 11.25 |
| Controle     | M    |        |          |       | score.tde.pos |  25 | 35.840 |   39.0 |   5 |  59 | 12.202 |  2.440 |   5.037 | 13.00 |
| Experimental | F    |        |          |       | score.tde.pos |  10 | 33.400 |   32.0 |  26 |  44 |  7.291 |  2.306 |   5.216 | 12.50 |
| Experimental | M    |        |          |       | score.tde.pos |  10 | 30.500 |   34.5 |   1 |  50 | 14.554 |  4.603 |  10.412 | 14.50 |
| Controle     |      | Rural  |          |       | score.tde.pre |  28 | 37.179 |   37.0 |  33 |  42 |  2.127 |  0.402 |   0.825 |  2.00 |
| Controle     |      | Urbana |          |       | score.tde.pre |   3 | 35.333 |   35.0 |  32 |  39 |  3.512 |  2.028 |   8.724 |  3.50 |
| Controle     |      |        |          |       | score.tde.pre |  18 | 36.444 |   36.0 |  33 |  39 |  2.175 |  0.513 |   1.082 |  4.00 |
| Experimental |      | Rural  |          |       | score.tde.pre |  13 | 36.308 |   37.0 |  32 |  42 |  3.119 |  0.865 |   1.885 |  3.00 |
| Experimental |      | Urbana |          |       | score.tde.pre |   2 | 35.500 |   35.5 |  33 |  38 |  3.536 |  2.500 |  31.766 |  2.50 |
| Experimental |      |        |          |       | score.tde.pre |   5 | 37.000 |   37.0 |  32 |  40 |  3.082 |  1.378 |   3.827 |  2.00 |
| Controle     |      | Rural  |          |       | score.tde.pos |  28 | 31.536 |   30.5 |   5 |  50 | 11.273 |  2.130 |   4.371 | 17.50 |
| Controle     |      | Urbana |          |       | score.tde.pos |   3 | 37.333 |   36.0 |  34 |  42 |  4.163 |  2.404 |  10.342 |  4.00 |
| Controle     |      |        |          |       | score.tde.pos |  18 | 37.111 |   37.0 |  14 |  63 | 11.871 |  2.798 |   5.903 | 12.50 |
| Experimental |      | Rural  |          |       | score.tde.pos |  13 | 33.000 |   30.0 |  15 |  50 | 10.504 |  2.913 |   6.347 | 16.00 |
| Experimental |      | Urbana |          |       | score.tde.pos |   2 | 34.000 |   34.0 |  32 |  36 |  2.828 |  2.000 |  25.412 |  2.00 |
| Experimental |      |        |          |       | score.tde.pos |   5 | 28.400 |   37.0 |   1 |  38 | 15.884 |  7.104 |  19.723 | 10.00 |
| Controle     |      |        | Branca   |       | score.tde.pre |   2 | 38.500 |   38.5 |  38 |  39 |  0.707 |  0.500 |   6.353 |  0.50 |
| Controle     |      |        | Indígena |       | score.tde.pre |   2 | 37.500 |   37.5 |  34 |  41 |  4.950 |  3.500 |  44.472 |  3.50 |
| Controle     |      |        | Parda    |       | score.tde.pre |  24 | 36.875 |   37.0 |  32 |  42 |  2.271 |  0.464 |   0.959 |  2.25 |
| Controle     |      |        |          |       | score.tde.pre |  21 | 36.476 |   36.0 |  33 |  39 |  2.089 |  0.456 |   0.951 |  3.00 |
| Experimental |      |        | Branca   |       | score.tde.pre |   3 | 36.333 |   37.0 |  34 |  38 |  2.082 |  1.202 |   5.171 |  2.00 |
| Experimental |      |        | Indígena |       | score.tde.pre |   3 | 39.667 |   40.0 |  37 |  42 |  2.517 |  1.453 |   6.252 |  2.50 |
| Experimental |      |        | Parda    |       | score.tde.pre |   4 | 35.250 |   34.5 |  32 |  40 |  3.948 |  1.974 |   6.281 |  5.75 |
| Experimental |      |        |          |       | score.tde.pre |  10 | 35.900 |   36.5 |  32 |  40 |  2.644 |  0.836 |   1.891 |  3.50 |
| Controle     |      |        | Branca   |       | score.tde.pos |   2 | 47.000 |   47.0 |  31 |  63 | 22.627 | 16.000 | 203.299 | 16.00 |
| Controle     |      |        | Indígena |       | score.tde.pos |   2 | 26.500 |   26.5 |  25 |  28 |  2.121 |  1.500 |  19.059 |  1.50 |
| Controle     |      |        | Parda    |       | score.tde.pos |  24 | 31.875 |   31.0 |  17 |  50 |  9.470 |  1.933 |   3.999 | 12.50 |
| Controle     |      |        |          |       | score.tde.pos |  21 | 35.762 |   41.0 |   5 |  59 | 12.320 |  2.689 |   5.608 | 13.00 |
| Experimental |      |        | Branca   |       | score.tde.pos |   3 | 39.000 |   37.0 |  36 |  44 |  4.359 |  2.517 |  10.828 |  4.00 |
| Experimental |      |        | Indígena |       | score.tde.pos |   3 | 35.667 |   42.0 |  15 |  50 | 18.339 | 10.588 |  45.558 | 17.50 |
| Experimental |      |        | Parda    |       | score.tde.pos |   4 | 29.000 |   27.5 |  21 |  40 |  7.958 |  3.979 |  12.663 |  5.50 |
| Experimental |      |        |          |       | score.tde.pos |  10 | 29.900 |   31.0 |   1 |  44 | 11.827 |  3.740 |   8.461 | 11.50 |
| Controle     |      |        |          | 6 ano | score.tde.pre |  11 | 36.182 |   37.0 |  32 |  39 |  2.483 |  0.749 |   1.668 |  3.50 |
| Controle     |      |        |          | 7 ano | score.tde.pre |  14 | 37.286 |   37.5 |  34 |  40 |  1.729 |  0.462 |   0.998 |  2.75 |
| Controle     |      |        |          | 8 ano | score.tde.pre |  10 | 36.500 |   36.5 |  33 |  39 |  2.014 |  0.637 |   1.441 |  3.00 |
| Controle     |      |        |          | 9 ano | score.tde.pre |  14 | 37.000 |   36.5 |  33 |  42 |  2.689 |  0.719 |   1.553 |  3.75 |
| Experimental |      |        |          | 6 ano | score.tde.pre |   7 | 35.857 |   37.0 |  32 |  40 |  3.024 |  1.143 |   2.796 |  4.00 |
| Experimental |      |        |          | 7 ano | score.tde.pre |   1 | 33.000 |   33.0 |  33 |  33 |        |        |         |  0.00 |
| Experimental |      |        |          | 8 ano | score.tde.pre |   6 | 36.500 |   37.0 |  33 |  39 |  1.975 |  0.806 |   2.072 |  0.75 |
| Experimental |      |        |          | 9 ano | score.tde.pre |   6 | 37.500 |   38.5 |  32 |  42 |  3.886 |  1.586 |   4.078 |  5.25 |
| Controle     |      |        |          | 6 ano | score.tde.pos |  11 | 31.455 |   34.0 |  19 |  45 |  8.982 |  2.708 |   6.034 | 13.50 |
| Controle     |      |        |          | 7 ano | score.tde.pos |  14 | 29.714 |   29.5 |   5 |  63 | 14.938 |  3.992 |   8.625 | 18.00 |
| Controle     |      |        |          | 8 ano | score.tde.pos |  10 | 34.900 |   33.5 |  27 |  44 |  6.935 |  2.193 |   4.961 | 12.50 |
| Controle     |      |        |          | 9 ano | score.tde.pos |  14 | 39.429 |   41.0 |  22 |  59 | 10.188 |  2.723 |   5.883 | 11.00 |
| Experimental |      |        |          | 6 ano | score.tde.pos |   7 | 31.571 |   27.0 |  21 |  44 |  8.463 |  3.199 |   7.827 | 11.50 |
| Experimental |      |        |          | 7 ano | score.tde.pos |   1 | 26.000 |   26.0 |  26 |  26 |        |        |         |  0.00 |
| Experimental |      |        |          | 8 ano | score.tde.pos |   6 | 30.333 |   34.5 |   1 |  44 | 15.188 |  6.200 |  15.939 |  7.25 |
| Experimental |      |        |          | 9 ano | score.tde.pos |   6 | 35.000 |   37.5 |  15 |  50 | 12.133 |  4.953 |  12.732 | 10.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| score.tde.pos |  69 | -0.3609326 |  0.6187830 | YES      | 3.8637044 | D’Agostino   | 0.1448796 | ns       | YES       |
| score.tde.pos |  46 | -0.2719240 | -0.4171432 | YES      | 0.9737928 | Shapiro-Wilk | 0.3802333 | ns       | YES       |
| score.tde.pos |  38 | -0.0150451 | -1.0012344 | YES      | 0.9764616 | Shapiro-Wilk | 0.5924771 | ns       | YES       |
| score.tde.pos |  69 | -0.1567525 |  0.6422429 | YES      | 2.5255713 | D’Agostino   | 0.2828650 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  69 |       3 |      65 | 1.0214568 | 0.3889919 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  69 |       3 |      61 | 0.4550000 | 0.7150000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  46 |       3 |      42 | 2.4143109 | 0.0799624 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  46 |       3 |      38 | 0.3140000 | 0.8150000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  38 |       5 |      32 | 1.9143314 | 0.1194184 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  38 |       5 |      26 | 2.4270000 | 0.0620000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  69 |       7 |      61 | 0.6059671 | 0.7486889 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  69 |       6 |      54 | 0.9100000 | 0.4950000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect        | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:--------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | score.tde.pre |   1 |  66 | 226.156 | 8439.611 | 1.769 | 0.188 | 0.026 |        |
| 2   | grupo         |   1 |  66 |  40.585 | 8439.611 | 0.317 | 0.575 | 0.005 |        |
| 4   | Sexo          |   1 |  66 |  50.209 | 8429.987 | 0.393 | 0.533 | 0.006 |        |
| 6   | Zona          |   1 |  43 | 118.784 | 4633.062 | 1.102 | 0.300 | 0.025 |        |
| 8   | Cor.Raca      |   2 |  34 | 484.699 | 3372.874 | 2.443 | 0.102 | 0.126 |        |
| 10  | Serie         |   3 |  64 | 678.453 | 7801.743 | 1.855 | 0.146 | 0.080 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | score.tde.pre  |   1 |  64 | 289.678 | 8149.540 | 2.275 | 0.136 | 0.034 |        |
| 4   | grupo:Sexo     |   1 |  64 | 240.293 | 8149.540 | 1.887 | 0.174 | 0.029 |        |
| 8   | grupo:Zona     |   1 |  41 |  34.562 | 4574.847 | 0.310 | 0.581 | 0.007 |        |
| 12  | grupo:Cor.Raca |   2 |  31 |  98.304 | 3273.876 | 0.465 | 0.632 | 0.029 |        |
| 16  | grupo:Serie    |   3 |  60 |  73.500 | 7626.922 | 0.193 | 0.901 | 0.010 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  49 |  36.796 |    0.319 |    33.939 |      1.629 |  33.854 |    1.617 |
| score.tde.pos | Experimental |  20 |  36.400 |    0.670 |    31.950 |      2.527 |  32.159 |    2.533 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |    1.695 |   -4.312 |     7.702 | 3.009 |     0.563 | 0.575 | 0.575 | ns           |
| score.tde.pre | Controle | Experimental |    0.396 |   -0.915 |     1.707 | 0.657 |     0.603 | 0.549 | 0.549 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    2.857 |   -0.431 |     6.146 | 1.663 |     1.718 | 0.088 | 0.088 | ns           |
| score.tde | Experimental | pre    | pos    |    4.450 |   -0.697 |     9.597 | 2.603 |     1.710 | 0.090 | 0.090 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  24 |  36.917 |    0.489 |    31.958 |      2.120 |  31.757 |    2.307 |
| score.tde.pos | Controle     | M    |  25 |  36.680 |    0.423 |    35.840 |      2.440 |  35.841 |    2.257 |
| score.tde.pos | Experimental | F    |  10 |  35.600 |    1.024 |    33.400 |      2.306 |  34.323 |    3.621 |
| score.tde.pos | Experimental | M    |  10 |  37.200 |    0.841 |    30.500 |      4.603 |  30.057 |    3.580 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -2.566 |  -11.181 |     6.049 | 4.312 |    -0.595 | 0.554 | 0.554 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |    5.784 |   -2.671 |    14.239 | 4.232 |     1.367 | 0.177 | 0.177 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |    1.317 |   -0.542 |     3.175 | 0.931 |     1.415 | 0.162 | 0.162 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |   -0.520 |   -2.367 |     1.327 | 0.925 |    -0.562 | 0.576 | 0.576 | ns           |
| score.tde.pos | Controle     |      | F        | M            |   -4.084 |  -10.532 |     2.364 | 3.228 |    -1.265 | 0.210 | 0.210 | ns           |
| score.tde.pos | Experimental |      | F        | M            |    4.266 |   -5.976 |    14.509 | 5.127 |     0.832 | 0.408 | 0.408 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    0.237 |   -1.174 |     1.648 | 0.706 |     0.335 | 0.739 | 0.739 | ns           |
| score.tde.pre | Experimental |      | F        | M            |   -1.600 |   -3.808 |     0.608 | 1.106 |    -1.447 | 0.153 | 0.153 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    4.958 |    0.250 |     9.667 | 2.380 |     2.083 | 0.039 | 0.039 | \*           |
| score.tde | Controle     | M    | pre    | pos    |    0.840 |   -3.773 |     5.453 | 2.332 |     0.360 | 0.719 | 0.719 | ns           |
| score.tde | Experimental | F    | pre    | pos    |    2.200 |   -5.094 |     9.494 | 3.687 |     0.597 | 0.552 | 0.552 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    6.700 |   -0.594 |    13.994 | 3.687 |     1.817 | 0.071 | 0.071 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**

| var           | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 6 ano |  11 |  36.182 |    0.749 |    31.455 |      2.708 |  31.837 |    3.414 |
| score.tde.pos | Controle     | 7 ano |  14 |  37.286 |    0.462 |    29.714 |      3.992 |  29.334 |    3.030 |
| score.tde.pos | Controle     | 8 ano |  10 |  36.500 |    0.637 |    34.900 |      2.193 |  35.063 |    3.568 |
| score.tde.pos | Controle     | 9 ano |  14 |  37.000 |    0.719 |    39.429 |      2.723 |  39.246 |    3.017 |
| score.tde.pos | Experimental | 6 ano |   7 |  35.857 |    1.143 |    31.571 |      3.199 |  32.179 |    4.291 |
| score.tde.pos | Experimental | 8 ano |   6 |  36.500 |    0.806 |    30.333 |      6.200 |  30.496 |    4.605 |
| score.tde.pos | Experimental | 9 ano |   6 |  37.500 |    1.586 |    35.000 |      4.953 |  34.471 |    4.624 |

|     | .y.           | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | score.tde.pos |              | 6 ano | Controle | Experimental |   -0.341 |  -11.252 |    10.569 | 5.454 |    -0.063 | 0.950 | 0.950 | ns           |
| 3   | score.tde.pos |              | 8 ano | Controle | Experimental |    4.567 |   -7.079 |    16.213 | 5.822 |     0.784 | 0.436 | 0.436 | ns           |
| 4   | score.tde.pos |              | 9 ano | Controle | Experimental |    4.774 |   -6.245 |    15.794 | 5.509 |     0.867 | 0.390 | 0.390 | ns           |
| 5   | score.tde.pre |              | 6 ano | Controle | Experimental |    0.325 |   -2.091 |     2.740 | 1.208 |     0.269 | 0.789 | 0.789 | ns           |
| 7   | score.tde.pre |              | 8 ano | Controle | Experimental |    0.000 |   -2.580 |     2.580 | 1.290 |     0.000 | 1.000 | 1.000 | ns           |
| 8   | score.tde.pre |              | 9 ano | Controle | Experimental |   -0.500 |   -2.938 |     1.938 | 1.219 |    -0.410 | 0.683 | 0.683 | ns           |
| 9   | score.tde.pos | Controle     |       | 6 ano    | 7 ano        |    2.503 |   -6.672 |    11.679 | 4.587 |     0.546 | 0.587 | 1.000 | ns           |
| 10  | score.tde.pos | Controle     |       | 6 ano    | 8 ano        |   -3.225 |  -13.086 |     6.635 | 4.930 |    -0.654 | 0.515 | 1.000 | ns           |
| 11  | score.tde.pos | Controle     |       | 6 ano    | 9 ano        |   -7.408 |  -16.544 |     1.727 | 4.567 |    -1.622 | 0.110 | 0.660 | ns           |
| 12  | score.tde.pos | Controle     |       | 7 ano    | 8 ano        |   -5.729 |  -15.111 |     3.653 | 4.690 |    -1.221 | 0.227 | 1.000 | ns           |
| 13  | score.tde.pos | Controle     |       | 7 ano    | 9 ano        |   -9.912 |  -18.442 |    -1.381 | 4.265 |    -2.324 | 0.024 | 0.141 | ns           |
| 14  | score.tde.pos | Controle     |       | 8 ano    | 9 ano        |   -4.183 |  -13.538 |     5.173 | 4.677 |    -0.894 | 0.375 | 1.000 | ns           |
| 16  | score.tde.pos | Experimental |       | 6 ano    | 8 ano        |    1.683 |  -10.886 |    14.252 | 6.284 |     0.268 | 0.790 | 1.000 | ns           |
| 17  | score.tde.pos | Experimental |       | 6 ano    | 9 ano        |   -2.293 |  -14.983 |    10.397 | 6.344 |    -0.361 | 0.719 | 1.000 | ns           |
| 20  | score.tde.pos | Experimental |       | 8 ano    | 9 ano        |   -3.975 |  -17.047 |     9.097 | 6.535 |    -0.608 | 0.545 | 1.000 | ns           |
| 21  | score.tde.pre | Controle     |       | 6 ano    | 7 ano        |   -1.104 |   -3.117 |     0.909 | 1.007 |    -1.096 | 0.277 | 1.000 | ns           |
| 22  | score.tde.pre | Controle     |       | 6 ano    | 8 ano        |   -0.318 |   -2.501 |     1.865 | 1.092 |    -0.291 | 0.772 | 1.000 | ns           |
| 23  | score.tde.pre | Controle     |       | 6 ano    | 9 ano        |   -0.818 |   -2.831 |     1.195 | 1.007 |    -0.813 | 0.420 | 1.000 | ns           |
| 24  | score.tde.pre | Controle     |       | 7 ano    | 8 ano        |    0.786 |   -1.283 |     2.854 | 1.035 |     0.759 | 0.450 | 1.000 | ns           |
| 25  | score.tde.pre | Controle     |       | 7 ano    | 9 ano        |    0.286 |   -1.603 |     2.174 | 0.944 |     0.303 | 0.763 | 1.000 | ns           |
| 26  | score.tde.pre | Controle     |       | 8 ano    | 9 ano        |   -0.500 |   -2.569 |     1.569 | 1.035 |    -0.483 | 0.631 | 1.000 | ns           |
| 28  | score.tde.pre | Experimental |       | 6 ano    | 8 ano        |   -0.643 |   -3.423 |     2.137 | 1.390 |    -0.462 | 0.645 | 1.000 | ns           |
| 29  | score.tde.pre | Experimental |       | 6 ano    | 9 ano        |   -1.643 |   -4.423 |     1.137 | 1.390 |    -1.182 | 0.242 | 0.726 | ns           |
| 32  | score.tde.pre | Experimental |       | 8 ano    | 9 ano        |   -1.000 |   -3.885 |     1.885 | 1.443 |    -0.693 | 0.491 | 1.000 | ns           |

| .y.       | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 6 ano | pre    | pos    |    4.727 |   -2.189 |    11.643 | 3.494 |     1.353 | 0.179 | 0.179 | ns           |
| score.tde | Controle     | 7 ano | pre    | pos    |    7.571 |    1.441 |    13.702 | 3.097 |     2.445 | 0.016 | 0.016 | \*           |
| score.tde | Controle     | 8 ano | pre    | pos    |    1.600 |   -5.654 |     8.854 | 3.664 |     0.437 | 0.663 | 0.663 | ns           |
| score.tde | Controle     | 9 ano | pre    | pos    |   -2.429 |   -8.559 |     3.702 | 3.097 |    -0.784 | 0.434 | 0.434 | ns           |
| score.tde | Experimental | 6 ano | pre    | pos    |    4.286 |   -4.384 |    12.955 | 4.379 |     0.979 | 0.330 | 0.330 | ns           |
| score.tde | Experimental | 8 ano | pre    | pos    |    6.167 |   -3.198 |    15.531 | 4.730 |     1.304 | 0.195 | 0.195 | ns           |
| score.tde | Experimental | 9 ano | pre    | pos    |    2.500 |   -6.864 |    11.864 | 4.730 |     0.528 | 0.598 | 0.598 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-3rd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
