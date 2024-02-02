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

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          |       | score.tde.pre |  24 | 26.542 |   26.0 |  20 |  31 |  3.647 | 0.744 |  1.540 |  5.25 |
| Controle     | M    |        |          |       | score.tde.pre |  34 | 25.824 |   26.0 |  20 |  31 |  3.520 | 0.604 |  1.228 |  6.00 |
| Experimental | F    |        |          |       | score.tde.pre |   8 | 25.500 |   26.5 |  20 |  30 |  3.546 | 1.254 |  2.964 |  4.75 |
| Experimental | M    |        |          |       | score.tde.pre |  17 | 23.706 |   23.0 |  19 |  29 |  2.889 | 0.701 |  1.485 |  3.00 |
| Controle     | F    |        |          |       | score.tde.pos |  24 | 24.458 |   25.0 |   7 |  48 | 11.669 | 2.382 |  4.928 | 18.50 |
| Controle     | M    |        |          |       | score.tde.pos |  34 | 24.206 |   23.5 |   0 |  42 | 11.544 | 1.980 |  4.028 | 15.75 |
| Experimental | F    |        |          |       | score.tde.pos |   8 | 19.250 |   20.5 |   1 |  28 |  8.413 | 2.975 |  7.034 |  7.50 |
| Experimental | M    |        |          |       | score.tde.pos |  17 | 22.294 |   19.0 |   2 |  43 | 10.172 | 2.467 |  5.230 |  9.00 |
| Controle     |      | Rural  |          |       | score.tde.pre |  35 | 26.057 |   26.0 |  20 |  31 |  3.613 | 0.611 |  1.241 |  6.00 |
| Controle     |      | Urbana |          |       | score.tde.pre |   8 | 26.625 |   26.5 |  22 |  31 |  2.774 | 0.981 |  2.319 |  3.25 |
| Controle     |      |        |          |       | score.tde.pre |  15 | 26.000 |   26.0 |  20 |  31 |  3.982 | 1.028 |  2.205 |  7.50 |
| Experimental |      | Rural  |          |       | score.tde.pre |  17 | 23.588 |   23.0 |  19 |  29 |  2.938 | 0.713 |  1.511 |  4.00 |
| Experimental |      | Urbana |          |       | score.tde.pre |   3 | 25.000 |   24.0 |  21 |  30 |  4.583 | 2.646 | 11.384 |  4.50 |
| Experimental |      |        |          |       | score.tde.pre |   5 | 26.200 |   27.0 |  22 |  29 |  2.775 | 1.241 |  3.445 |  3.00 |
| Controle     |      | Rural  |          |       | score.tde.pos |  35 | 24.629 |   25.0 |   0 |  48 | 11.627 | 1.965 |  3.994 | 15.00 |
| Controle     |      | Urbana |          |       | score.tde.pos |   8 | 25.000 |   26.0 |   8 |  39 |  9.472 | 3.349 |  7.919 |  8.25 |
| Controle     |      |        |          |       | score.tde.pos |  15 | 23.200 |   21.0 |   7 |  42 | 12.763 | 3.295 |  7.068 | 22.00 |
| Experimental |      | Rural  |          |       | score.tde.pos |  17 | 23.000 |   21.0 |  11 |  43 |  8.544 | 2.072 |  4.393 |  9.00 |
| Experimental |      | Urbana |          |       | score.tde.pos |   3 | 15.000 |   18.0 |   2 |  25 | 11.790 | 6.807 | 29.288 | 11.50 |
| Experimental |      |        |          |       | score.tde.pos |   5 | 19.400 |   19.0 |   1 |  33 | 11.929 | 5.335 | 14.812 |  8.00 |
| Controle     |      |        | Branca   |       | score.tde.pre |   7 | 28.000 |   29.0 |  20 |  31 |  3.916 | 1.480 |  3.621 |  3.00 |
| Controle     |      |        | Parda    |       | score.tde.pre |  25 | 26.040 |   26.0 |  20 |  31 |  3.272 | 0.654 |  1.351 |  6.00 |
| Controle     |      |        | Preta    |       | score.tde.pre |   1 | 26.000 |   26.0 |  26 |  26 |        |       |        |  0.00 |
| Controle     |      |        |          |       | score.tde.pre |  25 | 25.680 |   25.0 |  20 |  31 |  3.783 | 0.757 |  1.561 |  8.00 |
| Experimental |      |        | Branca   |       | score.tde.pre |   1 | 21.000 |   21.0 |  21 |  21 |        |       |        |  0.00 |
| Experimental |      |        | Indígena |       | score.tde.pre |   5 | 24.200 |   24.0 |  21 |  28 |  2.864 | 1.281 |  3.556 |  4.00 |
| Experimental |      |        | Parda    |       | score.tde.pre |  13 | 24.000 |   23.0 |  19 |  30 |  3.674 | 1.019 |  2.220 |  7.00 |
| Experimental |      |        |          |       | score.tde.pre |   6 | 25.500 |   25.0 |  23 |  29 |  2.168 | 0.885 |  2.275 |  2.25 |
| Controle     |      |        | Branca   |       | score.tde.pos |   7 | 31.714 |   32.0 |  16 |  42 |  8.139 | 3.076 |  7.527 |  6.00 |
| Controle     |      |        | Parda    |       | score.tde.pos |  25 | 20.280 |   23.0 |   0 |  48 | 12.068 | 2.414 |  4.981 | 15.00 |
| Controle     |      |        | Preta    |       | score.tde.pos |   1 | 40.000 |   40.0 |  40 |  40 |        |       |        |  0.00 |
| Controle     |      |        |          |       | score.tde.pos |  25 | 25.640 |   24.0 |   7 |  42 | 10.323 | 2.065 |  4.261 | 16.00 |
| Experimental |      |        | Branca   |       | score.tde.pos |   1 |  2.000 |    2.0 |   2 |   2 |        |       |        |  0.00 |
| Experimental |      |        | Indígena |       | score.tde.pos |   5 | 25.400 |   25.0 |  19 |  33 |  5.413 | 2.421 |  6.721 |  6.00 |
| Experimental |      |        | Parda    |       | score.tde.pos |  13 | 22.538 |   21.0 |   1 |  43 | 10.982 | 3.046 |  6.636 |  9.00 |
| Experimental |      |        |          |       | score.tde.pos |   6 | 18.500 |   18.5 |  11 |  26 |  4.764 | 1.945 |  5.000 |  1.00 |
| Controle     |      |        |          | 6 ano | score.tde.pre |  19 | 26.737 |   28.0 |  20 |  31 |  3.754 | 0.861 |  1.809 |  5.50 |
| Controle     |      |        |          | 7 ano | score.tde.pre |  17 | 26.647 |   27.0 |  20 |  30 |  3.121 | 0.757 |  1.605 |  4.00 |
| Controle     |      |        |          | 8 ano | score.tde.pre |  11 | 24.909 |   24.0 |  20 |  31 |  4.300 | 1.297 |  2.889 |  7.50 |
| Controle     |      |        |          | 9 ano | score.tde.pre |  11 | 25.455 |   25.0 |  20 |  31 |  3.078 | 0.928 |  2.068 |  2.00 |
| Experimental |      |        |          | 6 ano | score.tde.pre |   7 | 24.571 |   25.0 |  21 |  29 |  3.155 | 1.192 |  2.918 |  4.50 |
| Experimental |      |        |          | 7 ano | score.tde.pre |   9 | 23.667 |   24.0 |  21 |  28 |  2.291 | 0.764 |  1.761 |  2.00 |
| Experimental |      |        |          | 8 ano | score.tde.pre |   5 | 23.400 |   22.0 |  20 |  28 |  3.130 | 1.400 |  3.887 |  3.00 |
| Experimental |      |        |          | 9 ano | score.tde.pre |   4 | 26.250 |   28.0 |  19 |  30 |  4.992 | 2.496 |  7.943 |  4.25 |
| Controle     |      |        |          | 6 ano | score.tde.pos |  19 | 25.053 |   24.0 |   0 |  42 | 10.617 | 2.436 |  5.117 | 15.00 |
| Controle     |      |        |          | 7 ano | score.tde.pos |  17 | 21.824 |   23.0 |   0 |  41 | 12.345 | 2.994 |  6.347 | 18.00 |
| Controle     |      |        |          | 8 ano | score.tde.pos |  11 | 19.909 |   17.0 |   7 |  36 |  9.565 | 2.884 |  6.426 | 14.50 |
| Controle     |      |        |          | 9 ano | score.tde.pos |  11 | 31.273 |   28.0 |  12 |  48 | 11.341 | 3.419 |  7.619 | 18.00 |
| Experimental |      |        |          | 6 ano | score.tde.pos |   7 | 22.571 |   19.0 |  11 |  43 | 10.358 | 3.915 |  9.579 |  8.50 |
| Experimental |      |        |          | 7 ano | score.tde.pos |   9 | 19.889 |   21.0 |   2 |  31 |  8.207 | 2.736 |  6.309 |  4.00 |
| Experimental |      |        |          | 8 ano | score.tde.pos |   5 | 18.800 |   18.0 |   1 |  33 | 12.029 | 5.380 | 14.936 | 10.00 |
| Experimental |      |        |          | 9 ano | score.tde.pos |   4 | 25.500 |   22.0 |  18 |  40 | 10.149 | 5.074 | 16.149 | 10.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| score.tde.pos |  83 | -0.1944068 | -0.4176708 | YES      | 0.8660143 | D’Agostino | 0.6485559 | ns       | YES       |
| score.tde.pos |  63 | -0.2231629 |  0.0805450 | YES      | 1.1252743 | D’Agostino | 0.5697047 | ns       | YES       |
| score.tde.pos |  52 |  0.1155337 |  0.1045976 | YES      | 0.7400369 | D’Agostino | 0.6907216 | ns       | YES       |
| score.tde.pos |  83 | -0.1710494 | -0.5402136 | YES      | 1.2437597 | D’Agostino | 0.5369341 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  83 |       3 |      79 | 0.7160661 | 0.5453008 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  83 |       3 |      75 | 0.7980000 | 0.4990000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  63 |       3 |      59 | 0.7407314 | 0.5320139 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  63 |       3 |      55 | 0.4700000 | 0.7040000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  52 |       5 |      46 | 1.0627966 | 0.3932196 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  52 |       3 |      42 | 0.6570000 | 0.5830000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  83 |       7 |      75 | 0.4765157 | 0.8487044 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  83 |       7 |      67 | 1.8910000 | 0.0850000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect        | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:--------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | score.tde.pre |   1 |  80 | 640.429 | 9091.424 | 5.635 | 0.020 | 0.066 | \*     |
| 2   | grupo         |   1 |  80 |  36.430 | 9091.424 | 0.321 | 0.573 | 0.004 |        |
| 4   | Sexo          |   1 |  80 |  40.523 | 9087.331 | 0.357 | 0.552 | 0.004 |        |
| 6   | Zona          |   1 |  60 |  74.014 | 5968.243 | 0.744 | 0.392 | 0.012 |        |
| 8   | Cor.Raca      |   3 |  47 | 589.059 | 6079.676 | 1.518 | 0.222 | 0.088 |        |
| 10  | Serie         |   3 |  78 | 862.903 | 8264.952 | 2.715 | 0.050 | 0.095 |        |

## ANCOVA tests for two factors

|     | Effect         | DFn | DFd |     SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:---------------|----:|----:|--------:|---------:|------:|------:|------:|:-------|
| 1   | score.tde.pre  |   1 |  78 | 703.667 | 8976.880 | 6.114 | 0.016 | 0.073 | \*     |
| 4   | grupo:Sexo     |   1 |  78 |  69.833 | 8976.880 | 0.607 | 0.438 | 0.008 |        |
| 8   | grupo:Zona     |   1 |  58 | 158.981 | 5807.433 | 1.588 | 0.213 | 0.027 |        |
| 12  | grupo:Cor.Raca |   1 |  45 | 694.663 | 5380.125 | 5.810 | 0.020 | 0.114 | \*     |
| 16  | grupo:Serie    |   3 |  74 | 100.936 | 8140.215 | 0.306 | 0.821 | 0.012 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  58 |  26.121 |    0.467 |     24.31 |      1.509 |  23.858 |    1.413 |
| score.tde.pos | Experimental |  25 |  24.280 |    0.631 |     21.32 |      1.915 |  22.370 |    2.177 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |    1.488 |   -3.742 |     6.717 | 2.628 |     0.566 | 0.573 | 0.573 | ns           |
| score.tde.pre | Controle | Experimental |    1.841 |    0.201 |     3.481 | 0.824 |     2.233 | 0.028 | 0.028 | \*           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |     1.81 |   -1.169 |     4.790 | 1.509 |     1.200 | 0.232 | 0.232 | ns           |
| score.tde | Experimental | pre    | pos    |     2.96 |   -1.578 |     7.498 | 2.298 |     1.288 | 0.200 | 0.200 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  24 |  26.542 |    0.744 |    24.458 |      2.382 |  23.613 |    2.216 |
| score.tde.pos | Controle     | M    |  34 |  25.824 |    0.604 |    24.206 |      1.980 |  23.983 |    1.842 |
| score.tde.pos | Experimental | F    |   8 |  25.500 |    1.254 |    19.250 |      2.975 |  19.307 |    3.793 |
| score.tde.pos | Experimental | M    |  17 |  23.706 |    0.701 |    22.294 |      2.467 |  23.907 |    2.682 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |    4.305 |   -4.444 |    13.055 | 4.395 |     0.980 | 0.330 | 0.330 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |    0.076 |   -6.438 |     6.590 | 3.272 |     0.023 | 0.982 | 0.982 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |    1.042 |   -1.756 |     3.839 | 1.406 |     0.741 | 0.461 | 0.461 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |    2.118 |    0.082 |     4.153 | 1.023 |     2.071 | 0.042 | 0.042 | \*           |
| score.tde.pos | Controle     |      | F        | M            |   -0.370 |   -6.086 |     5.346 | 2.871 |    -0.129 | 0.898 | 0.898 | ns           |
| score.tde.pos | Experimental |      | F        | M            |   -4.599 |  -13.842 |     4.643 | 4.642 |    -0.991 | 0.325 | 0.325 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    0.718 |   -1.109 |     2.545 | 0.918 |     0.782 | 0.436 | 0.436 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    1.794 |   -1.144 |     4.732 | 1.476 |     1.215 | 0.228 | 0.228 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    2.083 |   -2.590 |     6.757 | 2.366 |     0.880 | 0.380 | 0.380 | ns           |
| score.tde | Controle     | M    | pre    | pos    |    1.618 |   -2.309 |     5.544 | 1.988 |     0.814 | 0.417 | 0.417 | ns           |
| score.tde | Experimental | F    | pre    | pos    |    6.250 |   -1.845 |    14.345 | 4.099 |     1.525 | 0.129 | 0.129 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    1.412 |   -4.142 |     6.965 | 2.812 |     0.502 | 0.616 | 0.616 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  35 |  26.057 |    0.611 |    24.629 |      1.965 |  23.975 |    1.723 |
| score.tde.pos | Controle     | Urbana |   8 |  26.625 |    0.981 |    25.000 |      3.349 |  23.752 |    3.597 |
| score.tde.pos | Experimental | Rural  |  17 |  23.588 |    0.713 |    23.000 |      2.072 |  24.932 |    2.555 |

|     | .y.           | grupo    | Zona  | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:---------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | score.tde.pos |          | Rural | Controle | Experimental |   -0.956 |   -7.248 |     5.335 | 3.141 |    -0.305 | 0.762 | 0.762 | ns           |
| 3   | score.tde.pre |          | Rural | Controle | Experimental |    2.469 |    0.492 |     4.446 | 0.987 |     2.500 | 0.015 | 0.015 | \*           |
| 5   | score.tde.pos | Controle |       | Rural    | Urbana       |    0.223 |   -7.707 |     8.153 | 3.958 |     0.056 | 0.955 | 0.955 | ns           |
| 7   | score.tde.pre | Controle |       | Rural    | Urbana       |   -0.568 |   -3.189 |     2.053 | 1.309 |    -0.434 | 0.666 | 0.666 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    1.429 |   -2.290 |     5.147 | 1.877 |     0.761 | 0.448 | 0.448 | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |    1.625 |   -6.152 |     9.402 | 3.926 |     0.414 | 0.680 | 0.680 | ns           |
| score.tde | Experimental | Rural  | pre    | pos    |    0.588 |   -4.747 |     5.923 | 2.693 |     0.218 | 0.827 | 0.827 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-52-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-54-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |   7 |   28.00 |    1.480 |    31.714 |      3.076 |  30.812 |    4.283 |
| score.tde.pos | Controle     | Parda    |  25 |   26.04 |    0.654 |    20.280 |      2.414 |  20.115 |    2.197 |
| score.tde.pos | Experimental | Indígena |   5 |   24.20 |    1.281 |    25.400 |      2.421 |  25.926 |    4.934 |
| score.tde.pos | Experimental | Parda    |  13 |   24.00 |    1.019 |    22.538 |      3.046 |  23.140 |    3.124 |

|     | .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 3   | score.tde.pos |              | Parda    | Controle | Experimental |   -3.025 |  -10.798 |     4.748 | 3.859 |    -0.784 | 0.437 | 0.437 | ns           |
| 6   | score.tde.pre |              | Parda    | Controle | Experimental |    2.040 |   -0.326 |     4.406 | 1.176 |     1.735 | 0.089 | 0.089 | ns           |
| 8   | score.tde.pos | Controle     |          | Branca   | Parda        |   10.698 |    1.100 |    20.295 | 4.765 |     2.245 | 0.030 | 0.030 | \*           |
| 12  | score.tde.pos | Experimental |          | Indígena | Parda        |    2.786 |   -8.804 |    14.377 | 5.755 |     0.484 | 0.631 | 0.631 | ns           |
| 14  | score.tde.pre | Controle     |          | Branca   | Parda        |    1.960 |   -0.999 |     4.919 | 1.470 |     1.333 | 0.189 | 0.189 | ns           |
| 18  | score.tde.pre | Experimental |          | Indígena | Parda        |    0.200 |   -3.442 |     3.842 | 1.809 |     0.111 | 0.912 | 0.912 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |   -3.714 |  -12.288 |     4.859 | 4.317 |    -0.860 | 0.392 | 0.392 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    5.760 |    1.223 |    10.297 | 2.284 |     2.522 | 0.013 | 0.013 | \*           |
| score.tde | Experimental | Indígena | pre    | pos    |   -1.200 |  -11.345 |     8.945 | 5.108 |    -0.235 | 0.815 | 0.815 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |    1.462 |   -4.830 |     7.753 | 3.168 |     0.461 | 0.646 | 0.646 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-62-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-64-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-66-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-68-1.png)<!-- -->

### factores: **grupo:Serie**

| var           | grupo        | Serie |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 6 ano |  19 |  26.737 |    0.861 |    25.053 |      2.436 |  23.792 |    2.400 |
| score.tde.pos | Controle     | 7 ano |  17 |  26.647 |    0.757 |    21.824 |      2.994 |  20.657 |    2.528 |
| score.tde.pos | Controle     | 8 ano |  11 |  24.909 |    1.297 |    19.909 |      2.884 |  20.560 |    3.111 |
| score.tde.pos | Controle     | 9 ano |  11 |  25.455 |    0.928 |    31.273 |      3.419 |  31.353 |    3.103 |
| score.tde.pos | Experimental | 6 ano |   7 |  24.571 |    1.192 |    22.571 |      3.915 |  23.576 |    3.905 |
| score.tde.pos | Experimental | 7 ano |   9 |  23.667 |    0.764 |    19.889 |      2.736 |  21.840 |    3.495 |
| score.tde.pos | Experimental | 8 ano |   5 |  23.400 |    1.400 |    18.800 |      5.380 |  21.030 |    4.665 |

|     | .y.           | grupo        | Serie | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | score.tde.pos |              | 6 ano | Controle | Experimental |    0.216 |   -8.988 |     9.420 | 4.616 |     0.047 | 0.963 | 0.963 | ns           |
| 2   | score.tde.pos |              | 7 ano | Controle | Experimental |   -1.184 |   -9.906 |     7.539 | 4.374 |    -0.271 | 0.787 | 0.787 | ns           |
| 3   | score.tde.pos |              | 8 ano | Controle | Experimental |   -0.470 |  -11.591 |    10.651 | 5.577 |    -0.084 | 0.933 | 0.933 | ns           |
| 5   | score.tde.pre |              | 6 ano | Controle | Experimental |    2.165 |   -0.827 |     5.158 | 1.501 |     1.442 | 0.154 | 0.154 | ns           |
| 6   | score.tde.pre |              | 7 ano | Controle | Experimental |    2.980 |    0.190 |     5.771 | 1.400 |     2.129 | 0.037 | 0.037 | \*           |
| 7   | score.tde.pre |              | 8 ano | Controle | Experimental |    1.509 |   -2.142 |     5.160 | 1.831 |     0.824 | 0.413 | 0.413 | ns           |
| 9   | score.tde.pos | Controle     |       | 6 ano    | 7 ano        |    3.135 |   -3.716 |     9.987 | 3.436 |     0.912 | 0.365 | 1.000 | ns           |
| 10  | score.tde.pos | Controle     |       | 6 ano    | 8 ano        |    3.231 |   -4.652 |    11.115 | 3.954 |     0.817 | 0.417 | 1.000 | ns           |
| 11  | score.tde.pos | Controle     |       | 6 ano    | 9 ano        |   -7.562 |  -15.390 |     0.267 | 3.926 |    -1.926 | 0.058 | 0.349 | ns           |
| 12  | score.tde.pos | Controle     |       | 7 ano    | 8 ano        |    0.096 |   -7.941 |     8.133 | 4.031 |     0.024 | 0.981 | 1.000 | ns           |
| 13  | score.tde.pos | Controle     |       | 7 ano    | 9 ano        |  -10.697 |  -18.683 |    -2.710 | 4.005 |    -2.671 | 0.009 | 0.056 | ns           |
| 14  | score.tde.pos | Controle     |       | 8 ano    | 9 ano        |  -10.793 |  -19.552 |    -2.034 | 4.393 |    -2.457 | 0.016 | 0.099 | ns           |
| 15  | score.tde.pos | Experimental |       | 6 ano    | 7 ano        |    1.736 |   -8.626 |    12.098 | 5.197 |     0.334 | 0.739 | 1.000 | ns           |
| 16  | score.tde.pos | Experimental |       | 6 ano    | 8 ano        |    2.546 |   -9.500 |    14.591 | 6.041 |     0.421 | 0.675 | 1.000 | ns           |
| 18  | score.tde.pos | Experimental |       | 7 ano    | 8 ano        |    0.810 |  -10.639 |    12.258 | 5.742 |     0.141 | 0.888 | 1.000 | ns           |
| 21  | score.tde.pre | Controle     |       | 6 ano    | 7 ano        |    0.090 |   -2.170 |     2.350 | 1.134 |     0.079 | 0.937 | 1.000 | ns           |
| 22  | score.tde.pre | Controle     |       | 6 ano    | 8 ano        |    1.828 |   -0.737 |     4.392 | 1.286 |     1.421 | 0.160 | 0.958 | ns           |
| 23  | score.tde.pre | Controle     |       | 6 ano    | 9 ano        |    1.282 |   -1.282 |     3.847 | 1.286 |     0.997 | 0.322 | 1.000 | ns           |
| 24  | score.tde.pre | Controle     |       | 7 ano    | 8 ano        |    1.738 |   -0.881 |     4.357 | 1.314 |     1.323 | 0.190 | 1.000 | ns           |
| 25  | score.tde.pre | Controle     |       | 7 ano    | 9 ano        |    1.193 |   -1.427 |     3.812 | 1.314 |     0.908 | 0.367 | 1.000 | ns           |
| 26  | score.tde.pre | Controle     |       | 8 ano    | 9 ano        |   -0.545 |   -3.432 |     2.341 | 1.448 |    -0.377 | 0.707 | 1.000 | ns           |
| 27  | score.tde.pre | Experimental |       | 6 ano    | 7 ano        |    0.905 |   -2.506 |     4.316 | 1.711 |     0.529 | 0.599 | 1.000 | ns           |
| 28  | score.tde.pre | Experimental |       | 6 ano    | 8 ano        |    1.171 |   -2.792 |     5.135 | 1.988 |     0.589 | 0.558 | 1.000 | ns           |
| 30  | score.tde.pre | Experimental |       | 7 ano    | 8 ano        |    0.267 |   -3.509 |     4.042 | 1.894 |     0.141 | 0.888 | 1.000 | ns           |

| .y.       | grupo        | Serie | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 6 ano | pre    | pos    |    1.684 |   -3.458 |     6.827 | 2.602 |     0.647 | 0.518 | 0.518 | ns           |
| score.tde | Controle     | 7 ano | pre    | pos    |    4.824 |   -0.613 |    10.260 | 2.751 |     1.754 | 0.082 | 0.082 | ns           |
| score.tde | Controle     | 8 ano | pre    | pos    |    5.000 |   -1.759 |    11.759 | 3.419 |     1.462 | 0.146 | 0.146 | ns           |
| score.tde | Controle     | 9 ano | pre    | pos    |   -5.818 |  -12.577 |     0.940 | 3.419 |    -1.702 | 0.091 | 0.091 | ns           |
| score.tde | Experimental | 6 ano | pre    | pos    |    2.000 |   -6.472 |    10.472 | 4.286 |     0.467 | 0.641 | 0.641 | ns           |
| score.tde | Experimental | 7 ano | pre    | pos    |    3.778 |   -3.694 |    11.250 | 3.780 |     0.999 | 0.319 | 0.319 | ns           |
| score.tde | Experimental | 8 ano | pre    | pos    |    4.600 |   -5.425 |    14.625 | 5.072 |     0.907 | 0.366 | 0.366 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-78-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-80-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-score.tde-2nd-quintile_files/figure-gfm/unnamed-chunk-82-1.png)<!-- -->
