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
| Controle     | F    |        |          |                    | score.tde.pre |  80 | 37.675 |   42.0 |   0 |  65 | 16.826 | 1.881 |  3.744 | 24.25 |
| Controle     | M    |        |          |                    | score.tde.pre |  61 | 30.836 |   31.0 |   0 |  69 | 18.521 | 2.371 |  4.744 | 33.00 |
| Experimental | F    |        |          |                    | score.tde.pre |  88 | 37.841 |   39.0 |   0 |  68 | 13.887 | 1.480 |  2.942 | 18.50 |
| Experimental | M    |        |          |                    | score.tde.pre |  99 | 35.384 |   35.0 |   6 |  65 | 15.710 | 1.579 |  3.133 | 22.50 |
| Controle     | F    |        |          |                    | score.tde.pos |  80 | 30.262 |   25.5 |   0 |  72 | 20.809 | 2.326 |  4.631 | 38.50 |
| Controle     | M    |        |          |                    | score.tde.pos |  61 | 25.869 |   21.0 |   0 |  68 | 20.330 | 2.603 |  5.207 | 32.00 |
| Experimental | F    |        |          |                    | score.tde.pos |  88 | 36.227 |   39.0 |   0 |  67 | 16.312 | 1.739 |  3.456 | 23.50 |
| Experimental | M    |        |          |                    | score.tde.pos |  99 | 31.121 |   33.0 |   0 |  69 | 17.590 | 1.768 |  3.508 | 28.00 |
| Controle     |      | Rural  |          |                    | score.tde.pre |  69 | 33.739 |   42.0 |   0 |  69 | 19.266 | 2.319 |  4.628 | 34.00 |
| Controle     |      | Urbana |          |                    | score.tde.pre |  55 | 36.036 |   38.0 |   1 |  64 | 15.821 | 2.133 |  4.277 | 22.00 |
| Controle     |      |        |          |                    | score.tde.pre |  17 | 34.412 |   33.0 |   6 |  60 | 18.788 | 4.557 |  9.660 | 34.00 |
| Experimental |      | Rural  |          |                    | score.tde.pre |  87 | 35.287 |   35.0 |   8 |  68 | 14.454 | 1.550 |  3.081 | 20.50 |
| Experimental |      | Urbana |          |                    | score.tde.pre |  75 | 38.280 |   41.0 |   0 |  65 | 15.835 | 1.828 |  3.643 | 21.00 |
| Experimental |      |        |          |                    | score.tde.pre |  25 | 35.680 |   37.0 |  14 |  58 | 13.450 | 2.690 |  5.552 | 22.00 |
| Controle     |      | Rural  |          |                    | score.tde.pos |  69 | 33.971 |   31.0 |   0 |  72 | 22.239 | 2.677 |  5.342 | 40.00 |
| Controle     |      | Urbana |          |                    | score.tde.pos |  55 | 22.745 |   18.0 |   0 |  58 | 17.607 | 2.374 |  4.760 | 21.50 |
| Controle     |      |        |          |                    | score.tde.pos |  17 | 23.765 |   22.0 |   0 |  56 | 17.747 | 4.304 |  9.124 | 17.00 |
| Experimental |      | Rural  |          |                    | score.tde.pos |  87 | 33.391 |   32.0 |   0 |  67 | 17.220 | 1.846 |  3.670 | 27.50 |
| Experimental |      | Urbana |          |                    | score.tde.pos |  75 | 33.920 |   38.0 |   0 |  67 | 16.991 | 1.962 |  3.909 | 24.00 |
| Experimental |      |        |          |                    | score.tde.pos |  25 | 32.800 |   39.0 |   3 |  69 | 18.023 | 3.605 |  7.440 | 29.00 |
| Controle     |      |        | Branca   |                    | score.tde.pre |  21 | 39.095 |   45.0 |   7 |  52 | 13.160 | 2.872 |  5.990 | 13.00 |
| Controle     |      |        | Indígena |                    | score.tde.pre |   6 | 40.833 |   44.0 |  16 |  53 | 12.891 | 5.263 | 13.528 |  5.50 |
| Controle     |      |        | Parda    |                    | score.tde.pre |  39 | 33.051 |   37.0 |   0 |  64 | 19.530 | 3.127 |  6.331 | 36.50 |
| Controle     |      |        |          |                    | score.tde.pre |  75 | 33.867 |   33.0 |   0 |  69 | 18.376 | 2.122 |  4.228 | 28.50 |
| Experimental |      |        | Branca   |                    | score.tde.pre |  10 | 33.400 |   33.0 |  13 |  62 | 14.447 | 4.568 | 10.335 | 16.00 |
| Experimental |      |        | Indígena |                    | score.tde.pre |   1 | 32.000 |   32.0 |  32 |  32 |        |       |        |  0.00 |
| Experimental |      |        | Parda    |                    | score.tde.pre |  45 | 34.378 |   32.0 |   8 |  64 | 14.587 | 2.175 |  4.382 | 24.00 |
| Experimental |      |        |          |                    | score.tde.pre | 131 | 37.557 |   40.0 |   0 |  68 | 15.074 | 1.317 |  2.606 | 19.00 |
| Controle     |      |        | Branca   |                    | score.tde.pos |  21 | 28.190 |   26.0 |   0 |  59 | 16.204 | 3.536 |  7.376 | 28.00 |
| Controle     |      |        | Indígena |                    | score.tde.pos |   6 | 45.000 |   50.5 |  16 |  63 | 18.011 | 7.353 | 18.901 | 21.75 |
| Controle     |      |        | Parda    |                    | score.tde.pos |  39 | 25.897 |   20.0 |   0 |  61 | 20.803 | 3.331 |  6.744 | 40.00 |
| Controle     |      |        |          |                    | score.tde.pos |  75 | 28.360 |   22.0 |   0 |  72 | 21.579 | 2.492 |  4.965 | 37.50 |
| Experimental |      |        | Branca   |                    | score.tde.pos |  10 | 36.000 |   37.5 |  18 |  63 | 14.087 | 4.455 | 10.077 | 19.00 |
| Experimental |      |        | Indígena |                    | score.tde.pos |   1 | 19.000 |   19.0 |  19 |  19 |        |       |        |  0.00 |
| Experimental |      |        | Parda    |                    | score.tde.pos |  45 | 30.089 |   29.0 |   0 |  67 | 18.918 | 2.820 |  5.684 | 28.00 |
| Experimental |      |        |          |                    | score.tde.pos | 131 | 34.626 |   38.0 |   0 |  69 | 16.685 | 1.458 |  2.884 | 27.50 |
| Controle     |      |        |          | 1st quintile       | score.tde.pre |  34 | 10.176 |   11.0 |   0 |  18 |  5.589 | 0.959 |  1.950 |  8.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pre |  25 | 23.800 |   24.0 |  19 |  31 |  3.416 | 0.683 |  1.410 |  5.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pre |  17 | 38.059 |   38.0 |  32 |  42 |  3.491 | 0.847 |  1.795 |  6.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pre |  42 | 47.000 |   47.0 |  43 |  51 |  2.295 | 0.354 |  0.715 |  2.75 |
| Controle     |      |        |          | 5th quintile       | score.tde.pre |  23 | 57.957 |   57.0 |  52 |  69 |  4.477 | 0.934 |  1.936 |  5.50 |
| Experimental |      |        |          | 1st quintile       | score.tde.pre |  26 | 11.885 |   11.5 |   0 |  18 |  4.546 | 0.892 |  1.836 |  6.00 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pre |  41 | 25.512 |   25.0 |  19 |  31 |  3.854 | 0.602 |  1.217 |  6.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pre |  47 | 37.043 |   37.0 |  32 |  42 |  3.257 | 0.475 |  0.956 |  6.00 |
| Experimental |      |        |          | 4th quintile       | score.tde.pre |  43 | 46.488 |   47.0 |  43 |  51 |  2.539 | 0.387 |  0.781 |  4.50 |
| Experimental |      |        |          | 5th quintile       | score.tde.pre |  30 | 57.933 |   57.0 |  52 |  68 |  4.502 | 0.822 |  1.681 |  8.00 |
| Controle     |      |        |          | 1st quintile       | score.tde.pos |  34 |  8.559 |    8.5 |   0 |  24 |  7.178 | 1.231 |  2.505 | 12.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pos |  25 | 19.240 |   15.0 |   0 |  66 | 16.893 | 3.379 |  6.973 | 14.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pos |  17 | 22.882 |   18.0 |   2 |  62 | 17.201 | 4.172 |  8.844 | 20.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pos |  42 | 39.262 |   41.5 |  14 |  63 | 13.991 | 2.159 |  4.360 | 24.00 |
| Controle     |      |        |          | 5th quintile       | score.tde.pos |  23 | 51.696 |   56.0 |  22 |  72 | 14.968 | 3.121 |  6.473 | 12.00 |
| Experimental |      |        |          | 1st quintile       | score.tde.pos |  26 | 12.308 |   10.0 |   0 |  43 | 10.525 | 2.064 |  4.251 | 11.50 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pos |  41 | 23.585 |   24.0 |   2 |  47 | 12.153 | 1.898 |  3.836 | 21.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pos |  47 | 33.085 |   33.0 |  12 |  62 | 11.738 | 1.712 |  3.446 | 15.50 |
| Experimental |      |        |          | 4th quintile       | score.tde.pos |  43 | 44.000 |   46.0 |  16 |  69 | 11.737 | 1.790 |  3.612 | 12.50 |
| Experimental |      |        |          | 5th quintile       | score.tde.pos |  30 | 51.167 |   54.0 |  22 |  67 | 11.841 | 2.162 |  4.422 | 11.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |   skewness |   kurtosis | symmetry | statistic | method     |         p | p.signif | normality |
|:--------------|----:|-----------:|-----------:|:---------|----------:|:-----------|----------:|:---------|:----------|
| score.tde.pos | 328 |  0.2408910 |  0.6891247 | YES      |  8.308413 | D’Agostino | 0.0156982 | ns       | \-        |
| score.tde.pos | 286 |  0.0897121 |  0.8971910 | YES      |  6.923305 | D’Agostino | 0.0313779 | ns       | \-        |
| score.tde.pos | 122 | -0.0885909 | -0.7872180 | YES      |  6.178526 | D’Agostino | 0.0455355 | ns       | QQ        |
| score.tde.pos | 328 |  0.3487522 |  0.8280736 | YES      | 13.115777 | D’Agostino | 0.0014189 | \*       | \-        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                              |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:-------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`               | 328 |       3 |     324 | 2.8506884 | 0.0375019 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`               | 328 |       3 |     320 | 0.2300000 | 0.8760000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`               | 286 |       3 |     282 | 0.6538178 | 0.5811440 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`               | 286 |       3 |     278 | 0.2840000 | 0.8370000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`           | 122 |       5 |     116 | 1.4554339 | 0.2098372 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`           | 122 |       4 |     111 | 0.8430000 | 0.5010000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`score.tde.quintile` | 328 |       9 |     318 | 2.6285777 | 0.0060465 | \*       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`score.tde.quintile` | 328 |       9 |     308 | 0.8200000 | 0.5980000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect             | DFn | DFd |       SSn |      SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------|----:|----:|----------:|---------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre      |   1 | 325 | 67496.137 | 46865.06 | 468.072 | \<0.001 | 0.590 | \*     |
| 2   | grupo              |   1 | 325 |  1007.023 | 46865.06 |   6.984 | 0.009   | 0.021 | \*     |
| 4   | Sexo               |   1 | 325 |    29.644 | 47842.44 |   0.201 | 0.654   | 0.001 |        |
| 6   | Zona               |   1 | 283 |  3395.543 | 38345.40 |  25.060 | \<0.001 | 0.081 | \*     |
| 8   | Cor.Raca           |   2 | 118 |   456.498 | 20113.38 |   1.339 | 0.266   | 0.022 |        |
| 10  | score.tde.quintile |   4 | 322 |   768.789 | 47103.29 |   1.314 | 0.265   | 0.016 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |       SSn |      SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|----------:|---------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre            |   1 | 323 | 66109.259 | 46369.18 | 460.506 | \<0.001 | 0.588 | \*     |
| 4   | grupo:Sexo               |   1 | 323 |   418.608 | 46369.18 |   2.916 | 0.089   | 0.009 |        |
| 8   | grupo:Zona               |   1 | 281 |  2152.214 | 35545.23 |  17.014 | \<0.001 | 0.057 | \*     |
| 12  | grupo:Cor.Raca           |   2 | 115 |   948.371 | 18536.00 |   2.942 | 0.057   | 0.049 |        |
| 16  | grupo:score.tde.quintile |   4 | 317 |  1093.125 | 44745.78 |   1.936 | 0.104   | 0.024 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 141 |  34.716 |    1.503 |    28.362 |      1.739 |  29.284 |    1.012 |
| score.tde.pos | Experimental | 187 |  36.540 |    1.089 |    33.524 |      1.254 |  32.829 |    0.879 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |   -3.545 |   -6.184 |    -0.906 | 1.341 |    -2.643 | 0.009 | 0.009 | \*\*         |
| score.tde.pre | Controle | Experimental |   -1.824 |   -5.384 |     1.736 | 1.810 |    -1.008 | 0.314 | 0.314 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    6.355 |    2.257 |    10.452 | 2.087 |     3.045 | 0.002 | 0.002 | \*\*         |
| score.tde | Experimental | pre    | pos    |    3.016 |   -0.542 |     6.574 | 1.812 |     1.664 | 0.097 | 0.097 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  80 |  37.675 |    1.881 |    30.262 |      2.326 |  28.559 |    1.342 |
| score.tde.pos | Controle     | M    |  61 |  30.836 |    2.371 |    25.869 |      2.603 |  30.236 |    1.548 |
| score.tde.pos | Experimental | F    |  88 |  37.841 |    1.480 |    36.227 |      1.739 |  34.377 |    1.280 |
| score.tde.pos | Experimental | M    |  99 |  35.384 |    1.579 |    31.121 |      1.768 |  31.452 |    1.204 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -5.818 |   -9.459 |    -2.176 | 1.851 |    -3.143 | 0.002 | 0.002 | \*\*         |
| score.tde.pos |              | M    | Controle | Experimental |   -1.216 |   -5.070 |     2.639 | 1.959 |    -0.621 | 0.535 | 0.535 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |   -0.166 |   -5.057 |     4.725 | 2.486 |    -0.067 | 0.947 | 0.947 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |   -4.548 |   -9.701 |     0.606 | 2.620 |    -1.736 | 0.083 | 0.083 | ns           |
| score.tde.pos | Controle     |      | F        | M            |   -1.677 |   -5.722 |     2.369 | 2.056 |    -0.815 | 0.415 | 0.415 | ns           |
| score.tde.pos | Experimental |      | F        | M            |    2.925 |   -0.534 |     6.384 | 1.758 |     1.664 | 0.097 | 0.097 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    6.839 |    1.457 |    12.221 | 2.736 |     2.500 | 0.013 | 0.013 | \*           |
| score.tde.pre | Experimental |      | F        | M            |    2.457 |   -2.181 |     7.096 | 2.358 |     1.042 | 0.298 | 0.298 | ns           |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    7.413 |    2.007 |    12.818 | 2.753 |     2.693 | 0.007 | 0.007 | \*\*         |
| score.tde | Controle     | M    | pre    | pos    |    4.967 |   -1.223 |    11.157 | 3.152 |     1.576 | 0.116 | 0.116 | ns           |
| score.tde | Experimental | F    | pre    | pos    |    1.614 |   -3.540 |     6.767 | 2.625 |     0.615 | 0.539 | 0.539 | ns           |
| score.tde | Experimental | M    | pre    | pos    |    4.263 |   -0.596 |     9.121 | 2.474 |     1.723 | 0.085 | 0.085 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  69 |  33.739 |    2.319 |    33.971 |      2.677 |  35.875 |    1.357 |
| score.tde.pos | Controle     | Urbana |  55 |  36.036 |    2.133 |    22.745 |      2.374 |  22.570 |    1.517 |
| score.tde.pos | Experimental | Rural  |  87 |  35.287 |    1.550 |    33.391 |      1.846 |  33.893 |    1.206 |
| score.tde.pos | Experimental | Urbana |  75 |  38.280 |    1.828 |    33.920 |      1.962 |  31.714 |    1.303 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |    1.982 |   -1.589 |     5.553 | 1.814 |     1.092 | 0.276   | 0.276   | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |   -9.143 |  -13.078 |    -5.209 | 1.999 |    -4.575 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre |              | Rural  | Controle | Experimental |   -1.548 |   -6.733 |     3.636 | 2.634 |    -0.588 | 0.557   | 0.557   | ns           |
| score.tde.pre |              | Urbana | Controle | Experimental |   -2.244 |   -7.953 |     3.466 | 2.900 |    -0.774 | 0.44    | 0.44    | ns           |
| score.tde.pos | Controle     |        | Rural    | Urbana       |   13.305 |    9.299 |    17.311 | 2.035 |     6.537 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pos | Experimental |        | Rural    | Urbana       |    2.180 |   -1.317 |     5.677 | 1.776 |     1.227 | 0.221   | 0.221   | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |   -2.297 |   -8.111 |     3.516 | 2.953 |    -0.778 | 0.437   | 0.437   | ns           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |   -2.993 |   -8.060 |     2.075 | 2.574 |    -1.162 | 0.246   | 0.246   | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |   -0.232 |   -6.080 |     5.617 | 2.978 |    -0.078 | 0.938   | 0.938   | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |   13.291 |    6.740 |    19.842 | 3.335 |     3.985 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Experimental | Rural  | pre    | pos    |    1.897 |   -3.312 |     7.105 | 2.652 |     0.715 | 0.475   | 0.475   | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |    4.360 |   -1.250 |     9.970 | 2.856 |     1.527 | 0.127   | 0.127   | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |  21 |  39.095 |    2.872 |    28.190 |      3.536 |  24.667 |    2.787 |
| score.tde.pos | Controle     | Indígena |   6 |  40.833 |    5.263 |    45.000 |      7.353 |  39.978 |    5.201 |
| score.tde.pos | Controle     | Parda    |  39 |  33.051 |    3.127 |    25.897 |      3.331 |  27.584 |    2.038 |
| score.tde.pos | Experimental | Branca   |  10 |  33.400 |    4.568 |    36.000 |      4.455 |  37.386 |    4.016 |
| score.tde.pos | Experimental | Parda    |  45 |  34.378 |    2.175 |    30.089 |      2.820 |  30.632 |    1.893 |

|     | .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 1   | score.tde.pos |              | Branca   | Controle | Experimental |  -12.719 |  -22.417 |    -3.022 | 4.896 |    -2.598 | 0.011 | 0.011 | \*           |
| 3   | score.tde.pos |              | Parda    | Controle | Experimental |   -3.048 |   -8.553 |     2.457 | 2.779 |    -1.097 | 0.275 | 0.275 | ns           |
| 4   | score.tde.pre |              | Branca   | Controle | Experimental |    5.695 |   -6.549 |    17.939 | 6.182 |     0.921 | 0.359 | 0.359 | ns           |
| 6   | score.tde.pre |              | Parda    | Controle | Experimental |   -1.326 |   -8.298 |     5.645 | 3.520 |    -0.377 | 0.707 | 0.707 | ns           |
| 7   | score.tde.pos | Controle     |          | Branca   | Indígena     |  -15.311 |  -26.955 |    -3.667 | 5.878 |    -2.605 | 0.010 | 0.031 | \*           |
| 8   | score.tde.pos | Controle     |          | Branca   | Parda        |   -2.917 |   -9.780 |     3.946 | 3.465 |    -0.842 | 0.402 | 1.000 | ns           |
| 9   | score.tde.pos | Controle     |          | Indígena | Parda        |   12.394 |    1.308 |    23.480 | 5.597 |     2.215 | 0.029 | 0.086 | ns           |
| 11  | score.tde.pos | Experimental |          | Branca   | Parda        |    6.754 |   -2.039 |    15.547 | 4.439 |     1.521 | 0.131 | 0.131 | ns           |
| 13  | score.tde.pre | Controle     |          | Branca   | Indígena     |   -1.738 |  -16.490 |    13.014 | 7.448 |    -0.233 | 0.816 | 1.000 | ns           |
| 14  | score.tde.pre | Controle     |          | Branca   | Parda        |    6.044 |   -2.581 |    14.669 | 4.355 |     1.388 | 0.168 | 0.504 | ns           |
| 15  | score.tde.pre | Controle     |          | Indígena | Parda        |    7.782 |   -6.193 |    21.757 | 7.056 |     1.103 | 0.272 | 0.817 | ns           |
| 17  | score.tde.pre | Experimental |          | Branca   | Parda        |   -0.978 |  -12.119 |    10.163 | 5.625 |    -0.174 | 0.862 | 0.862 | ns           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |   10.905 |    0.277 |    21.533 |  5.394 |     2.022 | 0.044 | 0.044 | \*           |
| score.tde | Controle     | Indígena | pre    | pos    |   -4.167 |  -24.050 |    15.716 | 10.092 |    -0.413 | 0.680 | 0.680 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    7.154 |   -0.645 |    14.953 |  3.958 |     1.807 | 0.072 | 0.072 | ns           |
| score.tde | Experimental | Branca   | pre    | pos    |   -2.600 |  -18.001 |    12.801 |  7.817 |    -0.333 | 0.740 | 0.740 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |    4.289 |   -2.971 |    11.549 |  3.685 |     1.164 | 0.246 | 0.246 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:score.tde.quintile**

| var           | grupo        | score.tde.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 1st quintile       |  34 |  10.176 |    0.959 |     8.559 |      1.231 |  38.569 |    4.913 |
| score.tde.pos | Controle     | 2nd quintile       |  25 |  23.800 |    0.683 |    19.240 |      3.379 |  33.267 |    3.164 |
| score.tde.pos | Controle     | 3rd quintile       |  17 |  38.059 |    0.847 |    22.882 |      4.172 |  20.181 |    2.909 |
| score.tde.pos | Controle     | 4th quintile       |  42 |  47.000 |    0.354 |    39.262 |      2.159 |  26.071 |    2.688 |
| score.tde.pos | Controle     | 5th quintile       |  23 |  57.957 |    0.934 |    51.696 |      3.121 |  25.650 |    4.604 |
| score.tde.pos | Experimental | 1st quintile       |  26 |  11.885 |    0.892 |    12.308 |      2.064 |  40.314 |    4.779 |
| score.tde.pos | Experimental | 2nd quintile       |  41 |  25.512 |    0.602 |    23.585 |      1.898 |  35.603 |    2.579 |
| score.tde.pos | Experimental | 3rd quintile       |  47 |  37.043 |    0.475 |    33.085 |      1.712 |  31.576 |    1.748 |
| score.tde.pos | Experimental | 4th quintile       |  43 |  46.488 |    0.387 |    44.000 |      1.790 |  31.409 |    2.608 |
| score.tde.pos | Experimental | 5th quintile       |  30 |  57.933 |    0.822 |    51.167 |      2.162 |  25.149 |    4.442 |

| .y.           | grupo        | score.tde.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | 1st quintile       | Controle     | Experimental |   -1.745 |   -7.863 |     4.373 | 3.110 |    -0.561 | 0.575   | 0.575   | ns           |
| score.tde.pos |              | 2nd quintile       | Controle     | Experimental |   -2.337 |   -8.297 |     3.624 | 3.030 |    -0.771 | 0.441   | 0.441   | ns           |
| score.tde.pos |              | 3rd quintile       | Controle     | Experimental |  -11.395 |  -18.020 |    -4.770 | 3.367 |    -3.384 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde.pos |              | 4th quintile       | Controle     | Experimental |   -5.338 |  -10.413 |    -0.264 | 2.579 |    -2.070 | 0.039   | 0.039   | \*           |
| score.tde.pos |              | 5th quintile       | Controle     | Experimental |    0.502 |   -5.977 |     6.980 | 3.293 |     0.152 | 0.879   | 0.879   | ns           |
| score.tde.pre |              | 1st quintile       | Controle     | Experimental |   -1.708 |   -3.662 |     0.246 | 0.993 |    -1.720 | 0.086   | 0.086   | ns           |
| score.tde.pre |              | 2nd quintile       | Controle     | Experimental |   -1.712 |   -3.615 |     0.191 | 0.967 |    -1.770 | 0.078   | 0.078   | ns           |
| score.tde.pre |              | 3rd quintile       | Controle     | Experimental |    1.016 |   -1.106 |     3.139 | 1.079 |     0.942 | 0.347   | 0.347   | ns           |
| score.tde.pre |              | 4th quintile       | Controle     | Experimental |    0.512 |   -1.115 |     2.139 | 0.827 |     0.619 | 0.537   | 0.537   | ns           |
| score.tde.pre |              | 5th quintile       | Controle     | Experimental |    0.023 |   -2.055 |     2.102 | 1.056 |     0.022 | 0.983   | 0.983   | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 2nd quintile |    5.302 |   -2.436 |    13.040 | 3.933 |     1.348 | 0.179   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 3rd quintile |   18.388 |    6.549 |    30.226 | 6.017 |     3.056 | 0.002   | 0.024   | \*           |
| score.tde.pos | Controle     |                    | 1st quintile | 4th quintile |   12.498 |   -1.266 |    26.262 | 6.996 |     1.787 | 0.075   | 0.75    | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 5th quintile |   12.918 |   -4.683 |    30.520 | 8.946 |     1.444 | 0.15    | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 3rd quintile |   13.086 |    4.252 |    21.920 | 4.490 |     2.914 | 0.004   | 0.038   | \*           |
| score.tde.pos | Controle     |                    | 2nd quintile | 4th quintile |    7.196 |   -2.730 |    17.122 | 5.045 |     1.426 | 0.155   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 5th quintile |    7.616 |   -5.933 |    21.166 | 6.887 |     1.106 | 0.27    | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 4th quintile |   -5.890 |  -13.279 |     1.500 | 3.756 |    -1.568 | 0.118   | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 5th quintile |   -5.469 |  -15.605 |     4.666 | 5.151 |    -1.062 | 0.289   | 1       | ns           |
| score.tde.pos | Controle     |                    | 4th quintile | 5th quintile |    0.420 |   -6.718 |     7.559 | 3.628 |     0.116 | 0.908   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 2nd quintile |    4.710 |   -2.794 |    12.214 | 3.814 |     1.235 | 0.218   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 3rd quintile |    8.738 |   -1.630 |    19.105 | 5.270 |     1.658 | 0.098   | 0.983   | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 4th quintile |    8.905 |   -4.337 |    22.146 | 6.730 |     1.323 | 0.187   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 5th quintile |   15.165 |   -1.864 |    32.194 | 8.655 |     1.752 | 0.081   | 0.807   | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 3rd quintile |    4.028 |   -2.350 |    10.405 | 3.242 |     1.242 | 0.215   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 4th quintile |    4.194 |   -4.641 |    13.030 | 4.491 |     0.934 | 0.351   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 5th quintile |   10.455 |   -2.029 |    22.939 | 6.345 |     1.648 | 0.1     | 1       | ns           |
| score.tde.pos | Experimental |                    | 3rd quintile | 4th quintile |    0.167 |   -5.739 |     6.073 | 3.002 |     0.056 | 0.956   | 1       | ns           |
| score.tde.pos | Experimental |                    | 3rd quintile | 5th quintile |    6.427 |   -2.598 |    15.452 | 4.587 |     1.401 | 0.162   | 1       | ns           |
| score.tde.pos | Experimental |                    | 4th quintile | 5th quintile |    6.260 |   -0.552 |    13.073 | 3.463 |     1.808 | 0.072   | 0.715   | ns           |
| score.tde.pre | Controle     |                    | 1st quintile | 2nd quintile |  -13.624 |  -15.599 |   -11.648 | 1.004 |   -13.566 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 3rd quintile |  -27.882 |  -30.110 |   -25.655 | 1.132 |   -24.626 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 4th quintile |  -36.824 |  -38.554 |   -35.093 | 0.879 |   -41.876 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 5th quintile |  -47.780 |  -49.805 |   -45.755 | 1.029 |   -46.429 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 3rd quintile |  -14.259 |  -16.616 |   -11.901 | 1.198 |   -11.900 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 4th quintile |  -23.200 |  -25.094 |   -21.306 | 0.963 |   -24.095 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 5th quintile |  -34.157 |  -36.323 |   -31.990 | 1.101 |   -31.015 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 3rd quintile | 4th quintile |   -8.941 |  -11.097 |    -6.785 | 1.096 |    -8.160 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 3rd quintile | 5th quintile |  -19.898 |  -22.296 |   -17.499 | 1.219 |   -16.321 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 4th quintile | 5th quintile |  -10.957 |  -12.902 |    -9.011 | 0.989 |   -11.081 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 2nd quintile |  -13.628 |  -15.508 |   -11.747 | 0.956 |   -14.261 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 3rd quintile |  -25.158 |  -26.991 |   -23.325 | 0.932 |   -27.004 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 4th quintile |  -34.604 |  -36.467 |   -32.741 | 0.947 |   -36.543 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 5th quintile |  -46.049 |  -48.058 |   -44.039 | 1.021 |   -45.087 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 3rd quintile |  -11.530 |  -13.133 |    -9.928 | 0.815 |   -14.155 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 4th quintile |  -20.976 |  -22.613 |   -19.339 | 0.832 |   -25.211 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 5th quintile |  -32.421 |  -34.223 |   -30.619 | 0.916 |   -35.402 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 4th quintile |   -9.446 |  -11.028 |    -7.863 | 0.804 |   -11.743 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 5th quintile |  -20.891 |  -22.643 |   -19.138 | 0.891 |   -23.453 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 4th quintile | 5th quintile |  -11.445 |  -13.229 |    -9.661 | 0.907 |   -12.622 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.       | grupo        | score.tde.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:----------|:-------------|:-------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde | Controle     | 1st quintile       | pre    | pos    |    1.618 |   -2.840 |     6.076 | 2.270 |     0.713 | 0.476   | 0.476   | ns           |
| score.tde | Controle     | 2nd quintile       | pre    | pos    |    4.560 |   -0.639 |     9.759 | 2.648 |     1.722 | 0.085   | 0.085   | ns           |
| score.tde | Controle     | 3rd quintile       | pre    | pos    |   15.176 |    8.872 |    21.481 | 3.211 |     4.727 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde | Controle     | 4th quintile       | pre    | pos    |    7.738 |    3.727 |    11.749 | 2.043 |     3.788 | \<0.001 | \<0.001 | \*\*\*       |
| score.tde | Controle     | 5th quintile       | pre    | pos    |    6.261 |    0.841 |    11.681 | 2.760 |     2.268 | 0.024   | 0.024   | \*           |
| score.tde | Experimental | 1st quintile       | pre    | pos    |   -0.423 |   -5.521 |     4.675 | 2.596 |    -0.163 | 0.871   | 0.871   | ns           |
| score.tde | Experimental | 2nd quintile       | pre    | pos    |    1.927 |   -2.133 |     5.987 | 2.067 |     0.932 | 0.352   | 0.352   | ns           |
| score.tde | Experimental | 3rd quintile       | pre    | pos    |    3.957 |    0.166 |     7.749 | 1.931 |     2.050 | 0.041   | 0.041   | \*           |
| score.tde | Experimental | 4th quintile       | pre    | pos    |    2.488 |   -1.476 |     6.453 | 2.019 |     1.233 | 0.218   | 0.218   | ns           |
| score.tde | Experimental | 5th quintile       | pre    | pos    |    6.767 |    2.021 |    11.513 | 2.417 |     2.800 | 0.005   | 0.005   | \*\*         |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-7-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
