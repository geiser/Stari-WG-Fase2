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
    - [factores:
      **grupo:score.tde.quintile**](#factores-gruposcoretdequintile)

**NOTE**

- Teste ANCOVA para determinar se houve diferenças significativas no
  TDE - Escrita (Acertos) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  TDE - Escrita (Acertos) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | score.tde.quintile | variable      |   n |   mean | median | min | max |     sd |    se |     ci |   iqr |
|:-------------|:-----|:-------|:---------|:-------------------|:--------------|----:|-------:|-------:|----:|----:|-------:|------:|-------:|------:|
| Controle     | F    |        |          |                    | score.tde.pre |  48 | 45.771 |   49.0 |   3 |  72 | 15.134 | 2.184 |  4.394 | 17.00 |
| Controle     | M    |        |          |                    | score.tde.pre |  41 | 38.854 |   43.0 |   0 |  68 | 17.172 | 2.682 |  5.420 | 23.00 |
| Experimental | F    |        |          |                    | score.tde.pre |  73 | 42.164 |   47.0 |   0 |  73 | 19.170 | 2.244 |  4.473 | 26.00 |
| Experimental | M    |        |          |                    | score.tde.pre |  70 | 35.700 |   39.0 |   0 |  69 | 16.470 | 1.969 |  3.927 | 23.25 |
| Controle     | F    |        |          |                    | score.tde.pos |  48 | 43.688 |   48.0 |   0 |  71 | 16.869 | 2.435 |  4.898 | 27.50 |
| Controle     | M    |        |          |                    | score.tde.pos |  41 | 35.220 |   34.0 |   0 |  69 | 18.191 | 2.841 |  5.742 | 25.00 |
| Experimental | F    |        |          |                    | score.tde.pos |  73 | 45.589 |   51.0 |   0 |  73 | 19.811 | 2.319 |  4.622 | 25.00 |
| Experimental | M    |        |          |                    | score.tde.pos |  70 | 36.300 |   39.5 |   0 |  69 | 17.395 | 2.079 |  4.148 | 24.75 |
| Controle     |      | Rural  |          |                    | score.tde.pre |  32 | 43.906 |   49.0 |   0 |  67 | 17.222 | 3.044 |  6.209 | 12.25 |
| Controle     |      | Urbana |          |                    | score.tde.pre |  18 | 45.333 |   49.0 |   1 |  72 | 16.464 | 3.881 |  8.187 | 16.75 |
| Controle     |      |        |          |                    | score.tde.pre |  39 | 40.231 |   42.0 |   0 |  68 | 15.734 | 2.519 |  5.100 | 21.50 |
| Experimental |      | Rural  |          |                    | score.tde.pre |  54 | 38.519 |   42.5 |   0 |  73 | 18.417 | 2.506 |  5.027 | 24.50 |
| Experimental |      | Urbana |          |                    | score.tde.pre |  21 | 44.857 |   46.0 |   5 |  61 | 14.914 | 3.255 |  6.789 | 12.00 |
| Experimental |      |        |          |                    | score.tde.pre |  68 | 37.574 |   43.5 |   0 |  69 | 18.677 | 2.265 |  4.521 | 28.25 |
| Controle     |      | Rural  |          |                    | score.tde.pos |  32 | 41.750 |   48.5 |   0 |  65 | 18.624 | 3.292 |  6.715 | 22.75 |
| Controle     |      | Urbana |          |                    | score.tde.pos |  18 | 41.722 |   40.0 |   0 |  71 | 17.374 | 4.095 |  8.640 | 24.50 |
| Controle     |      |        |          |                    | score.tde.pos |  39 | 37.282 |   40.0 |   0 |  69 | 17.680 | 2.831 |  5.731 | 28.00 |
| Experimental |      | Rural  |          |                    | score.tde.pos |  54 | 39.333 |   42.5 |   0 |  71 | 20.724 | 2.820 |  5.656 | 31.00 |
| Experimental |      | Urbana |          |                    | score.tde.pos |  21 | 46.905 |   50.0 |   5 |  64 | 15.165 | 3.309 |  6.903 | 11.00 |
| Experimental |      |        |          |                    | score.tde.pos |  68 | 40.588 |   43.0 |   0 |  73 | 18.912 | 2.293 |  4.578 | 25.50 |
| Controle     |      |        | Branca   |                    | score.tde.pre |   4 | 54.750 |   56.0 |  40 |  67 | 11.587 | 5.793 | 18.437 | 12.75 |
| Controle     |      |        | Parda    |                    | score.tde.pre |  34 | 44.353 |   48.0 |   0 |  62 | 14.781 | 2.535 |  5.157 | 10.75 |
| Controle     |      |        |          |                    | score.tde.pre |  51 | 40.451 |   43.0 |   0 |  72 | 17.364 | 2.431 |  4.884 | 23.00 |
| Experimental |      |        | Amarela  |                    | score.tde.pre |   1 | 23.000 |   23.0 |  23 |  23 |        |       |        |  0.00 |
| Experimental |      |        | Branca   |                    | score.tde.pre |  20 | 40.800 |   46.0 |   0 |  73 | 21.100 | 4.718 |  9.875 | 27.00 |
| Experimental |      |        | Parda    |                    | score.tde.pre |  51 | 36.569 |   39.0 |   2 |  67 | 18.735 | 2.623 |  5.269 | 29.00 |
| Experimental |      |        |          |                    | score.tde.pre |  71 | 40.465 |   44.0 |   0 |  69 | 16.854 | 2.000 |  3.989 | 21.50 |
| Controle     |      |        | Branca   |                    | score.tde.pos |   4 | 51.250 |   50.5 |  39 |  65 | 11.558 | 5.779 | 18.391 | 14.75 |
| Controle     |      |        | Parda    |                    | score.tde.pos |  34 | 41.324 |   48.0 |   0 |  65 | 18.270 | 3.133 |  6.375 | 25.75 |
| Controle     |      |        |          |                    | score.tde.pos |  51 | 37.863 |   38.0 |   0 |  71 | 17.881 | 2.504 |  5.029 | 26.50 |
| Experimental |      |        | Amarela  |                    | score.tde.pos |   1 | 23.000 |   23.0 |  23 |  23 |        |       |        |  0.00 |
| Experimental |      |        | Branca   |                    | score.tde.pos |  20 | 38.450 |   49.0 |   0 |  71 | 23.909 | 5.346 | 11.190 | 34.50 |
| Experimental |      |        | Parda    |                    | score.tde.pos |  51 | 39.098 |   45.0 |   0 |  70 | 19.499 | 2.730 |  5.484 | 26.00 |
| Experimental |      |        |          |                    | score.tde.pos |  71 | 43.423 |   47.0 |   0 |  73 | 17.441 | 2.070 |  4.128 | 20.50 |
| Controle     |      |        |          | 1st quintile       | score.tde.pre |  10 |  8.800 |   10.0 |   0 |  18 |  7.223 | 2.284 |  5.167 | 13.25 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pre |  10 | 26.500 |   27.0 |  19 |  31 |  4.143 | 1.310 |  2.964 |  3.50 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pre |  17 | 38.824 |   39.0 |  34 |  42 |  2.811 | 0.682 |  1.446 |  5.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pre |  24 | 47.542 |   48.0 |  43 |  51 |  2.734 | 0.558 |  1.155 |  5.00 |
| Controle     |      |        |          | 5th quintile       | score.tde.pre |  28 | 58.429 |   57.5 |  52 |  72 |  5.561 | 1.051 |  2.156 |  7.25 |
| Experimental |      |        |          | 1st quintile       | score.tde.pre |  27 |  9.037 |   10.0 |   0 |  16 |  5.034 | 0.969 |  1.992 |  8.00 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pre |  19 | 27.105 |   27.0 |  22 |  31 |  3.107 | 0.713 |  1.498 |  5.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pre |  19 | 37.158 |   38.0 |  32 |  42 |  2.892 | 0.663 |  1.394 |  4.00 |
| Experimental |      |        |          | 4th quintile       | score.tde.pre |  37 | 46.703 |   46.0 |  43 |  51 |  2.644 | 0.435 |  0.882 |  5.00 |
| Experimental |      |        |          | 5th quintile       | score.tde.pre |  41 | 58.146 |   57.0 |  52 |  73 |  5.512 | 0.861 |  1.740 |  6.00 |
| Controle     |      |        |          | 1st quintile       | score.tde.pos |  10 |  7.100 |    3.0 |   0 |  21 |  8.774 | 2.775 |  6.277 | 14.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pos |  10 | 22.800 |   25.0 |  15 |  27 |  4.417 | 1.397 |  3.160 |  5.50 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pos |  17 | 36.529 |   36.0 |  19 |  59 | 12.047 | 2.922 |  6.194 | 14.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pos |  24 | 44.958 |   47.0 |  28 |  55 |  8.917 | 1.820 |  3.765 | 13.00 |
| Controle     |      |        |          | 5th quintile       | score.tde.pos |  28 | 55.071 |   56.0 |  32 |  71 |  9.116 | 1.723 |  3.535 |  9.25 |
| Experimental |      |        |          | 1st quintile       | score.tde.pos |  27 | 12.074 |   10.0 |   0 |  51 | 10.820 | 2.082 |  4.280 | 12.50 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pos |  19 | 28.053 |   29.0 |   1 |  46 | 11.301 | 2.593 |  5.447 | 11.50 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pos |  19 | 44.789 |   43.0 |  24 |  64 |  9.790 | 2.246 |  4.719 | 11.50 |
| Experimental |      |        |          | 4th quintile       | score.tde.pos |  37 | 47.405 |   47.0 |  35 |  64 |  7.533 | 1.238 |  2.512 |  9.00 |
| Experimental |      |        |          | 5th quintile       | score.tde.pos |  41 | 58.659 |   59.0 |  39 |  73 |  8.302 | 1.297 |  2.621 | 13.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness | kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:--------------|----:|-----------:|---------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| score.tde.pos | 232 |  0.1783048 | 1.576334 | YES      |  12.48245 | D’Agostino | 0.0019475 | \*       | \-        |
| score.tde.pos | 125 | -0.3672037 | 2.156890 | YES      |  13.42707 | D’Agostino | 0.0012144 | \*       | QQ        |
| score.tde.pos | 110 |  0.4465718 | 1.724962 | YES      |  11.57378 | D’Agostino | 0.0030675 | \*       | QQ        |
| score.tde.pos | 232 |  0.0688316 | 2.145771 | YES      |  15.86288 | D’Agostino | 0.0003593 | \*\*     | \-        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                              |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:-------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`               | 232 |       3 |     228 |  0.411126 | 0.7451618 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`               | 232 |       3 |     224 |  0.167000 | 0.9190000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`               | 125 |       3 |     121 |  1.236997 | 0.2993451 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`               | 125 |       3 |     117 |  0.197000 | 0.8990000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`           | 110 |       4 |     105 |  1.183237 | 0.3225129 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`           | 110 |       3 |     101 |  0.186000 | 0.9050000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`score.tde.quintile` | 232 |       9 |     222 |  1.949324 | 0.0464389 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`score.tde.quintile` | 232 |       9 |     212 |  1.011000 | 0.4320000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect             | DFn | DFd |       SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------|----:|----:|----------:|----------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre      |   1 | 229 | 65136.511 | 15280.181 | 976.184 | \<0.001 | 0.810 | \*     |
| 2   | grupo              |   1 | 229 |  1202.803 | 15280.181 |  18.026 | \<0.001 | 0.073 | \*     |
| 4   | Sexo               |   1 | 229 |   388.608 | 16094.376 |   5.529 | 0.02    | 0.024 | \*     |
| 6   | Zona               |   1 | 122 |     0.828 |  8350.829 |   0.012 | 0.913   | 0.000 |        |
| 8   | Cor.Raca           |   2 | 106 |   130.987 | 10428.478 |   0.666 | 0.516   | 0.012 |        |
| 10  | score.tde.quintile |   4 | 226 |   349.250 | 16133.734 |   1.223 | 0.302   | 0.021 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |       SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|----------:|----------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre            |   1 | 227 | 60890.116 | 14857.592 | 930.303 | \<0.001 | 0.804 | \*     |
| 4   | grupo:Sexo               |   1 | 227 |    21.355 | 14857.592 |   0.326 | 0.568   | 0.001 |        |
| 8   | grupo:Zona               |   1 | 120 |    49.095 |  7874.458 |   0.748 | 0.389   | 0.006 |        |
| 12  | grupo:Cor.Raca           |   1 | 104 |    60.824 |  9875.658 |   0.641 | 0.425   | 0.006 |        |
| 16  | grupo:score.tde.quintile |   4 | 221 |   286.868 | 14529.451 |   1.091 | 0.362   | 0.019 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     |  89 |  42.584 |    1.737 |    39.787 |      1.897 |  37.660 |    0.869 |
| score.tde.pos | Experimental | 143 |  39.000 |    1.516 |    41.042 |      1.604 |  42.366 |    0.684 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos | Controle | Experimental |   -4.706 |   -6.890 |    -2.522 | 1.108 |    -4.246 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle | Experimental |    3.584 |   -1.066 |     8.235 | 2.360 |     1.519 | 0.13    | 0.13    | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    2.798 |   -2.534 |     8.130 | 2.713 |     1.031 | 0.303 | 0.303 | ns           |
| score.tde | Experimental | pre    | pos    |   -2.042 |   -6.248 |     2.165 | 2.141 |    -0.954 | 0.341 | 0.341 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  48 |  45.771 |    2.184 |    43.688 |      2.435 |  38.572 |    1.180 |
| score.tde.pos | Controle     | M    |  41 |  38.854 |    2.682 |    35.220 |      2.841 |  36.662 |    1.264 |
| score.tde.pos | Experimental | F    |  73 |  42.164 |    2.244 |    45.589 |      2.319 |  43.892 |    0.949 |
| score.tde.pos | Experimental | M    |  70 |  35.700 |    1.969 |    36.300 |      2.079 |  40.733 |    0.978 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -5.321 |   -8.292 |    -2.350 | 1.508 |    -3.529 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde.pos |              | M    | Controle | Experimental |   -4.071 |   -7.212 |    -0.930 | 1.594 |    -2.554 | 0.011   | 0.011   | \*           |
| score.tde.pre |              | F    | Controle | Experimental |    3.606 |   -2.705 |     9.918 | 3.203 |     1.126 | 0.261   | 0.261   | ns           |
| score.tde.pre |              | M    | Controle | Experimental |    3.154 |   -3.525 |     9.833 | 3.390 |     0.930 | 0.353   | 0.353   | ns           |
| score.tde.pos | Controle     |      | F        | M            |    1.910 |   -1.507 |     5.326 | 1.734 |     1.101 | 0.272   | 0.272   | ns           |
| score.tde.pos | Experimental |      | F        | M            |    3.160 |    0.464 |     5.856 | 1.368 |     2.310 | 0.022   | 0.022   | \*           |
| score.tde.pre | Controle     |      | F        | M            |    6.917 |   -0.305 |    14.140 | 3.665 |     1.887 | 0.06    | 0.06    | ns           |
| score.tde.pre | Experimental |      | F        | M            |    6.464 |    0.783 |    12.146 | 2.883 |     2.242 | 0.026   | 0.026   | \*           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    2.083 |   -5.032 |     9.199 | 3.621 |     0.575 | 0.565 | 0.565 | ns           |
| score.tde | Controle     | M    | pre    | pos    |    3.634 |   -4.065 |    11.333 | 3.918 |     0.928 | 0.354 | 0.354 | ns           |
| score.tde | Experimental | F    | pre    | pos    |   -3.425 |   -9.195 |     2.345 | 2.936 |    -1.166 | 0.244 | 0.244 | ns           |
| score.tde | Experimental | M    | pre    | pos    |   -0.600 |   -6.492 |     5.292 | 2.998 |    -0.200 | 0.841 | 0.841 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  32 |  43.906 |    3.044 |    41.750 |      3.292 |  39.811 |    1.434 |
| score.tde.pos | Controle     | Urbana |  18 |  45.333 |    3.881 |    41.722 |      4.095 |  38.373 |    1.915 |
| score.tde.pos | Experimental | Rural  |  54 |  38.519 |    2.506 |    39.333 |      2.820 |  42.718 |    1.112 |
| score.tde.pos | Experimental | Urbana |  21 |  44.857 |    3.255 |    46.905 |      3.309 |  44.026 |    1.772 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |   -2.907 |   -6.514 |     0.700 | 1.822 |    -1.596 | 0.113 | 0.113 | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |   -5.653 |  -10.805 |    -0.501 | 2.602 |    -2.173 | 0.032 | 0.032 | \*           |
| score.tde.pre |              | Rural  | Controle | Experimental |    5.388 |   -2.255 |    13.030 | 3.860 |     1.396 | 0.165 | 0.165 | ns           |
| score.tde.pre |              | Urbana | Controle | Experimental |    0.476 |  -10.527 |    11.480 | 5.558 |     0.086 | 0.932 | 0.932 | ns           |
| score.tde.pos | Controle     |        | Rural    | Urbana       |    1.438 |   -3.289 |     6.165 | 2.387 |     0.602 | 0.548 | 0.548 | ns           |
| score.tde.pos | Experimental |        | Rural    | Urbana       |   -1.308 |   -5.467 |     2.851 | 2.101 |    -0.623 | 0.535 | 0.535 | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |   -1.427 |  -11.520 |     8.666 | 5.098 |    -0.280 | 0.780 | 0.780 | ns           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |   -6.339 |  -15.149 |     2.471 | 4.450 |    -1.424 | 0.157 | 0.157 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    2.156 |   -6.768 |    11.080 | 4.530 |     0.476 | 0.635 | 0.635 | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |    3.611 |   -8.288 |    15.510 | 6.041 |     0.598 | 0.551 | 0.551 | ns           |
| score.tde | Experimental | Rural  | pre    | pos    |   -0.815 |   -7.685 |     6.055 | 3.488 |    -0.234 | 0.815 | 0.815 | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |   -2.048 |  -13.064 |     8.969 | 5.593 |    -0.366 | 0.715 | 0.715 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Parda    |  34 |  44.353 |    2.535 |    41.324 |      3.133 |  37.015 |    1.711 |
| score.tde.pos | Experimental | Branca   |  20 |  40.800 |    4.718 |    38.450 |      5.346 |  37.576 |    2.209 |
| score.tde.pos | Experimental | Parda    |  51 |  36.569 |    2.623 |    39.098 |      2.730 |  42.313 |    1.395 |

|     | .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | score.tde.pos |              | Parda    | Controle | Experimental |   -5.298 |   -9.717 |    -0.880 | 2.227 |    -2.379 | 0.019 | 0.019 | \*           |
| 4   | score.tde.pre |              | Parda    | Controle | Experimental |    7.784 |   -0.141 |    15.710 | 3.996 |     1.948 | 0.054 | 0.054 | ns           |
| 6   | score.tde.pos | Experimental |          | Branca   | Parda        |   -4.738 |   -9.928 |     0.452 | 2.616 |    -1.811 | 0.073 | 0.073 | ns           |
| 8   | score.tde.pre | Experimental |          | Branca   | Parda        |    4.231 |   -5.213 |    13.675 | 4.761 |     0.889 | 0.376 | 0.376 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Parda    | pre    | pos    |    3.029 |   -6.085 |    12.144 | 4.623 |     0.655 | 0.513 | 0.513 | ns           |
| score.tde | Experimental | Branca   | pre    | pos    |    2.350 |   -9.534 |    14.234 | 6.027 |     0.390 | 0.697 | 0.697 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |   -2.529 |   -9.971 |     4.912 | 3.774 |    -0.670 | 0.504 | 0.504 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:score.tde.quintile**

| var           | grupo        | score.tde.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 1st quintile       |  10 |   8.800 |    2.284 |     7.100 |      2.775 |  40.123 |    4.707 |
| score.tde.pos | Controle     | 2nd quintile       |  10 |  26.500 |    1.310 |    22.800 |      1.397 |  37.311 |    3.096 |
| score.tde.pos | Controle     | 3rd quintile       |  17 |  38.824 |    0.682 |    36.529 |      2.922 |  38.152 |    1.976 |
| score.tde.pos | Controle     | 4th quintile       |  24 |  47.542 |    0.558 |    44.958 |      1.820 |  37.463 |    1.882 |
| score.tde.pos | Controle     | 5th quintile       |  28 |  58.429 |    1.051 |    55.071 |      1.723 |  36.190 |    2.728 |
| score.tde.pos | Experimental | 1st quintile       |  27 |   9.037 |    0.969 |    12.074 |      2.082 |  44.849 |    4.217 |
| score.tde.pos | Experimental | 2nd quintile       |  19 |  27.105 |    0.713 |    28.053 |      2.593 |  41.931 |    2.492 |
| score.tde.pos | Experimental | 3rd quintile       |  19 |  37.158 |    0.663 |    44.789 |      2.246 |  48.154 |    1.903 |
| score.tde.pos | Experimental | 4th quintile       |  37 |  46.703 |    0.435 |    47.405 |      1.238 |  40.788 |    1.550 |
| score.tde.pos | Experimental | 5th quintile       |  41 |  58.146 |    0.861 |    58.659 |      1.297 |  40.072 |    2.557 |

| .y.           | grupo        | score.tde.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | 1st quintile       | Controle     | Experimental |   -4.726 |  -10.642 |     1.189 | 3.002 |    -1.574 | 0.117   | 0.117   | ns           |
| score.tde.pos |              | 2nd quintile       | Controle     | Experimental |   -4.620 |  -10.864 |     1.625 | 3.169 |    -1.458 | 0.146   | 0.146   | ns           |
| score.tde.pos |              | 3rd quintile       | Controle     | Experimental |  -10.002 |  -15.353 |    -4.652 | 2.715 |    -3.684 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde.pos |              | 4th quintile       | Controle     | Experimental |   -3.325 |   -7.518 |     0.869 | 2.128 |    -1.562 | 0.12    | 0.12    | ns           |
| score.tde.pos |              | 5th quintile       | Controle     | Experimental |   -3.882 |   -7.800 |     0.036 | 1.988 |    -1.953 | 0.052   | 0.052   | ns           |
| score.tde.pre |              | 1st quintile       | Controle     | Experimental |   -0.237 |   -3.413 |     2.939 | 1.612 |    -0.147 | 0.883   | 0.883   | ns           |
| score.tde.pre |              | 2nd quintile       | Controle     | Experimental |   -0.605 |   -3.957 |     2.747 | 1.701 |    -0.356 | 0.722   | 0.722   | ns           |
| score.tde.pre |              | 3rd quintile       | Controle     | Experimental |    1.666 |   -1.199 |     4.530 | 1.453 |     1.146 | 0.253   | 0.253   | ns           |
| score.tde.pre |              | 4th quintile       | Controle     | Experimental |    0.839 |   -1.410 |     3.088 | 1.141 |     0.735 | 0.463   | 0.463   | ns           |
| score.tde.pre |              | 5th quintile       | Controle     | Experimental |    0.282 |   -1.821 |     2.386 | 1.067 |     0.264 | 0.792   | 0.792   | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 2nd quintile |    2.812 |   -5.560 |    11.183 | 4.248 |     0.662 | 0.509   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 3rd quintile |    1.971 |   -7.789 |    11.731 | 4.952 |     0.398 | 0.691   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 4th quintile |    2.660 |   -8.621 |    13.941 | 5.724 |     0.465 | 0.643   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 5th quintile |    3.933 |   -9.637 |    17.502 | 6.885 |     0.571 | 0.568   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 3rd quintile |   -0.841 |   -7.896 |     6.214 | 3.580 |    -0.235 | 0.815   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 4th quintile |   -0.152 |   -8.092 |     7.788 | 4.029 |    -0.038 | 0.97    | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 5th quintile |    1.121 |   -8.703 |    10.946 | 4.985 |     0.225 | 0.822   | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 4th quintile |    0.689 |   -4.813 |     6.191 | 2.792 |     0.247 | 0.805   | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 5th quintile |    1.962 |   -4.928 |     8.851 | 3.496 |     0.561 | 0.575   | 1       | ns           |
| score.tde.pos | Controle     |                    | 4th quintile | 5th quintile |    1.273 |   -3.919 |     6.464 | 2.634 |     0.483 | 0.629   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 2nd quintile |    2.918 |   -3.617 |     9.453 | 3.316 |     0.880 | 0.38    | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 3rd quintile |   -3.305 |  -11.725 |     5.114 | 4.272 |    -0.774 | 0.44    | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 4th quintile |    4.061 |   -6.061 |    14.183 | 5.136 |     0.791 | 0.43    | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 5th quintile |    4.777 |   -7.953 |    17.506 | 6.459 |     0.739 | 0.46    | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 3rd quintile |   -6.223 |  -11.969 |    -0.478 | 2.915 |    -2.135 | 0.034   | 0.339   | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 4th quintile |    1.143 |   -5.463 |     7.750 | 3.352 |     0.341 | 0.733   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 5th quintile |    1.858 |   -6.981 |    10.698 | 4.485 |     0.414 | 0.679   | 1       | ns           |
| score.tde.pos | Experimental |                    | 3rd quintile | 4th quintile |    7.367 |    2.280 |    12.453 | 2.581 |     2.854 | 0.005   | 0.047   | \*           |
| score.tde.pos | Experimental |                    | 3rd quintile | 5th quintile |    8.082 |    1.270 |    14.894 | 3.456 |     2.338 | 0.02    | 0.203   | ns           |
| score.tde.pos | Experimental |                    | 4th quintile | 5th quintile |    0.715 |   -3.876 |     5.306 | 2.330 |     0.307 | 0.759   | 1       | ns           |
| score.tde.pre | Controle     |                    | 1st quintile | 2nd quintile |  -17.700 |  -21.537 |   -13.863 | 1.947 |    -9.091 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 3rd quintile |  -30.024 |  -33.443 |   -26.604 | 1.735 |   -17.305 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 4th quintile |  -38.742 |  -41.971 |   -35.512 | 1.639 |   -23.643 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 5th quintile |  -49.629 |  -52.789 |   -46.468 | 1.604 |   -30.944 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 3rd quintile |  -12.324 |  -15.743 |    -8.904 | 1.735 |    -7.103 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 4th quintile |  -21.042 |  -24.271 |   -17.812 | 1.639 |   -12.841 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 5th quintile |  -31.929 |  -35.089 |   -28.768 | 1.604 |   -19.908 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 3rd quintile | 4th quintile |   -8.718 |  -11.438 |    -5.998 | 1.380 |    -6.317 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 3rd quintile | 5th quintile |  -19.605 |  -22.243 |   -16.967 | 1.339 |   -14.646 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 4th quintile | 5th quintile |  -10.887 |  -13.273 |    -8.500 | 1.211 |    -8.990 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 2nd quintile |  -18.068 |  -20.637 |   -15.499 | 1.304 |   -13.860 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 3rd quintile |  -28.121 |  -30.690 |   -25.552 | 1.304 |   -21.571 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 4th quintile |  -37.666 |  -39.837 |   -35.494 | 1.102 |   -34.182 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 5th quintile |  -49.109 |  -51.236 |   -46.983 | 1.079 |   -45.514 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 3rd quintile |  -10.053 |  -12.836 |    -7.269 | 1.412 |    -7.117 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 4th quintile |  -19.597 |  -22.019 |   -17.176 | 1.229 |   -15.949 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 5th quintile |  -31.041 |  -33.422 |   -28.660 | 1.208 |   -25.692 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 4th quintile |   -9.545 |  -11.966 |    -7.123 | 1.229 |    -7.768 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 5th quintile |  -20.988 |  -23.369 |   -18.607 | 1.208 |   -17.371 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 4th quintile | 5th quintile |  -11.444 |  -13.389 |    -9.498 | 0.987 |   -11.592 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.       | grupo        | score.tde.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 1st quintile       | pre    | pos    |    1.700 |   -4.672 |     8.072 | 3.242 |     0.524 | 0.600 | 0.600 | ns           |
| score.tde | Controle     | 2nd quintile       | pre    | pos    |    3.700 |   -2.672 |    10.072 | 3.242 |     1.141 | 0.254 | 0.254 | ns           |
| score.tde | Controle     | 3rd quintile       | pre    | pos    |    2.294 |   -2.593 |     7.181 | 2.487 |     0.923 | 0.357 | 0.357 | ns           |
| score.tde | Controle     | 4th quintile       | pre    | pos    |    2.583 |   -1.530 |     6.697 | 2.093 |     1.234 | 0.218 | 0.218 | ns           |
| score.tde | Controle     | 5th quintile       | pre    | pos    |    3.357 |   -0.451 |     7.165 | 1.938 |     1.733 | 0.084 | 0.084 | ns           |
| score.tde | Experimental | 1st quintile       | pre    | pos    |   -3.037 |   -6.915 |     0.841 | 1.973 |    -1.539 | 0.124 | 0.124 | ns           |
| score.tde | Experimental | 2nd quintile       | pre    | pos    |   -0.947 |   -5.570 |     3.676 | 2.352 |    -0.403 | 0.687 | 0.687 | ns           |
| score.tde | Experimental | 3rd quintile       | pre    | pos    |   -7.632 |  -12.255 |    -3.009 | 2.352 |    -3.244 | 0.001 | 0.001 | \*\*         |
| score.tde | Experimental | 4th quintile       | pre    | pos    |   -0.703 |   -4.016 |     2.610 | 1.686 |    -0.417 | 0.677 | 0.677 | ns           |
| score.tde | Experimental | 5th quintile       | pre    | pos    |   -0.512 |   -3.659 |     2.635 | 1.601 |    -0.320 | 0.749 | 0.749 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-8-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
