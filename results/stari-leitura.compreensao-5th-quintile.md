ANCOVA in Fluencia Leitora (Compreens�o) (Fluencia Leitora
(Compreens�o))
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
  Fluencia Leitora (Compreens�o) (medido usando pre- e pos-testes).
- ANCOVA test to determine whether there were significant differences in
  Fluencia Leitora (Compreens�o) (measured using pre- and post-tests).

# Descriptive Statistics of Initial Data

| grupo        | Sexo | Zona   | Cor.Raca | Serie | variable                |   n |  mean | median | min | max |    sd |    se |     ci |  iqr |
|:-------------|:-----|:-------|:---------|:------|:------------------------|----:|------:|-------:|----:|----:|------:|------:|-------:|-----:|
| Controle     | F    |        |          |       | leitura.compreensao.pre |   6 | 7.500 |    7.5 |   7 |   8 | 0.548 | 0.224 |  0.575 | 1.00 |
| Controle     | M    |        |          |       | leitura.compreensao.pre |  16 | 7.250 |    7.0 |   7 |   9 | 0.577 | 0.144 |  0.308 | 0.00 |
| Experimental | F    |        |          |       | leitura.compreensao.pre |   2 | 7.500 |    7.5 |   7 |   8 | 0.707 | 0.500 |  6.353 | 0.50 |
| Experimental | M    |        |          |       | leitura.compreensao.pre |   6 | 7.500 |    7.5 |   7 |   8 | 0.548 | 0.224 |  0.575 | 1.00 |
| Controle     | F    |        |          |       | leitura.compreensao.pos |   6 | 4.500 |    6.0 |   0 |   8 | 3.564 | 1.455 |  3.740 | 5.25 |
| Controle     | M    |        |          |       | leitura.compreensao.pos |  16 | 5.125 |    6.0 |   0 |   8 | 2.802 | 0.700 |  1.493 | 2.25 |
| Experimental | F    |        |          |       | leitura.compreensao.pos |   2 | 4.500 |    4.5 |   3 |   6 | 2.121 | 1.500 | 19.059 | 1.50 |
| Experimental | M    |        |          |       | leitura.compreensao.pos |   6 | 6.500 |    7.5 |   3 |   9 | 2.429 | 0.992 |  2.549 | 3.25 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pre |  11 | 7.091 |    7.0 |   7 |   8 | 0.302 | 0.091 |  0.203 | 0.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pre |   2 | 7.000 |    7.0 |   7 |   7 | 0.000 | 0.000 |  0.000 | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |   9 | 7.667 |    8.0 |   7 |   9 | 0.707 | 0.236 |  0.544 | 1.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pre |   6 | 7.667 |    8.0 |   7 |   8 | 0.516 | 0.211 |  0.542 | 0.75 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pre |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Controle     |      | Rural  |          |       | leitura.compreensao.pos |  11 | 5.273 |    6.0 |   0 |   8 | 2.901 | 0.875 |  1.949 | 3.00 |
| Controle     |      | Urbana |          |       | leitura.compreensao.pos |   2 | 3.500 |    3.5 |   0 |   7 | 4.950 | 3.500 | 44.472 | 3.50 |
| Controle     |      |        |          |       | leitura.compreensao.pos |   9 | 4.889 |    6.0 |   0 |   8 | 2.934 | 0.978 |  2.256 | 2.00 |
| Experimental |      | Rural  |          |       | leitura.compreensao.pos |   6 | 5.833 |    6.0 |   3 |   9 | 2.787 | 1.138 |  2.925 | 4.75 |
| Experimental |      | Urbana |          |       | leitura.compreensao.pos |   1 | 6.000 |    6.0 |   6 |   6 |       |       |        | 0.00 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pre |   5 | 7.200 |    7.0 |   7 |   8 | 0.447 | 0.200 |  0.555 | 0.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pre |   6 | 7.167 |    7.0 |   7 |   8 | 0.408 | 0.167 |  0.428 | 0.00 |
| Controle     |      |        |          |       | leitura.compreensao.pre |  11 | 7.455 |    7.0 |   7 |   9 | 0.688 | 0.207 |  0.462 | 1.00 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pre |   4 | 7.500 |    7.5 |   7 |   8 | 0.577 | 0.289 |  0.919 | 1.00 |
| Experimental |      |        |          |       | leitura.compreensao.pre |   4 | 7.500 |    7.5 |   7 |   8 | 0.577 | 0.289 |  0.919 | 1.00 |
| Controle     |      |        | Branca   |       | leitura.compreensao.pos |   5 | 6.800 |    7.0 |   5 |   8 | 1.304 | 0.583 |  1.619 | 2.00 |
| Controle     |      |        | Parda    |       | leitura.compreensao.pos |   6 | 5.167 |    6.0 |   0 |   8 | 2.858 | 1.167 |  2.999 | 2.25 |
| Controle     |      |        |          |       | leitura.compreensao.pos |  11 | 4.000 |    5.0 |   0 |   8 | 3.286 | 0.991 |  2.208 | 6.50 |
| Experimental |      |        | Parda    |       | leitura.compreensao.pos |   4 | 7.250 |    8.0 |   4 |   9 | 2.217 | 1.109 |  3.528 | 1.25 |
| Experimental |      |        |          |       | leitura.compreensao.pos |   4 | 4.750 |    4.5 |   3 |   7 | 2.062 | 1.031 |  3.280 | 3.25 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pre |   3 | 7.333 |    7.0 |   7 |   8 | 0.577 | 0.333 |  1.434 | 0.50 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pre |   6 | 7.167 |    7.0 |   7 |   8 | 0.408 | 0.167 |  0.428 | 0.00 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pre |   7 | 7.286 |    7.0 |   7 |   8 | 0.488 | 0.184 |  0.451 | 0.50 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pre |   6 | 7.500 |    7.0 |   7 |   9 | 0.837 | 0.342 |  0.878 | 0.75 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pre |   5 | 7.600 |    8.0 |   7 |   8 | 0.548 | 0.245 |  0.680 | 1.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pre |   1 | 7.000 |    7.0 |   7 |   7 |       |       |        | 0.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pre |   2 | 7.500 |    7.5 |   7 |   8 | 0.707 | 0.500 |  6.353 | 0.50 |
| Controle     |      |        |          | 6 ano | leitura.compreensao.pos |   3 | 6.667 |    6.0 |   6 |   8 | 1.155 | 0.667 |  2.868 | 1.00 |
| Controle     |      |        |          | 7 ano | leitura.compreensao.pos |   6 | 4.500 |    6.0 |   0 |   8 | 3.564 | 1.455 |  3.740 | 5.25 |
| Controle     |      |        |          | 8 ano | leitura.compreensao.pos |   7 | 4.143 |    5.0 |   0 |   7 | 3.024 | 1.143 |  2.796 | 4.50 |
| Controle     |      |        |          | 9 ano | leitura.compreensao.pos |   6 | 5.500 |    6.0 |   0 |   8 | 3.017 | 1.232 |  3.166 | 2.75 |
| Experimental |      |        |          | 6 ano | leitura.compreensao.pos |   5 | 5.600 |    6.0 |   3 |   8 | 2.510 | 1.122 |  3.117 | 5.00 |
| Experimental |      |        |          | 7 ano | leitura.compreensao.pos |   1 | 9.000 |    9.0 |   9 |   9 |       |       |        | 0.00 |
| Experimental |      |        |          | 8 ano | leitura.compreensao.pos |   2 | 5.500 |    5.5 |   4 |   7 | 2.121 | 1.500 | 19.059 | 1.50 |

# Checking of Assumptions

## Assumption: Normality distribution of data

| var                     |   n |   skewness |   kurtosis | symmetry | statistic | method       |         p | p.signif | normality |
|:------------------------|----:|-----------:|-----------:|:---------|----------:|:-------------|----------:|:---------|:----------|
| leitura.compreensao.pos |  30 | -0.6963417 | -1.0048717 | NO       | 0.8591678 | Shapiro-Wilk | 0.0009706 | \*\*\*   | NO        |
| leitura.compreensao.pos |  20 | -0.5195077 | -0.8911189 | NO       | 0.9356507 | Shapiro-Wilk | 0.1982069 | ns       | YES       |
| leitura.compreensao.pos |  15 | -0.9980650 |  0.1138963 | NO       | 0.8907712 | Shapiro-Wilk | 0.0688855 | ns       | YES       |
| leitura.compreensao.pos |  30 | -0.5828054 | -1.0764306 | NO       | 0.8975620 | Shapiro-Wilk | 0.0073249 | \*\*     | NO        |

## Assumption: Homogeneity of data distribution

| var                     | method         | formula                    |   n | DFn.df1 | DFd.df2 | statistic |         p | p.signif |
|:------------------------|:---------------|:---------------------------|----:|--------:|--------:|----------:|----------:|:---------|
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Sexo`     |  30 |       3 |      26 | 0.0614622 | 0.9796269 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Sexo`     |  30 |       3 |      22 | 2.8260000 | 0.0620000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Zona`     |  20 |       3 |      16 | 0.9087154 | 0.4587244 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Zona`     |  20 |       1 |      14 | 3.1420000 | 0.0980000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Cor.Raca` |  15 |       2 |      12 | 0.3060510 | 0.7419295 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Cor.Raca` |  15 |       2 |       9 | 1.0710000 | 0.3830000 | ns       |
| leitura.compreensao.pos | Levene’s test  | `.res`~`grupo`\*`Serie`    |  30 |       6 |      23 | 0.3386511 | 0.9092403 | ns       |
| leitura.compreensao.pos | Anova’s slopes | `.res`~`grupo`\*`Serie`    |  30 |       5 |      17 | 0.8890000 | 0.5100000 | ns       |

# Computation of ANCOVA test and Pairwise Comparison

## ANCOVA tests for one factor

|     | Effect                  | DFn | DFd |   SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  27 | 7.887 | 215.067 | 0.990 | 0.329 | 0.035 |        |
| 2   | grupo                   |   1 |  27 | 4.375 | 215.067 | 0.549 | 0.465 | 0.020 |        |
| 4   | Sexo                    |   1 |  27 | 8.510 | 210.933 | 1.089 | 0.306 | 0.039 |        |
| 6   | Zona                    |   1 |  17 | 3.750 | 152.383 | 0.418 | 0.526 | 0.024 |        |
| 8   | Cor.Raca                |   1 |  12 | 2.528 |  71.131 | 0.426 | 0.526 | 0.034 |        |
| 10  | Serie                   |   3 |  25 | 8.567 | 210.876 | 0.339 | 0.798 | 0.039 |        |

## ANCOVA tests for two factors

|     | Effect                  | DFn | DFd |    SSn |     SSd |     F |     p |   ges | p\<.05 |
|:----|:------------------------|----:|----:|-------:|--------:|------:|------:|------:|:-------|
| 1   | leitura.compreensao.pre |   1 |  25 |  9.529 | 205.721 | 1.158 | 0.292 | 0.044 |        |
| 4   | grupo:Sexo              |   1 |  25 |  1.365 | 205.721 | 0.166 | 0.687 | 0.007 |        |
| 8   | grupo:Zona              |   1 |  15 |  0.847 | 144.486 | 0.088 | 0.771 | 0.006 |        |
| 12  | grupo:Cor.Raca          |   0 |  11 |        |  62.275 |       |       |       |        |
| 16  | grupo:Serie             |   2 |  22 | 21.483 | 186.810 | 1.265 | 0.302 | 0.103 |        |

## Pairwise comparisons for one factor: **grupo**

| var                     | grupo        |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     |  22 |   7.318 |    0.121 |     4.955 |      0.629 |   5.001 |    0.603 |
| leitura.compreensao.pos | Experimental |   8 |   7.500 |    0.189 |     6.000 |      0.845 |   5.874 |    1.006 |

| .y.                     | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:------------------------|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao.pos | Controle | Experimental |   -0.873 |   -3.290 |     1.544 | 1.178 |    -0.741 | 0.465 | 0.465 | ns           |
| leitura.compreensao.pre | Controle | Experimental |   -0.182 |   -0.655 |     0.292 | 0.231 |    -0.787 | 0.438 | 0.438 | ns           |

| .y.                 | grupo        | group1 | group2 | estimate | conf.low | conf.high |    se | statistic | p       | p.adj   | p.adj.signif |
|:--------------------|:-------------|:-------|:-------|---------:|---------:|----------:|------:|----------:|:--------|:--------|:-------------|
| leitura.compreensao | Controle     | pre    | pos    |    2.364 |    1.135 |     3.592 | 0.613 |     3.854 | \<0.001 | \<0.001 | \*\*\*       |
| leitura.compreensao | Experimental | pre    | pos    |    1.500 |   -0.538 |     3.538 | 1.017 |     1.475 | 0.146   | 0.146   | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-20-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-22-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-24-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-26-1.png)<!-- -->

## Pairwise comparisons for two factors

### factores: **grupo:Sexo**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |   6 |    7.50 |    0.224 |     4.500 |      1.455 |   4.313 |    1.178 |
| leitura.compreensao.pos | Controle     | M    |  16 |    7.25 |    0.144 |     5.125 |      0.700 |   5.266 |    0.724 |
| leitura.compreensao.pos | Experimental | M    |   6 |    7.50 |    0.224 |     6.500 |      0.992 |   6.313 |    1.178 |

|     | .y.                     | grupo    | Sexo | group1   | group2       | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:----|:------------------------|:---------|:-----|:---------|:-------------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| 2   | leitura.compreensao.pos |          | M    | Controle | Experimental |   -1.047 |   -3.925 |     1.831 | 1.395 |    -0.751 | 0.460 | 0.460 | ns           |
| 4   | leitura.compreensao.pre |          | M    | Controle | Experimental |   -0.250 |   -0.808 |     0.308 | 0.271 |    -0.923 | 0.365 | 0.365 | ns           |
| 5   | leitura.compreensao.pos | Controle |      | F        | M            |   -0.953 |   -3.831 |     1.925 | 1.395 |    -0.683 | 0.501 | 0.501 | ns           |
| 7   | leitura.compreensao.pre | Controle |      | F        | M            |    0.250 |   -0.308 |     0.808 | 0.271 |     0.923 | 0.365 | 0.365 | ns           |

| .y.                 | grupo        | Sexo | group1 | group2 | estimate | conf.low | conf.high |    se | statistic |     p | p.adj | p.adj.signif |
|:--------------------|:-------------|:-----|:-------|:-------|---------:|---------:|----------:|------:|----------:|------:|------:|:-------------|
| leitura.compreensao | Controle     | F    | pre    | pos    |    3.000 |    0.574 |     5.426 | 1.208 |     2.484 | 0.016 | 0.016 | \*           |
| leitura.compreensao | Controle     | M    | pre    | pos    |    2.125 |    0.640 |     3.610 | 0.740 |     2.874 | 0.006 | 0.006 | \*\*         |
| leitura.compreensao | Experimental | M    | pre    | pos    |    1.000 |   -1.426 |     3.426 | 1.208 |     0.828 | 0.412 | 0.412 | ns           |

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-34-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-36-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-38-1.png)<!-- -->

![](C:/Users/geise/OneDrive/Workspace/WordGen-Stari-2/results/stari-leitura.compreensao-5th-quintile_files/figure-gfm/unnamed-chunk-40-1.png)<!-- -->

### factores: **grupo:Zona**

### factores: **grupo:Cor.Raca**

### factores: **grupo:Serie**

| var                     | grupo        | Sexo |   n | M (pre) | SE (pre) | M (unadj) | SE (unadj) | M (adj) | SE (adj) |
|:------------------------|:-------------|:-----|----:|--------:|---------:|----------:|-----------:|--------:|---------:|
| leitura.compreensao.pos | Controle     | F    |   6 |    7.50 |    0.224 |     4.500 |      1.455 |   4.313 |    1.178 |
| leitura.compreensao.pos | Controle     | M    |  16 |    7.25 |    0.144 |     5.125 |      0.700 |   5.266 |    0.724 |
| leitura.compreensao.pos | Experimental | M    |   6 |    7.50 |    0.224 |     6.500 |      0.992 |   6.313 |    1.178 |
