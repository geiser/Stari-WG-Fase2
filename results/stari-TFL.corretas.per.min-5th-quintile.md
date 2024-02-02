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
| Controle     | F    |        |          |       | TFL.corretas.per.min.pre |   7 | 123.571 |  115.0 | 112 | 154 | 15.967 |  6.035 |  14.767 | 15.00 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pre |  11 | 122.364 |  120.0 | 115 | 137 |  7.762 |  2.340 |   5.215 | 10.00 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pre |   6 | 118.167 |  116.5 | 112 | 132 |  7.250 |  2.960 |   7.609 |  4.75 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pre |   6 | 118.500 |  116.5 | 112 | 134 |  7.817 |  3.191 |   8.203 |  1.75 |
| Controle     | F    |        |          |       | TFL.corretas.per.min.pos |   7 | 138.571 |  147.0 |  87 | 184 | 37.179 | 14.052 |  34.385 | 56.00 |
| Controle     | M    |        |          |       | TFL.corretas.per.min.pos |  11 | 123.636 |  121.0 |  90 | 176 | 21.759 |  6.561 |  14.618 | 17.50 |
| Experimental | F    |        |          |       | TFL.corretas.per.min.pos |   6 | 133.000 |  138.0 |  99 | 150 | 18.078 |  7.380 |  18.971 | 11.75 |
| Experimental | M    |        |          |       | TFL.corretas.per.min.pos |   6 | 141.667 |  131.5 | 116 | 184 | 27.164 | 11.090 |  28.507 | 35.00 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pre |  14 | 122.714 |  118.5 | 112 | 154 | 11.938 |  3.191 |   6.893 | 12.25 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pre |   1 | 123.000 |  123.0 | 123 | 123 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   3 | 123.333 |  118.0 | 115 | 137 | 11.930 |  6.888 |  29.637 | 11.00 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pre |   6 | 118.167 |  116.5 | 112 | 134 |  8.035 |  3.280 |   8.433 |  3.25 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pre |   1 | 132.000 |  132.0 | 132 | 132 |        |        |         |  0.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   5 | 115.800 |  116.0 | 112 | 119 |  2.588 |  1.158 |   3.214 |  2.00 |
| Controle     |      | Rural  |          |       | TFL.corretas.per.min.pos |  14 | 120.429 |  118.0 |  87 | 184 | 24.434 |  6.530 |  14.108 | 20.25 |
| Controle     |      | Urbana |          |       | TFL.corretas.per.min.pos |   1 | 176.000 |  176.0 | 176 | 176 |        |        |         |  0.00 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   3 | 156.000 |  156.0 | 136 | 176 | 20.000 | 11.547 |  49.683 | 20.00 |
| Experimental |      | Rural  |          |       | TFL.corretas.per.min.pos |   6 | 135.667 |  135.5 |  99 | 184 | 27.969 | 11.418 |  29.352 | 14.25 |
| Experimental |      | Urbana |          |       | TFL.corretas.per.min.pos |   1 | 129.000 |  129.0 | 129 | 129 |        |        |         |  0.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   5 | 141.000 |  144.0 | 116 | 166 | 19.261 |  8.614 |  23.916 | 21.00 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pre |   4 | 122.000 |  118.0 | 115 | 137 | 10.231 |  5.115 |  16.279 |  8.50 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pre |   1 | 154.000 |  154.0 | 154 | 154 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pre |  10 | 119.400 |  117.5 | 112 | 134 |  7.230 |  2.286 |   5.172 |  5.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pre |   3 | 125.000 |  123.0 | 115 | 137 | 11.136 |  6.429 |  27.662 | 11.00 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pre |   2 | 117.000 |  117.0 | 117 | 117 |  0.000 |  0.000 |   0.000 |  0.00 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pre |   1 | 113.000 |  113.0 | 113 | 113 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pre |   3 | 120.667 |  116.0 | 112 | 134 | 11.719 |  6.766 |  29.111 | 11.00 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pre |   6 | 118.500 |  116.5 | 112 | 132 |  7.007 |  2.861 |   7.354 |  3.25 |
| Controle     |      |        | Branca   |       | TFL.corretas.per.min.pos |   4 | 111.750 |  114.5 |  90 | 128 | 15.966 |  7.983 |  25.406 | 13.25 |
| Controle     |      |        | Indígena |       | TFL.corretas.per.min.pos |   1 | 147.000 |  147.0 | 147 | 147 |        |        |         |  0.00 |
| Controle     |      |        | Parda    |       | TFL.corretas.per.min.pos |  10 | 122.800 |  120.0 |  87 | 184 | 26.195 |  8.284 |  18.739 | 23.50 |
| Controle     |      |        |          |       | TFL.corretas.per.min.pos |   3 | 169.333 |  176.0 | 156 | 176 | 11.547 |  6.667 |  28.684 | 10.00 |
| Experimental |      |        | Branca   |       | TFL.corretas.per.min.pos |   2 | 130.000 |  130.0 | 121 | 139 | 12.728 |  9.000 | 114.356 |  9.00 |
| Experimental |      |        | Indígena |       | TFL.corretas.per.min.pos |   1 | 137.000 |  137.0 | 137 | 137 |        |        |         |  0.00 |
| Experimental |      |        | Parda    |       | TFL.corretas.per.min.pos |   3 | 125.667 |  134.0 |  99 | 144 | 23.629 | 13.642 |  58.698 | 22.50 |
| Experimental |      |        |          |       | TFL.corretas.per.min.pos |   6 | 145.667 |  139.5 | 116 | 184 | 25.835 | 10.547 |  27.113 | 33.00 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pre |   4 | 125.250 |  125.5 | 113 | 137 | 13.574 |  6.787 |  21.599 | 23.25 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pre |   4 | 126.250 |  118.0 | 115 | 154 | 18.626 |  9.313 |  29.638 | 12.75 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pre |   3 | 125.000 |  123.0 | 118 | 134 |  8.185 |  4.726 |  20.334 |  8.00 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pre |   7 | 118.571 |  117.0 | 112 | 130 |  5.769 |  2.181 |   5.336 |  4.50 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pre |   3 | 113.667 |  113.0 | 112 | 116 |  2.082 |  1.202 |   5.171 |  2.00 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pre |   3 | 117.000 |  117.0 | 117 | 117 |  0.000 |  0.000 |   0.000 |  0.00 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pre |   4 | 118.750 |  115.5 | 112 | 132 |  8.995 |  4.498 |  14.314 |  5.75 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pre |   2 | 126.500 |  126.5 | 119 | 134 | 10.607 |  7.500 |  95.297 |  7.50 |
| Controle     |      |        |          | 6 ano | TFL.corretas.per.min.pos |   4 | 118.500 |  115.5 |  87 | 156 | 28.525 | 14.262 |  45.389 | 22.50 |
| Controle     |      |        |          | 7 ano | TFL.corretas.per.min.pos |   4 | 137.000 |  137.0 |  90 | 184 | 39.234 | 19.617 |  62.431 | 38.50 |
| Controle     |      |        |          | 8 ano | TFL.corretas.per.min.pos |   3 | 148.333 |  136.0 | 133 | 176 | 24.007 | 13.860 |  59.637 | 21.50 |
| Controle     |      |        |          | 9 ano | TFL.corretas.per.min.pos |   7 | 123.286 |  117.0 | 101 | 176 | 24.925 |  9.421 |  23.051 | 14.50 |
| Experimental |      |        |          | 6 ano | TFL.corretas.per.min.pos |   3 | 140.000 |  137.0 |  99 | 184 | 42.579 | 24.583 | 105.773 | 42.50 |
| Experimental |      |        |          | 7 ano | TFL.corretas.per.min.pos |   3 | 129.667 |  129.0 | 121 | 139 |  9.018 |  5.207 |  22.403 |  9.00 |
| Experimental |      |        |          | 8 ano | TFL.corretas.per.min.pos |   4 | 138.750 |  136.5 | 116 | 166 | 21.469 | 10.734 |  34.162 | 23.75 |
| Experimental |      |        |          | 9 ano | TFL.corretas.per.min.pos |   2 | 142.000 |  142.0 | 134 | 150 | 11.314 |  8.000 | 101.650 |  8.00 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                      |   n |  skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:-------------------------|----:|----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| TFL.corretas.per.min.pos |  30 | 0.3669947 | -0.4950359 | YES      | 0.9663818 | Shapiro-Wilk | 0.4454777 | ns       | YES       |
| TFL.corretas.per.min.pos |  22 | 1.1963635 |  1.6103604 | NO       | 0.8605346 | Shapiro-Wilk | 0.0052434 | \*\*     | NO        |
| TFL.corretas.per.min.pos |  21 | 1.1147338 |  1.9458818 | NO       | 0.9100091 | Shapiro-Wilk | 0.0549330 | ns       | YES       |
| TFL.corretas.per.min.pos |  30 | 0.5393579 | -0.2421235 | NO       | 0.9451105 | Shapiro-Wilk | 0.1249073 | ns       | YES       |

## Assumption: Homogeneity of data distribution

| var                      | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:-------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  30 |       3 |      26 | 1.1119660 | 0.3621794 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  30 |       3 |      22 | 0.3930000 | 0.7590000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  22 |       3 |      18 | 0.6501537 | 0.5930597 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  22 |       1 |      16 | 0.9590000 | 0.3420000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  21 |       5 |      15 | 0.4389221 | 0.8145404 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  21 |       2 |      12 | 0.1090000 | 0.8980000 | ns       |
| TFL.corretas.per.min.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  30 |       7 |      22 | 0.5099562 | 0.8171573 | ns       |
| TFL.corretas.per.min.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  30 |       6 |      15 | 0.9420000 | 0.4950000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                   | DFn | DFd |      SSn |      SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|---------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  27 |  410.361 | 19120.75 | 0.579 | 0.453 | 0.021 |        |
| 2   | grupo                    |   1 |  27 |  635.019 | 19120.75 | 0.897 | 0.352 | 0.032 |        |
| 4   | Sexo                     |   1 |  27 |  263.304 | 19492.46 | 0.365 | 0.551 | 0.013 |        |
| 6   | Zona                     |   1 |  19 | 1164.755 | 13552.02 | 1.633 | 0.217 | 0.079 |        |
| 8   | Cor.Raca                 |   2 |  17 |  499.725 |  8450.69 | 0.503 | 0.614 | 0.056 |        |
| 10  | Serie                    |   3 |  25 | 1103.862 | 18651.91 | 0.493 | 0.690 | 0.056 |        |

## ANCOVA tests for two factors

|     | Effect                   | DFn | DFd |      SSn |       SSd |     F |     p |   ges | p\<.05 |
|:----|:-------------------------|----:|----:|---------:|----------:|------:|------:|------:|:-------|
| 1   | TFL.corretas.per.min.pre |   1 |  25 |  347.091 | 18004.502 | 0.482 | 0.494 | 0.019 |        |
| 4   | grupo:Sexo               |   1 |  25 |  935.364 | 18004.502 | 1.299 | 0.265 | 0.049 |        |
| 8   | grupo:Zona               |   1 |  17 | 2085.703 | 11030.558 | 3.214 | 0.091 | 0.159 |        |
| 12  | grupo:Cor.Raca           |   2 |  14 |  303.599 |  7824.406 | 0.272 | 0.766 | 0.037 |        |
| 16  | grupo:Serie              |   3 |  21 | 1286.223 | 17037.812 | 0.528 | 0.668 | 0.070 |        |

## Pairwise comparisons for one factor: **grupo**

| var                      | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     |  18 | 122.833 |    2.644 |   129.444 |      6.760 | 128.744 |    6.340 |
| TFL.corretas.per.min.pos | Experimental |  12 | 118.333 |    2.076 |   137.333 |      6.483 | 138.385 |    7.805 |

| .y.                      | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos | Controle | Experimental |   -9.641 |  -30.531 |    11.249 | 10.181 |    -0.947 | 0.352 | 0.352 | ns           |
| TFL.corretas.per.min.pre | Controle | Experimental |    4.500 |   -3.006 |    12.006 |  3.664 |     1.228 | 0.230 | 0.230 | ns           |

| .y.                  | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | pre    | pos    |   -6.611 |  -19.918 |     6.696 | 6.643 |    -0.995 | 0.324 | 0.324 | ns           |
| TFL.corretas.per.min | Experimental | pre    | pos    |  -19.000 |  -35.297 |    -2.703 | 8.135 |    -2.335 | 0.023 | 0.023 | \*           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                      | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:-------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| TFL.corretas.per.min.pos | Controle     | F    |   7 | 123.571 |    6.035 |   138.571 |     14.052 | 137.662 |   10.227 |
| TFL.corretas.per.min.pos | Controle     | M    |  11 | 122.364 |    2.340 |   123.636 |      6.561 | 123.159 |    8.121 |
| TFL.corretas.per.min.pos | Experimental | F    |   6 | 118.167 |    2.960 |   133.000 |      7.380 | 134.028 |   11.055 |
| TFL.corretas.per.min.pos | Experimental | M    |   6 | 118.500 |    3.191 |   141.667 |     11.090 | 142.575 |   11.034 |

| .y.                      | grupo        | Sexo | group1   | group2       | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:-------------------------|:-------------|:-----|:---------|:-------------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min.pos |              | F    | Controle | Experimental |    3.634 |  -27.648 |    34.916 | 15.189 |     0.239 | 0.813 | 0.813 | ns           |
| TFL.corretas.per.min.pos |              | M    | Controle | Experimental |  -19.415 |  -47.765 |     8.935 | 13.765 |    -1.410 | 0.171 | 0.171 | ns           |
| TFL.corretas.per.min.pre |              | F    | Controle | Experimental |    5.405 |   -6.250 |    17.060 |  5.670 |     0.953 | 0.349 | 0.349 | ns           |
| TFL.corretas.per.min.pre |              | M    | Controle | Experimental |    3.864 |   -6.768 |    14.496 |  5.172 |     0.747 | 0.462 | 0.462 | ns           |
| TFL.corretas.per.min.pos | Controle     |      | F        | M            |   14.502 |  -12.252 |    41.256 | 12.990 |     1.116 | 0.275 | 0.275 | ns           |
| TFL.corretas.per.min.pos | Experimental |      | F        | M            |   -8.547 |  -40.459 |    23.365 | 15.495 |    -0.552 | 0.586 | 0.586 | ns           |
| TFL.corretas.per.min.pre | Controle     |      | F        | M            |    1.208 |   -8.921 |    11.337 |  4.928 |     0.245 | 0.808 | 0.808 | ns           |
| TFL.corretas.per.min.pre | Experimental |      | F        | M            |   -0.333 |  -12.428 |    11.762 |  5.884 |    -0.057 | 0.955 | 0.955 | ns           |

| .y.                  | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |     se | statistic |     p | p.adj | p.adj.signif |
|:---------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|-------:|----------:|------:|------:|:-------------|
| TFL.corretas.per.min | Controle     | F    | pre    | pos    |  -15.000 |  -36.582 |     6.582 | 10.755 |    -1.395 | 0.169 | 0.169 | ns           |
| TFL.corretas.per.min | Controle     | M    | pre    | pos    |   -1.273 |  -18.489 |    15.943 |  8.580 |    -0.148 | 0.883 | 0.883 | ns           |
| TFL.corretas.per.min | Experimental | F    | pre    | pos    |  -14.833 |  -38.144 |     8.477 | 11.617 |    -1.277 | 0.207 | 0.207 | ns           |
| TFL.corretas.per.min | Experimental | M    | pre    | pos    |  -23.167 |  -46.477 |     0.144 | 11.617 |    -1.994 | 0.051 | 0.051 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-TFL.corretas.per.min-5th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**
