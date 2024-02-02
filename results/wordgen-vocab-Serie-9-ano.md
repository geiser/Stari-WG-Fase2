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
    - [factores: **grupo:vocab.quintile**](#factores-grupovocabquintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  Vocabulario (acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Vocabulario (acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | vocab.quintile | variable  |   n |   mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:---------------|:----------|----:|-------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |                | vocab.pre |  56 | 32.214 |   33.0 |  13 |  45 |  7.122 |  0.952 |   1.907 |  9.00 |
| Controle     | M    |        |          |                | vocab.pre |  62 | 32.258 |   34.0 |  14 |  45 |  7.763 |  0.986 |   1.971 | 11.50 |
| Experimental | F    |        |          |                | vocab.pre |  86 | 30.895 |   32.0 |  13 |  44 |  7.279 |  0.785 |   1.561 |  9.00 |
| Experimental | M    |        |          |                | vocab.pre |  85 | 31.471 |   31.0 |  11 |  48 |  7.253 |  0.787 |   1.564 | 10.00 |
| Controle     | F    |        |          |                | vocab.pos |  56 | 33.554 |   34.5 |  12 |  45 |  7.466 |  0.998 |   1.999 | 10.00 |
| Controle     | M    |        |          |                | vocab.pos |  62 | 32.887 |   34.5 |  12 |  45 |  8.618 |  1.094 |   2.189 | 13.00 |
| Experimental | F    |        |          |                | vocab.pos |  86 | 33.174 |   35.0 |  12 |  47 |  7.796 |  0.841 |   1.672 | 11.00 |
| Experimental | M    |        |          |                | vocab.pos |  85 | 31.659 |   34.0 |   1 |  45 |  9.142 |  0.992 |   1.972 | 10.00 |
| Controle     |      | Rural  |          |                | vocab.pre |  41 | 31.829 |   32.0 |  15 |  42 |  6.304 |  0.985 |   1.990 |  7.00 |
| Controle     |      | Urbana |          |                | vocab.pre |  18 | 33.444 |   36.0 |  14 |  43 |  7.081 |  1.669 |   3.521 |  4.75 |
| Controle     |      |        |          |                | vocab.pre |  59 | 32.153 |   34.0 |  13 |  45 |  8.294 |  1.080 |   2.161 | 12.50 |
| Experimental |      | Rural  |          |                | vocab.pre |  61 | 30.443 |   31.0 |  11 |  44 |  7.886 |  1.010 |   2.020 | 11.00 |
| Experimental |      | Urbana |          |                | vocab.pre |  43 | 31.512 |   34.0 |  14 |  48 |  8.727 |  1.331 |   2.686 | 12.00 |
| Experimental |      |        |          |                | vocab.pre |  67 | 31.642 |   32.0 |  16 |  44 |  5.443 |  0.665 |   1.328 |  7.00 |
| Controle     |      | Rural  |          |                | vocab.pos |  41 | 35.488 |   37.0 |  12 |  45 |  7.766 |  1.213 |   2.451 | 12.00 |
| Controle     |      | Urbana |          |                | vocab.pos |  18 | 32.222 |   34.5 |  12 |  44 |  9.552 |  2.251 |   4.750 | 12.00 |
| Controle     |      |        |          |                | vocab.pos |  59 | 31.915 |   33.0 |  14 |  44 |  7.562 |  0.984 |   1.971 | 11.00 |
| Experimental |      | Rural  |          |                | vocab.pos |  61 | 32.689 |   35.0 |   1 |  45 |  8.930 |  1.143 |   2.287 | 11.00 |
| Experimental |      | Urbana |          |                | vocab.pos |  43 | 32.767 |   34.0 |  15 |  46 |  7.702 |  1.175 |   2.370 | 10.00 |
| Experimental |      |        |          |                | vocab.pos |  67 | 31.955 |   35.0 |   3 |  47 |  8.691 |  1.062 |   2.120 | 11.00 |
| Controle     |      |        | Branca   |                | vocab.pre |   7 | 34.000 |   33.0 |  28 |  41 |  3.916 |  1.480 |   3.621 |  2.00 |
| Controle     |      |        | Indígena |                | vocab.pre |   2 | 32.000 |   32.0 |  23 |  41 | 12.728 |  9.000 | 114.356 |  9.00 |
| Controle     |      |        | Parda    |                | vocab.pre |  44 | 30.591 |   32.0 |  15 |  42 |  7.276 |  1.097 |   2.212 |  9.50 |
| Controle     |      |        |          |                | vocab.pre |  65 | 33.169 |   34.0 |  13 |  45 |  7.642 |  0.948 |   1.893 | 10.00 |
| Experimental |      |        | Branca   |                | vocab.pre |  13 | 34.231 |   36.0 |  22 |  41 |  6.457 |  1.791 |   3.902 | 11.00 |
| Experimental |      |        | Indígena |                | vocab.pre |   3 | 30.333 |   31.0 |  26 |  34 |  4.041 |  2.333 |  10.040 |  4.00 |
| Experimental |      |        | Parda    |                | vocab.pre |  52 | 28.904 |   30.0 |  11 |  44 |  8.426 |  1.168 |   2.346 | 12.25 |
| Experimental |      |        |          |                | vocab.pre | 103 | 31.971 |   32.0 |  11 |  48 |  6.513 |  0.642 |   1.273 |  8.00 |
| Controle     |      |        | Branca   |                | vocab.pos |   7 | 39.286 |   39.0 |  35 |  44 |  3.200 |  1.209 |   2.959 |  4.50 |
| Controle     |      |        | Indígena |                | vocab.pos |   2 | 31.500 |   31.5 |  20 |  43 | 16.263 | 11.500 | 146.121 | 11.50 |
| Controle     |      |        | Parda    |                | vocab.pos |  44 | 31.795 |   33.0 |  12 |  45 |  8.390 |  1.265 |   2.551 | 11.50 |
| Controle     |      |        |          |                | vocab.pos |  65 | 33.554 |   36.0 |  12 |  45 |  7.802 |  0.968 |   1.933 | 11.00 |
| Experimental |      |        | Branca   |                | vocab.pos |  13 | 36.462 |   37.0 |  17 |  47 |  7.644 |  2.120 |   4.619 |  6.00 |
| Experimental |      |        | Indígena |                | vocab.pos |   3 | 33.333 |   34.0 |  32 |  34 |  1.155 |  0.667 |   2.868 |  1.00 |
| Experimental |      |        | Parda    |                | vocab.pos |  52 | 30.288 |   31.0 |   1 |  46 | 10.876 |  1.508 |   3.028 | 15.25 |
| Experimental |      |        |          |                | vocab.pos | 103 | 32.961 |   35.0 |   8 |  44 |  7.049 |  0.695 |   1.378 | 10.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pre |   7 | 14.857 |   15.0 |  13 |  16 |  1.069 |  0.404 |   0.989 |  1.00 |
| Controle     |      |        |          | 2nd quintile   | vocab.pre |   6 | 20.333 |   21.0 |  18 |  22 |  1.506 |  0.615 |   1.580 |  1.50 |
| Controle     |      |        |          | 3rd quintile   | vocab.pre |  24 | 26.375 |   27.0 |  23 |  29 |  2.060 |  0.421 |   0.870 |  3.00 |
| Controle     |      |        |          | 4th quintile   | vocab.pre |  31 | 32.452 |   33.0 |  30 |  34 |  1.287 |  0.231 |   0.472 |  1.00 |
| Controle     |      |        |          | 5th quintile   | vocab.pre |  50 | 38.780 |   38.0 |  35 |  45 |  2.743 |  0.388 |   0.779 |  4.00 |
| Experimental |      |        |          | 1st quintile   | vocab.pre |   9 | 13.889 |   15.0 |  11 |  16 |  1.833 |  0.611 |   1.409 |  2.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pre |  12 | 20.833 |   21.5 |  18 |  22 |  1.586 |  0.458 |   1.008 |  1.50 |
| Experimental |      |        |          | 3rd quintile   | vocab.pre |  42 | 26.619 |   27.0 |  23 |  29 |  1.950 |  0.301 |   0.608 |  3.00 |
| Experimental |      |        |          | 4th quintile   | vocab.pre |  49 | 31.878 |   32.0 |  30 |  34 |  1.409 |  0.201 |   0.405 |  2.00 |
| Experimental |      |        |          | 5th quintile   | vocab.pre |  59 | 38.593 |   38.0 |  35 |  48 |  2.983 |  0.388 |   0.777 |  5.00 |
| Controle     |      |        |          | 1st quintile   | vocab.pos |   7 | 18.571 |   19.0 |  12 |  29 |  5.623 |  2.125 |   5.200 |  5.00 |
| Controle     |      |        |          | 2nd quintile   | vocab.pos |   6 | 24.333 |   25.5 |  15 |  29 |  5.279 |  2.155 |   5.540 |  5.50 |
| Controle     |      |        |          | 3rd quintile   | vocab.pos |  24 | 27.542 |   27.5 |  14 |  37 |  5.664 |  1.156 |   2.392 |  5.50 |
| Controle     |      |        |          | 4th quintile   | vocab.pos |  31 | 34.968 |   36.0 |  12 |  44 |  6.395 |  1.149 |   2.346 |  7.50 |
| Controle     |      |        |          | 5th quintile   | vocab.pos |  50 | 37.940 |   39.0 |  22 |  45 |  5.262 |  0.744 |   1.495 |  7.75 |
| Experimental |      |        |          | 1st quintile   | vocab.pos |   9 | 22.000 |   21.0 |   8 |  37 |  8.047 |  2.682 |   6.185 |  6.00 |
| Experimental |      |        |          | 2nd quintile   | vocab.pos |  12 | 21.250 |   20.0 |  15 |  30 |  5.137 |  1.483 |   3.264 |  7.25 |
| Experimental |      |        |          | 3rd quintile   | vocab.pos |  42 | 30.452 |   30.0 |  14 |  42 |  6.538 |  1.009 |   2.037 |  9.50 |
| Experimental |      |        |          | 4th quintile   | vocab.pos |  49 | 31.000 |   33.0 |   1 |  45 |  8.478 |  1.211 |   2.435 |  8.00 |
| Experimental |      |        |          | 5th quintile   | vocab.pos |  59 | 38.864 |   39.0 |  27 |  47 |  4.333 |  0.564 |   1.129 |  5.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var       |   n |   skewness | kurtosis | symmetry | statistic | method     |   p | p.signif | normality |
|:----------|----:|-----------:|---------:|:---------|----------:|:-----------|----:|:---------|:----------|
| vocab.pos | 289 | -0.9591147 | 3.627872 | NO       |  65.24627 | D’Agostino |   0 | \*\*\*\* | \-        |
| vocab.pos | 163 | -1.1252400 | 5.486793 | NO       |  54.14359 | D’Agostino |   0 | \*\*\*\* | QQ        |
| vocab.pos | 121 | -1.2714031 | 4.748731 | NO       |  44.80597 | D’Agostino |   0 | \*\*\*\* | QQ        |
| vocab.pos | 289 | -1.1239083 | 3.594774 | NO       |  74.27174 | D’Agostino |   0 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var       | method         | formula                          |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:----------|:---------------|:---------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`           | 289 |       3 |     285 | 0.7926406 | 0.4988302 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`           | 289 |       3 |     281 | 0.0660000 | 0.9780000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Zona`           | 163 |       3 |     159 | 1.1441810 | 0.3330728 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`           | 163 |       3 |     155 | 0.9330000 | 0.4260000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`       | 121 |       5 |     115 | 1.9435688 | 0.0924317 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`       | 121 |       5 |     109 | 0.5300000 | 0.7530000 | ns       |
| vocab.pos | Levene’s test  | `.res`~`grupo`\*`vocab.quintile` | 289 |       9 |     279 | 1.6551045 | 0.0997342 | ns       |
| vocab.pos | Anova’s slopes | `.res`~`grupo`\*`vocab.quintile` | 289 |       9 |     269 | 1.0380000 | 0.4100000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect         | DFn | DFd |      SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------|----:|----:|---------:|----------:|--------:|:--------|------:|:-------|
| 1   | vocab.pre      |   1 | 286 | 8691.361 | 11203.442 | 221.872 | \<0.001 | 0.437 | \*     |
| 2   | grupo          |   1 | 286 |    0.008 | 11203.442 |   0.000 | 0.988   | 0.000 |        |
| 4   | Sexo           |   1 | 286 |  149.447 | 11054.003 |   3.867 | 0.05    | 0.013 |        |
| 6   | Zona           |   1 | 160 |  160.067 |  5656.205 |   4.528 | 0.035   | 0.028 | \*     |
| 8   | Cor.Raca       |   2 | 117 |  131.865 |  5856.446 |   1.317 | 0.272   | 0.022 |        |
| 10  | vocab.quintile |   4 | 283 |  248.701 | 10954.749 |   1.606 | 0.173   | 0.022 |        |

## ANCOVA tests for two factors

|     | Effect               | DFn | DFd |      SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:---------------------|----:|----:|---------:|----------:|--------:|:--------|------:|:-------|
| 1   | vocab.pre            |   1 | 284 | 8756.812 | 11026.727 | 225.537 | \<0.001 | 0.443 | \*     |
| 4   | grupo:Sexo           |   1 | 284 |   27.224 | 11026.727 |   0.701 | 0.403   | 0.002 |        |
| 8   | grupo:Zona           |   1 | 158 |  118.861 |  5530.405 |   3.396 | 0.067   | 0.021 |        |
| 12  | grupo:Cor.Raca       |   2 | 114 |   47.489 |  5802.628 |   0.466 | 0.628   | 0.008 |        |
| 16  | grupo:vocab.quintile |   4 | 278 |  509.500 | 10445.179 |   3.390 | 0.01    | 0.047 | \*     |

## Pairwise comparisons for one factor: **grupo**

| var       | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 118 |  32.237 |    0.684 |    33.203 |      0.742 |  32.734 |    0.577 |
| vocab.pos | Experimental | 171 |  31.181 |    0.554 |    32.421 |      0.650 |  32.745 |    0.479 |

| .y.       | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos | Controle | Experimental |   -0.011 |   -1.489 |     1.467 | 0.751 |    -0.015 | 0.988 | 0.988 | ns           |
| vocab.pre | Controle | Experimental |    1.056 |   -0.670 |     2.782 | 0.877 |     1.204 | 0.229 | 0.229 | ns           |

| .y.   | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | pre    | pos    |   -0.966 |   -2.971 |     1.039 | 1.021 |    -0.946 | 0.344 | 0.344 | ns           |
| vocab | Experimental | pre    | pos    |   -1.240 |   -2.905 |     0.426 | 0.848 |    -1.462 | 0.144 | 0.144 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var       | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | F    |  56 |  32.214 |    0.952 |    33.554 |      0.998 |  33.100 |    0.833 |
| vocab.pos | Controle     | M    |  62 |  32.258 |    0.986 |    32.887 |      1.094 |  32.400 |    0.792 |
| vocab.pos | Experimental | F    |  86 |  30.895 |    0.785 |    33.174 |      0.841 |  33.715 |    0.673 |
| vocab.pos | Experimental | M    |  85 |  31.471 |    0.787 |    31.659 |      0.992 |  31.766 |    0.676 |

| .y.       | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | F    | Controle | Experimental |   -0.616 |   -2.726 |     1.494 | 1.072 |    -0.574 | 0.566 | 0.566 | ns           |
| vocab.pos |              | M    | Controle | Experimental |    0.634 |   -1.416 |     2.684 | 1.041 |     0.609 | 0.543 | 0.543 | ns           |
| vocab.pre |              | F    | Controle | Experimental |    1.319 |   -1.165 |     3.802 | 1.262 |     1.045 | 0.297 | 0.297 | ns           |
| vocab.pre |              | M    | Controle | Experimental |    0.787 |   -1.628 |     3.203 | 1.227 |     0.642 | 0.522 | 0.522 | ns           |
| vocab.pos | Controle     |      | F        | M            |    0.699 |   -1.562 |     2.961 | 1.149 |     0.609 | 0.543 | 0.543 | ns           |
| vocab.pos | Experimental |      | F        | M            |    1.950 |    0.073 |     3.826 | 0.953 |     2.045 | 0.042 | 0.042 | \*           |
| vocab.pre | Controle     |      | F        | M            |   -0.044 |   -2.710 |     2.623 | 1.355 |    -0.032 | 0.974 | 0.974 | ns           |
| vocab.pre | Experimental |      | F        | M            |   -0.575 |   -2.787 |     1.637 | 1.124 |    -0.512 | 0.609 | 0.609 | ns           |

| .y.   | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | F    | pre    | pos    |   -1.339 |   -4.255 |     1.576 | 1.485 |    -0.902 | 0.367 | 0.367 | ns           |
| vocab | Controle     | M    | pre    | pos    |   -0.629 |   -3.400 |     2.142 | 1.411 |    -0.446 | 0.656 | 0.656 | ns           |
| vocab | Experimental | F    | pre    | pos    |   -2.279 |   -4.632 |     0.074 | 1.198 |    -1.903 | 0.058 | 0.058 | ns           |
| vocab | Experimental | M    | pre    | pos    |   -0.188 |   -2.555 |     2.178 | 1.205 |    -0.156 | 0.876 | 0.876 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var       | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Rural  |  41 |  31.829 |    0.985 |    35.488 |      1.213 |  35.157 |    0.924 |
| vocab.pos | Controle     | Urbana |  18 |  33.444 |    1.669 |    32.222 |      2.251 |  30.630 |    1.400 |
| vocab.pos | Experimental | Rural  |  61 |  30.443 |    1.010 |    32.689 |      1.143 |  33.440 |    0.760 |
| vocab.pos | Experimental | Urbana |  43 |  31.512 |    1.331 |    32.767 |      1.175 |  32.684 |    0.902 |

| .y.       | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Rural  | Controle | Experimental |    1.717 |   -0.649 |     4.083 | 1.198 |     1.433 | 0.154 | 0.154 | ns           |
| vocab.pos |              | Urbana | Controle | Experimental |   -2.054 |   -5.343 |     1.235 | 1.665 |    -1.233 | 0.219 | 0.219 | ns           |
| vocab.pre |              | Rural  | Controle | Experimental |    1.387 |   -1.676 |     4.449 | 1.550 |     0.894 | 0.372 | 0.372 | ns           |
| vocab.pre |              | Urbana | Controle | Experimental |    1.933 |   -2.324 |     6.190 | 2.155 |     0.897 | 0.371 | 0.371 | ns           |
| vocab.pos | Controle     |        | Rural    | Urbana       |    4.526 |    1.217 |     7.836 | 1.676 |     2.701 | 0.008 | 0.008 | \*\*         |
| vocab.pos | Experimental |        | Rural    | Urbana       |    0.755 |   -1.575 |     3.086 | 1.180 |     0.640 | 0.523 | 0.523 | ns           |
| vocab.pre | Controle     |        | Rural    | Urbana       |   -1.615 |   -5.902 |     2.672 | 2.171 |    -0.744 | 0.458 | 0.458 | ns           |
| vocab.pre | Experimental |        | Rural    | Urbana       |   -1.069 |   -4.088 |     1.950 | 1.529 |    -0.699 | 0.485 | 0.485 | ns           |

| .y.   | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Rural  | pre    | pos    |   -3.659 |   -7.157 |    -0.160 | 1.778 |    -2.057 | 0.040 | 0.040 | \*           |
| vocab | Controle     | Urbana | pre    | pos    |    1.222 |   -4.058 |     6.502 | 2.684 |     0.455 | 0.649 | 0.649 | ns           |
| vocab | Experimental | Rural  | pre    | pos    |   -2.246 |   -5.114 |     0.622 | 1.458 |    -1.541 | 0.124 | 0.124 | ns           |
| vocab | Experimental | Urbana | pre    | pos    |   -1.256 |   -4.672 |     2.160 | 1.736 |    -0.723 | 0.470 | 0.470 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var       | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | Branca   |   7 |  34.000 |    1.480 |    39.286 |      1.209 |  36.465 |    2.734 |
| vocab.pos | Controle     | Parda    |  44 |  30.591 |    1.097 |    31.795 |      1.265 |  31.682 |    1.083 |
| vocab.pos | Experimental | Branca   |  13 |  34.231 |    1.791 |    36.462 |      2.120 |  33.458 |    2.021 |
| vocab.pos | Experimental | Parda    |  52 |  28.904 |    1.168 |    30.288 |      1.508 |  31.515 |    1.006 |

| .y.       | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab.pos |              | Branca   | Controle | Experimental |    3.007 |   -3.667 |     9.682 | 3.368 |     0.893 | 0.374 | 0.374 | ns           |
| vocab.pos |              | Parda    | Controle | Experimental |    0.167 |   -2.764 |     3.099 | 1.479 |     0.113 | 0.910 | 0.910 | ns           |
| vocab.pre |              | Branca   | Controle | Experimental |   -0.231 |   -7.301 |     6.840 | 3.569 |    -0.065 | 0.949 | 0.949 | ns           |
| vocab.pre |              | Parda    | Controle | Experimental |    1.687 |   -1.402 |     4.776 | 1.559 |     1.082 | 0.282 | 0.282 | ns           |
| vocab.pos | Controle     |          | Branca   | Parda        |    4.783 |   -1.042 |    10.608 | 2.939 |     1.627 | 0.107 | 0.107 | ns           |
| vocab.pos | Experimental |          | Branca   | Parda        |    1.943 |   -2.571 |     6.457 | 2.278 |     0.853 | 0.396 | 0.396 | ns           |
| vocab.pre | Controle     |          | Branca   | Parda        |    3.409 |   -2.728 |     9.546 | 3.097 |     1.101 | 0.273 | 0.273 | ns           |
| vocab.pre | Experimental |          | Branca   | Parda        |    5.327 |    0.650 |    10.004 | 2.360 |     2.257 | 0.026 | 0.026 | \*           |

| .y.   | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| vocab | Controle     | Branca   | pre    | pos    |   -5.286 |  -14.274 |     3.703 | 4.561 |    -1.159 | 0.248 | 0.248 | ns           |
| vocab | Controle     | Parda    | pre    | pos    |   -1.205 |   -4.790 |     2.381 | 1.819 |    -0.662 | 0.509 | 0.509 | ns           |
| vocab | Experimental | Branca   | pre    | pos    |   -2.231 |   -8.827 |     4.365 | 3.347 |    -0.666 | 0.506 | 0.506 | ns           |
| vocab | Experimental | Parda    | pre    | pos    |   -1.385 |   -4.683 |     1.913 | 1.674 |    -0.827 | 0.409 | 0.409 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:vocab.quintile**

| var       | grupo        | vocab.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:----------|:-------------|:---------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| vocab.pos | Controle     | 1st quintile   |   7 |  14.857 |    0.404 |    18.571 |      2.125 |  26.520 |    3.626 |
| vocab.pos | Controle     | 2nd quintile   |   6 |  20.333 |    0.615 |    24.333 |      2.155 |  29.684 |    3.128 |
| vocab.pos | Controle     | 3rd quintile   |  24 |  26.375 |    0.421 |    27.542 |      1.156 |  30.026 |    1.525 |
| vocab.pos | Controle     | 4th quintile   |  31 |  32.452 |    0.231 |    34.968 |      1.149 |  34.570 |    1.110 |
| vocab.pos | Controle     | 5th quintile   |  50 |  38.780 |    0.388 |    37.940 |      0.744 |  34.540 |    1.475 |
| vocab.pos | Experimental | 1st quintile   |   9 |  13.889 |    0.611 |    22.000 |      2.682 |  30.408 |    3.589 |
| vocab.pos | Experimental | 2nd quintile   |  12 |  20.833 |    0.458 |    21.250 |      1.483 |  26.364 |    2.520 |
| vocab.pos | Experimental | 3rd quintile   |  42 |  26.619 |    0.301 |    30.452 |      1.009 |  32.821 |    1.259 |
| vocab.pos | Experimental | 4th quintile   |  49 |  31.878 |    0.201 |    31.000 |      1.211 |  30.874 |    0.877 |
| vocab.pos | Experimental | 5th quintile   |  59 |  38.593 |    0.388 |    38.864 |      0.564 |  35.553 |    1.410 |

| .y.       | grupo        | vocab.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:---------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| vocab.pos |              | 1st quintile   | Controle     | Experimental |   -3.888 |   -9.977 |     2.201 | 3.093 |    -1.257 | 0.21    | 0.21    | ns           |
| vocab.pos |              | 2nd quintile   | Controle     | Experimental |    3.321 |   -2.715 |     9.356 | 3.066 |     1.083 | 0.28    | 0.28    | ns           |
| vocab.pos |              | 3rd quintile   | Controle     | Experimental |   -2.795 |   -5.884 |     0.294 | 1.569 |    -1.781 | 0.076   | 0.076   | ns           |
| vocab.pos |              | 4th quintile   | Controle     | Experimental |    3.695 |    0.920 |     6.471 | 1.410 |     2.621 | 0.009   | 0.009   | \*\*         |
| vocab.pos |              | 5th quintile   | Controle     | Experimental |   -1.013 |   -3.333 |     1.307 | 1.179 |    -0.859 | 0.391   | 0.391   | ns           |
| vocab.pre |              | 1st quintile   | Controle     | Experimental |    0.968 |   -1.219 |     3.155 | 1.111 |     0.871 | 0.384   | 0.384   | ns           |
| vocab.pre |              | 2nd quintile   | Controle     | Experimental |   -0.500 |   -2.670 |     1.670 | 1.102 |    -0.454 | 0.65    | 0.65    | ns           |
| vocab.pre |              | 3rd quintile   | Controle     | Experimental |   -0.244 |   -1.355 |     0.866 | 0.564 |    -0.433 | 0.666   | 0.666   | ns           |
| vocab.pre |              | 4th quintile   | Controle     | Experimental |    0.574 |   -0.422 |     1.570 | 0.506 |     1.135 | 0.257   | 0.257   | ns           |
| vocab.pre |              | 5th quintile   | Controle     | Experimental |    0.187 |   -0.647 |     1.021 | 0.424 |     0.441 | 0.66    | 0.66    | ns           |
| vocab.pos | Controle     |                | 1st quintile | 2nd quintile |   -3.164 |  -10.113 |     3.785 | 3.530 |    -0.896 | 0.371   | 1       | ns           |
| vocab.pos | Controle     |                | 1st quintile | 3rd quintile |   -3.506 |   -9.918 |     2.906 | 3.257 |    -1.076 | 0.283   | 1       | ns           |
| vocab.pos | Controle     |                | 1st quintile | 4th quintile |   -8.049 |  -15.713 |    -0.386 | 3.893 |    -2.068 | 0.04    | 0.396   | ns           |
| vocab.pos | Controle     |                | 1st quintile | 5th quintile |   -8.020 |  -17.248 |     1.209 | 4.688 |    -1.711 | 0.088   | 0.883   | ns           |
| vocab.pos | Controle     |                | 2nd quintile | 3rd quintile |   -0.342 |   -6.195 |     5.510 | 2.973 |    -0.115 | 0.908   | 1       | ns           |
| vocab.pos | Controle     |                | 2nd quintile | 4th quintile |   -4.885 |  -11.574 |     1.803 | 3.398 |    -1.438 | 0.152   | 1       | ns           |
| vocab.pos | Controle     |                | 2nd quintile | 5th quintile |   -4.856 |  -12.838 |     3.127 | 4.055 |    -1.197 | 0.232   | 1       | ns           |
| vocab.pos | Controle     |                | 3rd quintile | 4th quintile |   -4.543 |   -8.381 |    -0.706 | 1.950 |    -2.330 | 0.02    | 0.205   | ns           |
| vocab.pos | Controle     |                | 3rd quintile | 5th quintile |   -4.513 |   -9.563 |     0.536 | 2.565 |    -1.759 | 0.08    | 0.796   | ns           |
| vocab.pos | Controle     |                | 4th quintile | 5th quintile |    0.030 |   -3.421 |     3.481 | 1.753 |     0.017 | 0.986   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 2nd quintile |    4.044 |   -1.742 |     9.831 | 2.940 |     1.376 | 0.17    | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 3rd quintile |   -2.413 |   -8.500 |     3.673 | 3.092 |    -0.780 | 0.436   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 4th quintile |   -0.466 |   -7.807 |     6.875 | 3.729 |    -0.125 | 0.901   | 1       | ns           |
| vocab.pos | Experimental |                | 1st quintile | 5th quintile |   -5.145 |  -14.319 |     4.030 | 4.661 |    -1.104 | 0.271   | 1       | ns           |
| vocab.pos | Experimental |                | 2nd quintile | 3rd quintile |   -6.458 |  -10.839 |    -2.077 | 2.226 |    -2.902 | 0.004   | 0.04    | \*           |
| vocab.pos | Experimental |                | 2nd quintile | 4th quintile |   -4.511 |   -9.821 |     0.800 | 2.698 |    -1.672 | 0.096   | 0.956   | ns           |
| vocab.pos | Experimental |                | 2nd quintile | 5th quintile |   -9.189 |  -16.151 |    -2.227 | 3.537 |    -2.598 | 0.01    | 0.099   | ns           |
| vocab.pos | Experimental |                | 3rd quintile | 4th quintile |    1.947 |   -1.120 |     5.014 | 1.558 |     1.250 | 0.212   | 1       | ns           |
| vocab.pos | Experimental |                | 3rd quintile | 5th quintile |   -2.731 |   -7.350 |     1.887 | 2.346 |    -1.164 | 0.245   | 1       | ns           |
| vocab.pos | Experimental |                | 4th quintile | 5th quintile |   -4.678 |   -7.885 |    -1.472 | 1.629 |    -2.872 | 0.004   | 0.044   | \*           |
| vocab.pre | Controle     |                | 1st quintile | 2nd quintile |   -5.476 |   -7.891 |    -3.062 | 1.227 |    -4.465 | \<0.001 | \<0.001 | \*\*\*       |
| vocab.pre | Controle     |                | 1st quintile | 3rd quintile |  -11.518 |  -13.382 |    -9.654 | 0.947 |   -12.162 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 1st quintile | 4th quintile |  -17.594 |  -19.411 |   -15.778 | 0.923 |   -19.071 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 1st quintile | 5th quintile |  -23.923 |  -25.674 |   -22.172 | 0.890 |   -26.889 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 3rd quintile |   -6.042 |   -8.023 |    -4.061 | 1.006 |    -6.004 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 4th quintile |  -12.118 |  -14.054 |   -10.183 | 0.983 |   -12.324 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 2nd quintile | 5th quintile |  -18.447 |  -20.322 |   -16.572 | 0.953 |   -19.366 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 3rd quintile | 4th quintile |   -6.077 |   -7.257 |    -4.897 | 0.599 |   -10.138 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 3rd quintile | 5th quintile |  -12.405 |  -13.483 |   -11.327 | 0.547 |   -22.659 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Controle     |                | 4th quintile | 5th quintile |   -6.328 |   -7.320 |    -5.336 | 0.504 |   -12.557 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 2nd quintile |   -6.944 |   -8.858 |    -5.031 | 0.972 |    -7.143 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 3rd quintile |  -12.730 |  -14.324 |   -11.136 | 0.810 |   -15.720 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 4th quintile |  -17.989 |  -19.563 |   -16.415 | 0.800 |   -22.499 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 1st quintile | 5th quintile |  -24.704 |  -26.257 |   -23.151 | 0.789 |   -31.314 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 3rd quintile |   -5.786 |   -7.206 |    -4.365 | 0.722 |    -8.018 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 4th quintile |  -11.044 |  -12.442 |    -9.646 | 0.710 |   -15.553 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 2nd quintile | 5th quintile |  -17.760 |  -19.134 |   -16.386 | 0.698 |   -25.439 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 3rd quintile | 4th quintile |   -5.259 |   -6.171 |    -4.346 | 0.464 |   -11.343 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 3rd quintile | 5th quintile |  -11.974 |  -12.850 |   -11.098 | 0.445 |   -26.903 | \<0.001 | \<0.001 | \*\*\*\*     |
| vocab.pre | Experimental |                | 4th quintile | 5th quintile |   -6.716 |   -7.554 |    -5.877 | 0.426 |   -15.760 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.   | grupo        | vocab.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:------|:-------------|:---------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| vocab | Controle     | 1st quintile   | pre    | pos    |   -3.714 |   -8.605 |     1.176 | 2.490 |    -1.492 | 0.136   | 0.136   | ns           |
| vocab | Controle     | 2nd quintile   | pre    | pos    |   -4.000 |   -9.282 |     1.282 | 2.689 |    -1.487 | 0.137   | 0.137   | ns           |
| vocab | Controle     | 3rd quintile   | pre    | pos    |   -1.167 |   -3.808 |     1.474 | 1.345 |    -0.868 | 0.386   | 0.386   | ns           |
| vocab | Controle     | 4th quintile   | pre    | pos    |   -2.516 |   -4.840 |    -0.192 | 1.183 |    -2.127 | 0.034   | 0.034   | \*           |
| vocab | Controle     | 5th quintile   | pre    | pos    |    0.840 |   -0.990 |     2.670 | 0.932 |     0.902 | 0.368   | 0.368   | ns           |
| vocab | Experimental | 1st quintile   | pre    | pos    |   -8.111 |  -12.424 |    -3.798 | 2.196 |    -3.694 | \<0.001 | \<0.001 | \*\*\*       |
| vocab | Experimental | 2nd quintile   | pre    | pos    |   -0.417 |   -4.152 |     3.318 | 1.902 |    -0.219 | 0.827   | 0.827   | ns           |
| vocab | Experimental | 3rd quintile   | pre    | pos    |   -3.833 |   -5.830 |    -1.837 | 1.016 |    -3.771 | \<0.001 | \<0.001 | \*\*\*       |
| vocab | Experimental | 4th quintile   | pre    | pos    |    0.878 |   -0.971 |     2.726 | 0.941 |     0.933 | 0.351   | 0.351   | ns           |
| vocab | Experimental | 5th quintile   | pre    | pos    |   -0.271 |   -1.956 |     1.413 | 0.858 |    -0.316 | 0.752   | 0.752   | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-vocab-Serie-9-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
