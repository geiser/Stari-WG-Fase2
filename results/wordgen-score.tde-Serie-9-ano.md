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
| Controle     | F    |        |          |                    | score.tde.pre |  56 | 47.339 |   50.5 |   3 |  69 | 14.906 | 1.992 |  3.992 | 13.25 |
| Controle     | M    |        |          |                    | score.tde.pre |  65 | 46.615 |   51.0 |   0 |  75 | 18.938 | 2.349 |  4.693 | 16.00 |
| Experimental | F    |        |          |                    | score.tde.pre |  75 | 47.320 |   49.0 |   3 |  68 | 14.875 | 1.718 |  3.422 | 17.00 |
| Experimental | M    |        |          |                    | score.tde.pre |  72 | 38.917 |   40.5 |   0 |  71 | 15.783 | 1.860 |  3.709 | 18.50 |
| Controle     | F    |        |          |                    | score.tde.pos |  56 | 46.446 |   51.0 |   3 |  69 | 15.114 | 2.020 |  4.048 | 17.50 |
| Controle     | M    |        |          |                    | score.tde.pos |  65 | 46.354 |   48.0 |   0 |  73 | 17.633 | 2.187 |  4.369 | 22.00 |
| Experimental | F    |        |          |                    | score.tde.pos |  75 | 47.120 |   52.0 |   0 |  72 | 16.473 | 1.902 |  3.790 | 16.00 |
| Experimental | M    |        |          |                    | score.tde.pos |  72 | 41.611 |   43.0 |   0 |  74 | 15.406 | 1.816 |  3.620 | 19.25 |
| Controle     |      | Rural  |          |                    | score.tde.pre |  45 | 47.956 |   50.0 |   3 |  69 | 14.488 | 2.160 |  4.353 | 15.00 |
| Controle     |      | Urbana |          |                    | score.tde.pre |  15 | 56.667 |   58.0 |  16 |  75 | 13.952 | 3.602 |  7.727 | 11.50 |
| Controle     |      |        |          |                    | score.tde.pre |  61 | 43.820 |   49.0 |   0 |  73 | 18.783 | 2.405 |  4.811 | 17.00 |
| Experimental |      | Rural  |          |                    | score.tde.pre |  57 | 43.386 |   46.0 |   0 |  68 | 17.864 | 2.366 |  4.740 | 24.00 |
| Experimental |      | Urbana |          |                    | score.tde.pre |  31 | 40.806 |   44.0 |   3 |  71 | 16.808 | 3.019 |  6.165 | 24.50 |
| Experimental |      |        |          |                    | score.tde.pre |  59 | 44.288 |   43.0 |  11 |  65 | 13.169 | 1.714 |  3.432 | 18.00 |
| Controle     |      | Rural  |          |                    | score.tde.pos |  45 | 47.133 |   49.0 |   8 |  71 | 15.374 | 2.292 |  4.619 | 15.00 |
| Controle     |      | Urbana |          |                    | score.tde.pos |  15 | 51.400 |   54.0 |  24 |  73 | 13.410 | 3.462 |  7.426 | 17.00 |
| Controle     |      |        |          |                    | score.tde.pos |  61 | 44.623 |   50.0 |   0 |  73 | 17.774 | 2.276 |  4.552 | 26.00 |
| Experimental |      | Rural  |          |                    | score.tde.pos |  57 | 43.877 |   49.0 |   0 |  72 | 18.014 | 2.386 |  4.780 | 24.00 |
| Experimental |      | Urbana |          |                    | score.tde.pos |  31 | 43.226 |   46.0 |   6 |  74 | 16.921 | 3.039 |  6.207 | 24.00 |
| Experimental |      |        |          |                    | score.tde.pos |  59 | 45.576 |   48.0 |   0 |  67 | 13.862 | 1.805 |  3.612 | 19.00 |
| Controle     |      |        | Branca   |                    | score.tde.pre |   8 | 54.750 |   54.0 |  45 |  65 |  8.031 | 2.839 |  6.714 | 13.00 |
| Controle     |      |        | Indígena |                    | score.tde.pre |   2 | 57.500 |   57.5 |  50 |  65 | 10.607 | 7.500 | 95.297 |  7.50 |
| Controle     |      |        | Parda    |                    | score.tde.pre |  50 | 40.940 |   46.5 |   0 |  66 | 17.846 | 2.524 |  5.072 | 24.00 |
| Controle     |      |        |          |                    | score.tde.pre |  61 | 50.508 |   53.0 |   2 |  75 | 16.193 | 2.073 |  4.147 | 13.00 |
| Experimental |      |        | Branca   |                    | score.tde.pre |   9 | 52.333 |   58.0 |  40 |  67 | 11.705 | 3.902 |  8.997 | 21.00 |
| Experimental |      |        | Indígena |                    | score.tde.pre |   3 | 44.667 |   48.0 |  33 |  53 | 10.408 | 6.009 | 25.856 | 10.00 |
| Experimental |      |        | Parda    |                    | score.tde.pre |  49 | 38.082 |   42.0 |   2 |  68 | 18.909 | 2.701 |  5.431 | 28.00 |
| Experimental |      |        |          |                    | score.tde.pre |  86 | 45.116 |   45.5 |   0 |  71 | 13.644 | 1.471 |  2.925 | 18.00 |
| Controle     |      |        | Branca   |                    | score.tde.pos |   8 | 56.000 |   55.5 |  43 |  72 |  9.885 | 3.495 |  8.264 | 13.50 |
| Controle     |      |        | Indígena |                    | score.tde.pos |   2 | 56.500 |   56.5 |  50 |  63 |  9.192 | 6.500 | 82.590 |  6.50 |
| Controle     |      |        | Parda    |                    | score.tde.pos |  50 | 40.000 |   44.0 |   0 |  68 | 17.430 | 2.465 |  4.953 | 27.75 |
| Controle     |      |        |          |                    | score.tde.pos |  61 | 50.049 |   53.0 |  15 |  73 | 14.723 | 1.885 |  3.771 | 18.00 |
| Experimental |      |        | Branca   |                    | score.tde.pos |   9 | 52.222 |   52.0 |  23 |  72 | 14.558 | 4.853 | 11.191 |  8.00 |
| Experimental |      |        | Indígena |                    | score.tde.pos |   3 | 51.000 |   52.0 |  49 |  52 |  1.732 | 1.000 |  4.303 |  1.50 |
| Experimental |      |        | Parda    |                    | score.tde.pos |  49 | 37.082 |   33.0 |   3 |  71 | 18.671 | 2.667 |  5.363 | 29.00 |
| Experimental |      |        |          |                    | score.tde.pos |  86 | 47.558 |   49.5 |   0 |  74 | 13.481 | 1.454 |  2.890 | 15.50 |
| Controle     |      |        |          | 1st quintile       | score.tde.pre |  14 |  9.214 |   10.0 |   0 |  17 |  5.352 | 1.430 |  3.090 |  8.50 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pre |   7 | 25.143 |   26.0 |  19 |  29 |  3.716 | 1.405 |  3.437 |  5.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pre |   7 | 40.571 |   42.0 |  36 |  42 |  2.299 | 0.869 |  2.126 |  2.00 |
| Controle     |      |        |          | 4th quintile       | score.tde.pre |  36 | 47.306 |   47.0 |  43 |  51 |  2.837 | 0.473 |  0.960 |  5.00 |
| Controle     |      |        |          | 5th quintile       | score.tde.pre |  57 | 59.456 |   58.0 |  52 |  75 |  5.904 | 0.782 |  1.567 |  8.00 |
| Experimental |      |        |          | 1st quintile       | score.tde.pre |  12 |  9.000 |   10.5 |   0 |  17 |  6.310 | 1.822 |  4.009 | 11.50 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pre |  21 | 26.238 |   27.0 |  19 |  31 |  3.491 | 0.762 |  1.589 |  5.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pre |  32 | 38.375 |   40.0 |  32 |  42 |  3.309 | 0.585 |  1.193 |  5.25 |
| Experimental |      |        |          | 4th quintile       | score.tde.pre |  32 | 46.938 |   47.5 |  43 |  51 |  2.564 | 0.453 |  0.925 |  4.25 |
| Experimental |      |        |          | 5th quintile       | score.tde.pre |  50 | 59.240 |   58.5 |  52 |  71 |  5.141 | 0.727 |  1.461 |  7.75 |
| Controle     |      |        |          | 1st quintile       | score.tde.pos |  14 | 15.286 |   15.0 |   0 |  28 |  9.384 | 2.508 |  5.418 | 15.00 |
| Controle     |      |        |          | 2nd quintile       | score.tde.pos |   7 | 26.857 |   25.0 |  20 |  45 |  8.295 | 3.135 |  7.672 |  3.00 |
| Controle     |      |        |          | 3rd quintile       | score.tde.pos |   7 | 39.857 |   40.0 |  26 |  56 | 11.539 | 4.361 | 10.672 | 16.50 |
| Controle     |      |        |          | 4th quintile       | score.tde.pos |  36 | 47.444 |   48.5 |  28 |  62 |  7.527 | 1.254 |  2.547 |  9.00 |
| Controle     |      |        |          | 5th quintile       | score.tde.pos |  57 | 56.579 |   58.0 |  31 |  73 | 10.046 | 1.331 |  2.666 | 12.00 |
| Experimental |      |        |          | 1st quintile       | score.tde.pos |  12 | 14.500 |   14.5 |   0 |  29 | 10.501 | 3.031 |  6.672 | 20.25 |
| Experimental |      |        |          | 2nd quintile       | score.tde.pos |  21 | 32.619 |   31.0 |  20 |  60 |  9.206 | 2.009 |  4.190 |  8.00 |
| Experimental |      |        |          | 3rd quintile       | score.tde.pos |  32 | 39.969 |   43.0 |   0 |  57 | 12.800 | 2.263 |  4.615 | 11.75 |
| Experimental |      |        |          | 4th quintile       | score.tde.pos |  32 | 48.250 |   49.5 |  28 |  59 |  6.951 | 1.229 |  2.506 |  5.25 |
| Experimental |      |        |          | 5th quintile       | score.tde.pos |  50 | 56.960 |   57.0 |  14 |  74 | 10.999 | 1.555 |  3.126 |  8.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var           |   n |  skewness | kurtosis | symmetry | statistic | method     |        p | p.signif | normality |
|:--------------|----:|----------:|---------:|:---------|----------:|:-----------|---------:|:---------|:----------|
| score.tde.pos | 268 | -1.298720 | 4.638820 | NO       |  85.66573 | D’Agostino | 0.00e+00 | \*\*\*\* | \-        |
| score.tde.pos | 148 | -1.037329 | 2.749040 | NO       |  35.94784 | D’Agostino | 0.00e+00 | \*\*\*\* | QQ        |
| score.tde.pos | 121 | -0.691580 | 2.161094 | NO       |  19.49983 | D’Agostino | 5.83e-05 | \*\*\*   | QQ        |
| score.tde.pos | 268 | -1.360767 | 4.592780 | NO       |  88.69348 | D’Agostino | 0.00e+00 | \*\*\*\* | \-        |

## Assumption: Homogeneity of data distribution

| var           | method         | formula                              |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:--------------|:---------------|:-------------------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`               | 268 |       3 |     264 |  1.827736 | 0.1424380 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`               | 268 |       3 |     260 |  0.246000 | 0.8640000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Zona`               | 148 |       3 |     144 |  2.439441 | 0.0668787 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`               | 148 |       3 |     140 |  1.111000 | 0.3470000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca`           | 121 |       5 |     115 |  1.506364 | 0.1932386 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca`           | 121 |       5 |     109 |  0.463000 | 0.8030000 | ns       |
| score.tde.pos | Levene’s test  | `.res`~`grupo`\*`score.tde.quintile` | 268 |       9 |     258 |  1.037987 | 0.4100186 | ns       |
| score.tde.pos | Anova’s slopes | `.res`~`grupo`\*`score.tde.quintile` | 268 |       9 |     248 |  1.069000 | 0.3860000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect             | DFn | DFd |       SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------|----:|----:|----------:|----------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre      |   1 | 265 | 49493.965 | 21014.844 | 624.126 | \<0.001 | 0.702 | \*     |
| 2   | grupo              |   1 | 265 |    84.339 | 21014.844 |   1.064 | 0.303   | 0.004 |        |
| 4   | Sexo               |   1 | 265 |    63.126 | 21036.057 |   0.795 | 0.373   | 0.003 |        |
| 6   | Zona               |   1 | 145 |     0.195 |  9573.556 |   0.003 | 0.957   | 0.000 |        |
| 8   | Cor.Raca           |   2 | 117 |   423.916 | 12700.966 |   1.953 | 0.147   | 0.032 |        |
| 10  | score.tde.quintile |   4 | 262 |   216.393 | 20882.790 |   0.679 | 0.607   | 0.010 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |       SSn |       SSd |       F | p       |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|----------:|----------:|--------:|:--------|------:|:-------|
| 1   | score.tde.pre            |   1 | 263 | 48468.706 | 20925.026 | 609.188 | \<0.001 | 0.698 | \*     |
| 4   | grupo:Sexo               |   1 | 263 |    16.607 | 20925.026 |   0.209 | 0.648   | 0.001 |        |
| 8   | grupo:Zona               |   1 | 143 |   186.684 |  9223.446 |   2.894 | 0.091   | 0.020 |        |
| 12  | grupo:Cor.Raca           |   2 | 114 |    39.272 | 12649.605 |   0.177 | 0.838   | 0.003 |        |
| 16  | grupo:score.tde.quintile |   4 | 257 |   101.139 | 20704.129 |   0.314 | 0.869   | 0.005 |        |

## Pairwise comparisons for one factor: **grupo**

| var           | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 121 |  46.950 |    1.557 |    46.397 |      1.495 |  44.691 |    0.812 |
| score.tde.pos | Experimental | 147 |  43.204 |    1.307 |    44.422 |      1.331 |  45.826 |    0.737 |

| .y.           | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos | Controle | Experimental |   -1.135 |   -3.301 |     1.032 | 1.100 |    -1.031 | 0.303 | 0.303 | ns           |
| score.tde.pre | Controle | Experimental |    3.746 |   -0.226 |     7.718 | 2.017 |     1.857 | 0.064 | 0.064 | ns           |

| .y.       | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | pre    | pos    |    0.554 |   -3.578 |     4.685 | 2.103 |     0.263 | 0.792 | 0.792 | ns           |
| score.tde | Experimental | pre    | pos    |   -1.218 |   -4.966 |     2.530 | 1.908 |    -0.638 | 0.524 | 0.524 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var           | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | F    |  56 |  47.339 |    1.992 |    46.446 |      2.020 |  44.402 |    1.195 |
| score.tde.pos | Controle     | M    |  65 |  46.615 |    2.349 |    46.354 |      2.187 |  44.915 |    1.108 |
| score.tde.pos | Experimental | F    |  75 |  47.320 |    1.718 |    47.120 |      1.902 |  45.091 |    1.033 |
| score.tde.pos | Experimental | M    |  72 |  38.917 |    1.860 |    41.611 |      1.816 |  46.614 |    1.071 |

| .y.           | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | F    | Controle | Experimental |   -0.690 |   -3.792 |     2.412 | 1.575 |    -0.438 | 0.662 | 0.662 | ns           |
| score.tde.pos |              | M    | Controle | Experimental |   -1.699 |   -4.747 |     1.350 | 1.548 |    -1.097 | 0.274 | 0.274 | ns           |
| score.tde.pre |              | F    | Controle | Experimental |    0.019 |   -5.612 |     5.651 | 2.860 |     0.007 | 0.995 | 0.995 | ns           |
| score.tde.pre |              | M    | Controle | Experimental |    7.699 |    2.243 |    13.154 | 2.771 |     2.779 | 0.006 | 0.006 | \*\*         |
| score.tde.pos | Controle     |      | F        | M            |   -0.513 |   -3.716 |     2.689 | 1.626 |    -0.315 | 0.753 | 0.753 | ns           |
| score.tde.pos | Experimental |      | F        | M            |   -1.522 |   -4.474 |     1.429 | 1.499 |    -1.015 | 0.311 | 0.311 | ns           |
| score.tde.pre | Controle     |      | F        | M            |    0.724 |   -5.090 |     6.537 | 2.953 |     0.245 | 0.807 | 0.807 | ns           |
| score.tde.pre | Experimental |      | F        | M            |    8.403 |    3.142 |    13.664 | 2.672 |     3.145 | 0.002 | 0.002 | \*\*         |

| .y.       | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | F    | pre    | pos    |    0.893 |   -5.123 |     6.908 | 3.062 |     0.292 | 0.771 | 0.771 | ns           |
| score.tde | Controle     | M    | pre    | pos    |    0.262 |   -5.322 |     5.845 | 2.842 |     0.092 | 0.927 | 0.927 | ns           |
| score.tde | Experimental | F    | pre    | pos    |    0.200 |   -4.998 |     5.398 | 2.646 |     0.076 | 0.940 | 0.940 | ns           |
| score.tde | Experimental | M    | pre    | pos    |   -2.694 |   -8.000 |     2.611 | 2.701 |    -0.998 | 0.319 | 0.319 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-32-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-33-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-35-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-37-1.png)<!-- -->

### factores: **grupo:Zona**

| var           | grupo        | Zona   |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Rural  |  45 |  47.956 |    2.160 |    47.133 |      2.292 |  45.016 |    1.201 |
| score.tde.pos | Controle     | Urbana |  15 |  56.667 |    3.602 |    51.400 |      3.462 |  41.516 |    2.123 |
| score.tde.pos | Experimental | Rural  |  57 |  43.386 |    2.366 |    43.877 |      2.386 |  45.834 |    1.068 |
| score.tde.pos | Experimental | Urbana |  31 |  40.806 |    3.019 |    43.226 |      3.039 |  47.483 |    1.456 |

| .y.           | grupo        | Zona   | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:-------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Rural  | Controle | Experimental |   -0.818 |   -4.006 |     2.369 | 1.612 |    -0.507 | 0.613 | 0.613 | ns           |
| score.tde.pos |              | Urbana | Controle | Experimental |   -5.967 |  -11.123 |    -0.811 | 2.608 |    -2.288 | 0.024 | 0.024 | \*           |
| score.tde.pre |              | Rural  | Controle | Experimental |    4.570 |   -1.859 |    10.998 | 3.253 |     1.405 | 0.162 | 0.162 | ns           |
| score.tde.pre |              | Urbana | Controle | Experimental |   15.860 |    5.720 |    26.000 | 5.130 |     3.092 | 0.002 | 0.002 | \*\*         |
| score.tde.pos | Controle     |        | Rural    | Urbana       |    3.500 |   -1.285 |     8.286 | 2.421 |     1.446 | 0.150 | 0.150 | ns           |
| score.tde.pos | Experimental |        | Rural    | Urbana       |   -1.649 |   -5.198 |     1.900 | 1.795 |    -0.918 | 0.360 | 0.360 | ns           |
| score.tde.pre | Controle     |        | Rural    | Urbana       |   -8.711 |  -18.323 |     0.901 | 4.863 |    -1.791 | 0.075 | 0.075 | ns           |
| score.tde.pre | Experimental |        | Rural    | Urbana       |    2.580 |   -4.615 |     9.774 | 3.640 |     0.709 | 0.480 | 0.480 | ns           |

| .y.       | grupo        | Zona   | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Rural  | pre    | pos    |    0.822 |   -6.006 |     7.650 | 3.469 |     0.237 | 0.813 | 0.813 | ns           |
| score.tde | Controle     | Urbana | pre    | pos    |    5.267 |   -6.560 |    17.093 | 6.009 |     0.877 | 0.381 | 0.381 | ns           |
| score.tde | Experimental | Rural  | pre    | pos    |   -0.491 |   -6.558 |     5.576 | 3.082 |    -0.159 | 0.873 | 0.873 | ns           |
| score.tde | Experimental | Urbana | pre    | pos    |   -2.419 |  -10.646 |     5.807 | 4.180 |    -0.579 | 0.563 | 0.563 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-45-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-46-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-48-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-50-1.png)<!-- -->

### factores: **grupo:Cor.Raca**

| var           | grupo        | Cor.Raca |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:---------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | Branca   |   8 |  54.750 |    2.839 |    56.000 |      3.495 |  45.582 |    3.837 |
| score.tde.pos | Controle     | Parda    |  50 |  40.940 |    2.524 |    40.000 |      2.465 |  40.497 |    1.505 |
| score.tde.pos | Experimental | Branca   |   9 |  52.333 |    3.902 |    52.222 |      4.853 |  43.714 |    3.600 |
| score.tde.pos | Experimental | Parda    |  49 |  38.082 |    2.701 |    37.082 |      2.667 |  39.838 |    1.533 |

| .y.           | grupo        | Cor.Raca | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------|:-------------|:---------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde.pos |              | Branca   | Controle | Experimental |    1.868 |   -8.380 |    12.115 | 5.171 |     0.361 | 0.719 | 0.719 | ns           |
| score.tde.pos |              | Parda    | Controle | Experimental |    0.659 |   -3.591 |     4.909 | 2.145 |     0.307 | 0.759 | 0.759 | ns           |
| score.tde.pre |              | Branca   | Controle | Experimental |    2.417 |  -14.435 |    19.269 | 8.505 |     0.284 | 0.777 | 0.777 | ns           |
| score.tde.pre |              | Parda    | Controle | Experimental |    2.858 |   -4.113 |     9.830 | 3.519 |     0.812 | 0.418 | 0.418 | ns           |
| score.tde.pos | Controle     |          | Branca   | Parda        |    5.085 |   -3.095 |    13.265 | 4.128 |     1.232 | 0.221 | 0.221 | ns           |
| score.tde.pos | Experimental |          | Branca   | Parda        |    3.876 |   -3.939 |    11.692 | 3.944 |     0.983 | 0.328 | 0.328 | ns           |
| score.tde.pre | Controle     |          | Branca   | Parda        |   13.810 |    0.604 |    27.016 | 6.665 |     2.072 | 0.041 | 0.041 | \*           |
| score.tde.pre | Experimental |          | Branca   | Parda        |   14.252 |    1.674 |    26.829 | 6.348 |     2.245 | 0.027 | 0.027 | \*           |

| .y.       | grupo        | Cor.Raca | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:---------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | Branca   | pre    | pos    |   -1.250 |  -18.457 |    15.957 | 8.732 |    -0.143 | 0.886 | 0.886 | ns           |
| score.tde | Controle     | Parda    | pre    | pos    |    0.940 |   -5.943 |     7.823 | 3.493 |     0.269 | 0.788 | 0.788 | ns           |
| score.tde | Experimental | Branca   | pre    | pos    |    0.111 |  -16.112 |    16.334 | 8.232 |     0.013 | 0.989 | 0.989 | ns           |
| score.tde | Experimental | Parda    | pre    | pos    |    1.000 |   -5.953 |     7.953 | 3.528 |     0.283 | 0.777 | 0.777 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-58-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-59-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-61-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-63-1.png)<!-- -->

### factores: **grupo:score.tde.quintile**

| var           | grupo        | score.tde.quintile |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:--------------|:-------------|:-------------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| score.tde.pos | Controle     | 1st quintile       |  14 |   9.214 |    1.430 |    15.286 |      2.508 |  49.075 |    5.032 |
| score.tde.pos | Controle     | 2nd quintile       |   7 |  25.143 |    1.405 |    26.857 |      3.135 |  45.563 |    4.184 |
| score.tde.pos | Controle     | 3rd quintile       |   7 |  40.571 |    0.869 |    39.857 |      4.361 |  43.952 |    3.435 |
| score.tde.pos | Controle     | 4th quintile       |  36 |  47.306 |    0.473 |    47.444 |      1.254 |  45.162 |    1.525 |
| score.tde.pos | Controle     | 5th quintile       |  57 |  59.456 |    0.782 |    56.579 |      1.331 |  42.790 |    2.162 |
| score.tde.pos | Experimental | 1st quintile       |  12 |   9.000 |    1.822 |    14.500 |      3.031 |  48.493 |    5.150 |
| score.tde.pos | Experimental | 2nd quintile       |  21 |  26.238 |    0.762 |    32.619 |      2.009 |  50.287 |    3.031 |
| score.tde.pos | Experimental | 3rd quintile       |  32 |  38.375 |    0.585 |    39.969 |      2.263 |  46.144 |    1.781 |
| score.tde.pos | Experimental | 4th quintile       |  32 |  46.938 |    0.453 |    48.250 |      1.229 |  46.316 |    1.607 |
| score.tde.pos | Experimental | 5th quintile       |  50 |  59.240 |    0.727 |    56.960 |      1.555 |  43.376 |    2.185 |

| .y.           | grupo        | score.tde.quintile | group1       | group2       | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------|:-------------|:-------------------|:-------------|:-------------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| score.tde.pos |              | 1st quintile       | Controle     | Experimental |    0.583 |   -6.371 |     7.536 | 3.531 |     0.165 | 0.869   | 0.869   | ns           |
| score.tde.pos |              | 2nd quintile       | Controle     | Experimental |   -4.725 |  -12.443 |     2.994 | 3.920 |    -1.205 | 0.229   | 0.229   | ns           |
| score.tde.pos |              | 3rd quintile       | Controle     | Experimental |   -2.192 |   -9.586 |     5.203 | 3.755 |    -0.584 | 0.56    | 0.56    | ns           |
| score.tde.pos |              | 4th quintile       | Controle     | Experimental |   -1.154 |   -5.449 |     3.141 | 2.181 |    -0.529 | 0.597   | 0.597   | ns           |
| score.tde.pos |              | 5th quintile       | Controle     | Experimental |   -0.586 |   -4.011 |     2.839 | 1.739 |    -0.337 | 0.737   | 0.737   | ns           |
| score.tde.pre |              | 1st quintile       | Controle     | Experimental |    0.214 |   -3.277 |     3.706 | 1.773 |     0.121 | 0.904   | 0.904   | ns           |
| score.tde.pre |              | 2nd quintile       | Controle     | Experimental |   -1.095 |   -4.969 |     2.778 | 1.967 |    -0.557 | 0.578   | 0.578   | ns           |
| score.tde.pre |              | 3rd quintile       | Controle     | Experimental |    2.196 |   -1.507 |     5.900 | 1.881 |     1.168 | 0.244   | 0.244   | ns           |
| score.tde.pre |              | 4th quintile       | Controle     | Experimental |    0.368 |   -1.788 |     2.524 | 1.095 |     0.336 | 0.737   | 0.737   | ns           |
| score.tde.pre |              | 5th quintile       | Controle     | Experimental |    0.216 |   -1.504 |     1.936 | 0.873 |     0.247 | 0.805   | 0.805   | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 2nd quintile |    3.513 |   -5.546 |    12.572 | 4.600 |     0.764 | 0.446   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 3rd quintile |    5.123 |   -6.082 |    16.329 | 5.690 |     0.900 | 0.369   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 4th quintile |    3.913 |   -6.926 |    14.752 | 5.504 |     0.711 | 0.478   | 1       | ns           |
| score.tde.pos | Controle     |                    | 1st quintile | 5th quintile |    6.285 |   -7.066 |    19.637 | 6.780 |     0.927 | 0.355   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 3rd quintile |    1.611 |   -8.560 |    11.782 | 5.165 |     0.312 | 0.755   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 4th quintile |    0.401 |   -8.687 |     9.488 | 4.615 |     0.087 | 0.931   | 1       | ns           |
| score.tde.pos | Controle     |                    | 2nd quintile | 5th quintile |    2.772 |   -8.195 |    13.740 | 5.570 |     0.498 | 0.619   | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 4th quintile |   -1.210 |   -8.694 |     6.274 | 3.800 |    -0.318 | 0.75    | 1       | ns           |
| score.tde.pos | Controle     |                    | 3rd quintile | 5th quintile |    1.162 |   -7.286 |     9.610 | 4.290 |     0.271 | 0.787   | 1       | ns           |
| score.tde.pos | Controle     |                    | 4th quintile | 5th quintile |    2.372 |   -2.420 |     7.164 | 2.433 |     0.975 | 0.331   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 2nd quintile |   -1.795 |   -9.451 |     5.862 | 3.888 |    -0.462 | 0.645   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 3rd quintile |    2.349 |   -6.991 |    11.689 | 4.743 |     0.495 | 0.621   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 4th quintile |    2.176 |   -8.850 |    13.203 | 5.599 |     0.389 | 0.698   | 1       | ns           |
| score.tde.pos | Experimental |                    | 1st quintile | 5th quintile |    5.117 |   -8.401 |    18.635 | 6.865 |     0.745 | 0.457   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 3rd quintile |    4.144 |   -1.637 |     9.925 | 2.936 |     1.412 | 0.159   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 4th quintile |    3.971 |   -3.113 |    11.055 | 3.597 |     1.104 | 0.271   | 1       | ns           |
| score.tde.pos | Experimental |                    | 2nd quintile | 5th quintile |    6.911 |   -2.365 |    16.188 | 4.710 |     1.467 | 0.144   | 1       | ns           |
| score.tde.pos | Experimental |                    | 3rd quintile | 4th quintile |   -0.173 |   -5.061 |     4.716 | 2.482 |    -0.070 | 0.945   | 1       | ns           |
| score.tde.pos | Experimental |                    | 3rd quintile | 5th quintile |    2.768 |   -3.710 |     9.245 | 3.289 |     0.841 | 0.401   | 1       | ns           |
| score.tde.pos | Experimental |                    | 4th quintile | 5th quintile |    2.940 |   -2.063 |     7.944 | 2.541 |     1.157 | 0.248   | 1       | ns           |
| score.tde.pre | Controle     |                    | 1st quintile | 2nd quintile |  -15.929 |  -20.037 |   -11.820 | 2.086 |    -7.635 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 3rd quintile |  -31.357 |  -35.466 |   -27.249 | 2.086 |   -15.029 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 4th quintile |  -38.091 |  -40.887 |   -35.296 | 1.420 |   -26.832 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 1st quintile | 5th quintile |  -50.242 |  -52.889 |   -47.594 | 1.344 |   -37.371 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 3rd quintile |  -15.429 |  -20.173 |   -10.684 | 2.409 |    -6.404 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 4th quintile |  -22.163 |  -25.829 |   -18.496 | 1.862 |   -11.904 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 2nd quintile | 5th quintile |  -34.313 |  -37.868 |   -30.759 | 1.805 |   -19.009 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 3rd quintile | 4th quintile |   -6.734 |  -10.400 |    -3.068 | 1.862 |    -3.617 | \<0.001 | 0.004   | \*\*         |
| score.tde.pre | Controle     |                    | 3rd quintile | 5th quintile |  -18.885 |  -22.439 |   -15.330 | 1.805 |   -10.462 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Controle     |                    | 4th quintile | 5th quintile |  -12.151 |  -14.040 |   -10.261 | 0.960 |   -12.663 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 2nd quintile |  -17.238 |  -20.450 |   -14.026 | 1.631 |   -10.569 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 3rd quintile |  -29.375 |  -32.379 |   -26.371 | 1.526 |   -19.254 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 4th quintile |  -37.938 |  -40.942 |   -34.933 | 1.526 |   -24.866 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 1st quintile | 5th quintile |  -50.240 |  -53.093 |   -47.387 | 1.449 |   -34.676 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 3rd quintile |  -12.137 |  -14.629 |    -9.644 | 1.266 |    -9.589 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 4th quintile |  -20.699 |  -23.192 |   -18.207 | 1.266 |   -16.353 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 2nd quintile | 5th quintile |  -33.002 |  -35.310 |   -30.694 | 1.172 |   -28.158 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 4th quintile |   -8.563 |  -10.781 |    -6.344 | 1.127 |    -7.599 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 3rd quintile | 5th quintile |  -20.865 |  -22.874 |   -18.856 | 1.020 |   -20.449 | \<0.001 | \<0.001 | \*\*\*\*     |
| score.tde.pre | Experimental |                    | 4th quintile | 5th quintile |  -12.303 |  -14.312 |   -10.293 | 1.020 |   -12.057 | \<0.001 | \<0.001 | \*\*\*\*     |

| .y.       | grupo        | score.tde.quintile | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----------|:-------------|:-------------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| score.tde | Controle     | 1st quintile       | pre    | pos    |   -6.071 |  -11.794 |    -0.349 | 2.913 |    -2.084 | 0.038 | 0.038 | \*           |
| score.tde | Controle     | 2nd quintile       | pre    | pos    |   -1.714 |   -9.807 |     6.378 | 4.119 |    -0.416 | 0.677 | 0.677 | ns           |
| score.tde | Controle     | 3rd quintile       | pre    | pos    |    0.714 |   -7.378 |     8.807 | 4.119 |     0.173 | 0.862 | 0.862 | ns           |
| score.tde | Controle     | 4th quintile       | pre    | pos    |   -0.139 |   -3.707 |     3.430 | 1.816 |    -0.076 | 0.939 | 0.939 | ns           |
| score.tde | Controle     | 5th quintile       | pre    | pos    |    2.877 |    0.041 |     5.713 | 1.444 |     1.993 | 0.047 | 0.047 | \*           |
| score.tde | Experimental | 1st quintile       | pre    | pos    |   -5.500 |  -11.681 |     0.681 | 3.146 |    -1.748 | 0.081 | 0.081 | ns           |
| score.tde | Experimental | 2nd quintile       | pre    | pos    |   -6.381 |  -11.053 |    -1.709 | 2.378 |    -2.683 | 0.008 | 0.008 | \*\*         |
| score.tde | Experimental | 3rd quintile       | pre    | pos    |   -1.594 |   -5.379 |     2.191 | 1.927 |    -0.827 | 0.408 | 0.408 | ns           |
| score.tde | Experimental | 4th quintile       | pre    | pos    |   -1.313 |   -5.097 |     2.472 | 1.927 |    -0.681 | 0.496 | 0.496 | ns           |
| score.tde | Experimental | 5th quintile       | pre    | pos    |    2.280 |   -0.748 |     5.308 | 1.541 |     1.479 | 0.140 | 0.140 | ns           |

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-71-1.png)<!-- -->

    ## Scale for colour is already present.
    ## Adding another scale for colour, which will replace the existing scale.

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-72-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-74-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/wordgen-score.tde-Serie-9-ano_files/figure-gfm/unnamed-chunk-76-1.png)<!-- -->
