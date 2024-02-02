ANCOVA in Palavras Corretas (1 Min) (Palavras Corretas (1 Min))
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
  Palavras Corretas (1 Min) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Palavras Corretas (1 Min) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                 |   n |    mean | median | min | max |     sd |     se |      ci |   iqr |
|:-------------|:-----|:-------|:---------|:------|:-------------------------|----:|--------:|-------:|----:|----:|-------:|-------:|--------:|------:|
| Controle     | F    |        |          |       | TFL.corretas.per.min.pre |  11 | 102.636 |  102.0 |  97 | 110 |  4.273 |  1.288 |   2.870 |  6.00 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pre |  11 | 101.727 |   99.0 |  97 | 110 |  4.777 |  1.440 |   3.209 |  7.50 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pre |   5 | 102.400 |  101.0 |  96 | 110 |  5.941 |  2.657 |   7.377 |  9.00 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pre |   4 |  99.250 |   96.5 |  95 | 109 |  6.652 |  3.326 |  10.585 |  5.75 |
| Controle     | F    |        |          |       | TFL.corretas.per.min.pos |  11 | 127.727 |  120.0 |  91 | 164 | 20.352 |  6.136 |  13.673 | 24.00 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pos |  11 | 125.000 |  118.0 |  90 | 171 | 25.710 |  7.752 |  17.272 | 29.00 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pos |   5 | 139.200 |  139.0 | 102 | 190 | 34.157 | 15.275 |  42.412 | 35.00 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pos |   4 | 105.250 |  107.5 |  94 | 112 |  7.890 |  3.945 |  12.555 |  6.75 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pre |  12 | 102.083 |  100.0 |  97 | 110 |  4.719 |  1.362 |   2.998 |  5.75 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pre |   3 | 102.000 |   99.0 |  98 | 109 |  6.083 |  3.512 |  15.110 |  5.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   7 | 102.429 |  102.0 |  97 | 108 |  3.994 |  1.510 |   3.694 |  5.00 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pre |   6 | 100.333 |   98.0 |  95 | 109 |  6.121 |  2.499 |   6.424 |  9.00 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pre |   2 | 103.000 |  103.0 |  96 | 110 |  9.899 |  7.000 |  88.943 |  7.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   1 | 101.000 |  101.0 | 101 | 101 |        |        |         |  0.00 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pos |  12 | 118.083 |  117.5 |  91 | 135 | 11.147 |  3.218 |   7.083 |  9.75 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pos |   3 | 154.667 |  151.0 | 149 | 164 |  8.145 |  4.702 |  20.232 |  7.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   7 | 128.429 |  120.0 |  90 | 171 | 31.722 | 11.990 |  29.338 | 50.00 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pos |   6 | 106.333 |  107.5 |  94 | 115 |  7.554 |  3.084 |   7.928 |  8.25 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pos |   2 | 170.000 |  170.0 | 150 | 190 | 28.284 | 20.000 | 254.124 | 20.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   1 | 139.000 |  139.0 | 139 | 139 |        |        |         |  0.00 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pre |   3 | 103.667 |  104.0 | 101 | 106 |  2.517 |  1.453 |   6.252 |  2.50 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pre |   9 | 101.556 |   99.0 |  97 | 110 |  5.247 |  1.749 |   4.033 |  6.00 |
| Controle     |      |        | Preta    |       | TFL.corretas.per.min.pre |   1 |  99.000 |   99.0 |  99 |  99 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   8 | 103.125 |  103.0 |  98 | 109 |  4.549 |  1.608 |   3.803 |  8.50 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pre |   2 |  95.500 |   95.5 |  95 |  96 |  0.707 |  0.500 |   6.353 |  0.50 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pre |   3 | 104.667 |  107.0 |  98 | 109 |  5.859 |  3.383 |  14.556 |  5.50 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pre |   2 |  96.500 |   96.5 |  95 |  98 |  2.121 |  1.500 |  19.059 |  1.50 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   2 | 105.500 |  105.5 | 101 | 110 |  6.364 |  4.500 |  57.178 |  4.50 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pos |   3 | 125.000 |  120.0 | 120 | 135 |  8.660 |  5.000 |  21.513 |  7.50 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pos |   1 | 115.000 |  115.0 | 115 | 115 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pos |   9 | 114.000 |  117.0 |  90 | 151 | 19.590 |  6.530 |  15.058 | 26.00 |
| Controle     |      |        | Preta    |       | TFL.corretas.per.min.pos |   1 | 118.000 |  118.0 | 118 | 118 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   8 | 143.250 |  148.0 | 110 | 171 | 23.026 |  8.141 |  19.251 | 38.25 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pos |   2 | 129.500 |  129.5 | 109 | 150 | 28.991 | 20.500 | 260.477 | 20.50 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pos |   3 | 109.667 |  112.0 | 102 | 115 |  6.807 |  3.930 |  16.909 |  6.50 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pos |   2 | 100.000 |  100.0 |  94 | 106 |  8.485 |  6.000 |  76.237 |  6.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   2 | 164.500 |  164.5 | 139 | 190 | 36.062 | 25.500 | 324.008 | 25.50 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pre |   9 | 101.778 |   99.0 |  97 | 110 |  4.969 |  1.656 |   3.820 |  4.00 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pre |   6 | 102.500 |  103.0 |  97 | 107 |  3.937 |  1.607 |   4.132 |  5.75 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pre |   2 | 103.000 |  103.0 |  98 | 108 |  7.071 |  5.000 |  63.531 |  5.00 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pre |   5 | 102.200 |  102.0 |  97 | 109 |  4.658 |  2.083 |   5.784 |  5.00 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pre |   4 |  99.750 |   97.0 |  95 | 110 |  6.946 |  3.473 |  11.053 |  5.25 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pre |   1 |  98.000 |   98.0 |  98 |  98 |        |        |         |  0.00 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pre |   4 | 103.000 |  104.0 |  95 | 109 |  6.325 |  3.162 |  10.064 |  8.00 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pos |   9 | 119.222 |  117.0 |  91 | 151 | 17.188 |  5.729 |  13.212 | 18.00 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pos |   6 | 118.167 |  120.0 |  99 | 127 |  9.988 |  4.078 |  10.482 |  5.25 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pos |   2 | 160.000 |  160.0 | 149 | 171 | 15.556 | 11.000 | 139.768 | 11.00 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pos |   5 | 135.600 |  147.0 |  90 | 164 | 32.161 | 14.383 |  39.933 | 47.00 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pos |   4 | 135.000 |  128.0 |  94 | 190 | 43.863 | 21.932 |  69.796 | 57.00 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pos |   1 | 102.000 |  102.0 | 102 | 102 |        |        |         |  0.00 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pos |   4 | 118.750 |  113.5 | 109 | 139 | 13.720 |  6.860 |  21.832 |  9.75 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos |  31 |  0.2131031 | -1.1602409 | YES      | 0.9430875 | Shapiro-Wilk | 0.1004708 | ns       | YES       |
| TFL.corretas.per.min.pos |  23 | -0.3835912 | -0.2322531 | YES      | 0.9637890 | Shapiro-Wilk | 0.5439562 | ns       | YES       |
| TFL.corretas.per.min.pos |  21 |  0.4595611 |  0.1856206 | YES      | 0.9589675 | Shapiro-Wilk | 0.4955748 | ns       | YES       |
| TFL.corretas.per.min.pos |  31 | -0.0218313 | -0.7577093 | YES      | 0.9795468 | Shapiro-Wilk | 0.7999583 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  31 |       3 |      27 |  1.039885 | 0.3907697 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  31 |       3 |      23 |  0.191000 | 0.9020000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  23 |       3 |      19 |  1.880925 | 0.1670785 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  23 |       3 |      15 |  1.761000 | 0.1980000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  21 |       6 |      14 |  1.512085 | 0.2447623 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  21 |       4 |       9 |  0.805000 | 0.5520000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  31 |       6 |      24 |  1.908398 | 0.1206362 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  31 |       5 |      18 |  2.624000 | 0.0600000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                   | DFn | DFd |      SSn |       SSd |      F | p       |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|-------:|:--------|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  28 | 2552.999 | 15654.981 |  4.566 | 0.041   | 0.140 | \*     |
| 2   | grupo                    |   1 |  28 |    0.001 | 15654.981 |  0.000 | 0.999   | 0.000 |        |
| 4   | Sexo                     |   1 |  28 |  606.659 | 15048.323 |  1.129 | 0.297   | 0.039 |        |
| 6   | Zona                     |   1 |  20 | 8130.465 |  2754.329 | 59.038 | \<0.001 | 0.747 | \*     |
| 8   | Cor.Raca                 |   3 |  16 |  921.895 |  4573.139 |  1.075 | 0.388   | 0.168 |        |
| 10  | Serie                    |   3 |  26 | 2764.868 | 12890.113 |  1.859 | 0.161   | 0.177 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  26 | 1755.256 | 13850.476 | 3.295 | 0.081 | 0.112 |        |
| 4   | grupo:Sexo               |   1 |  26 | 1194.830 | 13850.476 | 2.243 | 0.146 | 0.079 |        |
| 8   | grupo:Zona               |   1 |  18 |  553.335 |  2101.888 | 4.739 | 0.043 | 0.208 | \*     |
| 12  | grupo:Cor.Raca           |   2 |  13 |  242.987 |  4219.367 | 0.374 | 0.695 | 0.054 |        |
| 16  | grupo:Serie              |   2 |  23 | 1850.814 | 11032.915 | 1.929 | 0.168 | 0.144 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  22 | 102.182 |    0.948 |   126.364 |      4.833 | 125.714 |    5.050 |
| TFL.corretas.per.min.pos | Experimental |   9 | 101.000 |    2.028 |   124.111 |     10.148 | 125.700 |    7.917 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |    0.014 |  -19.271 |    19.298 | 9.415 |     0.001 | 0.999 | 0.999 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |    1.182 |   -2.826 |     5.190 | 1.960 |     0.603 | 0.551 | 0.551 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |  -24.182 |  -35.082 |   -13.281 | 5.446 |    -4.441 | \<0.001 | \<0.001 | \*\*\*\*     |
| TFL.corretas.per.min | Experimental | pre    | pos    |  -23.111 |  -40.154 |    -6.069 | 8.514 |    -2.714 | 0.009   | 0.009   | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |  11 | 102.636 |    1.288 |   127.727 |      6.136 | 126.950 |    7.311 |
| TFL.corretas.per.min.pos | Controle     | M    |  11 | 101.727 |    1.440 |   125.000 |      7.752 | 125.929 |    7.316 |
| TFL.corretas.per.min.pos | Experimental | F    |   5 | 102.400 |    2.657 |   139.200 |     15.275 | 138.866 |   10.827 |

|     | .y.                      | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:----|:-------------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| 1   | TFL.corretas.per.min.pos |          | F    | Controle | Experimental |  -11.916 |  -38.929 |    15.096 | 13.058 |    -0.913 | 0.371 | 0.371 | ns           |
| 3   | TFL.corretas.per.min.pre |          | F    | Controle | Experimental |    0.236 |   -5.102 |     5.575 |  2.587 |     0.091 | 0.928 | 0.928 | ns           |
| 5   | TFL.corretas.per.min.pos | Controle |      | F        | M            |    1.022 |  -20.418 |    22.461 | 10.364 |     0.099 | 0.922 | 0.922 | ns           |
| 7   | TFL.corretas.per.min.pre | Controle |      | F        | M            |    0.909 |   -3.311 |     5.129 |  2.045 |     0.445 | 0.661 | 0.661 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -25.091 |  -40.729 |    -9.452 |  7.778 |    -3.226 | 0.002 | 0.002 | \*\*         |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |  -23.273 |  -38.911 |    -7.634 |  7.778 |    -2.992 | 0.004 | 0.004 | \*\*         |
| TFL.corretas.per.min | Experimental | F    | pre    | pos    |  -36.800 |  -59.996 |   -13.604 | 11.537 |    -3.190 | 0.003 | 0.003 | \*\*         |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-4th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
